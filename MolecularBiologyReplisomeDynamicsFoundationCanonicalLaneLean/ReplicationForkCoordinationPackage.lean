import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure ReplicationForkCoordinationPackage where
  leadingLaggingCoordination : Prop
  forkStability : Prop
  checkpointActivation : Prop
  replicationStressResponse : Prop

def ReplicationForkCoordinationClosed (R : ReplicationForkCoordinationPackage) : Prop :=
  R.leadingLaggingCoordination ∧ R.forkStability ∧
  R.checkpointActivation ∧ R.replicationStressResponse

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse