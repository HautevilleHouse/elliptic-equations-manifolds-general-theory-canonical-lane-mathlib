import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure EllipticAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  ellipticOperator : Prop
  operatorElliptic : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : EllipticAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EllipticWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def EllipticWitnessClosed (O : EllipticAdmittedObject) : Prop :=
  O.conclusion

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse