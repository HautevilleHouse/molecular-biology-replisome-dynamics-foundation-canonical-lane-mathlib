import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean.ReplicationForkDynamics

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure LaggingStrandSynthesis where
  primerSynthesisComplete : Bool
  okazakiFragmentInitiation : ℝ
  fragmentElongation : ℝ
  rnaPrimerRemoval : ℝ
  gapFilling : ℝ
  nickSealing : ℝ
  cyclicProcess : Prop

structure LaggingStrandEvidence (L : LaggingStrandSynthesis) where
  primerSynthesisCompleteClosed : L.primerSynthesisComplete
  okazakiFragmentInitiationClosed : L.okazakiFragmentInitiation > 0
  fragmentElongationClosed : L.fragmentElongation > 0
  rnaPrimerRemovalClosed : L.rnaPrimerRemoval > 0
  gapFillingClosed : L.gapFilling > 0
  nickSealingClosed : L.nickSealing > 0
  cyclicProcessClosed : L.cyclicProcess

def LaggingStrandClosed (L : LaggingStrandSynthesis) : Prop :=
  L.primerSynthesisComplete ∧
  L.okazakiFragmentInitiation > 0 ∧
  L.fragmentElongation > 0 ∧
  L.rnaPrimerRemoval > 0 ∧
  L.gapFilling > 0 ∧
  L.nickSealing > 0 ∧
  L.cyclicProcess

theorem lagging_strand_closed_from_evidence (L : LaggingStrandSynthesis) (E : LaggingStrandEvidence L) :
  LaggingStrandClosed L := by
  exact And.intro E.primerSynthesisCompleteClosed
    (And.intro E.okazakiFragmentInitiationClosed
      (And.intro E.fragmentElongationClosed
        (And.intro E.rnaPrimerRemovalClosed
          (And.intro E.gapFillingClosed
            (And.intro E.nickSealingClosed E.cyclicProcessClosed)))))

def laggingStrandSynthesisDefault : LaggingStrandSynthesis := {
  primerSynthesisComplete := true,
  okazakiFragmentInitiation := 10.0,
  fragmentElongation := 100.0,
  rnaPrimerRemoval := 8.0,
  gapFilling := 5.0,
  nickSealing := 7.0,
  cyclicProcess := True.intro
}

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse