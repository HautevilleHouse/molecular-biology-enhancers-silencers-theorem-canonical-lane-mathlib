import MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure SilencerRepressionPackage where
  histoneModification : Prop
  chromatinCondensation : Prop
  transcriptionFactorBlocking : Prop
  recruitmentOfCorepressors : Prop

structure SilencerRepressionEvidence (P : SilencerRepressionPackage) where
  histoneModificationClosed : P.histoneModification
  chromatinCondensationClosed : P.chromatinCondensation
  transcriptionFactorBlockingClosed : P.transcriptionFactorBlocking
  recruitmentOfCorepressorsClosed : P.recruitmentOfCorepressors

def SilencerRepressionClosed (P : SilencerRepressionPackage) : Prop :=
  P.histoneModification ∧ P.chromatinCondensation ∧
  P.transcriptionFactorBlocking ∧ P.recruitmentOfCorepressors

theorem silencer_repression_closed_from_evidence (P : SilencerRepressionPackage)
    (E : SilencerRepressionEvidence P) : SilencerRepressionClosed P := by
  exact And.intro E.histoneModificationClosed
    (And.intro E.chromatinCondensationClosed
      (And.intro E.transcriptionFactorBlockingClosed E.recruitmentOfCorepressorsClosed))

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse