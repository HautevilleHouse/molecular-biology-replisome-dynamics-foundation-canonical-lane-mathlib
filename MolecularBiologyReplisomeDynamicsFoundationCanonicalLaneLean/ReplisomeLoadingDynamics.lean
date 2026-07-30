import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure ReplisomeLoadingPackage where
  helicaseLoading : Prop
  primaseRecruitment : Prop
  clampLoaderBinding : Prop
  dnaPolymeraseHoloenzymeAssembly : Prop

structure ReplisomeLoadingEvidence (R : ReplisomeLoadingPackage) where
  helicaseLoadingClosed : R.helicaseLoading
  primaseRecruitmentClosed : R.primaseRecruitment
  clampLoaderBindingClosed : R.clampLoaderBinding
  dnaPolymeraseHoloenzymeAssemblyClosed : R.dnaPolymeraseHoloenzymeAssembly

def ReplisomeLoadingClosed (R : ReplisomeLoadingPackage) : Prop :=
  R.helicaseLoading ∧ R.primaseRecruitment ∧
  R.clampLoaderBinding ∧ R.dnaPolymeraseHoloenzymeAssembly

theorem replisome_loading_closed_from_evidence (R : ReplisomeLoadingPackage)
    (E : ReplisomeLoadingEvidence R) : ReplisomeLoadingClosed R := by
  exact And.intro E.helicaseLoadingClosed
    (And.intro E.primaseRecruitmentClosed
      (And.intro E.clampLoaderBindingClosed E.dnaPolymeraseHoloenzymeAssemblyClosed))

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse
