import canonicalLaneMathlib.AdmissibleClass
import EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean.EllipticOperator

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure HodgeTheoryPackage {E : EllipticOperatorPackage} where
  hodgeLaplacian : Prop
  hodgeDecomposition : Prop
  harmonicFormsFiniteDim : Prop
  poincareDuality : Prop

structure HodgeTheoryEvidence {E : EllipticOperatorPackage} (H : HodgeTheoryPackage) where
  hodgeLaplacianClosed : H.hodgeLaplacian
  hodgeDecompositionClosed : H.hodgeDecomposition
  harmonicFormsFiniteDimClosed : H.harmonicFormsFiniteDim
  poincareDualityClosed : H.poincareDuality

def HodgeTheoryClosed {E : EllipticOperatorPackage} (H : HodgeTheoryPackage) : Prop :=
  H.hodgeLaplacian ∧ H.hodgeDecomposition ∧ H.harmonicFormsFiniteDim ∧ H.poincareDuality

theorem hodge_theory_closed_from_evidence {E : EllipticOperatorPackage}
    (H : HodgeTheoryPackage) (Ev : HodgeTheoryEvidence H) : HodgeTheoryClosed H := by
  exact And.intro Ev.hodgeLaplacianClosed
    (And.intro Ev.hodgeDecompositionClosed
      (And.intro Ev.harmonicFormsFiniteDimClosed Ev.poincareDualityClosed))

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse