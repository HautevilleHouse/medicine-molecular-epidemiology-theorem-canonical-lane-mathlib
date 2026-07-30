import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

structure CompartmentModelPackage where
  SIR : Type u
  SEIR : Type v
  basicReproductionNumber : Prop
  endemicEquilibrium : Prop
  stabilityAnalysis : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  basicReproductionNumberClosed : C.basicReproductionNumber
  endemicEquilibriumClosed : C.endemicEquilibrium
  stabilityAnalysisClosed : C.stabilityAnalysis

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.basicReproductionNumber ∧ C.endemicEquilibrium ∧ C.stabilityAnalysis

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.basicReproductionNumberClosed
    (And.intro E.endemicEquilibriumClosed E.stabilityAnalysisClosed)

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse