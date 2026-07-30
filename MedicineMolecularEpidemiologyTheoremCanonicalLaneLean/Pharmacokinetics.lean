import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticPackage where
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  dose : Prop
  concentrationCurve : Prop

structure PharmacokineticEvidence (P : PharmacokineticPackage) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  doseClosed : P.dose
  concentrationCurveClosed : P.concentrationCurve

def PharmacokineticClosed (P : PharmacokineticPackage) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧ P.dose ∧ P.concentrationCurve

theorem pharmacokinetic_closed_from_evidence (P : PharmacokineticPackage) (E : PharmacokineticEvidence P) :
    PharmacokineticClosed P := by
  exact And.intro E.absorptionRateClosed
    (And.intro E.distributionVolumeClosed
      (And.intro E.eliminationRateClosed
        (And.intro E.doseClosed E.concentrationCurveClosed)))

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
