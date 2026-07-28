import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean

structure RandomAttractor (Ω : Type u) (F : Type v) (S : StochasticDynamicalSystem Ω F) where
  attractorSet : S.stateSpace → Prop
  invarianceUnderFlow : Prop
  attractionProperty : Prop

def attractorClosed {Ω F} {S : StochasticDynamicalSystem Ω F} (A : RandomAttractor Ω F S) : Prop :=
  A.invarianceUnderFlow ∧ A.attractionProperty

structure RandomAttractorFamily {Ω F} (S : StochasticDynamicalSystem Ω F) where
  attractors : S.parameterSpace → RandomAttractor Ω F S
  bifurcationDetected : Prop

def familyBifurcationDetected {Ω F} {S : StochasticDynamicalSystem Ω F} (Fam : RandomAttractorFamily S) : Prop :=
  Fam.bifurcationDetected

end BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean
end HautevilleHouse