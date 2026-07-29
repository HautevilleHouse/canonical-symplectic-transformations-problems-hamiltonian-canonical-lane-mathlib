import canonicalLaneMathlib.AdmissibleClass
import CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean.HamiltonianFlow

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure CanonicalTransformationPackage {M : SymplecticManifoldPackage}
    {H : HamiltonianFlowPackage M} where
  transformationMap : Type u
  preservesPoissonBracket : Prop
  generatingFunction : Type v
  transformationSmooth : Prop
  inverseTransformation : Type w

structure CanonicalTransformationEvidence {M : SymplecticManifoldPackage}
    {H : HamiltonianFlowPackage M} (T : CanonicalTransformationPackage M H) where
  preservesPoissonBracketClosed : T.preservesPoissonBracket
  transformationSmoothClosed : T.transformationSmooth

def CanonicalTransformationClosed {M : SymplecticManifoldPackage}
    {H : HamiltonianFlowPackage M} (T : CanonicalTransformationPackage M H) : Prop :=
  T.preservesPoissonBracket ∧ T.transformationSmooth

theorem canonical_transformation_closed_from_evidence {M : SymplecticManifoldPackage}
    {H : HamiltonianFlowPackage M} (T : CanonicalTransformationPackage M H)
    (E : CanonicalTransformationEvidence T) : CanonicalTransformationClosed T :=
  by
  exact And.intro E.preservesPoissonBracketClosed E.transformationSmoothClosed

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse