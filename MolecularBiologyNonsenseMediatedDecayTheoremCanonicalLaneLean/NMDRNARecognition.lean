import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure mRNARecognitionPackage where
  prematureTerminationCodon : Type u
  splicedMRNA : Type v
  eJCDownstream : Prop
  capBindingComplex : Type w
  polyABindingProteins : Type x
  nmdDistanceRule : Prop
  exonBoundaryCrossing : Prop
  startCodonProximity : Prop
  pioneerRoundOfTranslation : Prop

structure mRNARecognitionEvidence (R : mRNARecognitionPackage) where
  eJCDownstreamClosed : R.eJCDownstream
  nmdDistanceRuleClosed : R.nmdDistanceRule
  exonBoundaryCrossingClosed : R.exonBoundaryCrossing
  startCodonProximityClosed : R.startCodonProximity
  pioneerRoundOfTranslationClosed : R.pioneerRoundOfTranslation

def mRNARecognitionClosed (R : mRNARecognitionPackage) : Prop :=
  R.eJCDownstream ∧ R.nmdDistanceRule ∧ R.exonBoundaryCrossing ∧ R.startCodonProximity ∧ R.pioneerRoundOfTranslation

theorem mrna_recognition_closed_from_evidence (R : mRNARecognitionPackage) (E : mRNARecognitionEvidence R) : mRNARecognitionClosed R :=
  by
    exact And.intro E.eJCDownstreamClosed
      (And.intro E.nmdDistanceRuleClosed
        (And.intro E.exonBoundaryCrossingClosed
          (And.intro E.startCodonProximityClosed E.pioneerRoundOfTranslationClosed)))

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse