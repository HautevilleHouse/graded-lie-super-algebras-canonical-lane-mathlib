import canonicalLaneMathlib.AdmissibleClass
import GradedLieSuperalgebrasCanonicalLaneLean.GradedLieSuperalgebra

namespace HautevilleHouse
namespace GradedLieSuperalgebrasCanonicalLaneLean

structure Superrepresentation (𝔤 : LieSuperalgebra ℤ₂ ℤ₂) (V : GradedVectorSpace ℤ₂) where
  action : ∀ (i j : ℤ₂), 𝔤.underlyingSpace.carrier i → V.carrier j → V.carrier (i + j)
  linearity : Prop
  respectsBracket : Prop
  linearityClosed : linearity
  respectsBracketClosed : respectsBracket

structure IrreducibleSuperrepresentation (𝔤 : LieSuperalgebra ℤ₂ ℤ₂) (V : GradedVectorSpace ℤ₂) extends Superrepresentation 𝔤 V where
  noNonTrivialSubrepresentation : Prop
  noNonTrivialSubrepresentationClosed : noNonTrivialSubrepresentation

end GradedLieSuperalgebrasCanonicalLaneLean
end HautevilleHouse