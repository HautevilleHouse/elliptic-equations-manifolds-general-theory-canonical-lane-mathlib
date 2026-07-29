import .AdmissibleClass

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure EllipticOperatorPackage where
  manifold : Type u
  vectorBundle : Type v
  symbol : Type w
  principalSymbol : Type x
  ellipticityCondition : Prop
  smoothCoefficients : Prop
  formalAdjoint : Prop

structure EllipticOperatorEvidence (E : EllipticOperatorPackage) where
  ellipticityConditionClosed : E.ellipticityCondition
  smoothCoefficientsClosed : E.smoothCoefficients
  formalAdjointClosed : E.formalAdjoint

def EllipticOperatorClosed (E : EllipticOperatorPackage) : Prop :=
  E.ellipticityCondition ∧ E.smoothCoefficients ∧ E.formalAdjoint

theorem elliptic_operator_closed_from_evidence (E : EllipticOperatorPackage) (ev : EllipticOperatorEvidence E) : EllipticOperatorClosed E := by
  exact And.intro ev.ellipticityConditionClosed (And.intro ev.smoothCoefficientsClosed ev.formalAdjointClosed)

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse