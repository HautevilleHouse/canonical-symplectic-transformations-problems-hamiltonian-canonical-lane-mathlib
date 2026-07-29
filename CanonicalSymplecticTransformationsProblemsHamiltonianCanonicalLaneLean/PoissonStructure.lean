import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure PoissonStructure (A : AdmissibleClass) where
  bracketDefined : Prop
  jacobiIdentity : Prop
  leibnizRule : Prop
  bracketDefinedClosed : bracketDefined
  jacobiIdentityClosed : jacobiIdentity
  leibnizRuleClosed : leibnizRule

def PoissonClosed (A : AdmissibleClass) (P : PoissonStructure A) : Prop :=
  P.bracketDefined ∧ P.jacobiIdentity ∧ P.leibnizRule

theorem poisson_closed_from_evidence (A : AdmissibleClass) (P : PoissonStructure A) :
    PoissonClosed A P := by
  exact And.intro P.bracketDefinedClosed (And.intro P.jacobiIdentityClosed P.leibnizRuleClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse