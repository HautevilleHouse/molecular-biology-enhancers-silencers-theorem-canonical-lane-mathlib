import Mathlib.Data.Set.Basic

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure EnhancerRegion where
  sequence : String
  binding_sites : List String
  activity : Float

structure SilencerRegion where
  sequence : String
  binding_sites : List String
  repression : Float

structure AdmissibleObject where
  enhancer : EnhancerRegion
  silencer : SilencerRegion
  context : List (String × Float)
  conclusion : silencer.repression > enhancer.activity

def EnhancerSilencerWitnessClosed (O : AdmissibleObject) : Prop :=
  O.conclusion

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse