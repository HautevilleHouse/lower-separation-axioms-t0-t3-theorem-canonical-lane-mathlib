import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.LowerSeparation

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure T3AxiomPackage where
  closedSetNeighborhoodSeparation : Prop
  regularSpaceDefinition : Prop
  tychonoffImpliesRegular : Prop

structure T3AxiomEvidence (T : T3AxiomPackage) where
  closedSetNeighborhoodSeparationClosed : T.closedSetNeighborhoodSeparation
  regularSpaceDefinitionClosed : T.regularSpaceDefinition
  tychonoffImpliesRegularClosed : T.tychonoffImpliesRegular

def T3AxiomClosed (T : T3AxiomPackage) : Prop :=
  T.closedSetNeighborhoodSeparation ∧ T.regularSpaceDefinition ∧ T.tychonoffImpliesRegular

theorem t3_axiom_closed_from_evidence (T : T3AxiomPackage) (E : T3AxiomEvidence T) :
    T3AxiomClosed T := by
  exact And.intro E.closedSetNeighborhoodSeparationClosed (And.intro E.regularSpaceDefinitionClosed E.tychonoffImpliesRegularClosed)

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse