import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean

structure LyapunovExponent (Ω : Type u) (F : Type v) (S : StochasticDynamicalSystem Ω F) where
  exponentValues : List ℝ
  nonrandomness : Prop

def lyapunovSpectrumStable {Ω F} {S : StochasticDynamicalSystem Ω F} (L : LyapunovExponent Ω F S) : Prop :=
  L.nonrandomness

structure LyapunovExponentFamily {Ω F} (S : StochasticDynamicalSystem Ω F) where
  exponents : S.parameterSpace → LyapunovExponent Ω F S
  bifurcationSignature : Prop

def familyBifurcationSignature {Ω F} {S : StochasticDynamicalSystem Ω F} (Fam : LyapunovExponentFamily S) : Prop :=
  Fam.bifurcationSignature

end BifurcationTheoryRandomStochasticDynamicalCanonicalLaneLean
end HautevilleHouse