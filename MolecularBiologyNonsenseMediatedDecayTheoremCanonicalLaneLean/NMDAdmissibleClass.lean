import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure NMDAdmittedObject where
  transcriptCarrier : Type
  prematureStopCodonPresent : Prop
  exonJunctionComplex : Prop
  pioneerRoundTranslation : Prop
  decayInitiated : Prop
  conclusion : decayInitiated

structure NMDAdmissibleClass where
  object : NMDAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def NMDFoundationalClosed (O : NMDAdmittedObject) : Prop :=
  O.decayInitiated

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse