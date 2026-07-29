import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure AdmissibleClass where
  object : GradedLieSuperAlgebraAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GradedLieSuperAlgebraWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse