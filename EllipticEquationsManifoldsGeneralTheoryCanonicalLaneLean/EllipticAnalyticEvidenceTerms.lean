import HautevilleHouse.EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean.MathlibObjects
import HautevilleHouse.EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean.EllipticRegularityPackage

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure EllipticAnalyticEvidenceTerms {M : EllipticManifoldPackage} {E : EllipticOperator M}
    (P : EllipticRegularityPackage M E) where
  schauderEstimatesTerm : P.schauderEstimates
  aPrioriBoundsTerm : P.aPrioriBounds
  compactEmbeddingTerm : P.compactEmbedding
  regularityPackageClosed : EllipticRegularityPackageClosed P

def EllipticRegularityPackage.evidenceTerms {M : EllipticManifoldPackage} {E : EllipticOperator M}
    (P : EllipticRegularityPackage M E) (Ev : EllipticRegularityEvidence P) : EllipticAnalyticEvidenceTerms P :=
  {
    schauderEstimatesTerm := Ev.schauderEstimatesClosed
    aPrioriBoundsTerm := Ev.aPrioriBoundsClosed
    compactEmbeddingTerm := Ev.compactEmbeddingClosed
    regularityPackageClosed := elliptic_regularity_package_closed_from_evidence P Ev
  }

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
