import canonicalLaneMathlib.AdmissibleClass
import EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean.EllipticOperator

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure IndexTheoremPackage {E : EllipticOperatorPackage} where
  analyticIndex : Prop
  topologicalIndex : Prop
  indexFormula : Prop
  cohomologicalInterpretation : Prop

structure IndexTheoremEvidence {E : EllipticOperatorPackage} (I : IndexTheoremPackage) where
  analyticIndexClosed : I.analyticIndex
  topologicalIndexClosed : I.topologicalIndex
  indexFormulaClosed : I.indexFormula
  cohomologicalInterpretationClosed : I.cohomologicalInterpretation

def IndexTheoremClosed {E : EllipticOperatorPackage} (I : IndexTheoremPackage) : Prop :=
  I.analyticIndex ∧ I.topologicalIndex ∧ I.indexFormula ∧ I.cohomologicalInterpretation

theorem index_theorem_closed_from_evidence {E : EllipticOperatorPackage}
    (I : IndexTheoremPackage) (Ev : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro Ev.analyticIndexClosed
    (And.intro Ev.topologicalIndexClosed
      (And.intro Ev.indexFormulaClosed Ev.cohomologicalInterpretationClosed))

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse