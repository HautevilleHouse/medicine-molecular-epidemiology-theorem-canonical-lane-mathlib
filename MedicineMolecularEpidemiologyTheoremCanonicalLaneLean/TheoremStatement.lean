import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceRepository : String :=
  "medicine-molecular-epidemiology-theorem-canonical-lane"

def sourceDescription : String :=
  "Medicine Molecular Epidemiology Theorem: compartment models, pharmacokinetics, diagnostic inference, survival analysis"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := "unrestricted classical closure remains carried",
    carriedRemainder := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
  }

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse