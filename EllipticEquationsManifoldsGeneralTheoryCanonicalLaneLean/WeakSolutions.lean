import .SobolevSpaces

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure WeakSolutionPackage where
  operator : EllipticOperatorPackage
  sobolevSpace : SobolevSpacePackage
  weakFormulation : Prop
  existence : Prop
  uniqueness : Prop
  regularity : Prop

structure WeakSolutionEvidence (W : WeakSolutionPackage) where
  weakFormulationClosed : W.weakFormulation
  existenceClosed : W.existence
  uniquenessClosed : W.uniqueness
  regularityClosed : W.regularity

def WeakSolutionClosed (W : WeakSolutionPackage) : Prop :=
  W.weakFormulation ∧ W.existence ∧ W.uniqueness ∧ W.regularity

theorem weak_solution_closed_from_evidence (W : WeakSolutionPackage) (ev : WeakSolutionEvidence W) : WeakSolutionClosed W := by
  exact And.intro ev.weakFormulationClosed (And.intro ev.existenceClosed (And.intro ev.uniquenessClosed ev.regularityClosed))

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse