import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean.FunctionSpaceDefinitions

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure MaximalOperatorPackage {F : FunctionSpacePackage} where
  operatorDefined : Prop
  weakTypeBounded : Prop
  strongTypeBounded : Prop

structure MaximalOperatorEvidence {F : FunctionSpacePackage} (M : MaximalOperatorPackage F) where
  operatorDefinedClosed : M.operatorDefined
  weakTypeBoundedClosed : M.weakTypeBounded
  strongTypeBoundedClosed : M.strongTypeBounded

def MaximalOperatorClosed {F : FunctionSpacePackage} (M : MaximalOperatorPackage F) : Prop :=
  M.operatorDefined ∧ M.weakTypeBounded ∧ M.strongTypeBounded

theorem maximal_operator_closed_from_evidence
    {F : FunctionSpacePackage} (M : MaximalOperatorPackage F) (E : MaximalOperatorEvidence M) :
    MaximalOperatorClosed M := by
  exact And.intro E.operatorDefinedClosed (And.intro E.weakTypeBoundedClosed E.strongTypeBoundedClosed)

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse