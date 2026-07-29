import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean.SymplecticManifold

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure PoissonBracketPackage (M : SymplecticManifoldPackage) where
  bracket : (M.manifold → ℝ) → (M.manifold → ℝ) → (M.manifold → ℝ)
  bilinearity : Prop
  skewSymmetry : Prop
  jacobiIdentity : Prop
  leibnizRule : Prop

structure PoissonBracketEvidence {M : SymplecticManifoldPackage}
    (P : PoissonBracketPackage M) where
  bilinearityClosed : P.bilinearity
  skewSymmetryClosed : P.skewSymmetry
  jacobiIdentityClosed : P.jacobiIdentity
  leibnizRuleClosed : P.leibnizRule

def PoissonBracketClosed {M : SymplecticManifoldPackage}
    (P : PoissonBracketPackage M) : Prop :=
  P.bilinearity ∧ P.skewSymmetry ∧ P.jacobiIdentity ∧ P.leibnizRule

theorem poisson_bracket_closed_from_evidence
    {M : SymplecticManifoldPackage} (P : PoissonBracketPackage M)
    (E : PoissonBracketEvidence P) : PoissonBracketClosed P := by
  exact And.intro E.bilinearityClosed
    (And.intro E.skewSymmetryClosed
      (And.intro E.jacobiIdentityClosed E.leibnizRuleClosed))

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse