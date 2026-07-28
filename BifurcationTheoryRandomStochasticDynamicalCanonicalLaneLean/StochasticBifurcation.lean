import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean.RandomDynamicalSystem

namespace HautevilleHouse
namespace BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean

structure StochasticBifurcation {R : RandomDynamicalSystem} where
  bifurcationType : String
  criticalParameter : ℝ
  qualitativeChange : Prop
  invariantMeasureAltered : Prop

structure StochasticBifurcationEvidence {R : RandomDynamicalSystem}
    (B : StochasticBifurcation {R}) where
  qualitativeChangeClosed : B.qualitativeChange
  invariantMeasureAlteredClosed : B.invariantMeasureAltered

def StochasticBifurcationClosed {R : RandomDynamicalSystem}
    (B : StochasticBifurcation {R}) : Prop :=
  B.qualitativeChange ∧ B.invariantMeasureAltered

theorem stochastic_bifurcation_closed_from_evidence
    {R : RandomDynamicalSystem} (B : StochasticBifurcation {R})
    (E : StochasticBifurcationEvidence B) : StochasticBifurcationClosed B := by
  exact And.intro E.qualitativeChangeClosed E.invariantMeasureAlteredClosed

end BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean
end HautevilleHouse