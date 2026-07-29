import canonicalLaneMathlib.AdmissibleClass
import LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.SeparationAxiomsCore

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | (X : Type u) => (by
      have h : T0TopologicalSpace.t0Property (X := X) ∧ T3TopologicalSpace.regularProperty (X := X) := A.endpointSatisfied
      exact h.2
    )

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  unfold gateClosed
  exact A.endpointSatisfied.2

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse
