import FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HarmonicAnalysisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse