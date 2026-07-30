import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure EnhancerSilencerBindingPackage where
  enhancerSequence : String
  silencerSequence : String
  transcriptionFactorBinding : Prop
  chromatinState : Prop
  bindingAffinity : Prop
  functionalOutcome : Prop

structure EnhancerSilencerBindingEvidence (B : EnhancerSilencerBindingPackage) where
  transcriptionFactorBindingClosed : B.transcriptionFactorBinding
  chromatinStateClosed : B.chromatinState
  bindingAffinityClosed : B.bindingAffinity
  functionalOutcomeClosed : B.functionalOutcome

def EnhancerSilencerBindingClosed (B : EnhancerSilencerBindingPackage) : Prop :=
  B.transcriptionFactorBinding ∧ B.chromatinState ∧ B.bindingAffinity ∧ B.functionalOutcome

theorem enhancer_silencer_binding_closed_from_evidence
    (B : EnhancerSilencerBindingPackage) (E : EnhancerSilencerBindingEvidence B) :
    EnhancerSilencerBindingClosed B := by
  exact And.intro E.transcriptionFactorBindingClosed
    (And.intro E.chromatinStateClosed (And.intro E.bindingAffinityClosed E.functionalOutcomeClosed))

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse
