import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure GeneExpressionDynamicsPackage where
  transcriptionRate : Type u
  mrnaDegradation : Type v
  proteinProduction : Type w
  steadyStateExpression : Prop
  temporalResponse : Prop
  dynamicsClosed : Prop

structure GeneExpressionDynamicsEvidence (D : GeneExpressionDynamicsPackage) where
  steadyStateExpressionClosed : D.steadyStateExpression
  temporalResponseClosed : D.temporalResponse
  dynamicsClosed : D.dynamicsClosed

def GeneExpressionDynamicsClosed (D : GeneExpressionDynamicsPackage) : Prop :=
  D.steadyStateExpression ∧ D.temporalResponse ∧ D.dynamicsClosed

theorem gene_expression_dynamics_closed_from_evidence (D : GeneExpressionDynamicsPackage) (E : GeneExpressionDynamicsEvidence D) :
    GeneExpressionDynamicsClosed D := by
  exact And.intro E.steadyStateExpressionClosed (And.intro E.temporalResponseClosed E.dynamicsClosed)

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse