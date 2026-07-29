import GradedLieSuperAlgebrasCanonicalLaneLean.AdmissibleClass

/-!
# Super Jacobi Identity Package
-/

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure SuperJacobiIdentityPackage where
  superskewSymmetry : Prop
  superJacobi : Prop
  consistencyWithGrading : Prop

structure SuperJacobiIdentityEvidence (P : SuperJacobiIdentityPackage) where
  superskewSymmetryClosed : P.superskewSymmetry
  superJacobiClosed : P.superJacobi
  consistencyWithGradingClosed : P.consistencyWithGrading

def SuperJacobiIdentityClosed (P : SuperJacobiIdentityPackage) : Prop :=
  P.superskewSymmetry ∧ P.superJacobi ∧ P.consistencyWithGrading

theorem super_jacobi_identity_closed_from_evidence (P : SuperJacobiIdentityPackage)
    (E : SuperJacobiIdentityEvidence P) : SuperJacobiIdentityClosed P := by
  exact And.intro E.superskewSymmetryClosed (And.intro E.superJacobiClosed E.consistencyWithGradingClosed)

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse