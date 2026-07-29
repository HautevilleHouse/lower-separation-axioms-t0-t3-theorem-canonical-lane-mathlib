import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.T0T3AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure T0SeparationEvidence where
  distinctPointsSeparated : Prop
  t0_holds : distinctPointsSeparated

structure T3SeparationEvidence where
  closedSetPointSeparated : Prop
  t3_holds : closedSetPointSeparated

structure T0T3SeparationPackage where
  t0 : T0SeparationEvidence
  t3 : T3SeparationEvidence
  compatibility : Prop
  compatibility_holds : compatibility

def T0T3SeparationPackageClosed (P : T0T3SeparationPackage) : Prop :=
  P.t0.distinctPointsSeparated ∧ P.t3.closedSetPointSeparated ∧ P.compatibility

theorem t0t3_separation_package_closed (P : T0T3SeparationPackage) : T0T3SeparationPackageClosed P := by
  exact And.intro P.t0.t0_holds (And.intro P.t3.t3_holds P.compatibility_holds)

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse