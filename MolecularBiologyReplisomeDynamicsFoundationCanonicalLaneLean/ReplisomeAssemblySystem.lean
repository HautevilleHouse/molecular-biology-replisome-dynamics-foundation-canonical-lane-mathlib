import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure ReplisomeAssemblyPackage where
  helicaseType : Type u
  primaseType : Type v
  clampLoaderType : Type w
  slidingClampType : Type x
  polymeraseType : Type y
  helicaseLoaded : Prop
  primaseActivated : Prop
  clampLoaded : Prop
  polymeraseRecruited : Prop
  replicationForkEstablished : Prop

structure ReplisomeAssemblyEvidence (R : ReplisomeAssemblyPackage) where
  helicaseLoadedClosed : R.helicaseLoaded
  primaseActivatedClosed : R.primaseActivated
  clampLoadedClosed : R.clampLoaded
  polymeraseRecruitedClosed : R.polymeraseRecruited
  replicationForkEstablishedClosed : R.replicationForkEstablished

def ReplisomeAssemblyClosed (R : ReplisomeAssemblyPackage) : Prop :=
  R.helicaseLoaded ∧ R.primaseActivated ∧ R.clampLoaded ∧ R.polymeraseRecruited ∧ R.replicationForkEstablished

theorem replisome_assembly_closed_from_evidence (R : ReplisomeAssemblyPackage) (E : ReplisomeAssemblyEvidence R) : ReplisomeAssemblyClosed R := by
  exact And.intro E.helicaseLoadedClosed
    (And.intro E.primaseActivatedClosed
      (And.intro E.clampLoadedClosed
        (And.intro E.polymeraseRecruitedClosed E.replicationForkEstablishedClosed)))

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse