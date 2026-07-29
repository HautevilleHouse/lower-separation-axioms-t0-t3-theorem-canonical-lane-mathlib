import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure TopologicalSpacePackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  t0Axiom : Prop
  t3Axiom : Prop

structure TopologicalSpaceEvidence (T : TopologicalSpacePackage) where
  t0AxiomClosed : T.t0Axiom
  t3AxiomClosed : T.t3Axiom

def TopologicalSpaceClosed (T : TopologicalSpacePackage) : Prop :=
  T.t0Axiom ∧ T.t3Axiom

theorem topological_space_closed_from_evidence (T : TopologicalSpacePackage)
    (E : TopologicalSpaceEvidence T) : TopologicalSpaceClosed T :=
  And.intro E.t0AxiomClosed E.t3AxiomClosed

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse