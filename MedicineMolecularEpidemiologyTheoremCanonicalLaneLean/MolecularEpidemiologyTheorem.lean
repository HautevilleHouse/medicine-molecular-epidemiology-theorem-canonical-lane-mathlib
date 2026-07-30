import canonicalLaneMathlib.AdmissibleClass
import MedicineMolecularEpidemiologyTheoremCanonicalLaneLean.CompartmentModelPackage
import MedicineMolecularEpidemiologyTheoremCanonicalLaneLean.PharmacokineticModelPackage
import MedicineMolecularEpidemiologyTheoremCanonicalLaneLean.DiagnosticInferencePackage
import MedicineMolecularEpidemiologyTheoremCanonicalLaneLean.SurvivalAnalysisPackage

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

structure MedicineMolecularEpidemiologyTheoremPackage where
  compartmentModel : CompartmentModelPackage
  pharmacokineticModel : PharmacokineticModelPackage
  diagnosticInference : DiagnosticInferencePackage
  survivalAnalysis : SurvivalAnalysisPackage
  integrationCondition : Prop
  endpointSatisfied : Prop

structure MedicineMolecularEpidemiologyTheoremEvidence (P : MedicineMolecularEpidemiologyTheoremPackage) where
  compartmentClosed : CompartmentModelClosed P.compartmentModel
  pharmacokineticClosed : PharmacokineticModelClosed P.pharmacokineticModel
  diagnosticClosed : DiagnosticInferenceClosed P.diagnosticInference
  survivalClosed : SurvivalAnalysisClosed P.survivalAnalysis
  integrationConditionClosed : P.integrationCondition
  endpointSatisfiedClosed : P.endpointSatisfied

def MedicineMolecularEpidemiologyTheoremClosed (P : MedicineMolecularEpidemiologyTheoremPackage) : Prop :=
  CompartmentModelClosed P.compartmentModel ∧
  PharmacokineticModelClosed P.pharmacokineticModel ∧
  DiagnosticInferenceClosed P.diagnosticInference ∧
  SurvivalAnalysisClosed P.survivalAnalysis ∧
  P.integrationCondition ∧
  P.endpointSatisfied

theorem medicine_molecular_epidemiology_theorem_closed_from_evidence
    (P : MedicineMolecularEpidemiologyTheoremPackage)
    (E : MedicineMolecularEpidemiologyTheoremEvidence P) :
    MedicineMolecularEpidemiologyTheoremClosed P :=
  And.intro E.compartmentClosed
    (And.intro E.pharmacokineticClosed
      (And.intro E.diagnosticClosed
        (And.intro E.survivalClosed
          (And.intro E.integrationConditionClosed E.endpointSatisfiedClosed))))

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse