import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure BMOandHardyPackage (M : MeasurableSpace) where
  BMO_norm : (M → ℝ) → ℝ
  Hardy_norm : (M → ℝ) → ℝ
  BMO_dual_Hardy : Prop
  H1_BMO_duality : Prop

structure BMOandHardyEvidence {M : MeasurableSpace} (P : BMOandHardyPackage M) where
  BMO_dual_HardyClosed : P.BMO_dual_Hardy
  H1_BMO_dualityClosed : P.H1_BMO_duality

def BMOandHardyClosed {M : MeasurableSpace} (P : BMOandHardyPackage M) : Prop :=
  P.BMO_dual_Hardy ∧ P.H1_BMO_duality

theorem bmo_and_hardy_closed_from_evidence {M : MeasurableSpace} (P : BMOandHardyPackage M) (E : BMOandHardyEvidence P) : BMOandHardyClosed P := by
  exact And.intro E.BMO_dual_HardyClosed E.H1_BMO_dualityClosed

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse