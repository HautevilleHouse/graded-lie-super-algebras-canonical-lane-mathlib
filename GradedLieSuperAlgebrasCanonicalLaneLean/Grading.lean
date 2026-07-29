import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedLieSuperAlgebrasCanonicalLaneLean.LieSuperAlgebra

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure Grading (k : Type u) [Field k] (V : SuperVectorSpace k) where
  gradingMap : V.carrier → ℤ
  compatibilityWithParity : ∀ (a : V.carrier), V.parityMap a = (gradingMap a % 2, gradingMap a % 2)
  gradingAxioms : Prop

structure GradingEvidence (G : Grading k V) where
  gradingAxiomsClosed : G.gradingAxioms

def GradingClosed (G : Grading k V) : Prop :=
  G.gradingAxioms

theorem grading_closed_from_evidence (G : Grading k V) (E : GradingEvidence G) : GradingClosed G := by
  exact E.gradingAxiomsClosed

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse