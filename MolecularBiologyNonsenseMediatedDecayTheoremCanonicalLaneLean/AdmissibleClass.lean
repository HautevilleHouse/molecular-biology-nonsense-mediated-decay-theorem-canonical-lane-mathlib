import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure NMDAdmittedObject where
  mRNA : Type
  surveillanceComplex : Type
  exonJunctionComplex : Type
  terminationCodon : Prop
  decayInitiated : Prop
  conclusion : decayInitiated

structure AdmissibleClass where
  object : NMDAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NMDWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse