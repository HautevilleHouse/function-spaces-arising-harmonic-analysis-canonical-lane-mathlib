import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionSpacesArisingHarmonicAnalysis

structure WeightedInequalityPackage where
  weightClass : Type
  muckenhouptConditionsHold : Prop
  reverseHolderCondition : Prop
  weightedNormEstimates : Prop
  factorizationProperties : Prop

structure WeightedInequalityEvidence (W : WeightedInequalityPackage) where
  muckenhouptConditionsHoldClosed : W.muckenhouptConditionsHold
  reverseHolderConditionClosed : W.reverseHolderCondition
  weightedNormEstimatesClosed : W.weightedNormEstimates
  factorizationPropertiesClosed : W.factorizationProperties

def WeightedInequalityClosed (W : WeightedInequalityPackage) : Prop :=
  W.muckenhouptConditionsHold ∧ W.reverseHolderCondition ∧ W.weightedNormEstimates ∧ W.factorizationProperties

theorem weighted_inequality_closed_from_evidence (W : WeightedInequalityPackage) (E : WeightedInequalityEvidence W) :
    WeightedInequalityClosed W := by
  exact And.intro E.muckenhouptConditionsHoldClosed (And.intro E.reverseHolderConditionClosed (And.intro E.weightedNormEstimatesClosed E.factorizationPropertiesClosed))

end FunctionSpacesArisingHarmonicAnalysis
end HautevilleHouse