import .EllipticOperator

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure SobolevSpacePackage where
  manifold : Type u
  metric : Type v
  sobolevNorm : Type w
  completeness : Prop
  embeddingTheorems : Prop
  compactEmbedding : Prop

structure SobolevSpaceEvidence (S : SobolevSpacePackage) where
  completenessClosed : S.completeness
  embeddingTheoremsClosed : S.embeddingTheorems
  compactEmbeddingClosed : S.compactEmbedding

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.completeness ∧ S.embeddingTheorems ∧ S.compactEmbedding

theorem sobolev_space_closed_from_evidence (S : SobolevSpacePackage) (ev : SobolevSpaceEvidence S) : SobolevSpaceClosed S := by
  exact And.intro ev.completenessClosed (And.intro ev.embeddingTheoremsClosed ev.compactEmbeddingClosed)

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse