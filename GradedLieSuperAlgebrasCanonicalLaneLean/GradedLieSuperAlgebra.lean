import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure GradedVectorSpace (G : Type u) [AddGroup G] where
  carrier : G → Type v
  gradingMap : (g : G) → carrier g → Type v

structure LieSuperalgebra (𝔤 : Type u) (G : Type v) [AddGroup G] where
  underlyingSpace : GradedVectorSpace G
  bracket : ∀ (x y : ℤ₂), underlyingSpace.carrier x → underlyingSpace.carrier y → underlyingSpace.carrier (x + y)
  bilinearity : Prop
  gradedSkewSymmetry : Prop
  gradedJacobiIdentity : Prop
  bilinearityClosed : bilinearity
  gradedSkewSymmetryClosed : gradedSkewSymmetry
  gradedJacobiIdentityClosed : gradedJacobiIdentity

structure GradedLieSuperalgebraMorphism (𝔤 𝔥 : LieSuperalgebra ℤ₂ ℤ₂) where
  underlyingMap : ∀ (i : ℤ₂), 𝔤.underlyingSpace.carrier i → 𝔥.underlyingSpace.carrier i
  respectsGrading : Prop
  respectsBracket : Prop
  respectsGradingClosed : respectsGrading
  respectsBracketClosed : respectsBracket

end GradedLieSuperalgebrasCanonicalLaneLean
end HautevilleHouse