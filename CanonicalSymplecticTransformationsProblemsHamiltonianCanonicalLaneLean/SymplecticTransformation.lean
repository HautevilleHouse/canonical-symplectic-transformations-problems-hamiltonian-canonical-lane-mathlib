import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure SymplecticTransformation where
  sourceSpace : Type
  targetSpace : Type
  map : Type
  symplecticCondition : Prop
  invertibility : Prop
  mapSmooth : Prop
  conditionClosed : symplecticCondition
  invertibilityClosed : invertibility
  smoothClosed : mapSmooth

structure SymplecticTransformationEvidence (T : SymplecticTransformation) where
  conditionClosed : T.symplecticCondition
  invertibilityClosed : T.invertibility
  smoothClosed : T.mapSmooth

def SymplecticTransformationClosed (T : SymplecticTransformation) : Prop :=
  T.symplecticCondition ∧ T.invertibility ∧ T.mapSmooth

theorem symplectic_transformation_closed_from_evidence (T : SymplecticTransformation)
    (E : SymplecticTransformationEvidence T) : SymplecticTransformationClosed T := by
  exact And.intro E.conditionClosed (And.intro E.invertibilityClosed E.smoothClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse