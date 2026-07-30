import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

structure SurvivalAnalysisPackage where
  hazardFunctionDefined : Prop
  survivalDistribution : Prop
  censoringMechanism : Prop
  coxProportionalHazards : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  hazardFunctionDefinedClosed : S.hazardFunctionDefined
  survivalDistributionClosed : S.survivalDistribution
  censoringMechanismClosed : S.censoringMechanism
  coxProportionalHazardsClosed : S.coxProportionalHazards

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.hazardFunctionDefined ∧ S.survivalDistribution ∧
  S.censoringMechanism ∧ S.coxProportionalHazards

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage)
    (E : SurvivalAnalysisEvidence S) : SurvivalAnalysisClosed S := by
  exact And.intro E.hazardFunctionDefinedClosed
    (And.intro E.survivalDistributionClosed
      (And.intro E.censoringMechanismClosed E.coxProportionalHazardsClosed))

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
