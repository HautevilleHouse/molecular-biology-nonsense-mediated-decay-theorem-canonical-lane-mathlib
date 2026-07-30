import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure DiseaseAssociationPackage where
  geneticDisorder : Type u
  nonsenseMutation : Type v
  nmdEscape : Prop
  nmdSuppression : Prop
  therapeuticTarget : Prop
  readthroughDrug : Type w
  smg1Inhibitor : Type x
  diseaseModelValidated : Prop
  animalModelEvidence : Prop
  clinicalTrialData : Prop

structure DiseaseAssociationEvidence (D : DiseaseAssociationPackage) where
  nmdEscapeClosed : D.nmdEscape
  nmdSuppressionClosed : D.nmdSuppression
  therapeuticTargetClosed : D.therapeuticTarget
  diseaseModelValidatedClosed : D.diseaseModelValidated
  animalModelEvidenceClosed : D.animalModelEvidence
  clinicalTrialDataClosed : D.clinicalTrialData

def DiseaseAssociationClosed (D : DiseaseAssociationPackage) : Prop :=
  D.nmdEscape ∧ D.nmdSuppression ∧ D.therapeuticTarget ∧ D.diseaseModelValidated ∧ D.animalModelEvidence ∧ D.clinicalTrialData

theorem disease_association_closed_from_evidence (D : DiseaseAssociationPackage) (E : DiseaseAssociationEvidence D) : DiseaseAssociationClosed D :=
  by
    exact And.intro E.nmdEscapeClosed
      (And.intro E.nmdSuppressionClosed
        (And.intro E.therapeuticTargetClosed
          (And.intro E.diseaseModelValidatedClosed
            (And.intro E.animalModelEvidenceClosed E.clinicalTrialDataClosed))))

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse