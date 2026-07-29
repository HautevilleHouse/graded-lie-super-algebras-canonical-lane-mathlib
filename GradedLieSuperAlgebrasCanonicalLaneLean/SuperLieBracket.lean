import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GradedLieSuperAlgebrasCanonicalLaneLean

structure SuperLieBracket (V : GradedVectorSpace) where
  bracket : ∀ (i j : V.indexSet), V.components i → V.components j → V.components (i + j)
  superAntisymmetry : Prop
  superJacobiIdentity : Prop
  superAntisymmetryTerm : superAntisymmetry
  superJacobiIdentityTerm : superJacobiIdentity

structure SuperLieBracketEvidence {V : GradedVectorSpace}
    (L : SuperLieBracket V) where
  superAntisymmetryClosed : L.superAntisymmetry
  superJacobiIdentityClosed : L.superJacobiIdentity

def SuperLieBracketClosed {V : GradedVectorSpace}
    (L : SuperLieBracket V) : Prop :=
  L.superAntisymmetry ∧ L.superJacobiIdentity

theorem super_lie_bracket_closed_from_evidence
    {V : GradedVectorSpace} (L : SuperLieBracket V)
    (E : SuperLieBracketEvidence L) : SuperLieBracketClosed L := by
  exact And.intro E.superAntisymmetryClosed E.superJacobiIdentityClosed

end GradedLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse
