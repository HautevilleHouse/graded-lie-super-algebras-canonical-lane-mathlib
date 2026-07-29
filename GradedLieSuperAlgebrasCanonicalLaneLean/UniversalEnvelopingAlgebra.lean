import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure UniversalEnvelopingAlgebra (L : GradedLieSuperAlgebra) where
  algebra : Type u
  linearMap : ∀ (i : L.underlyingSpace.indexSet), L.underlyingSpace.components i → algebra
  universalProperty : Prop
  universalPropertyTerm : universalProperty

structure UniversalEnvelopingAlgebraEvidence {L : GradedLieSuperAlgebra}
    (U : UniversalEnvelopingAlgebra L) where
  universalPropertyClosed : U.universalProperty

def UniversalEnvelopingAlgebraClosed {L : GradedLieSuperAlgebra}
    (U : UniversalEnvelopingAlgebra L) : Prop :=
  U.universalProperty

theorem universal_enveloping_algebra_closed_from_evidence
    {L : GradedLieSuperAlgebra} (U : UniversalEnvelopingAlgebra L)
    (E : UniversalEnvelopingAlgebraEvidence U) :
    UniversalEnvelopingAlgebraClosed U := by
  exact E.universalPropertyClosed

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse
