import MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean.NMDAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

def bridgeClosed (A : NMDAdmissibleClass) : Prop :=
  NMDFoundationalClosed A.object

theorem bridge_from_admissible_class (A : NMDAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse