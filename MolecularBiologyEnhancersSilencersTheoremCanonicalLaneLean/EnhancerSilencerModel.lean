import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure EnhancerBindingSite where
  sequencePattern : String
  transcriptionFactorBinding : Prop
  activationPotential : Nat

structure SilencerBindingSite where
  sequencePattern : String
  repressorBinding : Prop
  repressionPotential : Nat

structure GeneExpressionState where
  baselineExpression : Float
  enhancerBound : EnhancerBindingSite → Prop
  silencerBound : SilencerBindingSite → Prop
  currentExpressionLevel : Float

structure EnhancerSilencerAdmittedObject where
  geneState : GeneExpressionState
  enhancerActivationThreshold : Float
  silencerRepressionThreshold : Float
  netExpressionRegulated : Prop
  conclusion : netExpressionRegulated

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse