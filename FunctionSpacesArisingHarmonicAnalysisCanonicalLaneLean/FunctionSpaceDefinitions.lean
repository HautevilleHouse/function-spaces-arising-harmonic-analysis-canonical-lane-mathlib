import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure FunctionSpacePackage where
  spaceType : Type u
  normDefined : Prop
  completeness : Prop
  denseSubset : Prop

structure FunctionSpaceEvidence (F : FunctionSpacePackage) where
  normDefinedClosed : F.normDefined
  completenessClosed : F.completeness
  denseSubsetClosed : F.denseSubset

def FunctionSpaceClosed (F : FunctionSpacePackage) : Prop :=
  F.normDefined ∧ F.completeness ∧ F.denseSubset

theorem function_space_closed_from_evidence
    (F : FunctionSpacePackage) (E : FunctionSpaceEvidence F) :
    FunctionSpaceClosed F := by
  exact And.intro E.normDefinedClosed (And.intro E.completenessClosed E.denseSubsetClosed)

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse