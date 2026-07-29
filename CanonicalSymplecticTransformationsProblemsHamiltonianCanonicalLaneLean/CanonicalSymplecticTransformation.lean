import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure CanonicalSymplecticTransformationPackage {M : SymplecticPhaseSpace} where
  transformation : Type u
  preservesSymplecticForm : Prop
  diffeomorphism : Prop
  generatesHamiltonianFlow : Prop

structure CanonicalSymplecticTransformationEvidence {M : SymplecticPhaseSpace}
    (T : CanonicalSymplecticTransformationPackage M) where
  preservesSymplecticFormClosed : T.preservesSymplecticForm
  diffeomorphismClosed : T.diffeomorphism
  generatesHamiltonianFlowClosed : T.generatesHamiltonianFlow

def CanonicalSymplecticTransformationClosed {M : SymplecticPhaseSpace}
    (T : CanonicalSymplecticTransformationPackage M) : Prop :=
  T.preservesSymplecticForm ∧ T.diffeomorphism ∧ T.generatesHamiltonianFlow

theorem canonical_symplectic_transformation_closed_from_evidence
    {M : SymplecticPhaseSpace} (T : CanonicalSymplecticTransformationPackage M)
    (E : CanonicalSymplecticTransformationEvidence T) :
    CanonicalSymplecticTransformationClosed T := by
  exact And.intro E.preservesSymplecticFormClosed
    (And.intro E.diffeomorphismClosed E.generatesHamiltonianFlowClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse