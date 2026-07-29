import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure HamiltonianStructure where
  phaseSpace : Type
  symplecticForm : Type
  hamiltonian : Type
  equationsOfMotion : Prop
  symplecticFormNondegenerate : Prop
  hamiltonianSmooth : Prop
  equationsClosed : equationsOfMotion
  formClosed : symplecticFormNondegenerate
  hamiltonianClosed : hamiltonianSmooth

structure HamiltonianEvidence (H : HamiltonianStructure) where
  equationsClosed : H.equationsOfMotion
  formClosed : H.symplecticFormNondegenerate
  hamiltonianClosed : H.hamiltonianSmooth

def HamiltonianClosed (H : HamiltonianStructure) : Prop :=
  H.equationsOfMotion ∧ H.symplecticFormNondegenerate ∧ H.hamiltonianSmooth

theorem hamiltonian_closed_from_evidence (H : HamiltonianStructure)
    (E : HamiltonianEvidence H) : HamiltonianClosed H := by
  exact And.intro E.equationsClosed (And.intro E.formClosed E.hamiltonianClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse