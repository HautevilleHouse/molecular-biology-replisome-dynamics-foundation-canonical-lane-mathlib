import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure OkazakiFragmentProcessingPackage where
  rnaPrimerSynthesis : Prop
  fragmentInitiation : Prop
  fragmentElongation : Prop
  primerRemoval : Prop
  gapFilling : Prop
  ligation : Prop

structure OkazakiFragmentProcessingEvidence (O : OkazakiFragmentProcessingPackage) where
  rnaPrimerSynthesisClosed : O.rnaPrimerSynthesis
  fragmentInitiationClosed : O.fragmentInitiation
  fragmentElongationClosed : O.fragmentElongation
  primerRemovalClosed : O.primerRemoval
  gapFillingClosed : O.gapFilling
  ligationClosed : O.ligation

def OkazakiFragmentProcessingClosed (O : OkazakiFragmentProcessingPackage) : Prop :=
  O.rnaPrimerSynthesis ∧ O.fragmentInitiation ∧ O.fragmentElongation ∧ O.primerRemoval ∧ O.gapFilling ∧ O.ligation

theorem okazaki_fragment_processing_closed_from_evidence (O : OkazakiFragmentProcessingPackage) (E : OkazakiFragmentProcessingEvidence O) : OkazakiFragmentProcessingClosed O := by
  exact And.intro E.rnaPrimerSynthesisClosed
    (And.intro E.fragmentInitiationClosed
      (And.intro E.fragmentElongationClosed
        (And.intro E.primerRemovalClosed
          (And.intro E.gapFillingClosed E.ligationClosed))))

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse