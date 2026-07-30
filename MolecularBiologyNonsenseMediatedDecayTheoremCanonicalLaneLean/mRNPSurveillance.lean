import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean.NMDRecognition

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure mRNPSurveillancePackage {S : SpliceosomeComplex} {R : NMDRecognitionPackage S} where
  upf1Recruitment : Prop
  upf2Upf3Complex : Prop
  smg1Kinase : Prop
  phosphorylationCascade : Prop
  decayComplexAssembly : Prop
  upf1RecruitmentTerm : upf1Recruitment
  upf2Upf3ComplexTerm : upf2Upf3Complex
  smg1KinaseTerm : smg1Kinase
  phosphorylationCascadeTerm : phosphorylationCascade
  decayComplexAssemblyTerm : decayComplexAssembly

structure mRNPSurveillanceEvidence {S : SpliceosomeComplex} {R : NMDRecognitionPackage S} (M : mRNPSurveillancePackage R) where
  upf1RecruitmentClosed : M.upf1Recruitment
  upf2Upf3ComplexClosed : M.upf2Upf3Complex
  smg1KinaseClosed : M.smg1Kinase
  phosphorylationCascadeClosed : M.phosphorylationCascade
  decayComplexAssemblyClosed : M.decayComplexAssembly

def mRNPSurveillanceClosed {S : SpliceosomeComplex} {R : NMDRecognitionPackage S} (M : mRNPSurveillancePackage R) : Prop :=
  M.upf1Recruitment ∧ M.upf2Upf3Complex ∧ M.smg1Kinase ∧ M.phosphorylationCascade ∧ M.decayComplexAssembly

theorem mrnp_surveillance_closed_from_evidence {S : SpliceosomeComplex} {R : NMDRecognitionPackage S} (M : mRNPSurveillancePackage R) (E : mRNPSurveillanceEvidence M) : mRNPSurveillanceClosed M := by
  exact And.intro E.upf1RecruitmentClosed (And.intro E.upf2Upf3ComplexClosed (And.intro E.smg1KinaseClosed (And.intro E.phosphorylationCascadeClosed E.decayComplexAssemblyClosed)))

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse
