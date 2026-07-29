import canonicalLaneMathlib.AdmissibleClass
import GradedLieSuperalgebrasCanonicalLaneLean.GradedLieSuperalgebra

namespace HautevilleHouse
namespace GradedLieSuperalgebrasCanonicalLaneLean

structure UniversalEnvelopingSuperalgebra (𝔤 : LieSuperalgebra ℤ₂ ℤ₂) where
  underlyingAlgebra : Type u
  unit : underlyingAlgebra
  multiplication : underlyingAlgebra → underlyingAlgebra → underlyingAlgebra
  gradedStructure : Prop
  universalProperty : Prop
  gradedStructureClosed : gradedStructure
  universalPropertyClosed : universalProperty

end GradedLieSuperalgebrasCanonicalLaneLean
end HautevilleHouse