import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure AdmissibleClass where
  object : HarmonicAnalysisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HarmonicAnalysisWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse