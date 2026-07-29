import Mathlib.Topology.Basic
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure EllipticManifoldPackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  dimension : Nat
  dimensionEq : dimension = 3 -- example, can be general
  compactWithoutBoundary : Prop

structure EllipticOperator (M : EllipticManifoldPackage) where
  bundle : Type v
  symbol : Type w
  principalSymbolInvertible : Prop
  order : Nat
  linear : Prop

structure EllipticOperatorEvidence (M : EllipticManifoldPackage) (E : EllipticOperator M) where
  principalSymbolInvertibleClosed : E.principalSymbolInvertible
  orderClosed : E.order = 2

structure EllipticManifoldEvidence (M : EllipticManifoldPackage) where
  smoothStructureClosed : M.smoothStructure
  compactWithoutBoundaryClosed : M.compactWithoutBoundary

def EllipticManifoldClosed (M : EllipticManifoldPackage) : Prop :=
  M.smoothStructure ∧ M.compactWithoutBoundary

def EllipticOperatorClosed (M : EllipticManifoldPackage) (E : EllipticOperator M) : Prop :=
  E.principalSymbolInvertible ∧ E.order = 2

theorem elliptic_manifold_closed_from_evidence (M : EllipticManifoldPackage) (E : EllipticManifoldEvidence M) :
    EllipticManifoldClosed M := by
  exact And.intro E.smoothStructureClosed E.compactWithoutBoundaryClosed

theorem elliptic_operator_closed_from_evidence (M : EllipticManifoldPackage) (E : EllipticOperator M) (Ev : EllipticOperatorEvidence M E) :
    EllipticOperatorClosed M E := by
  exact And.intro Ev.principalSymbolInvertibleClosed Ev.orderClosed

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
