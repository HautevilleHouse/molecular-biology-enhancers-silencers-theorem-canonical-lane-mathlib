import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure ChromatinLoopingPackage where
  architecturalProteins : Prop
  loopFormation : Prop
  enhancerPromoterContact : Prop
  silencerPromoterContact : Prop
  loopStability : Prop

structure ChromatinLoopingEvidence (C : ChromatinLoopingPackage) where
  architecturalProteinsClosed : C.architecturalProteins
  loopFormationClosed : C.loopFormation
  enhancerPromoterContactClosed : C.enhancerPromoterContact
  silencerPromoterContactClosed : C.silencerPromoterContact
  loopStabilityClosed : C.loopStability

def ChromatinLoopingClosed (C : ChromatinLoopingPackage) : Prop :=
  C.architecturalProteins ∧ C.loopFormation ∧ C.enhancerPromoterContact ∧ C.silencerPromoterContact ∧ C.loopStability

theorem chromatin_looping_closed_from_evidence
    (C : ChromatinLoopingPackage) (E : ChromatinLoopingEvidence C) :
    ChromatinLoopingClosed C := by
  exact And.intro E.architecturalProteinsClosed
    (And.intro E.loopFormationClosed (And.intro E.enhancerPromoterContactClosed (And.intro E.silencerPromoterContactClosed E.loopStabilityClosed)))

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse
