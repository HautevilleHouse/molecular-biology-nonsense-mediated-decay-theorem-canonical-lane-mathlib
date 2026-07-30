import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure SurveillanceComplexPackage where
  upf1 : Type
  upf2 : Type
  upf3 : Type
  smg1 : Type
  complexFormation : Prop
  atpaseActivity : Prop
  phosphorylationCycle : Prop
  mrnaBinding : Prop

def SurveillanceComplexClosed (S : SurveillanceComplexPackage) : Prop :=
  S.complexFormation ∧ S.atpaseActivity ∧ S.phosphorylationCycle ∧ S.mrnaBinding

theorem surveillance_complex_closed (S : SurveillanceComplexPackage) :
    SurveillanceComplexClosed S := by
  exact And.intro S.complexFormation (And.intro S.atpaseActivity (And.intro S.phosphorylationCycle S.mrnaBinding))

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse