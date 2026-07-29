import .WeakSolutions

namespace HautevilleHouse
namespace EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean

structure RegularityPackage where
  weakSolution : WeakSolutionPackage
  interiorRegularity : Prop
  boundaryRegularity : Prop
  schauderEstimates : Prop
  bootstrapping : Prop

structure RegularityEvidence (R : RegularityPackage) where
  interiorRegularityClosed : R.interiorRegularity
  boundaryRegularityClosed : R.boundaryRegularity
  schauderEstimatesClosed : R.schauderEstimates
  bootstrappingClosed : R.bootstrapping

def RegularityClosed (R : RegularityPackage) : Prop :=
  R.interiorRegularity ∧ R.boundaryRegularity ∧ R.schauderEstimates ∧ R.bootstrapping

theorem regularity_closed_from_evidence (R : RegularityPackage) (ev : RegularityEvidence R) : RegularityClosed R := by
  exact And.intro ev.interiorRegularityClosed (And.intro ev.boundaryRegularityClosed (And.intro ev.schauderEstimatesClosed ev.bootstrappingClosed))

end EllipticEquationsManifoldsGeneralTheoryCanonicalLaneLean
end HautevilleHouse