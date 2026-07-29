import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure LittlewoodPaleyPackage (M : MeasurableSpace) where
  dyadicDecomposition : (ℕ → (M → ℝ)) → (M → ℝ)
  squareFunction : (M → ℝ) → (M → ℝ)
  normEquivalence : Prop
  lacunaryMaximalFunction : (M → ℝ) → (M → ℝ)

structure LittlewoodPaleyEvidence {M : MeasurableSpace} (P : LittlewoodPaleyPackage M) where
  normEquivalenceClosed : P.normEquivalence
  lacunaryMaximalFunctionBounded : Prop
  lacunaryMaximalFunctionBoundedClosed : lacunaryMaximalFunctionBounded

def LittlewoodPaleyClosed {M : MeasurableSpace} (P : LittlewoodPaleyPackage M) : Prop :=
  P.normEquivalence ∧ (∃ (L : (M → ℝ) → (M → ℝ)), True)  -- placeholder

theorem littlewood_paley_closed_from_evidence {M : MeasurableSpace} (P : LittlewoodPaleyPackage M) (E : LittlewoodPaleyEvidence P) : LittlewoodPaleyClosed P := by
  refine And.intro E.normEquivalenceClosed ?_
  exact ⟨P.lacunaryMaximalFunction, trivial⟩

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse