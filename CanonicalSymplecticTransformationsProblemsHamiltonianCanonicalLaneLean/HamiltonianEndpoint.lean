import canonicalLaneMathlib.AdmissibleClass
import CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean.SymplecticTransformations

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure HamiltonianEndpointPackage {M : SymplecticManifoldPackage}
    {H : HamiltonianFlowPackage M} {T : CanonicalTransformationPackage M H} where
  invariantTori : Prop
  actionAngleVariables : Prop
  ArnoldLiouvilleIntegrable : Prop
  torusDiffeomorphism : Prop
  endpointCondition : Prop

structure HamiltonianEndpointEvidence {M : SymplecticManifoldPackage}
    {H : HamiltonianFlowPackage M} {T : CanonicalTransformationPackage M H}
    (E : HamiltonianEndpointPackage M H T) where
  invariantToriClosed : E.invariantTori
  actionAngleVariablesClosed : E.actionAngleVariables
  ArnoldLiouvilleIntegrableClosed : E.ArnoldLiouvilleIntegrable
  torusDiffeomorphismClosed : E.torusDiffeomorphism
  endpointConditionClosed : E.endpointCondition

def HamiltonianEndpointClosed {M : SymplecticManifoldPackage}
    {H : HamiltonianFlowPackage M} {T : CanonicalTransformationPackage M H}
    (E : HamiltonianEndpointPackage M H T) : Prop :=
  E.invariantTori ∧ E.actionAngleVariables ∧ E.ArnoldLiouvilleIntegrable ∧
  E.torusDiffeomorphism ∧ E.endpointCondition

theorem hamiltonian_endpoint_closed_from_evidence {M : SymplecticManifoldPackage}
    {H : HamiltonianFlowPackage M} {T : CanonicalTransformationPackage M H}
    (E : HamiltonianEndpointPackage M H T) (Ev : HamiltonianEndpointEvidence E) :
    HamiltonianEndpointClosed E :=
  by
  exact And.intro Ev.invariantToriClosed
    (And.intro Ev.actionAngleVariablesClosed
      (And.intro Ev.ArnoldLiouvilleIntegrableClosed
        (And.intro Ev.torusDiffeomorphismClosed Ev.endpointConditionClosed)))

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse