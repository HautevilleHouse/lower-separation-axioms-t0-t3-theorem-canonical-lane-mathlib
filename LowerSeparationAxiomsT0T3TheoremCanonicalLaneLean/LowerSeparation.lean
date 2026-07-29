import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure LowerSeparationPackage where
  T0 : Prop
  T1 : Prop
  T3 : Prop
  regular : Prop
  tychonoff : Prop

structure LowerSeparationEvidence (S : LowerSeparationPackage) where
  T0Closed : S.T0
  T1Closed : S.T1
  T3Closed : S.T3
  regularClosed : S.regular
  tychonoffClosed : S.tychonoff

def LowerSeparationClosed (S : LowerSeparationPackage) : Prop :=
  S.T0 ∧ S.T1 ∧ S.T3 ∧ S.regular ∧ S.tychonoff

theorem lower_separation_closed_from_evidence (S : LowerSeparationPackage)
    (E : LowerSeparationEvidence S) : LowerSeparationClosed S := by
  exact And.intro E.T0Closed (And.intro E.T1Closed (And.intro E.T3Closed (And.intro E.regularClosed E.tychonoffClosed)))

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse