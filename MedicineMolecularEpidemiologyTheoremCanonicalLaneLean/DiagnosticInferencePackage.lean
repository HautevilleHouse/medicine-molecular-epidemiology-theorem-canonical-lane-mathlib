import canonicalLaneMathlib.Noncollapsing

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

structure DiagnosticInferencePackage {G : PopulationPackage} {C : CompartmentModelPackage G}
    {P : PharmacokineticsPackage G C} {S : SurvivalAnalysisPackage G C P} where
  sensitivity : Prop
  specificity : Prop
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  rocCurve : Prop

structure DiagnosticInferenceEvidence {G : PopulationPackage} {C : CompartmentModelPackage G}
    {P : PharmacokineticsPackage G C} {S : SurvivalAnalysisPackage G C P}
    (D : DiagnosticInferencePackage G C P S) where
  sensitivityClosed : D.sensitivity
  specificityClosed : D.specificity
  positivePredictiveValueClosed : D.positivePredictiveValue
  negativePredictiveValueClosed : D.negativePredictiveValue
  rocCurveClosed : D.rocCurve

def DiagnosticInferenceClosed {G : PopulationPackage} {C : CompartmentModelPackage G}
    {P : PharmacokineticsPackage G C} {S : SurvivalAnalysisPackage G C P}
    (D : DiagnosticInferencePackage G C P S) : Prop :=
  D.sensitivity ∧ D.specificity ∧ D.positivePredictiveValue ∧
  D.negativePredictiveValue ∧ D.rocCurve

theorem diagnostic_inference_closed_from_evidence
    {G : PopulationPackage} {C : CompartmentModelPackage G}
    {P : PharmacokineticsPackage G C} {S : SurvivalAnalysisPackage G C P}
    (D : DiagnosticInferencePackage G C P S) (E : DiagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D := by
  exact And.intro E.sensitivityClosed
    (And.intro E.specificityClosed
      (And.intro E.positivePredictiveValueClosed
        (And.intro E.negativePredictiveValueClosed E.rocCurveClosed)))

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse