import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean

structure LyapunovExponentPackage (R : RandomDynamicalSystemPackage) where
  topExponent : Prop
  momentGrowthRate : Prop
  oscillationCriteria : Prop
  stochasticStability : Prop

structure LyapunovExponentEvidence {R : RandomDynamicalSystemPackage}
    (L : LyapunovExponentPackage R) where
  topExponentClosed : L.topExponent
  momentGrowthRateClosed : L.momentGrowthRate
  oscillationCriteriaClosed : L.oscillationCriteria
  stochasticStabilityClosed : L.stochasticStability

def LyapunovExponentClosed {R : RandomDynamicalSystemPackage}
    (L : LyapunovExponentPackage R) : Prop :=
  L.topExponent ∧ L.momentGrowthRate ∧ L.oscillationCriteria ∧ L.stochasticStability

theorem lyapunov_exponent_closed_from_evidence
    {R : RandomDynamicalSystemPackage} (L : LyapunovExponentPackage R)
    (E : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro E.topExponentClosed
    (And.intro E.momentGrowthRateClosed
      (And.intro E.oscillationCriteriaClosed E.stochasticStabilityClosed))

end BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean
end HautevilleHouse