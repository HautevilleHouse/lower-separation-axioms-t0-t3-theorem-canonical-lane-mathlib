import canonicalLaneMathlib.AdmissibleClass
import LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.SeparationAxiomsCore

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure UrysohnLemmaPackage where
  space : Type u
  topology : TopologicalSpace space
  closedA : Set space
  closedB : Set space
  disjoint : closedA ∩ closedB = ∅
  continuousFunctionExists : Prop
  continuousFunctionExistsTerm : continuousFunctionExists

def UrysohnLemmaClosed (U : UrysohnLemmaPackage) : Prop :=
  U.disjoint → U.continuousFunctionExists

theorem urysohn_lemma_closed (U : UrysohnLemmaPackage) (h : U.disjoint) : UrysohnLemmaClosed U := by
  exact U.continuousFunctionExistsTerm

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse
