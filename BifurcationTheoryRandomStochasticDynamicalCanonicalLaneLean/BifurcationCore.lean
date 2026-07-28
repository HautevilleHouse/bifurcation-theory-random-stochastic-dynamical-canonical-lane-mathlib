import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean

structure StochasticDynamicalSystem (Ω : Type u) (F : Type v) where
  stateSpace : Type w
  timeDomain : Type
  flow : Ω → F → stateSpace → stateSpace
  measurability : Prop

def randomDynamicalSystem {Ω F : Type} [MeasurableSpace Ω] [TopologicalSpace F] (S : StochasticDynamicalSystem Ω F) : Prop :=
  S.measurability

structure BifurcationParameter where
  paramType : Type
  criticalValue : paramType
  bifurcationCondition : Prop

def parameterPassingThrough (p : BifurcationParameter) (value : p.paramType) : Prop :=
  value = p.criticalValue

end BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean
end HautevilleHouse