import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean.ReplicationForkDynamics

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure MismatchRepair where
  mismatchDetectionRate : ℝ
  excisionRate : ℝ
  resynthesisRate : ℝ
  ligationRate : ℝ

structure Proofreading where
  exonucleaseActivity : Bool
  errorCorrectionRate : ℝ

structure ReplicationErrorRepair where
  mismatchRepair : MismatchRepair
  proofreading : Proofreading
  errorRatePostRepair : ℝ
  fidelityEnhancementFactor : ℝ

structure ReplicationErrorRepairEvidence (R : ReplicationErrorRepair) where
  mismatchRepairOperational : R.mismatchRepair.mismatchDetectionRate > 0 ∧
                              R.mismatchRepair.excisionRate > 0 ∧
                              R.mismatchRepair.resynthesisRate > 0 ∧
                              R.mismatchRepair.ligationRate > 0
  proofreadingActive : R.proofreading.exonucleaseActivity = true ∧
                       R.proofreading.errorCorrectionRate > 0
  errorRatePostRepairLow : R.errorRatePostRepair < 1e-9
  fidelityEnhanced : R.fidelityEnhancementFactor > 1

def ReplicationErrorRepairClosed (R : ReplicationErrorRepair) : Prop :=
  (R.mismatchRepair.mismatchDetectionRate > 0 ∧
   R.mismatchRepair.excisionRate > 0 ∧
   R.mismatchRepair.resynthesisRate > 0 ∧
   R.mismatchRepair.ligationRate > 0) ∧
  (R.proofreading.exonucleaseActivity = true ∧
   R.proofreading.errorCorrectionRate > 0) ∧
  R.errorRatePostRepair < 1e-9 ∧
  R.fidelityEnhancementFactor > 1

theorem replication_error_repair_closed_from_evidence (R : ReplicationErrorRepair)
  (E : ReplicationErrorRepairEvidence R) : ReplicationErrorRepairClosed R := by
  exact E.mismatchRepairOperational ∧ E.proofreadingActive ∧ E.errorRatePostRepairLow ∧ E.fidelityEnhanced

def defaultReplicationErrorRepair : ReplicationErrorRepair := {
  mismatchRepair := {
    mismatchDetectionRate := 100.0,
    excisionRate := 50.0,
    resynthesisRate := 80.0,
    ligationRate := 60.0
  },
  proofreading := {
    exonucleaseActivity := true,
    errorCorrectionRate := 1000.0
  },
  errorRatePostRepair := 1e-10,
  fidelityEnhancementFactor := 100.0
}

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse