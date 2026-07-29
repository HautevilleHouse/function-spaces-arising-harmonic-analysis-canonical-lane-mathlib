import canonicalLaneMathlib.AdmissibleClass
import FunctionSpacesArisingHarmonicAnalysis.BoundedMeanOscillation
import FunctionSpacesArisingHarmonicAnalysis.CalderonZygmundOperators
import FunctionSpacesArisingHarmonicAnalysis.LittlewoodPaleyTheory
import FunctionSpacesArisingHarmonicAnalysis.HardySpaces

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysis

def ConstrainedFunctionSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_function_spaces_endgame (A : AdmissibleClass) :
    ConstrainedFunctionSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionSpacesArisingHarmonicAnalysis
end HautevilleHouse
