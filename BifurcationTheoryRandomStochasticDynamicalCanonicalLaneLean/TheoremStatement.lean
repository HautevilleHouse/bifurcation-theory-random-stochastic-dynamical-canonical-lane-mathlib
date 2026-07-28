import HautevilleHouse.BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "bifurcation-theory-random-stochastic-dynamical-canonical-lane"
  theoremName := "ConstrainedBifurcationRandomStochasticDynamicalClosure"
  theoremObject := "Random stochastic dynamical system with bifurcation"
  classicalBoundary := "Random perturbations outside the constrained class"
  manifoldConstrainedStatement := "Constrained bifurcation theorem internalized through source constants, reviewer bridge, manifest hashes, and outside-constant dependency count"
  certificateLane := "random_stochastic_dynamical_constrained"
  carriedRemainder := "Classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean
end HautevilleHouse