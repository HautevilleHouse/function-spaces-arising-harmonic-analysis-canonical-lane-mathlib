import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysis

structure BMOPackage where
  vmo : Type u
  bmo : Type v
  integralMeanOscillation : Type w
  johnNirenbergInequality : Prop
  dualityWithHardySpace : Prop

structure BMOEvidence (P : BMOPackage) where
  johnNirenbergInequalityClosed : P.johnNirenbergInequality
  dualityWithHardySpaceClosed : P.dualityWithHardySpace

def BMOClosed (P : BMOPackage) : Prop :=
  P.johnNirenbergInequality ∧ P.dualityWithHardySpace

theorem bmo_closed_from_evidence (P : BMOPackage) (E : BMOEvidence P) : BMOClosed P := by
  exact And.intro E.johnNirenbergInequalityClosed E.dualityWithHardySpaceClosed

end FunctionSpacesArisingHarmonicAnalysis
end HautevilleHouse
