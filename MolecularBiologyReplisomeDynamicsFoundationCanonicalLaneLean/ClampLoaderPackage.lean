import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure ClampLoaderPackage where
  slidingClampLoading : Prop
  clampLoaderATPase : Prop
  processivityEnhancement : Prop
  clampUnloading : Prop

def ClampLoaderClosed (C : ClampLoaderPackage) : Prop :=
  C.slidingClampLoading ∧ C.clampLoaderATPase ∧
  C.processivityEnhancement ∧ C.clampUnloading

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse