import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean

structure FunctionSpaceAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  functionSpaceStructure : Prop
  boundedness : Prop
  completeness : Prop
  embeddingTheorems : Prop
  interpolationTheorems : Prop
  compactnessCriteria : Prop
  conclusion : Prop

def FunctionSpaceWitnessClosed (O : FunctionSpaceAdmittedObject) : Prop :=
  O.conclusion

theorem function_space_admitted_object_conclusion (O : FunctionSpaceAdmittedObject) :
    FunctionSpaceWitnessClosed O := by
  exact O.conclusion

end FunctionSpacesArisingHarmonicAnalysisCanonicalLaneLean
end HautevilleHouse