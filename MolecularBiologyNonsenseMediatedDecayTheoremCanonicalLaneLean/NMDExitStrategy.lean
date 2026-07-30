import NMDCanonicalLaneLean.RegulatoryPathways

/-!
# NMD Exit Strategy Package
-/

namespace HautevilleHouse
namespace NMDCanonicalLaneLean

structure NMDExitStrategyPackage (A : AdmissibleClass) where
  terminationAtPTC : Prop
  releaseFactorsRecruited : Prop
  mrnaDecayConfirmed : A.decayObserved
  exitComplete : Prop

def NMDExitClosed (A : AdmissibleClass) (E : NMDExitStrategyPackage A) : Prop :=
  E.terminationAtPTC ∧ E.releaseFactorsRecruited ∧ E.mrnaDecayConfirmed ∧ E.exitComplete

theorem nmd_exit_closed (A : AdmissibleClass) (E : NMDExitStrategyPackage A) (e : E.terminationAtPTC ∧ E.releaseFactorsRecruited ∧ E.mrnaDecayConfirmed ∧ E.exitComplete) :
    NMDExitClosed A E := e

end NMDCanonicalLaneLean
end HautevilleHouse