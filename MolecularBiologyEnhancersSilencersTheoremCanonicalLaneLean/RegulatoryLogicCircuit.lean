import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

inductive RegulatoryGate
| AND
| OR
| NOT
| XOR

structure LogicCircuitNode where
  id : String
  inputSources : List String
  gateType : RegulatoryGate
  outputTargets : List String

structure RegulatoryLogicCircuitPackage (E : EnhancerSilencerAdmittedObject) where
  nodes : List LogicCircuitNode
  enhancerInputNodes : List String
  silencerInputNodes : List String
  outputGene : String
  circuitCorrect : Prop
  expressionPredictions : Prop

structure RegulatoryLogicCircuitEvidence {E : EnhancerSilencerAdmittedObject} (C : RegulatoryLogicCircuitPackage E) where
  nodesClosed : C.nodes.length >= 2
  enhancerInputNodesClosed : C.enhancerInputNodes.length > 0
  silencerInputNodesClosed : C.silencerInputNodes.length > 0
  circuitCorrectClosed : C.circuitCorrect
  expressionPredictionsClosed : C.expressionPredictions

def RegulatoryLogicCircuitClosed {E : EnhancerSilencerAdmittedObject} (C : RegulatoryLogicCircuitPackage E) : Prop :=
  C.nodes.length >= 2 ∧ C.enhancerInputNodes.length > 0 ∧ C.silencerInputNodes.length > 0 ∧ C.circuitCorrect ∧ C.expressionPredictions

theorem regulatory_logic_circuit_closed_from_evidence {E : EnhancerSilencerAdmittedObject} (C : RegulatoryLogicCircuitPackage E) (Ev : RegulatoryLogicCircuitEvidence C) : RegulatoryLogicCircuitClosed C :=
  And.intro Ev.nodesClosed (And.intro Ev.enhancerInputNodesClosed (And.intro Ev.silencerInputNodesClosed (And.intro Ev.circuitCorrectClosed Ev.expressionPredictionsClosed)))

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse