import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean

structure SpliceosomeComplex where
  exonJunctionComplex : Type
  nonsenseCodon : Type
  splicingFactors : Type
  exonBoundaryMarked : Prop
  splicingEfficiency : Prop
  eJCStability : Prop
  exonBoundaryMarkedTerm : exonBoundaryMarked
  splicingEfficiencyTerm : splicingEfficiency
  eJCStabilityTerm : eJCStability

structure SpliceosomeEvidence (S : SpliceosomeComplex) where
  exonBoundaryMarkedClosed : S.exonBoundaryMarked
  splicingEfficiencyClosed : S.splicingEfficiency
  eJCStabilityClosed : S.eJCStability

def SpliceosomeClosed (S : SpliceosomeComplex) : Prop :=
  S.exonBoundaryMarked ∧ S.splicingEfficiency ∧ S.eJCStability

theorem spliceosome_closed_from_evidence (S : SpliceosomeComplex) (E : SpliceosomeEvidence S) : SpliceosomeClosed S := by
  exact And.intro E.exonBoundaryMarkedClosed (And.intro E.splicingEfficiencyClosed E.eJCStabilityClosed)

end MolecularBiologyNonsenseMediatedDecayTheoremCanonicalLaneLean
end HautevilleHouse
