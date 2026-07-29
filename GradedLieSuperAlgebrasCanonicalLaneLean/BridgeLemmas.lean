import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedLieSuperAlgebrasCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GradedLieSuperAlgebraWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse