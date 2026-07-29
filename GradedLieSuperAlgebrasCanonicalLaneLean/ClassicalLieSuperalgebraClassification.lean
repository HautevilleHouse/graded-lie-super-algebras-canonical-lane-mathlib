import canonicalLaneMathlib.AdmissibleClass
import GradedLieSuperalgebrasCanonicalLaneLean.GradedLieSuperalgebra

namespace HautevilleHouse
namespace GradedLieSuperalgebrasCanonicalLaneLean

inductive ClassicalLieSuperalgebraType
| A | B | C | D | F | G

structure ClassicalLieSuperalgebraData (τ : ClassicalLieSuperalgebraType) where
  rootSystem : Type u
  cartanSubalgebra : Type u
  positiveRoots : List rootSystem
  simpleRoots : List rootSystem
  dynkinDiagram : Prop
  dynkinDiagramClosed : dynkinDiagram

structure ClassicalLieSuperalgebraClassification where
  types : List ClassicalLieSuperalgebraType
  classificationComplete : Prop
  classificationCompleteClosed : classificationComplete

end GradedLieSuperalgebrasCanonicalLaneLean
end HautevilleHouse