import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure TranslationTerminationPackaging where
  prematureStopCodon : Type u
  eRF1 : Type v
  eRF3 : Type w
  atpBinding : Prop
  peptideRelease : Prop
  complexStabilization : Prop
  nonsenseCodonReadthrough : Prop
  frameshiftSuppression : Prop

structure TranslationTerminationEvidence (T : TranslationTerminationPackaging) where
  atpBindingClosed : T.atpBinding
  peptideReleaseClosed : T.peptideRelease
  complexStabilizationClosed : T.complexStabilization
  nonsenseCodonReadthroughClosed : T.nonsenseCodonReadthrough
  frameshiftSuppressionClosed : T.frameshiftSuppression

def TranslationTerminationClosed (T : TranslationTerminationPackaging) : Prop :=
  T.atpBinding ∧ T.peptideRelease ∧ T.complexStabilization ∧ T.nonsenseCodonReadthrough ∧ T.frameshiftSuppression

theorem translation_termination_closed_from_evidence (T : TranslationTerminationPackaging) (E : TranslationTerminationEvidence T) : TranslationTerminationClosed T :=
  by
    exact And.intro E.atpBindingClosed
      (And.intro E.peptideReleaseClosed
        (And.intro E.complexStabilizationClosed
          (And.intro E.nonsenseCodonReadthroughClosed E.frameshiftSuppressionClosed)))

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse