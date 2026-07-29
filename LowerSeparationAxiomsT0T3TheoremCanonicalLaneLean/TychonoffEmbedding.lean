import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean.UrysohnLemma

namespace HautevilleHouse
namespace LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean

structure TychonoffEmbeddingPackage {T : TopologicalSpacePackage} {R : T3RegularityPackage T}
    (U : UrysohnLemmaPackage R) where
  embeddingExists : Prop
  targetCompact : Prop
  imageHomeomorphic : Prop

structure TychonoffEmbeddingEvidence {T : TopologicalSpacePackage} {R : T3RegularityPackage T}
    {U : UrysohnLemmaPackage R} (Ty : TychonoffEmbeddingPackage U) where
  embeddingExistsClosed : Ty.embeddingExists
  targetCompactClosed : Ty.targetCompact
  imageHomeomorphicClosed : Ty.imageHomeomorphic

def TychonoffEmbeddingClosed {T : TopologicalSpacePackage} {R : T3RegularityPackage T}
    {U : UrysohnLemmaPackage R} (Ty : TychonoffEmbeddingPackage U) : Prop :=
  Ty.embeddingExists ∧ Ty.targetCompact ∧ Ty.imageHomeomorphic

theorem tychonoff_embedding_closed_from_evidence
    {T : TopologicalSpacePackage} {R : T3RegularityPackage T}
    {U : UrysohnLemmaPackage R} (Ty : TychonoffEmbeddingPackage U)
    (E : TychonoffEmbeddingEvidence Ty) : TychonoffEmbeddingClosed Ty :=
  And.intro E.embeddingExistsClosed (And.intro E.targetCompactClosed E.imageHomeomorphicClosed)

end LowerSeparationAxiomsT0T3TheoremCanonicalLaneLean
end HautevilleHouse