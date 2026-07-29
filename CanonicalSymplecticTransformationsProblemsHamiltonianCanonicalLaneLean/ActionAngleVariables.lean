import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean.HamiltonianSystem

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure ActionAngleVariablesPackage {M : SymplecticManifoldPackage}
    (H : HamiltonianSystemPackage M) where
  actionCoordinates : Type u
  angleCoordinates : Type v
  torusFibration : Prop
  integrableSystem : Prop
  frequencies : Prop

structure ActionAngleVariablesEvidence {M : SymplecticManifoldPackage}
    {H : HamiltonianSystemPackage M} (A : ActionAngleVariablesPackage H) where
  torusFibrationClosed : A.torusFibration
  integrableSystemClosed : A.integrableSystem
  frequenciesClosed : A.frequencies

def ActionAngleVariablesClosed {M : SymplecticManifoldPackage}
    {H : HamiltonianSystemPackage M} (A : ActionAngleVariablesPackage H) : Prop :=
  A.torusFibration ∧ A.integrableSystem ∧ A.frequencies

theorem action_angle_variables_closed_from_evidence
    {M : SymplecticManifoldPackage} {H : HamiltonianSystemPackage M}
    (A : ActionAngleVariablesPackage H) (E : ActionAngleVariablesEvidence A) :
    ActionAngleVariablesClosed A := by
  exact And.intro E.torusFibrationClosed
    (And.intro E.integrableSystemClosed E.frequenciesClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse