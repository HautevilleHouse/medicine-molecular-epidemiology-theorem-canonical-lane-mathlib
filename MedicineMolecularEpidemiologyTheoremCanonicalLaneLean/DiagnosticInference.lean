import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

structure DiagnosticInferencePackage where
  sensitivitySpecified : Prop
  specificitySpecified : Prop
  prevalenceKnown : Prop
  predictiveValuesDefined : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  sensitivitySpecifiedClosed : D.sensitivitySpecified
  specificitySpecifiedClosed : D.specificitySpecified
  prevalenceKnownClosed : D.prevalenceKnown
  predictiveValuesDefinedClosed : D.predictiveValuesDefined

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.sensitivitySpecified ∧ D.specificitySpecified ∧
  D.prevalenceKnown ∧ D.predictiveValuesDefined

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage)
    (E : DiagnosticInferenceEvidence D) : DiagnosticInferenceClosed D := by
  exact And.intro E.sensitivitySpecifiedClosed
    (And.intro E.specificitySpecifiedClosed
      (And.intro E.prevalenceKnownClosed E.predictiveValuesDefinedClosed))

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
