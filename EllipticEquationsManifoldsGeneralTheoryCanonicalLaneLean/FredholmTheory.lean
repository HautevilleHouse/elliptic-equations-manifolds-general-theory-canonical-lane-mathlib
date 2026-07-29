import .Regularity

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure FredholmPackage where
  operator : EllipticOperatorPackage
  index : Prop
  fredholmProperty : Prop
  indexTheorem : Prop
  parametrix : Prop

structure FredholmEvidence (F : FredholmPackage) where
  indexClosed : F.index
  fredholmPropertyClosed : F.fredholmProperty
  indexTheoremClosed : F.indexTheorem
  parametrixClosed : F.parametrix

def FredholmClosed (F : FredholmPackage) : Prop :=
  F.index ∧ F.fredholmProperty ∧ F.indexTheorem ∧ F.parametrix

theorem fredholm_closed_from_evidence (F : FredholmPackage) (ev : FredholmEvidence F) : FredholmClosed F := by
  exact And.intro ev.indexClosed (And.intro ev.fredholmPropertyClosed (And.intro ev.indexTheoremClosed ev.parametrixClosed))

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse