import canonicalLaneMathlib.AdmissibleClass
import EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean.EllipticOperator

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure LaplaceBeltramiPackage (E : EllipticOperatorPackage) where
  riemannianMetric : Prop
  laplaceOperatorDefined : Prop
  symmetryProperty : Prop
  maximumPrinciple : Prop

structure LaplaceBeltramiEvidence {E : EllipticOperatorPackage} (L : LaplaceBeltramiPackage E) where
  riemannianMetricClosed : L.riemannianMetric
  laplaceOperatorDefinedClosed : L.laplaceOperatorDefined
  symmetryPropertyClosed : L.symmetryProperty
  maximumPrincipleClosed : L.maximumPrinciple

def LaplaceBeltramiClosed {E : EllipticOperatorPackage} (L : LaplaceBeltramiPackage E) : Prop :=
  L.riemannianMetric ∧ L.laplaceOperatorDefined ∧ L.symmetryProperty ∧ L.maximumPrinciple

theorem laplace_beltrami_closed_from_evidence {E : EllipticOperatorPackage}
    (L : LaplaceBeltramiPackage E) (Ev : LaplaceBeltramiEvidence L) : LaplaceBeltramiClosed L := by
  exact And.intro Ev.riemannianMetricClosed
    (And.intro Ev.laplaceOperatorDefinedClosed
      (And.intro Ev.symmetryPropertyClosed Ev.maximumPrincipleClosed))

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse