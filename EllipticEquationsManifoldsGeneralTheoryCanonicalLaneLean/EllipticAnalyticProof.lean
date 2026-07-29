import HautevilleHouse.EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean.MathlibObjects
import HautevilleHouse.EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean.EllipticRegularityPackage

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure SchauderCertificate {M : EllipticManifoldPackage} {E : EllipticOperator M}
    (P : EllipticRegularityPackage M E) where
  localEstimates : Prop
  globalEstimates : Prop
  holderRegularity : Prop
  localEstimatesClosed : localEstimates
  globalEstimatesClosed : globalEstimates
  holderRegularityClosed : holderRegularity

structure FredholmCertificate {M : EllipticManifoldPackage} {E : EllipticOperator M}
    (P : EllipticRegularityPackage M E) where
  indexDefined : Prop
  kernelFiniteDim : Prop
  cokernelFiniteDim : Prop
  indexDefinedClosed : indexDefined
  kernelFiniteDimClosed : kernelFiniteDim
  cokernelFiniteDimClosed : cokernelFiniteDim

def SchauderCertificateClosed {M : EllipticManifoldPackage} {E : EllipticOperator M}
    (P : EllipticRegularityPackage M E) (C : SchauderCertificate P) : Prop :=
  C.localEstimates ∧ C.globalEstimates ∧ C.holderRegularity

def FredholmCertificateClosed {M : EllipticManifoldPackage} {E : EllipticOperator M}
    (P : EllipticRegularityPackage M E) (C : FredholmCertificate P) : Prop :=
  C.indexDefined ∧ C.kernelFiniteDim ∧ C.cokernelFiniteDim

theorem schauder_certificate_closed {M : EllipticManifoldPackage} {E : EllipticOperator M}
    (P : EllipticRegularityPackage M E) (C : SchauderCertificate P) : SchauderCertificateClosed P C := by
  exact And.intro C.localEstimatesClosed (And.intro C.globalEstimatesClosed C.holderRegularityClosed)

theorem fredholm_certificate_closed {M : EllipticManifoldPackage} {E : EllipticOperator M}
    (P : EllipticRegularityPackage M E) (C : FredholmCertificate P) : FredholmCertificateClosed P C := by
  exact And.intro C.indexDefinedClosed (And.intro C.kernelFiniteDimClosed C.cokernelFiniteDimClosed)

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse
