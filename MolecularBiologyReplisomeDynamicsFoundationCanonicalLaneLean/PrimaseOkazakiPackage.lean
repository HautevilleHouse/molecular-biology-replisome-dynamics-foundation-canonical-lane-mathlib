import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure PrimaseOkazakiPackage where
  rnaPrimerSynthesis : Prop
  primaseRecruitment : Prop
  okazakiFragmentInitiation : Prop
  primerHandoff : Prop

def PrimaseOkazakiClosed (P : PrimaseOkazakiPackage) : Prop :=
  P.rnaPrimerSynthesis ∧ P.primaseRecruitment ∧
  P.okazakiFragmentInitiation ∧ P.primerHandoff

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse