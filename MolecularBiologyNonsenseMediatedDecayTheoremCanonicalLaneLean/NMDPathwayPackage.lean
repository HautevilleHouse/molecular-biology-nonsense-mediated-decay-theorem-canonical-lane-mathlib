import MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean.SurveillanceComplexPackage

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheorem

structure NMDPathwayPackage {S : SurveillanceComplexPackage} where
  pioneerRound : Prop
  eJCDependent : Prop
  eJCIndependent : Prop
  upf1ATPHydrolysis : Prop
  mrnaTargeting : Prop
  structuralAxis : Prop

structure NMDPathwayEvidence {S : SurveillanceComplexPackage} (P : NMDPathwayPackage S) where
  pioneerRoundClosed : P.pioneerRound
  eJCDependentClosed : P.eJCDependent
  eJCIndependentClosed : P.eJCIndependent
  upf1ATPHydrolysisClosed : P.upf1ATPHydrolysis
  mrnaTargetingClosed : P.mrnaTargeting
  structuralAxisClosed : P.structuralAxis

def NMDPathwayClosed {S : SurveillanceComplexPackage} (P : NMDPathwayPackage S) : Prop :=
  P.pioneerRound ∧ P.eJCDependent ∧ P.eJCIndependent ∧
  P.upf1ATPHydrolysis ∧ P.mrnaTargeting ∧ P.structuralAxis

theorem nmd_pathway_closed_from_evidence
    {S : SurveillanceComplexPackage} (P : NMDPathwayPackage S)
    (E : NMDPathwayEvidence P) : NMDPathwayClosed P := by
  exact And.intro E.pioneerRoundClosed
    (And.intro E.eJCDependentClosed
      (And.intro E.eJCIndependentClosed
        (And.intro E.upf1ATPHydrolysisClosed
          (And.intro E.mrnaTargetingClosed E.structuralAxisClosed))))

end MolecularBiologyNonsenseMediatedDecayTheorem
end HautevilleHouse