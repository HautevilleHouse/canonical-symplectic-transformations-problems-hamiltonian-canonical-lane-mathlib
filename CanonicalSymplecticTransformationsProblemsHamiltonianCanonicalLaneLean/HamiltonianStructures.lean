import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure SymplecticManifoldPackage where
  manifold : Type u
  symplecticForm : Type v
  closedNondegenerate : Prop
  hamiltonianVectorFieldExistence : Prop

structure SymplecticManifoldEvidence (M : SymplecticManifoldPackage) where
  closedNondegenerateClosed : M.closedNondegenerate
  hamiltonianVectorFieldExistenceClosed : M.hamiltonianVectorFieldExistence

def SymplecticManifoldClosed (M : SymplecticManifoldPackage) : Prop :=
  M.closedNondegenerate ∧ M.hamiltonianVectorFieldExistence

theorem symplectic_manifold_closed_from_evidence (M : SymplecticManifoldPackage)
    (E : SymplecticManifoldEvidence M) : SymplecticManifoldClosed M := by
  exact And.intro E.closedNondegenerateClosed E.hamiltonianVectorFieldExistenceClosed

structure HamiltonianSystemPackage {M : SymplecticManifoldPackage} where
  hamiltonianFunction : Type u
  poissonBracket : Type v
  hamiltonianVectorField : Type w
  hamiltonianFlow : Type x

structure HamiltonianSystemEvidence {M : SymplecticManifoldPackage}
    (H : HamiltonianSystemPackage M) where
  hamiltonianFunctionDefined : Prop
  poissonBracketDefined : Prop
  hamiltonianVectorFieldDefined : Prop
  hamiltonianFlowDefined : Prop

def HamiltonianSystemClosed {M : SymplecticManifoldPackage}
    (H : HamiltonianSystemPackage M) : Prop :=
  H.hamiltonianFunctionDefined ∧ H.poissonBracketDefined ∧
  H.hamiltonianVectorFieldDefined ∧ H.hamiltonianFlowDefined

theorem hamiltonian_system_closed_from_evidence {M : SymplecticManifoldPackage}
    (H : HamiltonianSystemPackage M) (E : HamiltonianSystemEvidence H) :
    HamiltonianSystemClosed H := by
  exact And.intro E.hamiltonianFunctionDefined
    (And.intro E.poissonBracketDefined
      (And.intro E.hamiltonianVectorFieldDefined E.hamiltonianFlowDefined))

structure CanonicalTransformationPackage {M : SymplecticManifoldPackage} where
  transformation : Type u
  preservesSymplecticForm : Prop
  hamiltonianFunctionPreserved : Prop
  generatingFunctionExists : Prop

structure CanonicalTransformationEvidence {M : SymplecticManifoldPackage}
    (T : CanonicalTransformationPackage M) where
  preservesSymplecticFormClosed : T.preservesSymplecticForm
  hamiltonianFunctionPreservedClosed : T.hamiltonianFunctionPreserved
  generatingFunctionExistsClosed : T.generatingFunctionExists

def CanonicalTransformationClosed {M : SymplecticManifoldPackage}
    (T : CanonicalTransformationPackage M) : Prop :=
  T.preservesSymplecticForm ∧ T.hamiltonianFunctionPreserved ∧
  T.generatingFunctionExists

theorem canonical_transformation_closed_from_evidence {M : SymplecticManifoldPackage}
    (T : CanonicalTransformationPackage M) (E : CanonicalTransformationEvidence T) :
    CanonicalTransformationClosed T := by
  exact And.intro E.preservesSymplecticFormClosed
    (And.intro E.hamiltonianFunctionPreservedClosed E.generatingFunctionExistsClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse