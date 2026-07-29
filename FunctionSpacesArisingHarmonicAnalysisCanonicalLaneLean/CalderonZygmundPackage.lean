import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure CalderonZygmundPackage (M : MeasurableSpace) where
  kernel : M → M → ℝ
  sizeEstimate : Prop
  smoothnessEstimate : Prop
  boundedness : Prop

structure CalderonZygmundEvidence {M : MeasurableSpace} (P : CalderonZygmundPackage M) where
  sizeEstimateClosed : P.sizeEstimate
  smoothnessEstimateClosed : P.smoothnessEstimate
  boundednessClosed : P.boundedness

def CalderonZygmundClosed {M : MeasurableSpace} (P : CalderonZygmundPackage M) : Prop :=
  P.sizeEstimate ∧ P.smoothnessEstimate ∧ P.boundedness

theorem calderon_zygmund_closed_from_evidence {M : MeasurableSpace} (P : CalderonZygmundPackage M) (E : CalderonZygmundEvidence P) : CalderonZygmundClosed P := by
  exact And.intro E.sizeEstimateClosed (And.intro E.smoothnessEstimateClosed E.boundednessClosed)

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse