import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure PolymeraseHoloenzymePackage where
  replisomeAssembly : Prop
  leadingStrandSynthesis : Prop
  laggingStrandSynthesis : Prop
  okazakiFragmentProcessing : Prop
  proofreadingActivity : Prop

def PolymeraseHoloenzymeClosed (P : PolymeraseHoloenzymePackage) : Prop :=
  P.replisomeAssembly ∧ P.leadingStrandSynthesis ∧
  P.laggingStrandSynthesis ∧ P.okazakiFragmentProcessing ∧
  P.proofreadingActivity

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse