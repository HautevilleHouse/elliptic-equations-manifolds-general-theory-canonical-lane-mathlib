import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure EllipticRegularityStatement where
  manifold : EllipticManifoldPackage
  operator : EllipticOperator manifold
  sourceBundle : Type
  targetBundle : Type
  sobolevSpaces : Prop
  regularityEstimate : Prop
  fredholmProperty : Prop

structure EllipticRegularityEvidence (S : EllipticRegularityStatement) where
  sobolevSpacesClosed : S.sobolevSpaces
  regularityEstimateClosed : S.regularityEstimate
  fredholmPropertyClosed : S.fredholmProperty

def EllipticRegularityClosed (S : EllipticRegularityStatement) : Prop :=
  S.sobolevSpaces ∧ S.regularityEstimate ∧ S.fredholmProperty

theorem elliptic_regularity_closed_from_evidence (S : EllipticRegularityStatement) (E : EllipticRegularityEvidence S) :
    EllipticRegularityClosed S := by
  exact And.intro E.sobolevSpacesClosed (And.intro E.regularityEstimateClosed E.fredholmPropertyClosed)

structure IndexTheoremStatement where
  manifold : EllipticManifoldPackage
  operator : EllipticOperator manifold
  indexCalculated : Prop
  topologicalInvariant : Prop
  indexEqualsTopological : Prop

structure IndexTheoremEvidence (T : IndexTheoremStatement) where
  indexCalculatedClosed : T.indexCalculated
  topologicalInvariantClosed : T.topologicalInvariant
  indexEqualsTopologicalClosed : T.indexEqualsTopological

def IndexTheoremClosed (T : IndexTheoremStatement) : Prop :=
  T.indexCalculated ∧ T.topologicalInvariant ∧ T.indexEqualsTopological

theorem index_theorem_closed_from_evidence (T : IndexTheoremStatement) (E : IndexTheoremEvidence T) :
    IndexTheoremClosed T := by
  exact And.intro E.indexCalculatedClosed (And.intro E.topologicalInvariantClosed E.indexEqualsTopologicalClosed)

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
