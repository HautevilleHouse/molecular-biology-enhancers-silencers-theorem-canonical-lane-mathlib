import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

structure BiologicalAdmittedObject where
  enhancerSequence : String
  silencerSequence : String
  targetGene : String
  enhancerBinds : Prop
  silencerBinds : Prop
  chromatinContext : Prop
  conclusion : enhancerBinds ∧ silencerBinds ∧ chromatinContext

structure AdmissibleClass where
  object : BiologicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiologicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse