import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure T3Space where
  carrier : Type u
  topology : TopologicalSpace carrier
  t3Property : Prop
  t3PropertyTerm : t3Property

def T3SpaceClosed (X : T3Space) : Prop :=
  X.t3Property

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse