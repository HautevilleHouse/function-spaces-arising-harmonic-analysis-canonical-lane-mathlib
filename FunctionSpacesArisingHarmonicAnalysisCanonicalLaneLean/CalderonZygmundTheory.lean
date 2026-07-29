import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean.FunctionSpaceDefinitions

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure CalderonZygmundPackage {F : FunctionSpacePackage} where
  kernelDefined : Prop
  boundednessOnLp : Prop
  interpolationHolds : Prop

structure CalderonZygmundEvidence {F : FunctionSpacePackage} (CZ : CalderonZygmundPackage F) where
  kernelDefinedClosed : CZ.kernelDefined
  boundednessOnLpClosed : CZ.boundednessOnLp
  interpolationHoldsClosed : CZ.interpolationHolds

def CalderonZygmundClosed {F : FunctionSpacePackage} (CZ : CalderonZygmundPackage F) : Prop :=
  CZ.kernelDefined ∧ CZ.boundednessOnLp ∧ CZ.interpolationHolds

theorem calderon_zygmund_closed_from_evidence
    {F : FunctionSpacePackage} (CZ : CalderonZygmundPackage F) (E : CalderonZygmundEvidence CZ) :
    CalderonZygmundClosed CZ := by
  exact And.intro E.kernelDefinedClosed (And.intro E.boundednessOnLpClosed E.interpolationHoldsClosed)

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse