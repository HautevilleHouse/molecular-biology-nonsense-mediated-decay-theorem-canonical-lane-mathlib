import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure DecayPathwayPackage where
  mrnaDecapping : Prop
  exonucleaseDegradation : Prop
  endonucleolyticCleavage : Prop
  smg6Activation : Prop
  decayIntermediate : Type
  finalDegradation : Prop

def DecayPathwayClosed (D : DecayPathwayPackage) : Prop :=
  D.mrnaDecapping ∧ D.exonucleaseDegradation ∧ D.endonucleolyticCleavage ∧ D.smg6Activation ∧ D.finalDegradation

theorem decay_pathway_closed (D : DecayPathwayPackage) :
    DecayPathwayClosed D := by
  exact And.intro D.mrnaDecapping (And.intro D.exonucleaseDegradation (And.intro D.endonucleolyticCleavage (And.intro D.smg6Activation D.finalDegradation)))

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse