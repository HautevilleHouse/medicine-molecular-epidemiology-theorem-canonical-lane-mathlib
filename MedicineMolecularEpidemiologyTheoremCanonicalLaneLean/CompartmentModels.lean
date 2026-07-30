import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

structure CompartmentModelPackage where
  susceptible : Type u
  infected : Type v
  recovered : Type w
  beta : Prop
  gamma : Prop
  basicReproNumber : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  betaClosed : C.beta
  gammaClosed : C.gamma
  basicReproNumberClosed : C.basicReproNumber

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.beta ∧ C.gamma ∧ C.basicReproNumber

theorem compartment_model_closed_from_evidence (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.betaClosed (And.intro E.gammaClosed E.basicReproNumberClosed)

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
