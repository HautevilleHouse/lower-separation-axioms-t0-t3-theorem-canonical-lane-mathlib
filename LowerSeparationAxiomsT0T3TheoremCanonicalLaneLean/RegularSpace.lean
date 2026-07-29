import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.T3Axiom

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure RegularSpacePackage where
  pointClosedSetSeparation : Prop
  equivalentToT3 : Prop
  t3ImpliesRegular : Prop

structure RegularSpaceEvidence (R : RegularSpacePackage) where
  pointClosedSetSeparationClosed : R.pointClosedSetSeparation
  equivalentToT3Closed : R.equivalentToT3
  t3ImpliesRegularClosed : R.t3ImpliesRegular

def RegularSpaceClosed (R : RegularSpacePackage) : Prop :=
  R.pointClosedSetSeparation ∧ R.equivalentToT3 ∧ R.t3ImpliesRegular

theorem regular_space_closed_from_evidence (R : RegularSpacePackage) (E : RegularSpaceEvidence R) :
    RegularSpaceClosed R := by
  exact And.intro E.pointClosedSetSeparationClosed (And.intro E.equivalentToT3Closed E.t3ImpliesRegularClosed)

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse