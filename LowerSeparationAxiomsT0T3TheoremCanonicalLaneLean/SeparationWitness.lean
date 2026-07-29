import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure T0T3Space where
  carrier : Type u
  topology : TopologicalSpace carrier
  t0Property : Prop
  t3Property : Prop
  conclusion : t0Property ∧ t3Property

def SeparationWitnessClosed (X : T0T3Space) : Prop :=
  X.t0Property ∧ X.t3Property

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse