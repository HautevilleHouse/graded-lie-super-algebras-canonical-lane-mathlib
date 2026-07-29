import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedLieSuperAlgebrasCanonicalLaneLean.SuperVectorSpace

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure LieSuperAlgebra (k : Type u) [Field k] (V : SuperVectorSpace k) where
  bracket : V.carrier → V.carrier → V.carrier
  bilinearity : Prop
  superSkewSymmetry : Prop
  superJacobiIdentity : Prop
  parityCompatibleBracket : ∀ (a b : V.carrier), V.parityMap (bracket a b) = ((V.parityMap a).1 + (V.parityMap b).1) % 2
  lieSuperAlgebraAxioms : Prop

structure LieSuperAlgebraEvidence (L : LieSuperAlgebra k V) where
  lieSuperAlgebraAxiomsClosed : L.lieSuperAlgebraAxioms

def LieSuperAlgebraClosed (L : LieSuperAlgebra k V) : Prop :=
  L.lieSuperAlgebraAxioms

theorem lie_super_algebra_closed_from_evidence (L : LieSuperAlgebra k V) (E : LieSuperAlgebraEvidence L) : LieSuperAlgebraClosed L := by
  exact E.lieSuperAlgebraAxiomsClosed

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse