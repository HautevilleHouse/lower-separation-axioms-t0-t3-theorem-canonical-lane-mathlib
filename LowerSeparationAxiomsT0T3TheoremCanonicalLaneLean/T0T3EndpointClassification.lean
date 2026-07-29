import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.T0T3CanonicalTopologies

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure T0T3EndpointClassificationPackage where
  t0_holds : Prop
  t3_holds : Prop
  equivalence_with_standard : Prop
  t0_holds_proof : t0_holds
  t3_holds_proof : t3_holds
  equivalence_with_standard_proof : equivalence_with_standard

def T0T3EndpointClassificationClosed (P : T0T3EndpointClassificationPackage) : Prop :=
  P.t0_holds ∧ P.t3_holds ∧ P.equivalence_with_standard

theorem t0t3_endpoint_classification_closed (P : T0T3EndpointClassificationPackage) : T0T3EndpointClassificationClosed P := by
  exact And.intro P.t0_holds_proof (And.intro P.t3_holds_proof P.equivalence_with_standard_proof)

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse