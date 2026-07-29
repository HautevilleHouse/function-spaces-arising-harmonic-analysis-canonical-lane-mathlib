import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysis

structure BMO_VMO_Package where
  domain : Type
  bmoSeminormFinite : Prop
  vmoClosureProperty : Prop
  johnNirenbergInequalityHolds : Prop
  dualityWithHardySpace : Prop

structure BMO_VMO_Evidence (P : BMO_VMO_Package) where
  bmoSeminormFiniteClosed : P.bmoSeminormFinite
  vmoClosurePropertyClosed : P.vmoClosureProperty
  johnNirenbergInequalityHoldsClosed : P.johnNirenbergInequalityHolds
  dualityWithHardySpaceClosed : P.dualityWithHardySpace

def BMO_VMO_Closed (P : BMO_VMO_Package) : Prop :=
  P.bmoSeminormFinite ∧ P.vmoClosureProperty ∧ P.johnNirenbergInequalityHolds ∧ P.dualityWithHardySpace

theorem bmo_vmo_closed_from_evidence (P : BMO_VMO_Package) (E : BMO_VMO_Evidence P) :
    BMO_VMO_Closed P := by
  exact And.intro E.bmoSeminormFiniteClosed (And.intro E.vmoClosurePropertyClosed (And.intro E.johnNirenbergInequalityHoldsClosed E.dualityWithHardySpaceClosed))

end FunctionSpacesArisingHarmonicAnalysis
end HautevilleHouse