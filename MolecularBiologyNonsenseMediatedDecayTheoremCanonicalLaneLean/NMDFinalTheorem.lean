import MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean.NMDGateLemmas

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

def ConstrainedNMDClosure (A : NMDAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_nmd_endgame (A : NMDAdmissibleClass) :
    ConstrainedNMDClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse