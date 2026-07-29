import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure EllipticBoundaryValueProblemsPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  boundary : Type v
  ellipticOperator : Type w
  boundaryCondition : Type x
  fredholmProperty : Prop
  regularity : Prop

structure EllipticBoundaryValueProblemsEvidence
    (B : EllipticBoundaryValueProblemsPackage) where
  smoothStructureClosed : B.smoothStructure
  fredholmPropertyClosed : B.fredholmProperty
  regularityClosed : B.regularity

def EllipticBoundaryValueProblemsClosed
    (B : EllipticBoundaryValueProblemsPackage) : Prop :=
  B.smoothStructure ∧ B.fredholmProperty ∧ B.regularity

theorem elliptic_boundary_value_problems_closed_from_evidence
    (B : EllipticBoundaryValueProblemsPackage)
    (Ev : EllipticBoundaryValueProblemsEvidence B) :
    EllipticBoundaryValueProblemsClosed B := by
  exact And.intro Ev.smoothStructureClosed
    (And.intro Ev.fredholmPropertyClosed Ev.regularityClosed)

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
