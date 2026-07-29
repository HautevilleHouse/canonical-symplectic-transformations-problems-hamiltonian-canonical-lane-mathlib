import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure SymplecticTopologyPackage {M : SymplecticPhaseSpace} where
  symplecticInvariant : Type w
  gromovNonSqueezing : Prop
  rigidStructure : Prop

structure SymplecticTopologyEvidence {M : SymplecticPhaseSpace}
    (S : SymplecticTopologyPackage M) where
  gromovNonSqueezingClosed : S.gromovNonSqueezing
  rigidStructureClosed : S.rigidStructure

def SymplecticTopologyClosed {M : SymplecticPhaseSpace}
    (S : SymplecticTopologyPackage M) : Prop :=
  S.gromovNonSqueezing ∧ S.rigidStructure

theorem symplectic_topology_closed_from_evidence
    {M : SymplecticPhaseSpace} (S : SymplecticTopologyPackage M)
    (E : SymplecticTopologyEvidence S) : SymplecticTopologyClosed S := by
  exact And.intro E.gromovNonSqueezingClosed E.rigidStructureClosed

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse