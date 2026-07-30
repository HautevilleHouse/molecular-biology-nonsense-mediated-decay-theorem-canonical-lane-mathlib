import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure TerminationCodonPackage where
  prematureStop : Prop
  distanceToEJC : Nat
  thresholdMet : Prop
  ribosomeStalling : Prop
  releaseFactorRecruitment : Prop
  decayTrigger : Prop

def TerminationCodonClosed (T : TerminationCodonPackage) : Prop :=
  T.prematureStop ∧ T.thresholdMet ∧ T.ribosomeStalling ∧ T.releaseFactorRecruitment ∧ T.decayTrigger

theorem termination_codon_closed (T : TerminationCodonPackage) :
    TerminationCodonClosed T := by
  exact And.intro T.prematureStop (And.intro T.thresholdMet (And.intro T.ribosomeStalling (And.intro T.releaseFactorRecruitment T.decayTrigger)))

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse