import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure HelicaseUnwindingDynamicsPackage where
  atpHydrolysis : Prop
  translocationRate : Prop
  stepSize : Prop
  unwindingProcessivity : Prop
  ssDNAGeneration : Prop
  strandDisplacement : Prop

structure HelicaseUnwindingDynamicsEvidence (H : HelicaseUnwindingDynamicsPackage) where
  atpHydrolysisClosed : H.atpHydrolysis
  translocationRateClosed : H.translocationRate
  stepSizeClosed : H.stepSize
  unwindingProcessivityClosed : H.unwindingProcessivity
  ssDNAGenerationClosed : H.ssDNAGeneration
  strandDisplacementClosed : H.strandDisplacement

def HelicaseUnwindingDynamicsClosed (H : HelicaseUnwindingDynamicsPackage) : Prop :=
  H.atpHydrolysis ∧ H.translocationRate ∧ H.stepSize ∧ H.unwindingProcessivity ∧ H.ssDNAGeneration ∧ H.strandDisplacement

theorem helicase_unwinding_dynamics_closed_from_evidence (H : HelicaseUnwindingDynamicsPackage) (E : HelicaseUnwindingDynamicsEvidence H) : HelicaseUnwindingDynamicsClosed H := by
  exact And.intro E.atpHydrolysisClosed
    (And.intro E.translocationRateClosed
      (And.intro E.stepSizeClosed
        (And.intro E.unwindingProcessivityClosed
          (And.intro E.ssDNAGenerationClosed E.strandDisplacementClosed))))

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse