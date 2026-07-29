import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.SeparationAxiomsTopology

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure T3RegularityPackage (T : TopologicalSpacePackage) where
  closedSetSeparated : Prop
  pointClosedSeparated : Prop

structure T3RegularityEvidence {T : TopologicalSpacePackage} (R : T3RegularityPackage T) where
  closedSetSeparatedClosed : R.closedSetSeparated
  pointClosedSeparatedClosed : R.pointClosedSeparated

def T3RegularityClosed {T : TopologicalSpacePackage} (R : T3RegularityPackage T) : Prop :=
  R.closedSetSeparated ∧ R.pointClosedSeparated

theorem t3_regularity_closed_from_evidence {T : TopologicalSpacePackage}
    (R : T3RegularityPackage T) (E : T3RegularityEvidence R) : T3RegularityClosed R :=
  And.intro E.closedSetSeparatedClosed E.pointClosedSeparatedClosed

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse