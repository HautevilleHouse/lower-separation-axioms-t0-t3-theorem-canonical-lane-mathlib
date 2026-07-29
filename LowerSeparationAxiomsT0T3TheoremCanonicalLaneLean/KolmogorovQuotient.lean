import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.T0Axiom

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure KolmogorovQuotientPackage where
  quotientSpaceT0 : Prop
  universalProperty : Prop
  quotientMapContinuous : Prop

structure KolmogorovQuotientEvidence (K : KolmogorovQuotientPackage) where
  quotientSpaceT0Closed : K.quotientSpaceT0
  universalPropertyClosed : K.universalProperty
  quotientMapContinuousClosed : K.quotientMapContinuous

def KolmogorovQuotientClosed (K : KolmogorovQuotientPackage) : Prop :=
  K.quotientSpaceT0 ∧ K.universalProperty ∧ K.quotientMapContinuous

theorem kolmogorov_quotient_closed_from_evidence (K : KolmogorovQuotientPackage)
    (E : KolmogorovQuotientEvidence K) : KolmogorovQuotientClosed K := by
  exact And.intro E.quotientSpaceT0Closed (And.intro E.universalPropertyClosed E.quotientMapContinuousClosed)

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse