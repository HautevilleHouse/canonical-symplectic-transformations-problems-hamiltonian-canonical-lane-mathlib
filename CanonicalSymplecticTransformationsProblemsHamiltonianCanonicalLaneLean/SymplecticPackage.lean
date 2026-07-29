import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure HamiltonianPhaseSpace where
  manifold : Type u
  symplecticForm : Type v
  hamiltonianFunction : Type w
  smoothStructure : Prop
  symplecticFormClosed : Prop
  hamiltonianSmooth : Prop

structure HamiltonianAdmittedObject where
  phaseSpace : HamiltonianPhaseSpace
  canonicalTransformation : Type u
  generatingFunction : Type v
  transformationPreservesForm : Prop
  conclusion : transformationPreservesForm

def HamiltonianWitnessClosed (O : HamiltonianAdmittedObject) : Prop :=
  O.transformationPreservesForm

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse