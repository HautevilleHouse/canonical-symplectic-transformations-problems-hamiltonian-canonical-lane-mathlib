import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure CanonicalTransformationPackage {P : CanonicalSymplecticPackage} {H : HamiltonianFlowPackage P} where
  transformationMap : Type u
  generatingFunction : Type v
  symplecticCondition : Prop
  preservesHamiltEq : Prop
  poissonStructurePreserved : Prop
  symplecticConditionClosed : symplecticCondition
  preservesHamiltEqClosed : preservesHamiltEq
  poissonStructurePreservedClosed : poissonStructurePreserved

structure CanonicalTransformationEvidence {P : CanonicalSymplecticPackage} {H : HamiltonianFlowPackage P} (T : CanonicalTransformationPackage P H) where
  symplecticConditionClosed : T.symplecticCondition
  preservesHamiltEqClosed : T.preservesHamiltEq
  poissonStructurePreservedClosed : T.poissonStructurePreserved

def CanonicalTransformationClosed {P : CanonicalSymplecticPackage} {H : HamiltonianFlowPackage P} (T : CanonicalTransformationPackage P H) : Prop :=
  T.symplecticCondition ∧ T.preservesHamiltEq ∧ T.poissonStructurePreserved

theorem canonical_transformation_closed_from_evidence {P : CanonicalSymplecticPackage} {H : HamiltonianFlowPackage P} (T : CanonicalTransformationPackage P H) (E : CanonicalTransformationEvidence T) : CanonicalTransformationClosed T := by
  exact And.intro E.symplecticConditionClosed (And.intro E.preservesHamiltEqClosed E.poissonStructurePreservedClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse