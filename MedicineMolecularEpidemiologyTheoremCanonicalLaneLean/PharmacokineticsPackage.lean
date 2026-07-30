import canonicalLaneMathlib.ShortTimeExistence

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticsPackage {G : PopulationPackage} {C : CompartmentModelPackage G} where
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  drugConcentrationCurve : Prop
  doseResponseRelation : Prop

structure PharmacokineticsEvidence {G : PopulationPackage} {C : CompartmentModelPackage G}
    (P : PharmacokineticsPackage G C) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  drugConcentrationCurveClosed : P.drugConcentrationCurve
  doseResponseRelationClosed : P.doseResponseRelation

def PharmacokineticsClosed {G : PopulationPackage} {C : CompartmentModelPackage G}
    (P : PharmacokineticsPackage G C) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧
  P.drugConcentrationCurve ∧ P.doseResponseRelation

theorem pharmacokinetics_closed_from_evidence
    {G : PopulationPackage} {C : CompartmentModelPackage G}
    (P : PharmacokineticsPackage G C) (E : PharmacokineticsEvidence P) :
    PharmacokineticsClosed P := by
  exact And.intro E.absorptionRateClosed
    (And.intro E.distributionVolumeClosed
      (And.intro E.eliminationRateClosed
        (And.intro E.drugConcentrationCurveClosed E.doseResponseRelationClosed)))

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse