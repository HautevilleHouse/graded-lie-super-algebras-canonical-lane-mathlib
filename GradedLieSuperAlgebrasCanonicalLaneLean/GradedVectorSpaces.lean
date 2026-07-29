import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure GradedVectorSpace where
  indexSet : Type u
  components : indexSet → Type v
  grading : Prop
  gradingTerm : grading

structure GradedVectorSpaceEvidence (V : GradedVectorSpace) where
  gradingClosed : V.grading

def GradedVectorSpaceClosed (V : GradedVectorSpace) : Prop :=
  V.grading

theorem graded_vector_space_closed_from_evidence (V : GradedVectorSpace)
    (E : GradedVectorSpaceEvidence V) : GradedVectorSpaceClosed V := by
  exact E.gradingClosed

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse
