import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure CanonicalPerturbation where
  baseHamiltonian : HamiltonianStructure
  perturbation : Type
  integrableApproximation : Prop
  smallParameter : Prop
  convergenceDomain : Prop
  approximationClosed : integrableApproximation
  parameterClosed : smallParameter
  domainClosed : convergenceDomain

structure CanonicalPerturbationEvidence (P : CanonicalPerturbation) where
  approximationClosed : P.integrableApproximation
  parameterClosed : P.smallParameter
  domainClosed : P.convergenceDomain

def CanonicalPerturbationClosed (P : CanonicalPerturbation) : Prop :=
  P.integrableApproximation ∧ P.smallParameter ∧ P.convergenceDomain

theorem canonical_perturbation_closed_from_evidence (P : CanonicalPerturbation)
    (E : CanonicalPerturbationEvidence P) : CanonicalPerturbationClosed P := by
  exact And.intro E.approximationClosed (And.intro E.parameterClosed E.domainClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse