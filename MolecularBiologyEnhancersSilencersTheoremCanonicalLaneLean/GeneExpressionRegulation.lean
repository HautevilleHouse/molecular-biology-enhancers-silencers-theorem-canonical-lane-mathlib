import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure GeneExpressionRegulationPackage where
  genePromoter : String
  enhancerBound : Prop
  silencerBound : Prop
  transcriptionInitiation : Prop
  expressionLevel : Prop

structure GeneExpressionRegulationEvidence (G : GeneExpressionRegulationPackage) where
  enhancerBoundClosed : G.enhancerBound
  silencerBoundClosed : G.silencerBound
  transcriptionInitiationClosed : G.transcriptionInitiation
  expressionLevelClosed : G.expressionLevel

def GeneExpressionRegulationClosed (G : GeneExpressionRegulationPackage) : Prop :=
  G.enhancerBound ∧ G.silencerBound ∧ G.transcriptionInitiation ∧ G.expressionLevel

theorem gene_expression_regulation_closed_from_evidence
    (G : GeneExpressionRegulationPackage) (E : GeneExpressionRegulationEvidence G) :
    GeneExpressionRegulationClosed G := by
  exact And.intro E.enhancerBoundClosed
    (And.intro E.silencerBoundClosed (And.intro E.transcriptionInitiationClosed E.expressionLevelClosed))

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse
