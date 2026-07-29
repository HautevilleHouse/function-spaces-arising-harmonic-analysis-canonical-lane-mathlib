import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure MaximalFunction where
  averagingType : Type u
  weakTypeBound : Prop
  differentiationTheorem : Prop
  boundednessOnLp : Prop

def MaximalFunctionClosed (M : MaximalFunction) : Prop :=
  M.weakTypeBound ∧ M.differentiationTheorem ∧ M.boundednessOnLp

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse