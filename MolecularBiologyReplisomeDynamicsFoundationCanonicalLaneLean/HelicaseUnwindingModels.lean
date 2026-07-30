import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure HelicaseUnwindingModel where
  atpDependentTranslocation : Prop
  singleStrandedDNABinding : Prop
  duplexUnwindingRate : Prop
  translocationProcessivity : Prop
  strandDisplacement : Prop
  modelCalibrated : Prop

structure HelicaseUnwindingEvidence (H : HelicaseUnwindingModel) where
  atpDependentTranslocationClosed : H.atpDependentTranslocation
  singleStrandedDNABindingClosed : H.singleStrandedDNABinding
  duplexUnwindingRateClosed : H.duplexUnwindingRate
  translocationProcessivityClosed : H.translocationProcessivity
  strandDisplacementClosed : H.strandDisplacement
  modelCalibratedClosed : H.modelCalibrated

def HelicaseUnwindingClosed (H : HelicaseUnwindingModel) : Prop :=
  H.atpDependentTranslocation ∧ H.singleStrandedDNABinding ∧ H.duplexUnwindingRate ∧
  H.translocationProcessivity ∧ H.strandDisplacement ∧ H.modelCalibrated

theorem helicase_unwinding_closed_from_evidence (H : HelicaseUnwindingModel) (E : HelicaseUnwindingEvidence H) :
    HelicaseUnwindingClosed H := by
  exact And.intro E.atpDependentTranslocationClosed
    (And.intro E.singleStrandedDNABindingClosed
      (And.intro E.duplexUnwindingRateClosed
        (And.intro E.translocationProcessivityClosed
          (And.intro E.strandDisplacementClosed E.modelCalibratedClosed))))

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse