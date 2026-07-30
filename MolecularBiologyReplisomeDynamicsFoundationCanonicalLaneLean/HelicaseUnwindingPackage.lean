import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure HelicaseUnwindingPackage where
  originRecognition : Prop
  helicaseLoading : Prop
  processiveUnwinding : Prop
  atpHydrolysisCoupling : Prop
  singleStrandBinding : Prop

def HelicaseUnwindingClosed (H : HelicaseUnwindingPackage) : Prop :=
  H.originRecognition ∧ H.helicaseLoading ∧
  H.processiveUnwinding ∧ H.atpHydrolysisCoupling ∧
  H.singleStrandBinding

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse