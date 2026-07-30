import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure PolymeraseHoloenzymeStructure where
  polymeraseCore : Prop
  exonucleaseProofreading : Prop
  clampInteraction : Prop
  primaseSubunit : Prop
  holoenzymeProcessivity : Prop
  structureDetermined : Prop

structure PolymeraseHoloenzymeEvidence (P : PolymeraseHoloenzymeStructure) where
  polymeraseCoreClosed : P.polymeraseCore
  exonucleaseProofreadingClosed : P.exonucleaseProofreading
  clampInteractionClosed : P.clampInteraction
  primaseSubunitClosed : P.primaseSubunit
  holoenzymeProcessivityClosed : P.holoenzymeProcessivity
  structureDeterminedClosed : P.structureDetermined

def PolymeraseHoloenzymeClosed (P : PolymeraseHoloenzymeStructure) : Prop :=
  P.polymeraseCore ∧ P.exonucleaseProofreading ∧ P.clampInteraction ∧
  P.primaseSubunit ∧ P.holoenzymeProcessivity ∧ P.structureDetermined

theorem polymerase_holoenzyme_closed_from_evidence (P : PolymeraseHoloenzymeStructure) (E : PolymeraseHoloenzymeEvidence P) :
    PolymeraseHoloenzymeClosed P := by
  exact And.intro E.polymeraseCoreClosed
    (And.intro E.exonucleaseProofreadingClosed
      (And.intro E.clampInteractionClosed
        (And.intro E.primaseSubunitClosed
          (And.intro E.holoenzymeProcessivityClosed E.structureDeterminedClosed))))

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse