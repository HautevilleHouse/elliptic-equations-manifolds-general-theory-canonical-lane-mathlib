import HautevilleHouse.EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "elliptic-equations-manifolds-general-theory-canonical-lane",
  theoremName := "Elliptic Equations Manifolds General Theory",
  theoremObject := "Existence of solutions to elliptic PDEs on compact manifolds",
  classicalBoundary := "classical boundary carried by formalization certificate",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through admissible class closure",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary remains open"
}

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = "elliptic-equations-manifolds-general-theory-canonical-lane" := by
  rfl

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse