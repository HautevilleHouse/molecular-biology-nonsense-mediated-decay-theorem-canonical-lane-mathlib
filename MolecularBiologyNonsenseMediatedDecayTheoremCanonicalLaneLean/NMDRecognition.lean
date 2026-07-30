import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean.SpliceosomeComplex

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure NMDRecognitionPackage {S : SpliceosomeComplex} where
  prematureTerminationCodon : Prop
  downstreamAUG : Prop
  eJCDistance : Prop
  recognitionThresholds : Prop
  recognitionThresholdsTerm : recognitionThresholds

structure NMDRecognitionEvidence {S : SpliceosomeComplex} (R : NMDRecognitionPackage S) where
  prematureTerminationCodonClosed : R.prematureTerminationCodon
  downstreamAUGClosed : R.downstreamAUG
  eJCDistanceClosed : R.eJCDistance
  recognitionThresholdsClosed : R.recognitionThresholds

def NMDRecognitionClosed {S : SpliceosomeComplex} (R : NMDRecognitionPackage S) : Prop :=
  R.prematureTerminationCodon ∧ R.downstreamAUG ∧ R.eJCDistance ∧ R.recognitionThresholds

theorem nmd_recognition_closed_from_evidence {S : SpliceosomeComplex} (R : NMDRecognitionPackage S) (E : NMDRecognitionEvidence R) : NMDRecognitionClosed R := by
  exact And.intro E.prematureTerminationCodonClosed (And.intro E.downstreamAUGClosed (And.intro E.eJCDistanceClosed E.recognitionThresholdsClosed))

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse
