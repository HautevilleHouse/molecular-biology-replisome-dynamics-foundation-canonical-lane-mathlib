import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure ReplisomeAssemblyPackage where
  originRecognitionComplex : Prop
  helicaseLoading : Prop
  clampLoaderRecruitment : Prop
  polymeraseAlphaPriming : Prop
  leadingLaggingStrandCoordination : Prop
  assemblyOrderVerified : Prop

structure ReplisomeAssemblyEvidence (R : ReplisomeAssemblyPackage) where
  originRecognitionComplexClosed : R.originRecognitionComplex
  helicaseLoadingClosed : R.helicaseLoading
  clampLoaderRecruitmentClosed : R.clampLoaderRecruitment
  polymeraseAlphaPrimingClosed : R.polymeraseAlphaPriming
  leadingLaggingStrandCoordinationClosed : R.leadingLaggingStrandCoordination
  assemblyOrderVerifiedClosed : R.assemblyOrderVerified

def ReplisomeAssemblyClosed (R : ReplisomeAssemblyPackage) : Prop :=
  R.originRecognitionComplex ∧ R.helicaseLoading ∧ R.clampLoaderRecruitment ∧
  R.polymeraseAlphaPriming ∧ R.leadingLaggingStrandCoordination ∧ R.assemblyOrderVerified

theorem replisome_assembly_closed_from_evidence (R : ReplisomeAssemblyPackage) (E : ReplisomeAssemblyEvidence R) :
    ReplisomeAssemblyClosed R := by
  exact And.intro E.originRecognitionComplexClosed
    (And.intro E.helicaseLoadingClosed
      (And.intro E.clampLoaderRecruitmentClosed
        (And.intro E.polymeraseAlphaPrimingClosed
          (And.intro E.leadingLaggingStrandCoordinationClosed E.assemblyOrderVerifiedClosed))))

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse