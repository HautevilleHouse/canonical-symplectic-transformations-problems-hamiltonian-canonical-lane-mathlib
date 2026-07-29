import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure SymplecticAdmittedObject where
  space : Type
  symplecticForm : Type
  hamiltonianVectorField : Type
  conclusion : SymplecticWitnessClosed this

def SymplecticWitnessClosed (O : SymplecticAdmittedObject) : Prop :=
  O.conclusion

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse