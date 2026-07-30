import NMDCanonicalLaneLean.NMDAdmissibleClass

/-!
# Splicing and NMD Triggers Package
-/

namespace HautevilleHouse
namespace NMDCanonicalLaneLean

structure SplicingPackage (A : AdmissibleClass) where
  exonJunctionComplex : Type
  eJCUpstreamOfPTC : Prop
  spliceosomeRecognition : Prop
  eJCDeposited : A.eJCCandidate

def SplicingClosed (A : AdmissibleClass) : Prop :=
  A.eJCCandidate

theorem splicing_closed_from_ejc (A : AdmissibleClass) (e : A.eJCCandidate) :
    SplicingClosed A := e

end NMDCanonicalLaneLean
end HautevilleHouse