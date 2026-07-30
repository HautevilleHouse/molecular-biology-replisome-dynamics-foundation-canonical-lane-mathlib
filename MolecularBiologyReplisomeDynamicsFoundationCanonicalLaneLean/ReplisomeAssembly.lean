import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure ReplisomeAssemblyPackage where
  helicaseLoading : Prop
  primaseRecruitment : Prop
  clampLoading : Prop
  polymeraseEngagement : Prop
  assemblyOrder : Prop

structure ReplisomeAssemblyEvidence (R : ReplisomeAssemblyPackage) where
  helicaseLoadingClosed : R.helicaseLoading
  primaseRecruitmentClosed : R.primaseRecruitment
  clampLoadingClosed : R.clampLoading
  polymeraseEngagementClosed : R.polymeraseEngagement
  assemblyOrderClosed : R.assemblyOrder

def ReplisomeAssemblyClosed (R : ReplisomeAssemblyPackage) : Prop :=
  R.helicaseLoading ∧ R.primaseRecruitment ∧ R.clampLoading ∧ R.polymeraseEngagement ∧ R.assemblyOrder

theorem replisome_assembly_closed_from_evidence (R : ReplisomeAssemblyPackage) (E : ReplisomeAssemblyEvidence R) : ReplisomeAssemblyClosed R := by
  exact And.intro E.helicaseLoadingClosed (And.intro E.primaseRecruitmentClosed (And.intro E.clampLoadingClosed (And.intro E.polymeraseEngagementClosed E.assemblyOrderClosed)))

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse
