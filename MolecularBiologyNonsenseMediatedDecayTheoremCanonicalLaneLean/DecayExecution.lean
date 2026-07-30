import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean.mRNPSurveillance

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure DecayExecutionPackage {S : SpliceosomeComplex} {R : NMDRecognitionPackage S} {M : mRNPSurveillancePackage R} where
  exoribonucleaseRecruitment : Prop
  mrnaDegradation : Prop
  ribosomeRelease : Prop
  mrnaDecayRate : Prop
  decayByproducts : Prop
  exoribonucleaseRecruitmentTerm : exoribonucleaseRecruitment
  mrnaDegradationTerm : mrnaDegradation
  ribosomeReleaseTerm : ribosomeRelease
  mrnaDecayRateTerm : mrnaDecayRate
  decayByproductsTerm : decayByproducts

structure DecayExecutionEvidence {S : SpliceosomeComplex} {R : NMDRecognitionPackage S} {M : mRNPSurveillancePackage R} (D : DecayExecutionPackage M) where
  exoribonucleaseRecruitmentClosed : D.exoribonucleaseRecruitment
  mrnaDegradationClosed : D.mrnaDegradation
  ribosomeReleaseClosed : D.ribosomeRelease
  mrnaDecayRateClosed : D.mrnaDecayRate
  decayByproductsClosed : D.decayByproducts

def DecayExecutionClosed {S : SpliceosomeComplex} {R : NMDRecognitionPackage S} {M : mRNPSurveillancePackage R} (D : DecayExecutionPackage M) : Prop :=
  D.exoribonucleaseRecruitment ∧ D.mrnaDegradation ∧ D.ribosomeRelease ∧ D.mrnaDecayRate ∧ D.decayByproducts

theorem decay_execution_closed_from_evidence {S : SpliceosomeComplex} {R : NMDRecognitionPackage S} {M : mRNPSurveillancePackage R} (D : DecayExecutionPackage M) (E : DecayExecutionEvidence D) : DecayExecutionClosed D := by
  exact And.intro E.exoribonucleaseRecruitmentClosed (And.intro E.mrnaDegradationClosed (And.intro E.ribosomeReleaseClosed (And.intro E.mrnaDecayRateClosed E.decayByproductsClosed)))

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse
