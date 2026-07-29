import GradedLieSuperAlgebrasCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure GradedLieSuperAlgebraSpace where
  carrier : Type
  grading : carrier → ℤ₂
  bracket : carrier → carrier → carrier

structure GradedLieSuperAlgebraAdmittedObject where
  space : GradedLieSuperAlgebraSpace
  superJacobiIdentity : Prop
  gradedBracket : Prop
  model : Type
  classification : Prop
  conclusion : classification

def GradedLieSuperAlgebraWitnessClosed (O : GradedLieSuperAlgebraAdmittedObject) : Prop :=
  O.classification

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse