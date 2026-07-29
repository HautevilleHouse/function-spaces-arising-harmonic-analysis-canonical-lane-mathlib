import FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean.SingularIntegral

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure LittlewoodPaleyPackage where
  dyadicDecomposition : Type
  squareFunction : (ℝ → ℝ) → ℝ
  characterizations : Prop

def LittlewoodPaleyClosed (L : LittlewoodPaleyPackage) : Prop :=
  L.characterizations

theorem littlewood_paley_closed_from_proof (L : LittlewoodPaleyPackage) (h : L.characterizations) :
    LittlewoodPaleyClosed L := h

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse