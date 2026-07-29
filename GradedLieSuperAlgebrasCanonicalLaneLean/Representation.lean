import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GradedLieSuperAlgebrasCanonicalLaneLean.LieSuperAlgebra

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure Representation (k : Type u) [Field k] (L : LieSuperAlgebra k V) where
  representationSpace : SuperVectorSpace k
  action : L.carrier → representationSpace.carrier → representationSpace.carrier
  linearity : Prop
  bracketAction : ∀ (x y : L.carrier) (v : representationSpace.carrier),
    action (L.bracket x y) v = action x (action y v) - (-1)^((V.parityMap x).1 * (V.parityMap y).1) * action y (action x v)
  representationAxioms : Prop

structure RepresentationEvidence (R : Representation k L) where
  representationAxiomsClosed : R.representationAxioms

def RepresentationClosed (R : Representation k L) : Prop :=
  R.representationAxioms

theorem representation_closed_from_evidence (R : Representation k L) (E : RepresentationEvidence R) : RepresentationClosed R := by
  exact E.representationAxiomsClosed

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse