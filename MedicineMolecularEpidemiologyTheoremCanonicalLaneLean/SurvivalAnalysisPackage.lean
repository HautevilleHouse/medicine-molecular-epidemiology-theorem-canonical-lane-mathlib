import canonicalLaneMathlib.SingularityModels

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

structure SurvivalAnalysisPackage {G : PopulationPackage} {C : CompartmentModelPackage G}
    {P : PharmacokineticsPackage G C} where
  hazardFunction : Prop
  survivalFunction : Prop
  censoringMechanism : Prop
  proportionalHazards : Prop
  coxRegressionValidity : Prop

structure SurvivalAnalysisEvidence {G : PopulationPackage} {C : CompartmentModelPackage G}
    {P : PharmacokineticsPackage G C} (S : SurvivalAnalysisPackage G C P) where
  hazardFunctionClosed : S.hazardFunction
  survivalFunctionClosed : S.survivalFunction
  censoringMechanismClosed : S.censoringMechanism
  proportionalHazardsClosed : S.proportionalHazards
  coxRegressionValidityClosed : S.coxRegressionValidity

def SurvivalAnalysisClosed {G : PopulationPackage} {C : CompartmentModelPackage G}
    {P : PharmacokineticsPackage G C} (S : SurvivalAnalysisPackage G C P) : Prop :=
  S.hazardFunction ∧ S.survivalFunction ∧ S.censoringMechanism ∧
  S.proportionalHazards ∧ S.coxRegressionValidity

theorem survival_analysis_closed_from_evidence
    {G : PopulationPackage} {C : CompartmentModelPackage G}
    {P : PharmacokineticsPackage G C} (S : SurvivalAnalysisPackage G C P)
    (E : SurvivalAnalysisEvidence S) : SurvivalAnalysisClosed S := by
  exact And.intro E.hazardFunctionClosed
    (And.intro E.survivalFunctionClosed
      (And.intro E.censoringMechanismClosed
        (And.intro E.proportionalHazardsClosed E.coxRegressionValidityClosed)))

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse