import canonicalLaneMathlib.AdmissibleClass
import EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean.LaplaceBeltrami

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure EigenvalueProblemPackage {E : EllipticOperatorPackage} {L : LaplaceBeltramiPackage E} where
  discreteSpectrum : Prop
  eigenfunctionExpansion : Prop
  weylAsymptotic : Prop
  variationalCharacterization : Prop

structure EigenvalueProblemEvidence {E : EllipticOperatorPackage} {L : LaplaceBeltramiPackage E}
    (P : EigenvalueProblemPackage) where
  discreteSpectrumClosed : P.discreteSpectrum
  eigenfunctionExpansionClosed : P.eigenfunctionExpansion
  weylAsymptoticClosed : P.weylAsymptotic
  variationalCharacterizationClosed : P.variationalCharacterization

def EigenvalueProblemClosed {E : EllipticOperatorPackage} {L : LaplaceBeltramiPackage E}
    (P : EigenvalueProblemPackage) : Prop :=
  P.discreteSpectrum ∧ P.eigenfunctionExpansion ∧ P.weylAsymptotic ∧ P.variationalCharacterization

theorem eigenvalue_problem_closed_from_evidence {E : EllipticOperatorPackage} {L : LaplaceBeltramiPackage E}
    (P : EigenvalueProblemPackage) (Ev : EigenvalueProblemEvidence P) : EigenvalueProblemClosed P := by
  exact And.intro Ev.discreteSpectrumClosed
    (And.intro Ev.eigenfunctionExpansionClosed
      (And.intro Ev.weylAsymptoticClosed Ev.variationalCharacterizationClosed))

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse