import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.T0T3SeparationAxiomsPackage

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure T0T3CanonicalTopologyPackage where
  topologyAxiom : Prop
  separationCompatible : Prop
  topologyAxiomHolds : topologyAxiom
  separationCompatibleHolds : separationCompatible

def T0T3CanonicalTopologyClosed (P : T0T3CanonicalTopologyPackage) : Prop :=
  P.topologyAxiom ∧ P.separationCompatible

theorem t0t3_canonical_topology_closed (P : T0T3CanonicalTopologyPackage) : T0T3CanonicalTopologyClosed P := by
  exact And.intro P.topologyAxiomHolds P.separationCompatibleHolds

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse