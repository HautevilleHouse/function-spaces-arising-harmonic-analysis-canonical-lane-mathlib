import FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean.FunctionSpacesMathlibObjects

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure MaximalFunctionPackage where
  space : HarmonicAnalysisSpace
  maximalOperator : (space.carrier → ℝ) → ℝ
  weakTypeOneOne : Prop
  strongTypePP : Prop

def MaximalFunctionClosed (M : MaximalFunctionPackage) : Prop :=
  M.weakTypeOneOne ∧ M.strongTypePP

theorem maximal_function_closed_from_proof (M : MaximalFunctionPackage) (h : M.weakTypeOneOne) (h' : M.strongTypePP) :
    MaximalFunctionClosed M := by
  exact And.intro h h'

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse