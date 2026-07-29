import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.SeparationAxiomsTopology

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure HausdorffT0Package (T : TopologicalSpacePackage) where
  hausdorffProperty : Prop
  t0Implied : Prop

structure HausdorffT0Evidence {T : TopologicalSpacePackage} (H : HausdorffT0Package T) where
  hausdorffPropertyClosed : H.hausdorffProperty
  t0ImpliedClosed : H.t0Implied

def HausdorffT0Closed {T : TopologicalSpacePackage} (H : HausdorffT0Package T) : Prop :=
  H.hausdorffProperty ∧ H.t0Implied

theorem hausdorff_t0_closed_from_evidence {T : TopologicalSpacePackage}
    (H : HausdorffT0Package T) (E : HausdorffT0Evidence H) : HausdorffT0Closed H :=
  And.intro E.hausdorffPropertyClosed E.t0ImpliedClosed

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse