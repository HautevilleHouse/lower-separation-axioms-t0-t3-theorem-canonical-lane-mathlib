import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.LowerSeparation

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure T0AxiomPackage where
  distinctPointsTopologicallyDistinguishable : Prop
  kolmogorovProperty : Prop
  specializationPreorderPartial : Prop

structure T0AxiomEvidence (T : T0AxiomPackage) where
  distinctPointsTopologicallyDistinguishableClosed : T.distinctPointsTopologicallyDistinguishable
  kolmogorovPropertyClosed : T.kolmogorovProperty
  specializationPreorderPartialClosed : T.specializationPreorderPartial

def T0AxiomClosed (T : T0AxiomPackage) : Prop :=
  T.distinctPointsTopologicallyDistinguishable ∧ T.kolmogorovProperty ∧ T.specializationPreorderPartial

theorem t0_axiom_closed_from_evidence (T : T0AxiomPackage) (E : T0AxiomEvidence T) :
    T0AxiomClosed T := by
  exact And.intro E.distinctPointsTopologicallyDistinguishableClosed (And.intro E.kolmogorovPropertyClosed E.specializationPreorderPartialClosed)

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse