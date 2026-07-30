import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean.DecayExecution

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure NMDRegulationPackage {S : SpliceosomeComplex} {R : NMDRecognitionPackage S} {M : mRNPSurveillancePackage R} {D : DecayExecutionPackage M} where
  autoregulationLoop : Prop
  stressResponse : Prop
  developmentalControl : Prop
  diseaseAssociatedMutations : Prop
  regulatoryFactors : Prop
  autoregulationLoopTerm : autoregulationLoop
  stressResponseTerm : stressResponse
  developmentalControlTerm : developmentalControl
  diseaseAssociatedMutationsTerm : diseaseAssociatedMutations
  regulatoryFactorsTerm : regulatoryFactors

structure NMDRegulationEvidence {S : SpliceosomeComplex} {R : NMDRecognitionPackage S} {M : mRNPSurveillancePackage R} {D : DecayExecutionPackage M} (N : NMDRegulationPackage D) where
  autoregulationLoopClosed : N.autoregulationLoop
  stressResponseClosed : N.stressResponse
  developmentalControlClosed : N.developmentalControl
  diseaseAssociatedMutationsClosed : N.diseaseAssociatedMutations
  regulatoryFactorsClosed : N.regulatoryFactors

def NMDRegulationClosed {S : SpliceosomeComplex} {R : NMDRecognitionPackage S} {M : mRNPSurveillancePackage R} {D : DecayExecutionPackage M} (N : NMDRegulationPackage D) : Prop :=
  N.autoregulationLoop ∧ N.stressResponse ∧ N.developmentalControl ∧ N.diseaseAssociatedMutations ∧ N.regulatoryFactors

theorem nmd_regulation_closed_from_evidence {S : SpliceosomeComplex} {R : NMDRecognitionPackage S} {M : mRNPSurveillancePackage R} {D : DecayExecutionPackage M} (N : NMDRegulationPackage D) (E : NMDRegulationEvidence N) : NMDRegulationClosed N := by
  exact And.intro E.autoregulationLoopClosed (And.intro E.stressResponseClosed (And.intro E.developmentalControlClosed (And.intro E.diseaseAssociatedMutationsClosed E.regulatoryFactorsClosed)))

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse
