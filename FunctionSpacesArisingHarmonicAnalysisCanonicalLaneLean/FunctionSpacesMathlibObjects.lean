import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure HarmonicAnalysisSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  measure : carrier → ℝ

structure HarmonicAnalysisAdmittedObject where
  space : HarmonicAnalysisSpace
  maximalFunctionBounded : Prop
  singularIntegralBounded : Prop
  atomicDecompositionExists : Prop
  conclusion : maximalFunctionBounded ∧ singularIntegralBounded ∧ atomicDecompositionExists

structure HarmonicAnalysisEndgameState where
  object : HarmonicAnalysisAdmittedObject

def HarmonicAnalysisWitnessClosed (O : HarmonicAnalysisAdmittedObject) : Prop :=
  O.conclusion

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse