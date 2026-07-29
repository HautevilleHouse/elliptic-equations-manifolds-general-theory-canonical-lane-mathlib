import .AdmissibleClass

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EllipticWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse