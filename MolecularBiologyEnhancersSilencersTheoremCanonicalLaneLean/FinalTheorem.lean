import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean.EnhancerSilencerBinding
import HautevilleHouse.MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean.GeneExpressionRegulation
import HautevilleHouse.MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean.ChromatinLooping

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EnhancerSilencerBindingClosed (AdmittedObject.enhancerSilencerBinding A.object)
  ∧ GeneExpressionRegulationClosed (AdmittedObject.geneExpressionRegulation A.object)
  ∧ ChromatinLoopingClosed (AdmittedObject.chromatinLooping A.object)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  let B := AdmittedObject.enhancerSilencerBinding A.object
  let G := AdmittedObject.geneExpressionRegulation A.object
  let C := AdmittedObject.chromatinLooping A.object
  let evidence := AdmittedObject.evidence A.object
  exact And.intro (enhancer_silencer_binding_closed_from_evidence B evidence.enhancerSilencerEvidence)
    (And.intro (gene_expression_regulation_closed_from_evidence G evidence.geneExpressionEvidence)
      (chromatin_looping_closed_from_evidence C evidence.chromatinLoopingEvidence))

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedMolecularEnhancerSilencerClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem molecular_enhancer_silencer_endgame (A : AdmissibleClass) :
    ConstrainedMolecularEnhancerSilencerClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse
