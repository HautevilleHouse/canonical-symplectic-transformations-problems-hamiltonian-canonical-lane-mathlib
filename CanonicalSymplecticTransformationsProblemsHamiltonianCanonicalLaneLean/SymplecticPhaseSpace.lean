import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure SymplecticPhaseSpace where
  manifold : Type u
  symplecticForm : Type v
  closedNondegenerate : Prop
  dimensionEven : Prop
  closedNondegenerateTerm : closedNondegenerate
  dimensionEvenTerm : dimensionEven

structure SymplecticPhaseSpaceEvidence (M : SymplecticPhaseSpace) where
  closedNondegenerateClosed : M.closedNondegenerate
  dimensionEvenClosed : M.dimensionEven

def SymplecticPhaseSpaceClosed (M : SymplecticPhaseSpace) : Prop :=
  M.closedNondegenerate ∧ M.dimensionEven

theorem symplectic_phase_space_closed_from_evidence
    (M : SymplecticPhaseSpace) (E : SymplecticPhaseSpaceEvidence M) :
    SymplecticPhaseSpaceClosed M := by
  exact And.intro E.closedNondegenerateClosed E.dimensionEvenClosed

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse