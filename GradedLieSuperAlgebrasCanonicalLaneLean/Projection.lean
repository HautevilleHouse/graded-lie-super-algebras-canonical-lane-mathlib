import GradedLieSuperAlgebrasCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure GradedLieSuperAlgebraEndgameState where
  object : GradedLieSuperAlgebraAdmittedObject

def gradedLieSuperAlgebraProjection : EndgameState → EndgameState := id

theorem graded_lie_super_algebra_projection_idempotent (x : EndgameState) :
    gradedLieSuperAlgebraProjection (gradedLieSuperAlgebraProjection x) = gradedLieSuperAlgebraProjection x := rfl

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse