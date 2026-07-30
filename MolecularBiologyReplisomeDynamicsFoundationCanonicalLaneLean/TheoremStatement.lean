import HautevilleHouse.MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  replicationConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceRepository : String :=
  "molecular-biology-replisome-dynamics-foundation-canonical-lane"

def sourceDescription : String :=
  "Molecular Biology Replisome Dynamics Foundation"

def replisomeTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository
  , theoremName := sourceRepository
  , theoremObject := sourceDescription
  , classicalBoundary := "replication dynamics boundary carried as open"
  , replicationConstrainedStatement :=
      "Replisome dynamics constrained through bridge and gate closure"
  , certificateLane := "replication_constrained"
  , carriedRemainder :=
      "classical boundary remains open outside bridge/gate closure"
  }

end MolecularBiologyReplisomeDynamicsFoundationCanonicalLaneLean
end HautevilleHouse