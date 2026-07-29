import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysis

structure CalderonZygmundPackage where
  kernel : Type u
  operator : Type v
  boundednessL2 : Prop
  weakTypeOneOne : Prop
  interpolationEndpoint : Prop

structure CalderonZygmundEvidence (P : CalderonZygmundPackage) where
  boundednessL2Closed : P.boundednessL2
  weakTypeOneOneClosed : P.weakTypeOneOne
  interpolationEndpointClosed : P.interpolationEndpoint

def CalderonZygmundClosed (P : CalderonZygmundPackage) : Prop :=
  P.boundednessL2 ∧ P.weakTypeOneOne ∧ P.interpolationEndpoint

theorem calderon_zygmund_closed_from_evidence (P : CalderonZygmundPackage) (E : CalderonZygmundEvidence P) : CalderonZygmundClosed P := by
  exact And.intro E.boundednessL2Closed (And.intro E.weakTypeOneOneClosed E.interpolationEndpointClosed)

end FunctionSpacesArisingHarmonicAnalysis
end HautevilleHouse
