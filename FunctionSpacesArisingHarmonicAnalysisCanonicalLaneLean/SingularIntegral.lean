import FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean.MaximalFunction

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure SingularIntegralPackage where
  kernel : Type
  boundedness : Prop
  calderonZygmundDecomposition : Prop

def SingularIntegralClosed (S : SingularIntegralPackage) : Prop :=
  S.boundedness ∧ S.calderonZygmundDecomposition

theorem singular_integral_closed_from_proof (S : SingularIntegralPackage) (h : S.boundedness) (h' : S.calderonZygmundDecomposition) :
    SingularIntegralClosed S := by
  exact And.intro h h'

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse