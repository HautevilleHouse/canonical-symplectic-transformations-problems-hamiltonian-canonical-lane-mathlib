import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure SymplecticFormPackage where
  manifold : Type u
  symplecticTwoForm : Type v
  closed : Prop
  nondegenerate : Prop
  daExchangeRelation : Prop
  closedTerm : closed
  nondegenerateTerm : nondegenerate
  daExchangeRelationTerm : daExchangeRelation

structure SymplecticFormEvidence (S : SymplecticFormPackage) where
  closedClosed : S.closed
  nondegenerateClosed : S.nondegenerate
  daExchangeRelationClosed : S.daExchangeRelation

def SymplecticFormClosed (S : SymplecticFormPackage) : Prop :=
  S.closed ∧ S.nondegenerate ∧ S.daExchangeRelation

theorem symplectic_form_closed_from_evidence (S : SymplecticFormPackage) (E : SymplecticFormEvidence S) : SymplecticFormClosed S := by
  exact And.intro E.closedClosed (And.intro E.nondegenerateClosed E.daExchangeRelationClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse