import MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean.NMDGateLemmas

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheorem

structure SurveillanceComplexPackage where
  eJCBinding : Prop
  upf1Recruitment : Prop
  upf2Binding : Prop
  smg1Complex : Prop
  decayFactorAssembly : Prop
  endonucleolyticCleavage : Prop
  exonucleolyticDegradation : Prop

structure SurveillanceComplexEvidence (S : SurveillanceComplexPackage) where
  eJCBindingClosed : S.eJCBinding
  upf1RecruitmentClosed : S.upf1Recruitment
  upf2BindingClosed : S.upf2Binding
  smg1ComplexClosed : S.smg1Complex
  decayFactorAssemblyClosed : S.decayFactorAssembly
  endonucleolyticCleavageClosed : S.endonucleolyticCleavage
  exonucleolyticDegradationClosed : S.exonucleolyticDegradation

def SurveillanceComplexClosed (S : SurveillanceComplexPackage) : Prop :=
  S.eJCBinding ∧ S.upf1Recruitment ∧ S.upf2Binding ∧ S.smg1Complex ∧
  S.decayFactorAssembly ∧ S.endonucleolyticCleavage ∧ S.exonucleolyticDegradation

theorem surveillance_complex_closed_from_evidence
    (S : SurveillanceComplexPackage) (E : SurveillanceComplexEvidence S) :
    SurveillanceComplexClosed S := by
  exact And.intro E.eJCBindingClosed
    (And.intro E.upf1RecruitmentClosed
      (And.intro E.upf2BindingClosed
        (And.intro E.smg1ComplexClosed
          (And.intro E.decayFactorAssemblyClosed
            (And.intro E.endonucleolyticCleavageClosed
              E.exonucleolyticDegradationClosed)))))

end MolecularBiologyNonsenseMediatedDecayTheorem
end HautevilleHouse