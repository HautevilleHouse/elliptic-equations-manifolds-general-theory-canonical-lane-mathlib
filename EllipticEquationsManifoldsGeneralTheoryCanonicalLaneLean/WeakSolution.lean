import HautevilleHouse.EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean.EllipticOperator

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure WeakSolutionPackage {E : EllipticOperatorPackage} where
  sobolevSpace : Type u
  bilinearForm : sobolevSpace → sobolevSpace → ℝ
  coercivity : Prop
  boundedness : Prop
  sourceTerm : sobolevSpace → ℝ
  existenceUnique : Prop

structure WeakSolutionEvidence {E : EllipticOperatorPackage} (W : WeakSolutionPackage E) where
  coercivityClosed : W.coercivity
  boundednessClosed : W.boundedness
  existenceUniqueClosed : W.existenceUnique

def WeakSolutionClosed {E : EllipticOperatorPackage} (W : WeakSolutionPackage E) : Prop :=
  W.coercivity ∧ W.boundedness ∧ W.existenceUnique

theorem weak_solution_closed_from_evidence {E : EllipticOperatorPackage} (W : WeakSolutionPackage E) (ev : WeakSolutionEvidence W) :
    WeakSolutionClosed W := by
  exact And.intro ev.coercivityClosed (And.intro ev.boundednessClosed ev.existenceUniqueClosed)

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
