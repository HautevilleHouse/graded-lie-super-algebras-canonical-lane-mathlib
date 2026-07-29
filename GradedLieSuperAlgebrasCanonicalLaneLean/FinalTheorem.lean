import canonicalLaneMathlib.AdmissibleClass
import GradedLieSuperAlgebrasCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

def ConstrainedGradedLieSuperAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graded_lie_super_algebra_endgame (A : AdmissibleClass) :
    ConstrainedGradedLieSuperAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse
