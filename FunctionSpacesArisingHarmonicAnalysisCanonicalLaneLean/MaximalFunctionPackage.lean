import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure MaximalFunctionPackage (M : MeasurableSpace) where
  measure : Measure M
  maximalOperator : (M → ℝ) → (M → ℝ)
  pointwiseInequality : ∀ (f : M → ℝ), ∀ x, |f x| ≤ maximalOperator f x
  weakTypeInequality : Prop
  strongTypeInequality : Prop

structure MaximalFunctionEvidence {M : MeasurableSpace} (P : MaximalFunctionPackage M) where
  pointwiseInequalityClosed : ∀ (f : M → ℝ), ∀ x, |f x| ≤ P.maximalOperator f x
  weakTypeInequalityClosed : P.weakTypeInequality
  strongTypeInequalityClosed : P.strongTypeInequality

def MaximalFunctionClosed {M : MeasurableSpace} (P : MaximalFunctionPackage M) : Prop :=
  (∀ (f : M → ℝ), ∀ x, |f x| ≤ P.maximalOperator f x) ∧ P.weakTypeInequality ∧ P.strongTypeInequality

theorem maximal_function_closed_from_evidence {M : MeasurableSpace} (P : MaximalFunctionPackage M) (E : MaximalFunctionEvidence P) : MaximalFunctionClosed P := by
  exact And.intro E.pointwiseInequalityClosed (And.intro E.weakTypeInequalityClosed E.strongTypeInequalityClosed)

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse