import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure EnhancerSilencerBalance where
  enhancerActivity : Float
  silencerActivity : Float
  netExpression : Float
  balanceCondition : Prop

structure EnhancerSilencerBalanceEvidence (B : EnhancerSilencerBalance) where
  enhancerActivityClosed : B.enhancerActivity ≥ 0.0
  silencerActivityClosed : B.silencerActivity ≥ 0.0
  netExpressionClosed : B.netExpression = B.enhancerActivity - B.silencerActivity
  balanceConditionClosed : B.balanceCondition

def EnhancerSilencerBalanceClosed (B : EnhancerSilencerBalance) : Prop :=
  B.enhancerActivity ≥ 0.0 ∧ B.silencerActivity ≥ 0.0 ∧
  B.netExpression = B.enhancerActivity - B.silencerActivity ∧ B.balanceCondition

theorem enhancer_silencer_balance_closed_from_evidence
    (B : EnhancerSilencerBalance) (E : EnhancerSilencerBalanceEvidence B) :
    EnhancerSilencerBalanceClosed B := by
  exact And.intro E.enhancerActivityClosed (And.intro E.silencerActivityClosed
    (And.intro E.netExpressionClosed E.balanceConditionClosed))

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse
