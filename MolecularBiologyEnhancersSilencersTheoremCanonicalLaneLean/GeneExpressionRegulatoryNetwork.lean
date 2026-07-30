import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure GeneExpressionRegulatoryNetwork where
  enhancerSites : List String
  silencerSites : List String
  transcriptionFactors : List String
  chromatinState : String
  regulatoryInteractions : Prop

structure GeneExpressionRegulatoryNetworkEvidence (G : GeneExpressionRegulatoryNetwork) where
  enhancerSitesDefined : G.enhancerSites.length > 0
  silencerSitesDefined : G.silencerSites.length > 0
  regulatoryInteractionsClosed : G.regulatoryInteractions

def GeneExpressionRegulatoryNetworkClosed (G : GeneExpressionRegulatoryNetwork) : Prop :=
  G.enhancerSites.length > 0 ∧ G.silencerSites.length > 0 ∧ G.regulatoryInteractions

theorem gene_expression_regulatory_network_closed_from_evidence
    (G : GeneExpressionRegulatoryNetwork) (E : GeneExpressionRegulatoryNetworkEvidence G) :
    GeneExpressionRegulatoryNetworkClosed G := by
  exact And.intro E.enhancerSitesDefined (And.intro E.silencerSitesDefined E.regulatoryInteractionsClosed)

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse
