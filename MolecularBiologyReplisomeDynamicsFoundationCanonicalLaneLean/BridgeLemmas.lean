import HautevilleHouse.MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ReplisomeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse