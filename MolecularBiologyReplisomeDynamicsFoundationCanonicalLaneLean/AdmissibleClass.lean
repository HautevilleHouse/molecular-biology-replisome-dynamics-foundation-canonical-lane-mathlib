import HautevilleHouse.MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib.MathlibObjects
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ReplisomeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ReplisomeAdmittedObject where
  space : ReplisomeSpace
  replicationModel : Prop
  nucleotideModel : Prop
  forkDynamicsModel : Prop
  conclusion : replicationModel ∧ nucleotideModel ∧ forkDynamicsModel

structure ReplisomeEndgameState where
  object : ReplisomeAdmittedObject

def ReplisomeWitnessClosed (O : ReplisomeAdmittedObject) : Prop :=
  O.conclusion

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse