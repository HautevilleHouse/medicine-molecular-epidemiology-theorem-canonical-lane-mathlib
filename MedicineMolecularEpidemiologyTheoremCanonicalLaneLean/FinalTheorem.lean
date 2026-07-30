import canineLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace MedicineMolecularEpidemiologyTheoremCanonicalLaneLean

def ConstrainedMedicineMolecularEpidemiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_medicine_molecular_epidemiology_endgame (A : AdmissibleClass) :
    ConstrainedMedicineMolecularEpidemiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedicineMolecularEpidemiologyTheoremCanonicalLaneLean
end HautevilleHouse