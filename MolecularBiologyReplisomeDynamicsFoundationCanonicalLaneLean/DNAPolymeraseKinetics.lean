import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure DNAPolymeraseKineticsPackage where
  dNTPBinding : Prop
  catalysisRate : Prop
  proofreadingExonuclease : Prop
  processivity : Prop
  misincorporationRate : Prop
  strandExtension : Prop

structure DNAPolymeraseKineticsEvidence (P : DNAPolymeraseKineticsPackage) where
  dNTPBindingClosed : P.dNTPBinding
  catalysisRateClosed : P.catalysisRate
  proofreadingExonucleaseClosed : P.proofreadingExonuclease
  processivityClosed : P.processivity
  misincorporationRateClosed : P.misincorporationRate
  strandExtensionClosed : P.strandExtension

def DNAPolymeraseKineticsClosed (P : DNAPolymeraseKineticsPackage) : Prop :=
  P.dNTPBinding ∧ P.catalysisRate ∧ P.proofreadingExonuclease ∧ P.processivity ∧ P.misincorporationRate ∧ P.strandExtension

theorem dna_polymerase_kinetics_closed_from_evidence (P : DNAPolymeraseKineticsPackage) (E : DNAPolymeraseKineticsEvidence P) : DNAPolymeraseKineticsClosed P := by
  exact And.intro E.dNTPBindingClosed
    (And.intro E.catalysisRateClosed
      (And.intro E.proofreadingExonucleaseClosed
        (And.intro E.processivityClosed
          (And.intro E.misincorporationRateClosed E.strandExtensionClosed))))

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse