import canonicalLaneMathlib.AdmissibleClass
import EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean.EllipticOperator

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure EllipticRegularityPackage {E : EllipticOperatorPackage} where
  sobolevSpaces : Prop
  interiorRegularity : Prop
  boundaryRegularity : Prop
  schauderEstimates : Prop

structure EllipticRegularityEvidence {E : EllipticOperatorPackage}
    (R : EllipticRegularityPackage) where
  sobolevSpacesClosed : R.sobolevSpaces
  interiorRegularityClosed : R.interiorRegularity
  boundaryRegularityClosed : R.boundaryRegularity
  schauderEstimatesClosed : R.schauderEstimates

def EllipticRegularityClosed {E : EllipticOperatorPackage} (R : EllipticRegularityPackage) : Prop :=
  R.sobolevSpaces ∧ R.interiorRegularity ∧ R.boundaryRegularity ∧ R.schauderEstimates

theorem elliptic_regularity_closed_from_evidence {E : EllipticOperatorPackage}
    (R : EllipticRegularityPackage) (Ev : EllipticRegularityEvidence R) : EllipticRegularityClosed R := by
  exact And.intro Ev.sobolevSpacesClosed
    (And.intro Ev.interiorRegularityClosed
      (And.intro Ev.boundaryRegularityClosed Ev.schauderEstimatesClosed))

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse