import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure EllipticOperatorPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  vectorBundle : Type v
  ellipticOperator : vectorBundle → vectorBundle
  symbol : vectorBundle → vectorBundle
  principalSymbolInvertible : Prop

structure EllipticOperatorEvidence (E : EllipticOperatorPackage) where
  smoothStructureClosed : E.smoothStructure
  principalSymbolInvertibleClosed : E.principalSymbolInvertible

def EllipticOperatorClosed (E : EllipticOperatorPackage) : Prop :=
  E.smoothStructure ∧ E.principalSymbolInvertible

theorem elliptic_operator_closed_from_evidence (E : EllipticOperatorPackage)
    (Ev : EllipticOperatorEvidence E) : EllipticOperatorClosed E := by
  exact And.intro Ev.smoothStructureClosed Ev.principalSymbolInvertibleClosed

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
