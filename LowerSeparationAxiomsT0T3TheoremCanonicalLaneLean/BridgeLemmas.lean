import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

definition bridgeClosed (A : AdmissibleClass) : Prop :=
  T0T3WitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact t0t3_closed_if_admissible A.object

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse