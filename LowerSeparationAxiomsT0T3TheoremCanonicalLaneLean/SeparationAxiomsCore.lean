import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure T0TopologicalSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  t0Property : Prop
  t0PropertyTerm : t0Property

structure T3TopologicalSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  regularProperty : Prop
  regularPropertyTerm : regularProperty
  t0Property : Prop
  t0PropertyTerm : t0Property

def T0T3AdmittedObject (X : Type u) [TopologicalSpace X] : Prop :=
  T0TopologicalSpace.t0Property (X := X) ∧ T3TopologicalSpace.regularProperty (X := X)

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse
