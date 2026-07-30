import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure UPFSmgComplex where
  upf1Helicase : Type u
  upf2Bridge : Type v
  upf3Recruitment : Type w
  smg1Kinase : Type x
  smg7Adaptor : Type y
  atpHydrolysis : Prop
  phosphorylationCycle : Prop
  decappingComplex : Prop
  exosomeRecruitment : Prop

structure UPFSmgEvidence (U : UPFSmgComplex) where
  atpHydrolysisClosed : U.atpHydrolysis
  phosphorylationCycleClosed : U.phosphorylationCycle
  decappingComplexClosed : U.decappingComplex
  exosomeRecruitmentClosed : U.exosomeRecruitment

def UPFSmgClosed (U : UPFSmgComplex) : Prop :=
  U.atpHydrolysis ∧ U.phosphorylationCycle ∧ U.decappingComplex ∧ U.exosomeRecruitment

theorem upf_smg_closed_from_evidence (U : UPFSmgComplex) (E : UPFSmgEvidence U) : UPFSmgClosed U :=
  by
    exact And.intro E.atpHydrolysisClosed
      (And.intro E.phosphorylationCycleClosed
        (And.intro E.decappingComplexClosed E.exosomeRecruitmentClosed))

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse