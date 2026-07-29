import .GateLemmas

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

def ConstrainedEllipticClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_elliptic_endgame (A : AdmissibleClass) : ConstrainedEllipticClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse