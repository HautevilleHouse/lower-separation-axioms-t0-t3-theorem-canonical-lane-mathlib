import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure AdmissibleClass where
  space : T0T3Space
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SeparationWitnessClosed A.space ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse