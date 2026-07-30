import NMDCanonicalLaneLean.NMDSplicing

/-!
# Surveillance Complexes and Decay Machinery Package
-/

namespace HautevilleHouse
namespace NMDCanonicalLaneLean

structure SurveillancePackage (A : AdmissibleClass) where
  upf1Recruited : Prop
  upf2Bound : Prop
  upf3ComplexFormed : Prop
  decapping : Prop
  deadenylation : Prop
  degradationPathway : Prop

def SurveillanceClosed (A : AdmissibleClass) (S : SurveillancePackage A) : Prop :=
  S.upf1Recruited ∧ S.upf2Bound ∧ S.upf3ComplexFormed ∧ S.decapping ∧ S.deadenylation ∧ S.degradationPathway

theorem surveillance_closed (A : AdmissibleClass) (S : SurveillancePackage A) (e : S.upf1Recruited ∧ S.upf2Bound ∧ S.upf3ComplexFormed ∧ S.decapping ∧ S.deadenylation ∧ S.degradationPathway) :
    SurveillanceClosed A S := e

end NMDCanonicalLaneLean
end HautevilleHouse