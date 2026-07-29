import canonicalLaneMathlib.AdmissibleClass
import LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.SeparationAxiomsCore

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | (X : Type u) => (by
      have h : T0TopologicalSpace.t0Property (X := X) ∧ T3TopologicalSpace.regularProperty (X := X) := A.endpointSatisfied
      exact h.1
    )

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  exact A.endpointSatisfied.1

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse
