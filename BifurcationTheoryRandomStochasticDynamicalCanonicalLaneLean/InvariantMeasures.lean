import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean

structure InvariantMeasure (Ω : Type u) (F : Type v) (S : StochasticDynamicalSystem Ω F) where
  measure : S.stateSpace → ℝ
  invarianceCondition : Prop

def invariantMeasureProperty {Ω F} {S : StochasticDynamicalSystem Ω F} (μ : InvariantMeasure Ω F S) : Prop :=
  μ.invarianceCondition

structure InvariantMeasureFamily {Ω F} (S : StochasticDynamicalSystem Ω F) where
  measures : S.parameterSpace → InvariantMeasure Ω F S
  continuityInParameter : Prop

def familyClosed {Ω F} {S : StochasticDynamicalSystem Ω F} (Fam : InvariantMeasureFamily S) : Prop :=
  Fam.continuityInParameter

end BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean
end HautevilleHouse