import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure ExonJunctionComplex where
  coreProteins : Type u
  magoh : Type v
  y14 : Type w
  srrm1 : Type x
  rnAExport : Prop
  splicingCoupled : Prop
  eIF4A3Binding : Prop
  mRNPFormation : Prop

structure ExonJunctionComplexEvidence (EJC : ExonJunctionComplex) where
  coreProteinsAssembled : Prop
  rnAExportClosed : EJC.rnAExport
  splicingCoupledClosed : EJC.splicingCoupled
  eIF4A3BindingClosed : EJC.eIF4A3Binding
  mRNPFormationClosed : EJC.mRNPFormation

def ExonJunctionComplexClosed (EJC : ExonJunctionComplex) : Prop :=
  EJC.rnAExport ∧ EJC.splicingCoupled ∧ EJC.eIF4A3Binding ∧ EJC.mRNPFormation

theorem exon_junction_complex_closed_from_evidence (EJC : ExonJunctionComplex) (E : ExonJunctionComplexEvidence EJC) : ExonJunctionComplexClosed EJC :=
  by
    exact And.intro E.rnAExportClosed
      (And.intro E.splicingCoupledClosed
        (And.intro E.eIF4A3BindingClosed E.mRNPFormationClosed))

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse