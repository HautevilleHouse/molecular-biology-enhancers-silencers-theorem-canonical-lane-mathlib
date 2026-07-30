import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure RateEquation where
  transcriptionRate : Float
  degradationRate : Float
  enhancerFoldChange : Float
  silencerFoldChange : Float

structure QuantitativeExpressionModelPackage (E : EnhancerSilencerAdmittedObject) where
  baselineParams : RateEquation
  enhancerBindingAffinity : Float
  silencerBindingAffinity : Float
  expressionSteadyState : Prop
  responseCurve : Prop

structure QuantitativeExpressionModelEvidence {E : EnhancerSilencerAdmittedObject} (M : QuantitativeExpressionModelPackage E) where
  baselineParamsClosed : M.baselineParams.transcriptionRate > 0
  enhancerBindingAffinityClosed : M.enhancerBindingAffinity > 0
  silencerBindingAffinityClosed : M.silencerBindingAffinity > 0
  expressionSteadyStateClosed : M.expressionSteadyState
  responseCurveClosed : M.responseCurve

def QuantitativeExpressionModelClosed {E : EnhancerSilencerAdmittedObject} (M : QuantitativeExpressionModelPackage E) : Prop :=
  M.baselineParams.transcriptionRate > 0 ∧ M.enhancerBindingAffinity > 0 ∧ M.silencerBindingAffinity > 0 ∧ M.expressionSteadyState ∧ M.responseCurve

theorem quantitative_expression_model_closed_from_evidence {E : EnhancerSilencerAdmittedObject} (M : QuantitativeExpressionModelPackage E) (Ev : QuantitativeExpressionModelEvidence M) : QuantitativeExpressionModelClosed M :=
  And.intro Ev.baselineParamsClosed (And.intro Ev.enhancerBindingAffinityClosed (And.intro Ev.silencerBindingAffinityClosed (And.intro Ev.expressionSteadyStateClosed Ev.responseCurveClosed)))

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse