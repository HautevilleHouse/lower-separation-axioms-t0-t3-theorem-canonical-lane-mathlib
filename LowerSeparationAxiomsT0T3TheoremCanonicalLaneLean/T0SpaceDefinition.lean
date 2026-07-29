import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure T0Space where
  carrier : Type u
  topology : TopologicalSpace carrier
  t0Property : Prop
  t0PropertyTerm : t0Property

def T0SpaceClosed (X : T0Space) : Prop :=
  X.t0Property

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse