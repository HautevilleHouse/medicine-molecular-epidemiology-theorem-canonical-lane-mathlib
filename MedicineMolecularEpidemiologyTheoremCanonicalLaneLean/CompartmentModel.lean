import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

structure CompartmentModelPackage where
  populationStratification : Prop
  transitionRatesDefined : Prop
  compartmentEquations : Prop
  equilibriumAnalysis : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  populationStratificationClosed : C.populationStratification
  transitionRatesDefinedClosed : C.transitionRatesDefined
  compartmentEquationsClosed : C.compartmentEquations
  equilibriumAnalysisClosed : C.equilibriumAnalysis

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.populationStratification ∧ C.transitionRatesDefined ∧
  C.compartmentEquations ∧ C.equilibriumAnalysis

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage)
    (E : CompartmentModelEvidence C) : CompartmentModelClosed C := by
  exact And.intro E.populationStratificationClosed
    (And.intro E.transitionRatesDefinedClosed
      (And.intro E.compartmentEquationsClosed E.equilibriumAnalysisClosed))

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
