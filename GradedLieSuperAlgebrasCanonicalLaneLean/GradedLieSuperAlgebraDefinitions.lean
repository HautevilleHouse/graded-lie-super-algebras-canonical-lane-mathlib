import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure GradedVectorSpace where
  field : Type u
  gradingSet : Type v
  components : gradingSet -> Type w
  vectorSpaceStructure : (i : gradingSet) -> AddCommGroup (components i)
  scalarMultiplication : (i : gradingSet) -> field -> components i -> components i
  directSumDecomposition : (⨁ i, components i) ≃ₗ[field] (i : gradingSet) → components i

structure LieSuperAlgebra (V : GradedVectorSpace) where
  bracket : (i j : V.gradingSet) -> V.components i → V.components j → V.components (i + j)
  superSkewSymmetry : (i j : V.gradingSet) -> (x : V.components i) -> (y : V.components j) ->
    bracket i j x y = (-1)^(i*j) • bracket j i y x
  superJacobiIdentity : (i j k : V.gradingSet) -> (x : V.components i) -> (y : V.components j) -> (z : V.components k) ->
    bracket i (j + k) (bracket j k y z) x + (-1)^(i*(j+k)) • bracket j (k + i) (bracket k i z x) y + (-1)^(k*(i+j)) • bracket k (i + j) (bracket i j x y) z = 0

structure GradedLieSuperAlgebra where
  underlyingSpace : GradedVectorSpace
  bracketStructure : LieSuperAlgebra underlyingSpace

structure AdmissibleGradedLieSuperAlgebra (A : AdmissibleClass) where
  algebra : GradedLieSuperAlgebra
  algebraAdmissible : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def GradedLieSuperAlgebraAdmittedClosure (A : AdmissibleGradedLieSuperAlgebra AdmissibleClass) : Prop :=
  A.algebraAdmissible ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

theorem graded_lie_super_algebra_admitted_closure_intro (A : AdmissibleGradedLieSuperAlgebra AdmissibleClass) :
    GradedLieSuperAlgebraAdmittedClosure A := by
  exact And.intro A.algebraAdmissible A.gateWitness

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse
