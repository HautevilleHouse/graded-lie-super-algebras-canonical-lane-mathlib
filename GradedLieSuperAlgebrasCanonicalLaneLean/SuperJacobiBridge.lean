import canonicalLaneMathlib.AdmissibleClass
import GradedLieSuperAlgebrasCanonicalLaneLean.GradedLieSuperAlgebraDefinitions

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  let alg : AdmissibleGradedLieSuperAlgebra A := by
    sorry
  alg.algebraAdmissible

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  sorry

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse
