import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure GeneExpressionOutputPackage where
  transcriptionInitiation : Prop
  transcriptLevel : ℕ
  repressionMechanism : Prop
  expressionThreshold : ℕ

structure GeneExpressionOutputEvidence (G : GeneExpressionOutputPackage) where
  transcriptionInitiationClosed : G.transcriptionInitiation
  transcriptLevelClosed : G.transcriptLevel ≥ 0
  repressionMechanismClosed : G.repressionMechanism
  expressionThresholdClosed : G.expressionThreshold > 0

def GeneExpressionOutputClosed (G : GeneExpressionOutputPackage) : Prop :=
  G.transcriptionInitiation ∧ G.transcriptLevel ≥ 0 ∧ G.repressionMechanism ∧ G.expressionThreshold > 0

theorem gene_expression_output_closed_from_evidence (G : GeneExpressionOutputPackage)
    (E : GeneExpressionOutputEvidence G) : GeneExpressionOutputClosed G := by
  exact And.intro E.transcriptionInitiationClosed
    (And.intro E.transcriptLevelClosed (And.intro E.repressionMechanismClosed E.expressionThresholdClosed))

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse