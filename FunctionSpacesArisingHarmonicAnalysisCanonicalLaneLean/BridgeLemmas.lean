import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.completeness

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.completeness

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse