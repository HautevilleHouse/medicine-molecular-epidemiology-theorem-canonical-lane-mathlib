import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticModelPackage where
  drugAbsorptionModeled : Prop
  distributionVolumeDefined : Prop
  eliminationRateConstant : Prop
  compartmentDynamics : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  drugAbsorptionModeledClosed : P.drugAbsorptionModeled
  distributionVolumeDefinedClosed : P.distributionVolumeDefined
  eliminationRateConstantClosed : P.eliminationRateConstant
  compartmentDynamicsClosed : P.compartmentDynamics

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.drugAbsorptionModeled ∧ P.distributionVolumeDefined ∧
  P.eliminationRateConstant ∧ P.compartmentDynamics

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModelPackage)
    (E : PharmacokineticModelEvidence P) : PharmacokineticModelClosed P := by
  exact And.intro E.drugAbsorptionModeledClosed
    (And.intro E.distributionVolumeDefinedClosed
      (And.intro E.eliminationRateConstantClosed E.compartmentDynamicsClosed))

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse
