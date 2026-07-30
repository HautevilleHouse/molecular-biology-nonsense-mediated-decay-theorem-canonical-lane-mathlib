import MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean.NMDAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheorem

def NMDObjectClosed (O : NMDAdmittedObject) : Prop :=
  O.surveillancePhenotype

def bridgeClosed (A : NMDAdmissibleClass) : Prop :=
  NMDObjectClosed A.object

theorem bridge_from_admissible_class (A : NMDAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyNonsenseMediatedDecayTheorem
end HautevilleHouse