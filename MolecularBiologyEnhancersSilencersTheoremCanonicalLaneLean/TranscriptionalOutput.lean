import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure TranscriptionalOutputPackage where
  mrnaTranscript : Type u
  expressionLevel : Type v
  geneActivation : Prop
  geneSilencing : Prop
  enhancerDriven : Prop
  silencerSuppressed : Prop
  outputIntegrated : Prop

structure TranscriptionalOutputEvidence (O : TranscriptionalOutputPackage) where
  geneActivationClosed : O.geneActivation
  geneSilencingClosed : O.geneSilencing
  enhancerDrivenClosed : O.enhancerDriven
  silencerSuppressedClosed : O.silencerSuppressed
  outputIntegratedClosed : O.outputIntegrated

def TranscriptionalOutputClosed (O : TranscriptionalOutputPackage) : Prop :=
  O.geneActivation ∧ O.geneSilencing ∧ O.enhancerDriven ∧ O.silencerSuppressed ∧ O.outputIntegrated

theorem transcriptional_output_closed_from_evidence (O : TranscriptionalOutputPackage) (E : TranscriptionalOutputEvidence O) :
    TranscriptionalOutputClosed O := by
  exact And.intro E.geneActivationClosed (And.intro E.geneSilencingClosed (And.intro E.enhancerDrivenClosed (And.intro E.silencerSuppressedClosed E.outputIntegratedClosed)))

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse