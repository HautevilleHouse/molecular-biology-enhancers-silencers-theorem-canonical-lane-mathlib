import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure BindingDynamicsPackage where
  enhancerBindingRate : ℕ
  silencerBindingRate : ℕ
  competitiveBinding : Prop
  cooperativeBinding : Prop

structure BindingDynamicsEvidence (B : BindingDynamicsPackage) where
  enhancerBindingRateClosed : B.enhancerBindingRate > 0
  silencerBindingRateClosed : B.silencerBindingRate > 0
  competitiveBindingClosed : B.competitiveBinding
  cooperativeBindingClosed : B.cooperativeBinding

def BindingDynamicsClosed (B : BindingDynamicsPackage) : Prop :=
  B.enhancerBindingRate > 0 ∧ B.silencerBindingRate > 0 ∧ B.competitiveBinding ∧ B.cooperativeBinding

theorem binding_dynamics_closed_from_evidence (B : BindingDynamicsPackage)
    (E : BindingDynamicsEvidence B) : BindingDynamicsClosed B := by
  exact And.intro E.enhancerBindingRateClosed
    (And.intro E.silencerBindingRateClosed (And.intro E.competitiveBindingClosed E.cooperativeBindingClosed))

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse