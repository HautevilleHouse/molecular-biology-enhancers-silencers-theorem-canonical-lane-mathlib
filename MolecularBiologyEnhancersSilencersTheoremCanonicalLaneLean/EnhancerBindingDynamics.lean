import MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure EnhancerBindingPackage where
  transcriptionFactorBinding : Prop
  coactivatorRecruitment : Prop
  chromatinAccessibility : Prop
  enhancerLooping : Prop

structure EnhancerBindingEvidence (P : EnhancerBindingPackage) where
  transcriptionFactorBindingClosed : P.transcriptionFactorBinding
  coactivatorRecruitmentClosed : P.coactivatorRecruitment
  chromatinAccessibilityClosed : P.chromatinAccessibility
  enhancerLoopingClosed : P.enhancerLooping

def EnhancerBindingClosed (P : EnhancerBindingPackage) : Prop :=
  P.transcriptionFactorBinding ∧ P.coactivatorRecruitment ∧
  P.chromatinAccessibility ∧ P.enhancerLooping

theorem enhancer_binding_closed_from_evidence (P : EnhancerBindingPackage)
    (E : EnhancerBindingEvidence P) : EnhancerBindingClosed P := by
  exact And.intro E.transcriptionFactorBindingClosed
    (And.intro E.coactivatorRecruitmentClosed
      (And.intro E.chromatinAccessibilityClosed E.enhancerLoopingClosed))

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse