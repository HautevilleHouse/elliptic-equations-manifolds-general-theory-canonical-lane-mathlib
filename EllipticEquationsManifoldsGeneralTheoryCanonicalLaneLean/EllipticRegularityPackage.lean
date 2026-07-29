import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure EllipticRegularityPackage (M : EllipticManifoldPackage) (E : EllipticOperator M) where
  sobolevSpaces : Type
  schauderEstimates : Prop
  aPrioriBounds : Prop
  compactEmbedding : Prop

structure EllipticRegularityEvidence {M : EllipticManifoldPackage} {E : EllipticOperator M}
    (P : EllipticRegularityPackage M E) where
  schauderEstimatesClosed : P.schauderEstimates
  aPrioriBoundsClosed : P.aPrioriBounds
  compactEmbeddingClosed : P.compactEmbedding

def EllipticRegularityPackageClosed {M : EllipticManifoldPackage} {E : EllipticOperator M}
    (P : EllipticRegularityPackage M E) : Prop :=
  P.schauderEstimates ∧ P.aPrioriBounds ∧ P.compactEmbedding

theorem elliptic_regularity_package_closed_from_evidence
    {M : EllipticManifoldPackage} {E : EllipticOperator M}
    (P : EllipticRegularityPackage M E) (Ev : EllipticRegularityEvidence P) :
    EllipticRegularityPackageClosed P := by
  exact And.intro Ev.schauderEstimatesClosed (And.intro Ev.aPrioriBoundsClosed Ev.compactEmbeddingClosed)

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
