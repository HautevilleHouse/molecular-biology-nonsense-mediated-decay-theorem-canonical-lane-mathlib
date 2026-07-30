import NMDCanonicalLaneLean.Surveillance

/-!
# Regulatory Pathways in NMD Package
-/

namespace HautevilleHouse
namespace NMDCanonicalLaneLean

structure RegulatoryPathwaysPackage (A : AdmissibleClass) where
  smg1KinaseActivation : Prop
  smg7Recruited : Prop
  smg5Partners : Prop
  phosphorylationEvents : Prop
  decayFeedback : Prop

def RegulatoryPathwaysClosed (A : AdmissibleClass) (R : RegulatoryPathwaysPackage A) : Prop :=
  R.smg1KinaseActivation ∧ R.smg7Recruited ∧ R.smg5Partners ∧ R.phosphorylationEvents ∧ R.decayFeedback

theorem regulatory_pathways_closed (A : AdmissibleClass) (R : RegulatoryPathwaysPackage A) (e : R.smg1KinaseActivation ∧ R.smg7Recruited ∧ R.smg5Partners ∧ R.phosphorylationEvents ∧ R.decayFeedback) :
    RegulatoryPathwaysClosed A R := e

end NMDCanonicalLaneLean
end HautevilleHouse