import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure SeparationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure T0T3AdmittedObject where
  space : SeparationSpace
  t0_separated : Prop
  t3_regular : Prop
  conclusion : t0_separated ∧ t3_regular

structure T0T3EndgameState where
  object : T0T3AdmittedObject

def T0T3WitnessClosed (O : T0T3AdmittedObject) : Prop :=
  O.t0_separated ∧ O.t3_regular

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse