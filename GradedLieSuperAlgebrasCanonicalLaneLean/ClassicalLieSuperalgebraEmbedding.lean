import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedLieSuperAlgebrasCanonicalLaneLean.GradedLieSuperAlgebraDefinitions

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure ClassicalLieAlgebraEmbedding (L : GradedLieSuperAlgebra) where
  classicalPart : Type u
  bracketClassical : classicalPart → classicalPart → classicalPart
  embeddingMap : classicalPart → (L.space.V0 ⊕ L.space.V1)
  respectsBracket : ∀ x y : classicalPart, embeddingMap (bracketClassical x y) = L.bracket.bilinear (embeddingMap x) (embeddingMap y)
  injectivity : Function.Injective embeddingMap

structure ClassicalEmbeddingEvidence (L : GradedLieSuperAlgebra) (E : ClassicalLieAlgebraEmbedding L) where
  respectsBracketClosed : E.respectsBracket
  injectivityClosed : E.injectivity

def ClassicalEmbeddingClosed (L : GradedLieSuperAlgebra) (E : ClassicalLieAlgebraEmbedding L) : Prop :=
  E.respectsBracket ∧ E.injectivity

theorem classical_embedding_closed_from_evidence (L : GradedLieSuperAlgebra) (E : ClassicalLieAlgebraEmbedding L) (Ev : ClassicalEmbeddingEvidence L E) : ClassicalEmbeddingClosed L E := by
  exact And.intro Ev.respectsBracketClosed Ev.injectivityClosed

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse