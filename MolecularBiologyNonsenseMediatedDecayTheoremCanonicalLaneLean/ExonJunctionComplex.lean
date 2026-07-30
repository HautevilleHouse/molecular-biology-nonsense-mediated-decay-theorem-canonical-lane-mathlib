import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure ExonJunctionComplexPackage where
  eif4a3 : Type
  magoh : Type
  y14 : Type
  depositedUpstream : Prop
  markExonJunction : Prop
  recruitSurveillance : Prop
  rnaHelicaseActivity : Prop

def ExonJunctionComplexClosed (E : ExonJunctionComplexPackage) : Prop :=
  E.depositedUpstream ∧ E.markExonJunction ∧ E.recruitSurveillance ∧ E.rnaHelicaseActivity

theorem exon_junction_complex_closed (E : ExonJunctionComplexPackage) :
    ExonJunctionComplexClosed E := by
  exact And.intro E.depositedUpstream (And.intro E.markExonJunction (And.intro E.recruitSurveillance E.rnaHelicaseActivity))

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse