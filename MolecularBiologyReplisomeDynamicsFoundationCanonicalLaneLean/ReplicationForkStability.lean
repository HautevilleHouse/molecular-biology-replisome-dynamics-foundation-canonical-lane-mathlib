import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure ReplicationForkStabilityPackage where
  leadingStrandSynthesis : Prop
  laggingStrandSynthesis : Prop
  okazakiFragmentMaturation : Prop
  forkProtectionComplex : Prop
  checkpointActivation : Prop
  strandContinuity : Prop

structure ReplicationForkStabilityEvidence (S : ReplicationForkStabilityPackage) where
  leadingStrandSynthesisClosed : S.leadingStrandSynthesis
  laggingStrandSynthesisClosed : S.laggingStrandSynthesis
  okazakiFragmentMaturationClosed : S.okazakiFragmentMaturation
  forkProtectionComplexClosed : S.forkProtectionComplex
  checkpointActivationClosed : S.checkpointActivation
  strandContinuityClosed : S.strandContinuity

def ReplicationForkStabilityClosed (S : ReplicationForkStabilityPackage) : Prop :=
  S.leadingStrandSynthesis ∧ S.laggingStrandSynthesis ∧ S.okazakiFragmentMaturation ∧
  S.forkProtectionComplex ∧ S.checkpointActivation ∧ S.strandContinuity

theorem replication_fork_stability_closed_from_evidence (S : ReplicationForkStabilityPackage) (E : ReplicationForkStabilityEvidence S) : ReplicationForkStabilityClosed S := by
  exact And.intro E.leadingStrandSynthesisClosed
    (And.intro E.laggingStrandSynthesisClosed
      (And.intro E.okazakiFragmentMaturationClosed
        (And.intro E.forkProtectionComplexClosed
          (And.intro E.checkpointActivationClosed E.strandContinuityClosed))))

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse