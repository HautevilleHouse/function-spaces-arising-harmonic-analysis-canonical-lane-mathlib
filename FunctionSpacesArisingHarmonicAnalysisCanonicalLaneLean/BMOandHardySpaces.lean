import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean.FunctionSpaceDefinitions

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure BMOandHardyPackage {F : FunctionSpacePackage} where
  BMODefined : Prop
  HardySpaceDefined : Prop
  DualityHolds : Prop

structure BMOandHardyEvidence {F : FunctionSpacePackage} (BH : BMOandHardyPackage F) where
  BMODefinedClosed : BH.BMODefined
  HardySpaceDefinedClosed : BH.HardySpaceDefined
  DualityHoldsClosed : BH.DualityHolds

def BMOandHardyClosed {F : FunctionSpacePackage} (BH : BMOandHardyPackage F) : Prop :=
  BH.BMODefined ∧ BH.HardySpaceDefined ∧ BH.DualityHolds

theorem bmo_and_hardy_closed_from_evidence
    {F : FunctionSpacePackage} (BH : BMOandHardyPackage F) (E : BMOandHardyEvidence BH) :
    BMOandHardyClosed BH := by
  exact And.intro E.BMODefinedClosed (And.intro E.HardySpaceDefinedClosed E.DualityHoldsClosed)

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse