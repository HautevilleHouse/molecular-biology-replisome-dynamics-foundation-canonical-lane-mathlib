import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure ClampLoaderInteractionPackage where
  clampLoaderRecruitment : Prop
  atpHydrolysis : Prop
  clampOpening : Prop
  clampLoadingOntoDNA : Prop
  clampRelease : Prop

structure ClampLoaderInteractionEvidence (C : ClampLoaderInteractionPackage) where
  clampLoaderRecruitmentClosed : C.clampLoaderRecruitment
  atpHydrolysisClosed : C.atpHydrolysis
  clampOpeningClosed : C.clampOpening
  clampLoadingOntoDNAClosed : C.clampLoadingOntoDNA
  clampReleaseClosed : C.clampRelease

def ClampLoaderInteractionClosed (C : ClampLoaderInteractionPackage) : Prop :=
  C.clampLoaderRecruitment ∧ C.atpHydrolysis ∧ C.clampOpening ∧ C.clampLoadingOntoDNA ∧ C.clampRelease

theorem clamp_loader_interaction_closed_from_evidence (C : ClampLoaderInteractionPackage) (E : ClampLoaderInteractionEvidence C) : ClampLoaderInteractionClosed C := by
  exact And.intro E.clampLoaderRecruitmentClosed (And.intro E.atpHydrolysisClosed (And.intro E.clampOpeningClosed (And.intro E.clampLoadingOntoDNAClosed E.clampReleaseClosed)))

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse
