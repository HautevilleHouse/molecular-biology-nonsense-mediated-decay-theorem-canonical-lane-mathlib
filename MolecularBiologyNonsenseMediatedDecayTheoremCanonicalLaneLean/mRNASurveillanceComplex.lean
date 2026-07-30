import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure mRNASurveillanceComplex where
  exonJunctionComplex : Type u
  nonsenseCodon : Type v
  ribosome : Type w
  eRF1_eRF3 : Type x
  phosphorylationSignaling : Prop
  eJCActivation : Prop
  smg1Recruitment : Prop
  smg7MediatedDegradation : Prop
  compartmentalization : Prop

structure mRNASurveillanceEvidence (C : mRNASurveillanceComplex) where
  phosphorylationSignalingClosed : C.phosphorylationSignaling
  eJCActivationClosed : C.eJCActivation
  smg1RecruitmentClosed : C.smg1Recruitment
  smg7MediatedDegradationClosed : C.smg7MediatedDegradation
  compartmentalizationClosed : C.compartmentalization

def mRNASurveillanceClosed (C : mRNASurveillanceComplex) : Prop :=
  C.phosphorylationSignaling ∧ C.eJCActivation ∧ C.smg1Recruitment ∧ C.smg7MediatedDegradation ∧ C.compartmentalization

theorem mrna_surveillance_closed_from_evidence (C : mRNASurveillanceComplex) (E : mRNASurveillanceEvidence C) : mRNASurveillanceClosed C :=
  by
    exact And.intro E.phosphorylationSignalingClosed
      (And.intro E.eJCActivationClosed
        (And.intro E.smg1RecruitmentClosed
          (And.intro E.smg7MediatedDegradationClosed E.compartmentalizationClosed)))

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse