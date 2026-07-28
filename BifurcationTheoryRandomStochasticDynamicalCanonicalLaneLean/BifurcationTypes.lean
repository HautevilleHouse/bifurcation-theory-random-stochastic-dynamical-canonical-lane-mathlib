import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean

inductive BifurcationType : Type where
  | pitchfork
  | hopf
  | saddleNode
  | periodDoubling
  | neimarkSacker

def bifurcationTypeName (t : BifurcationType) : String :=
  match t with
  | BifurcationType.pitchfork => "Pitchfork"
  | BifurcationType.hopf => "Hopf"
  | BifurcationType.saddleNode => "Saddle-node"
  | BifurcationType.periodDoubling => "Period-doubling"
  | BifurcationType.neimarkSacker => "Neimark-Sacker"

structure BifurcationEvent (Ω : Type u) (F : Type v) (S : StochasticDynamicalSystem Ω F) where
  paramValue : S.parameterSpace
  bifurcationType : BifurcationType
  conditionMet : Prop

def eventCondition (Ω F S) (E : BifurcationEvent Ω F S) : Prop := E.conditionMet

end BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean
end HautevilleHouse