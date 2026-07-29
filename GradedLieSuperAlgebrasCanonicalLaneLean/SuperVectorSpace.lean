import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure SuperVectorSpace (k : Type u) [Field k] where
  carrier : Type v
  add : carrier → carrier → carrier
  smul : k → carrier → carrier
  parityMap : carrier → ℤ × ℤ
  parityCompatible : ∀ (a b : carrier), parityMap (add a b) = (parityMap a).1 + (parityMap b).1
  superVectorSpaceAxioms : Prop

structure SuperVectorSpaceEvidence (V : SuperVectorSpace k) where
  superVectorSpaceAxiomsClosed : V.superVectorSpaceAxioms

def SuperVectorSpaceClosed (V : SuperVectorSpace k) : Prop :=
  V.superVectorSpaceAxioms

theorem super_vector_space_closed_from_evidence (V : SuperVectorSpace k) (E : SuperVectorSpaceEvidence V) : SuperVectorSpaceClosed V := by
  exact E.superVectorSpaceAxiomsClosed

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse