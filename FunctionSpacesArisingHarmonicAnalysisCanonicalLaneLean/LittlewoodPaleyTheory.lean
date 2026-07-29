import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysis

structure LittlewoodPaleyPackage where
  dyadicDecomposition : Type u
  squareFunction : Type v
  lusinAreaFunction : Type w
  littlewoodPaleyInequality : Prop
  characterizationOfLp : Prop

structure LittlewoodPaleyEvidence (P : LittlewoodPaleyPackage) where
  littlewoodPaleyInequalityClosed : P.littlewoodPaleyInequality
  characterizationOfLpClosed : P.characterizationOfLp

def LittlewoodPaleyClosed (P : LittlewoodPaleyPackage) : Prop :=
  P.littlewoodPaleyInequality ∧ P.characterizationOfLp

theorem littlewood_paley_closed_from_evidence (P : LittlewoodPaleyPackage) (E : LittlewoodPaleyEvidence P) : LittlewoodPaleyClosed P := by
  exact And.intro E.littlewoodPaleyInequalityClosed E.characterizationOfLpClosed

end FunctionSpacesArisingHarmonicAnalysis
end HautevilleHouse
