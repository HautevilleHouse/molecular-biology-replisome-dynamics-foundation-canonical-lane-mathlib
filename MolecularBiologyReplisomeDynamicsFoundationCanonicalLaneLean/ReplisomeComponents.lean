import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure DnaHelicase where
  unwindingRate : ℝ
  atpBindingSites : ℕ
  directionality : String

structure Primase where
  rnaPrimerSynthesisRate : ℝ
  bindingAffinity : ℝ

structure DnaPolymeraseIii where
  elongationRate : ℝ
  processivity : ℝ
  proofreadingActivity : Bool

structure SlidingClamp (α : Type) where
  clampLoaderBinding : α
  processivityEnhancement : ℝ

structure SingleStrandedBindingProtein where
  bindingCooperativity : ℝ
  protectionFromDegradation : Bool

structure ReplisomeCore where
  helicase : DnaHelicase
  primase : Primase
  polymerase : DnaPolymeraseIii
  clamp : SlidingClamp (String)
  ssb : SingleStrandedBindingProtein
  leadingStrandContinuity : Bool
  laggingStrandDiscontinuity : Bool

def replisomeCoreProof : ReplisomeCore := {
  helicase := { unwindingRate := 1000, atpBindingSites := 2, directionality := "5'->3'" },
  primase := { rnaPrimerSynthesisRate := 10, bindingAffinity := 0.8 },
  polymerase := { elongationRate := 1000, processivity := 10000, proofreadingActivity := true },
  clamp := { clampLoaderBinding := "clamp_loader", processivityEnhancement := 100 },
  ssb := { bindingCooperativity := 0.9, protectionFromDegradation := true },
  leadingStrandContinuity := true,
  laggingStrandDiscontinuity := false
}

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse