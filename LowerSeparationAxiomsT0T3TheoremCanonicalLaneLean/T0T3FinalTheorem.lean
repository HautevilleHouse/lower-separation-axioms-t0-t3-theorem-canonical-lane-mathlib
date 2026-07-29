import HautevilleHouse.LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.T0T3GateLemmas

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

def ConstrainedT0T3Closure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_t0t3_endgame (A : AdmissibleClass) :
    ConstrainedT0T3Closure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse