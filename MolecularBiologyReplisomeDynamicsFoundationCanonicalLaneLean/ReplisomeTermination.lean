import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean.ReplicationForkDynamics

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure TerminationSite where
  location : ℕ
  replicationForksMeetingPoint : ℝ
  resolutionEnzymesPresent : Bool

structure ReplisomeTermination where
  terminationSites : List TerminationSite
  forkConvergenceComplete : Bool
  chromosomeDecatenation : Bool
  finalLigation : Bool
  daughterStrandSeparation : Bool

structure ReplisomeTerminationEvidence (T : ReplisomeTermination) where
  convergenceComplete : T.forkConvergenceComplete = true
  decatenationDone : T.chromosomeDecatenation = true
  ligationDone : T.finalLigation = true
  separationDone : T.daughterStrandSeparation = true

def ReplisomeTerminationClosed (T : ReplisomeTermination) : Prop :=
  T.forkConvergenceComplete = true ∧
  T.chromosomeDecatenation = true ∧
  T.finalLigation = true ∧
  T.daughterStrandSeparation = true

theorem replisome_termination_closed_from_evidence (T : ReplisomeTermination)
  (E : ReplisomeTerminationEvidence T) : ReplisomeTerminationClosed T := by
  exact And.intro E.convergenceComplete
    (And.intro E.decatenationDone
      (And.intro E.ligationDone E.separationDone))

def defaultReplisomeTermination : ReplisomeTermination := {
  terminationSites := [
    { location := 1000, replicationForksMeetingPoint := 500.0, resolutionEnzymesPresent := true },
    { location := 2000, replicationForksMeetingPoint := 1500.0, resolutionEnzymesPresent := true }
  ],
  forkConvergenceComplete := true,
  chromosomeDecatenation := true,
  finalLigation := true,
  daughterStrandSeparation := true
}

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse