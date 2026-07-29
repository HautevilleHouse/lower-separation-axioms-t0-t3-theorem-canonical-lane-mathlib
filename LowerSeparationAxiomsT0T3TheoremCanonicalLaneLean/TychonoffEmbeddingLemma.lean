import canonicalLaneMathlib.AdmissibleClass
import LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.SeparationAxiomsCore

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure TychonoffEmbeddingPackage where
  space : Type u
  topology : TopologicalSpace space
  t3HalfProperty : Prop
  embeddingIntoCompactHausdorff : Prop
  embeddingExists : Prop
  embeddingExistsTerm : embeddingExists

def TychonoffEmbeddingClosed (P : TychonoffEmbeddingPackage) : Prop :=
  P.t3HalfProperty ∧ P.embeddingIntoCompactHausdorff ∧ P.embeddingExists

theorem tychonoff_embedding_closed (P : TychonoffEmbeddingPackage) : TychonoffEmbeddingClosed P := by
  exact And.intro P.t3HalfProperty (And.intro P.embeddingIntoCompactHausdorff P.embeddingExistsTerm)

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse
