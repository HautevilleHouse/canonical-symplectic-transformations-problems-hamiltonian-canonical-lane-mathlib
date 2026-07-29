import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure SymplecticManifoldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  symplecticForm : Type v
  closedNondegenerate : Prop
  smoothStructure : Prop
  dimensionEven : Prop

structure SymplecticManifoldEvidence (M : SymplecticManifoldPackage) where
  closedNondegenerateClosed : M.closedNondegenerate
  smoothStructureClosed : M.smoothStructure
  dimensionEvenClosed : M.dimensionEven

def SymplecticManifoldClosed (M : SymplecticManifoldPackage) : Prop :=
  M.closedNondegenerate ∧ M.smoothStructure ∧ M.dimensionEven

theorem symplectic_manifold_closed_from_evidence
    (M : SymplecticManifoldPackage) (E : SymplecticManifoldEvidence M) :
    SymplecticManifoldClosed M := by
  exact And.intro E.closedNondegenerateClosed
    (And.intro E.smoothStructureClosed E.dimensionEvenClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse