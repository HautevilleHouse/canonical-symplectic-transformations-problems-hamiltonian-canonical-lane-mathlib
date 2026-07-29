import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure IntegrabilityPackage {M : SymplecticPhaseSpace}
    {H : HamiltonianFlowPackage M} where
  integrableSystem : Prop
  actionAngleVariables : Prop
  kAMTheorem : Prop

structure IntegrabilityEvidence {M : SymplecticPhaseSpace}
    {H : HamiltonianFlowPackage M}
    (I : IntegrabilityPackage H) where
  integrableSystemClosed : I.integrableSystem
  actionAngleVariablesClosed : I.actionAngleVariables
  kAMTheoremClosed : I.kAMTheorem

def IntegrabilityClosed {M : SymplecticPhaseSpace}
    {H : HamiltonianFlowPackage M} (I : IntegrabilityPackage H) : Prop :=
  I.integrableSystem ∧ I.actionAngleVariables ∧ I.kAMTheorem

theorem integrability_closed_from_evidence
    {M : SymplecticPhaseSpace} {H : HamiltonianFlowPackage M}
    (I : IntegrabilityPackage H) (E : IntegrabilityEvidence I) :
    IntegrabilityClosed I := by
  exact And.intro E.integrableSystemClosed
    (And.intro E.actionAngleVariablesClosed E.kAMTheoremClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse