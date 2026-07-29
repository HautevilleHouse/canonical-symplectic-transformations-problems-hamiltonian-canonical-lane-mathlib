import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure CanonicalSymplecticPackage where
  phaseSpace : Type u
  symplecticForm : Type v
  timeDomain : Type w
  hamiltonian : Type x
  flow : Type y
  poissonBracket : Type z
  canonicalTransformationGroup : Type a
  symplecticStructure : Prop
  nondegeneracy : Prop
  closedForm : Prop
  hamiltonianSmooth : Prop
  flowHamiltEq : Prop
  inducedPoissonBracket : Prop
  completeCanonicalTransformation : Prop
  structureClosed : symplecticStructure
  nondegeneracyClosed : nondegeneracy
  closedFormClosed : closedForm
  hamiltonianSmoothClosed : hamiltonianSmooth
  flowHamiltEqClosed : flowHamiltEq
  inducedPoissonBracketClosed : inducedPoissonBracket
  completeCanonicalTransformationClosed : completeCanonicalTransformation

structure CanonicalSymplecticEvidence (P : CanonicalSymplecticPackage) where
  hamiltonianSmoothClosed : P.hamiltonianSmooth
  flowHamiltEqClosed : P.flowHamiltEq
  inducedPoissonBracketClosed : P.inducedPoissonBracket
  completeCanonicalTransformationClosed : P.completeCanonicalTransformation

def CanonicalSymplecticClosed (P : CanonicalSymplecticPackage) : Prop :=
  P.hamiltonianSmooth ∧ P.flowHamiltEq ∧ P.inducedPoissonBracket ∧ P.completeCanonicalTransformation

theorem canonical_symplectic_closed_from_evidence (P : CanonicalSymplecticPackage) (E : CanonicalSymplecticEvidence P) : CanonicalSymplecticClosed P := by
  exact And.intro E.hamiltonianSmoothClosed (And.intro E.flowHamiltEqClosed (And.intro E.inducedPoissonBracketClosed E.completeCanonicalTransformationClosed))

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse