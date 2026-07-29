import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure SingularIntegralOperator where
  kernelType : Type u
  boundednessOnLp : Prop
  calderonZygmundDecomposition : Prop
  weightedNormEstimates : Prop

def SingularIntegralClosed (S : SingularIntegralOperator) : Prop :=
  S.boundednessOnLp ∧ S.calderonZygmundDecomposition ∧ S.weightedNormEstimates

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse