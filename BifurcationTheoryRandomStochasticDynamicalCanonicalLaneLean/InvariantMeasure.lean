import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean

structure InvariantMeasurePackage (R : RandomDynamicalSystemPackage) where
  measureSpace : Type u
  invariantMeasure : Type v
  existence : Prop
  uniqueness : Prop
  ergodicity : Prop
  supportCharacterization : Prop

structure InvariantMeasureEvidence {R : RandomDynamicalSystemPackage}
    (I : InvariantMeasurePackage R) where
  existenceClosed : I.existence
  uniquenessClosed : I.uniqueness
  ergodicityClosed : I.ergodicity
  supportCharacterizationClosed : I.supportCharacterization

def InvariantMeasureClosed {R : RandomDynamicalSystemPackage}
    (I : InvariantMeasurePackage R) : Prop :=
  I.existence ∧ I.uniqueness ∧ I.ergodicity ∧ I.supportCharacterization

theorem invariant_measure_closed_from_evidence
    {R : RandomDynamicalSystemPackage} (I : InvariantMeasurePackage R)
    (E : InvariantMeasureEvidence I) : InvariantMeasureClosed I := by
  exact And.intro E.existenceClosed
    (And.intro E.uniquenessClosed
      (And.intro E.ergodicityClosed E.supportCharacterizationClosed))

end BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean
end HautevilleHouse