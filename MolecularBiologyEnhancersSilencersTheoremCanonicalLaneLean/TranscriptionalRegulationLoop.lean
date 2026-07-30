import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure TranscriptionalRegulationLoop where
  geneExpressionLevels : Float
  feedbackMechanism : Prop
  rnapRecruitment : Prop
  signalIntegration : Prop

structure TranscriptionalRegulationLoopEvidence (L : TranscriptionalRegulationLoop) where
  geneExpressionLevelsClosed : L.geneExpressionLevels ≥ 0.0
  feedbackMechanismClosed : L.feedbackMechanism
  rnapRecruitmentClosed : L.rnapRecruitment
  signalIntegrationClosed : L.signalIntegration

def TranscriptionalRegulationLoopClosed (L : TranscriptionalRegulationLoop) : Prop :=
  L.geneExpressionLevels ≥ 0.0 ∧ L.feedbackMechanism ∧
  L.rnapRecruitment ∧ L.signalIntegration

theorem transcriptional_regulation_loop_closed_from_evidence
    (L : TranscriptionalRegulationLoop) (E : TranscriptionalRegulationLoopEvidence L) :
    TranscriptionalRegulationLoopClosed L := by
  exact And.intro E.geneExpressionLevelsClosed (And.intro E.feedbackMechanismClosed
    (And.intro E.rnapRecruitmentClosed E.signalIntegrationClosed))

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse
