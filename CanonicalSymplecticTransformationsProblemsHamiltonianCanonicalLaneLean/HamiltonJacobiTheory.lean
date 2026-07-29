import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure HamiltonJacobiTheoryPackage where
  principalFunction : Type u
  separatedSolutions : Type v
  solvingPDE : Prop
  dynamicalSystemReduction : Prop
  integralComplete : Prop

structure HamiltonJacobiTheoryEvidence (H : HamiltonJacobiTheoryPackage) where
  solvingPDEClosed : H.solvingPDE
  dynamicalSystemReductionClosed : H.dynamicalSystemReduction
  integralCompleteClosed : H.integralComplete

def HamiltonJacobiTheoryClosed (H : HamiltonJacobiTheoryPackage) : Prop :=
  H.solvingPDE ∧ H.dynamicalSystemReduction ∧ H.integralComplete

theorem hamilton_jacobi_theory_closed_from_evidence (H : HamiltonJacobiTheoryPackage)
    (E : HamiltonJacobiTheoryEvidence H) : HamiltonJacobiTheoryClosed H := by
  exact And.intro E.solvingPDEClosed (And.intro E.dynamicalSystemReductionClosed E.integralCompleteClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse
