import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure FunctionSpaceAdmittedObject where
  space : Type
  norm : (space → ℝ) → ℝ
  completeness : Prop
  inclusion : Prop

structure AdmissibleClass where
  object : FunctionSpaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse