import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure InterpolationPackage (M : MeasurableSpace) where
  realMethod : Prop
  complexMethod : Prop
  marcienkiewiczTheorem : Prop
  rieszThorinTheorem : Prop

structure InterpolationEvidence {M : MeasurableSpace} (P : InterpolationPackage M) where
  realMethodClosed : P.realMethod
  complexMethodClosed : P.complexMethod
  marcienkiewiczTheoremClosed : P.marcienkiewiczTheorem
  rieszThorinTheoremClosed : P.rieszThorinTheorem

def InterpolationClosed {M : MeasurableSpace} (P : InterpolationPackage M) : Prop :=
  P.realMethod ∧ P.complexMethod ∧ P.marcienkiewiczTheorem ∧ P.rieszThorinTheorem

theorem interpolation_closed_from_evidence {M : MeasurableSpace} (P : InterpolationPackage M) (E : InterpolationEvidence P) : InterpolationClosed P := by
  exact And.intro E.realMethodClosed (And.intro E.complexMethodClosed (And.intro E.marcienkiewiczTheoremClosed E.rieszThorinTheoremClosed))

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse