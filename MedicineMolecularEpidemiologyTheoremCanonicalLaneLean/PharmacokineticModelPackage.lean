import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

structure PharmacokineticModelPackage where
  drug : String
  compartments : List String
  absorptionRate : ℝ
  eliminationRate : ℝ
  volumeOfDistribution : ℝ
  pkEquationFormulated : Prop
  steadyStateConcentrationDerived : Prop
  halfLifeComputed : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  pkEquationFormulatedClosed : P.pkEquationFormulated
  steadyStateConcentrationDerivedClosed : P.steadyStateConcentrationDerived
  halfLifeComputedClosed : P.halfLifeComputed

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.pkEquationFormulated ∧ P.steadyStateConcentrationDerived ∧ P.halfLifeComputed

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModelPackage)
    (E : PharmacokineticModelEvidence P) : PharmacokineticModelClosed P :=
  And.intro E.pkEquationFormulatedClosed
    (And.intro E.steadyStateConcentrationDerivedClosed E.halfLifeComputedClosed)

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse