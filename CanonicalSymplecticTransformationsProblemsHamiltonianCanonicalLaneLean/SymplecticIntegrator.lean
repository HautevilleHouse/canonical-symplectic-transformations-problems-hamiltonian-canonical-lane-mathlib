import canonicalLaneMathlib.HamiltonianFlow

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure SymplecticIntegrator (A : AdmissibleClass) (P : PoissonStructure A) (H : HamiltonianFlow A P) where
  timeStep : Type
  mapApproximation : Type
  symplecticityErrorBound : Prop
  convergenceOrder : Prop
  symplecticityErrorBoundClosed : symplecticityErrorBound
  convergenceOrderClosed : convergenceOrder

def SymplecticIntegratorClosed (A : AdmissibleClass) (P : PoissonStructure A) (H : HamiltonianFlow A P)
    (I : SymplecticIntegrator A P H) : Prop :=
  I.symplecticityErrorBound ∧ I.convergenceOrder

theorem symplectic_integrator_closed_from_evidence (A : AdmissibleClass) (P : PoissonStructure A)
    (H : HamiltonianFlow A P) (I : SymplecticIntegrator A P H)
    (E : SymplecticIntegratorEvidence A P H I) : SymplecticIntegratorClosed A P H I := by
  exact And.intro E.symplecticityErrorBoundClosed E.convergenceOrderClosed

structure SymplecticIntegratorEvidence (A : AdmissibleClass) (P : PoissonStructure A) (H : HamiltonianFlow A P)
    (I : SymplecticIntegrator A P H) where
  symplecticityErrorBoundClosed : I.symplecticityErrorBound
  convergenceOrderClosed : I.convergenceOrder

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse