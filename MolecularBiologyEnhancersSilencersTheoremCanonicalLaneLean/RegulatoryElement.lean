import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure RegulatoryElementPackage where
  enhancerSequence : String
  silencerSequence : String
  transcriptionFactorBindings : Prop
  enhancerActive : Prop
  silencerActive : Prop
  competitionResolved : Prop

structure RegulatoryElementEvidence (E : RegulatoryElementPackage) where
  enhancerActiveClosed : E.enhancerActive
  silencerActiveClosed : E.silencerActive
  competitionResolvedClosed : E.competitionResolved

def RegulatoryElementClosed (E : RegulatoryElementPackage) : Prop :=
  E.enhancerActive ∧ E.silencerActive ∧ E.competitionResolved

theorem regulatory_element_closed_from_evidence (E : RegulatoryElementPackage) (Ev : RegulatoryElementEvidence E) :
    RegulatoryElementClosed E := by
  exact And.intro Ev.enhancerActiveClosed (And.intro Ev.silencerActiveClosed Ev.competitionResolvedClosed)

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse