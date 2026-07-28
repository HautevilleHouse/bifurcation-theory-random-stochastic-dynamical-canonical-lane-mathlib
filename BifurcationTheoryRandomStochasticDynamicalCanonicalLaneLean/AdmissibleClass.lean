import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean

structure AdmissibleClass where
  object : RandomDynamicalSystem
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RDSClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean
end HautevilleHouse