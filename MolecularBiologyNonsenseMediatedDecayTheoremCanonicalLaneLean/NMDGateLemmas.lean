import MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

def gateClosed (A : NMDAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : NMDAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse