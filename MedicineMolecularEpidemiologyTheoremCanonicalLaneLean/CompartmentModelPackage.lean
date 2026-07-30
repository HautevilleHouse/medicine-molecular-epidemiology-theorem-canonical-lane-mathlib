import canonicalLaneMathlib.RiemannianCurvature

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

structure CompartmentModelPackage (G : PopulationPackage) where
  compartments : Type u
  transitionRates : Type v
  initialDistribution : Prop
  massConservationLaw : Prop
  steadyStateExistence : Prop

structure CompartmentModelEvidence {G : PopulationPackage} (C : CompartmentModelPackage G) where
  initialDistributionClosed : C.initialDistribution
  massConservationLawClosed : C.massConservationLaw
  steadyStateExistenceClosed : C.steadyStateExistence

def CompartmentModelClosed {G : PopulationPackage} (C : CompartmentModelPackage G) : Prop :=
  C.initialDistribution ∧ C.massConservationLaw ∧ C.steadyStateExistence

theorem compartment_model_closed_from_evidence
    {G : PopulationPackage} (C : CompartmentModelPackage G) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.initialDistributionClosed
    (And.intro E.massConservationLawClosed E.steadyStateExistenceClosed)

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse