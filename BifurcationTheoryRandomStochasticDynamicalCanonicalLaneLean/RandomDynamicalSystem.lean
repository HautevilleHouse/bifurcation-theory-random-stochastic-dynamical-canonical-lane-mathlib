import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean

structure RandomDynamicalSystem where
  stateSpace : Type u
  timeDomain : Type v
  noiseSpace : Type w
  cocycle : timeDomain → noiseSpace → stateSpace → stateSpace
  measurability : Prop
  continuity : Prop
  cocycleProperty : Prop

structure RDSEvidence (R : RandomDynamicalSystem) where
  measurabilityClosed : R.measurability
  continuityClosed : R.continuity
  cocyclePropertyClosed : R.cocycleProperty

def RDSClosed (R : RandomDynamicalSystem) : Prop :=
  R.measurability ∧ R.continuity ∧ R.cocycleProperty

theorem rds_closed_from_evidence (R : RandomDynamicalSystem) (E : RDSEvidence R) :
    RDSClosed R := by
  exact And.intro E.measurabilityClosed (And.intro E.continuityClosed E.cocyclePropertyClosed)

end BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean
end HautevilleHouse