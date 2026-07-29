import GradedLieSuperAlgebrasCanonicalLaneLean.SuperJacobiIdentity

/-!
# Classification Theorem Package
-/

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure ClassificationTheoremPackage where
  finiteDimensional : Prop
  simpleModulesClassified : Prop
  kacMoodyCase : Prop
  endpointReached : Prop

structure ClassificationTheoremEvidence (C : ClassificationTheoremPackage) where
  finiteDimensionalClosed : C.finiteDimensional
  simpleModulesClassifiedClosed : C.simpleModulesClassified
  kacMoodyCaseClosed : C.kacMoodyCase
  endpointReachedClosed : C.endpointReached

def ClassificationTheoremClosed (C : ClassificationTheoremPackage) : Prop :=
  C.finiteDimensional ∧ C.simpleModulesClassified ∧ C.kacMoodyCase ∧ C.endpointReached

theorem classification_theorem_closed_from_evidence (C : ClassificationTheoremPackage)
    (E : ClassificationTheoremEvidence C) : ClassificationTheoremClosed C := by
  exact And.intro E.finiteDimensionalClosed (And.intro E.simpleModulesClassifiedClosed
    (And.intro E.kacMoodyCaseClosed E.endpointReachedClosed))

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse