import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysis

structure HardySpacePackage where
  h1 : Type u
  h1AtomDecomposition : Prop
  maximalFunctionCharacterization : Prop
  dualityWithBMO : Prop

structure HardySpaceEvidence (P : HardySpacePackage) where
  h1AtomDecompositionClosed : P.h1AtomDecomposition
  maximalFunctionCharacterizationClosed : P.maximalFunctionCharacterization
  dualityWithBMOClosed : P.dualityWithBMO

def HardySpaceClosed (P : HardySpacePackage) : Prop :=
  P.h1AtomDecomposition ∧ P.maximalFunctionCharacterization ∧ P.dualityWithBMO

theorem hardy_space_closed_from_evidence (P : HardySpacePackage) (E : HardySpaceEvidence P) : HardySpaceClosed P := by
  exact And.intro E.h1AtomDecompositionClosed (And.intro E.maximalFunctionCharacterizationClosed E.dualityWithBMOClosed)

end FunctionSpacesArisingHarmonicAnalysis
end HautevilleHouse
