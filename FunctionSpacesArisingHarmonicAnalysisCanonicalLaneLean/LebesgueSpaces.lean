import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure LebesgueSpace (p : ℝ) where
  measureSpace : Type u
  measure : MeasureTheory.Measure measureSpace
  integrabilityCondition : Prop
  normEquivalence : Prop

def LebesgueSpaceClosed (L : LebesgueSpace p) : Prop :=
  L.integrabilityCondition ∧ L.normEquivalence

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse