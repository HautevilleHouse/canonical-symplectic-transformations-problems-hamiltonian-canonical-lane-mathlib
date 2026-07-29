import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean.SymplecticTransformations

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure GeneratingFunctionPackage {M N : SymplecticManifoldPackage} (S : SymplecticTransformationPackage M N) where
  functionType : Type u
  mixedVariables : Prop
  recoversTransformation : Prop

structure GeneratingFunctionEvidence {M N : SymplecticManifoldPackage} {S : SymplecticTransformationPackage M N} (G : GeneratingFunctionPackage S) where
  mixedVariablesClosed : G.mixedVariables
  recoversTransformationClosed : G.recoversTransformation

def GeneratingFunctionClosed {M N : SymplecticManifoldPackage} {S : SymplecticTransformationPackage M N} (G : GeneratingFunctionPackage S) : Prop :=
  G.mixedVariables ∧ G.recoversTransformation

theorem generating_function_closed_from_evidence {M N : SymplecticManifoldPackage} {S : SymplecticTransformationPackage M N} (G : GeneratingFunctionPackage S) (E : GeneratingFunctionEvidence G) : GeneratingFunctionClosed G := by
  exact And.intro E.mixedVariablesClosed E.recoversTransformationClosed

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse