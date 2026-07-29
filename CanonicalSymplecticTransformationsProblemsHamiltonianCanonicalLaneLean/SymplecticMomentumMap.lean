import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure MomentumMapPackage {M : SymplecticPhaseSpace}
    {H : HamiltonianFlowPackage M} where
  lieAlgebraAction : Type w
  momentumMap : Type x
  equivariance : Prop
  hamiltonianGeneration : Prop

structure MomentumMapEvidence {M : SymplecticPhaseSpace}
    {H : HamiltonianFlowPackage M} (N : MomentumMapPackage H) where
  equivarianceClosed : N.equivariance
  hamiltonianGenerationClosed : N.hamiltonianGeneration

def MomentumMapClosed {M : SymplecticPhaseSpace}
    {H : HamiltonianFlowPackage M} (N : MomentumMapPackage H) : Prop :=
  N.equivariance ∧ N.hamiltonianGeneration

theorem momentum_map_closed_from_evidence
    {M : SymplecticPhaseSpace} {H : HamiltonianFlowPackage M}
    (N : MomentumMapPackage H) (E : MomentumMapEvidence N) :
    MomentumMapClosed N := by
  exact And.intro E.equivarianceClosed E.hamiltonianGenerationClosed

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse