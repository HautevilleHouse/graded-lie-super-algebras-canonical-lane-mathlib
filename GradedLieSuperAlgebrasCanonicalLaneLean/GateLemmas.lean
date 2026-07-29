import canonicalLaneMathlib.AdmissibleClass
import GradedLieSuperAlgebrasCanonicalLaneLean.SuperJacobiBridge

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  let alg : AdmissibleGradedLieSuperAlgebra A := by
    sorry
  alg.endpointSatisfied ∨ alg.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  unfold gateClosed
  sorry

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse
