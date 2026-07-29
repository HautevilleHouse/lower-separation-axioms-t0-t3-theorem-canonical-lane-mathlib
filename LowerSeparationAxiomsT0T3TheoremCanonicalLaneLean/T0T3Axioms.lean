import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure TopologicalSpacePackage where
  carrier : Type u
  topology : TopologicalSpace carrier

definition T0Condition (X : Type u) [TopologicalSpace X] : Prop :=
  ∀ (x y : X), x ≠ y → (∃ U : Set X, IsOpen U ∧ ((x ∈ U ∧ y ∉ U) ∨ (y ∈ U ∧ x ∉ U)))

definition T3Condition (X : Type u) [TopologicalSpace X] : Prop :=
  ∀ (x : X) (F : Set X), IsClosed F ∧ x ∉ F → ∃ U V : Set X, IsOpen U ∧ IsOpen V ∧ x ∈ U ∧ F ⊆ V ∧ Disjoint U V

structure T0T3AdmissibleSpace where
  space : TopologicalSpacePackage
  t0 : T0Condition space.carrier
  t3 : T3Condition space.carrier

definition T0T3WitnessClosed (A : T0T3AdmissibleSpace) : Prop :=
  T0Condition A.space.carrier ∧ T3Condition A.space.carrier

theorem t0t3_closed_if_admissible (A : T0T3AdmissibleSpace) : T0T3WitnessClosed A := by
  exact And.intro A.t0 A.t3

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse