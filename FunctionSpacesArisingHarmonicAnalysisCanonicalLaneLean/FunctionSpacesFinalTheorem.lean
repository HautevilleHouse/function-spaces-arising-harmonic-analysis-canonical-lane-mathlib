import FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

def ConstrainedFunctionSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_function_spaces_endgame (A : AdmissibleClass) :
    ConstrainedFunctionSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse