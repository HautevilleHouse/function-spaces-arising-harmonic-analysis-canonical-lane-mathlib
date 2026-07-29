import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysis

structure HardySpacePackage where
  dimension : ℕ
  p : ℝ
  hardySpaceType : String
  boundaryValuesDefined : Prop
  atomicDecompositionExists : Prop
  maximalFunctionCharacterization : Prop

structure HardySpaceEvidence (H : HardySpacePackage) where
  boundaryValuesDefinedClosed : H.boundaryValuesDefined
  atomicDecompositionExistsClosed : H.atomicDecompositionExists
  maximalFunctionCharacterizationClosed : H.maximalFunctionCharacterization

def HardySpaceClosed (H : HardySpacePackage) : Prop :=
  H.boundaryValuesDefined ∧ H.atomicDecompositionExists ∧ H.maximalFunctionCharacterization

theorem hardy_space_closed_from_evidence (H : HardySpacePackage) (E : HardySpaceEvidence H) :
    HardySpaceClosed H := by
  exact And.intro E.boundaryValuesDefinedClosed
    (And.intro E.atomicDecompositionExistsClosed E.maximalFunctionCharacterizationClosed)

end FunctionSpacesArisingHarmonicAnalysis
end HautevilleHouse