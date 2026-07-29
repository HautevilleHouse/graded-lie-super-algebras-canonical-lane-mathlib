import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedLieSuperAlgebrasCanonicalLaneLean.Representation

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure Cohomology (k : Type u) [Field k] (L : LieSuperAlgebra k V) (R : Representation k L) where
  cochains : ℕ → SuperVectorSpace k
  coboundary : ∀ (n : ℕ), cochains n → cochains (n+1)
  coboundarySquaresZero : ∀ (n : ℕ) (ω : cochains n), coboundary (n+1) (coboundary n ω) = 0
  cohomologyAxioms : Prop

structure CohomologyEvidence (H : Cohomology k L R) where
  cohomologyAxiomsClosed : H.cohomologyAxioms

def CohomologyClosed (H : Cohomology k L R) : Prop :=
  H.cohomologyAxioms

theorem cohomology_closed_from_evidence (H : Cohomology k L R) (E : CohomologyEvidence H) : CohomologyClosed H := by
  exact E.cohomologyAxiomsClosed

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse