import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure OkazakiFragmentMaturationPackage where
  rnaPrimerRemoval : Prop
  fragmentGapFill : Prop
  nickLigation : Prop
  chromatinRemodeling : Prop

structure OkazakiFragmentMaturationEvidence (O : OkazakiFragmentMaturationPackage) where
  rnaPrimerRemovalClosed : O.rnaPrimerRemoval
  fragmentGapFillClosed : O.fragmentGapFill
  nickLigationClosed : O.nickLigation
  chromatinRemodelingClosed : O.chromatinRemodeling

def OkazakiFragmentMaturationClosed (O : OkazakiFragmentMaturationPackage) : Prop :=
  O.rnaPrimerRemoval ∧ O.fragmentGapFill ∧
  O.nickLigation ∧ O.chromatinRemodeling

theorem okazaki_fragment_maturation_closed_from_evidence
    (O : OkazakiFragmentMaturationPackage)
    (E : OkazakiFragmentMaturationEvidence O) : OkazakiFragmentMaturationClosed O := by
  exact And.intro E.rnaPrimerRemovalClosed
    (And.intro E.fragmentGapFillClosed
      (And.intro E.nickLigationClosed E.chromatinRemodelingClosed))

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse
