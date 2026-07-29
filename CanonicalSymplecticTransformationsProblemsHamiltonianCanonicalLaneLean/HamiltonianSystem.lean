import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean.SymplecticForm

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure HamiltonianSystemPackage {S : SymplecticFormPackage} where
  hamiltonianFunction : Type u
  hamiltonianVectorField : Type v
  hamiltonianEquations : Prop
  conservedQuantities : Prop
  hamiltonianEquationsTerm : hamiltonianEquations
  conservedQuantitiesTerm : conservedQuantities

structure HamiltonianSystemEvidence {S : SymplecticFormPackage} (H : HamiltonianSystemPackage S) where
  hamiltonianEquationsClosed : H.hamiltonianEquations
  conservedQuantitiesClosed : H.conservedQuantities

def HamiltonianSystemClosed {S : SymplecticFormPackage} (H : HamiltonianSystemPackage S) : Prop :=
  H.hamiltonianEquations ∧ H.conservedQuantities

theorem hamiltonian_system_closed_from_evidence {S : SymplecticFormPackage} (H : HamiltonianSystemPackage S) (E : HamiltonianSystemEvidence H) : HamiltonianSystemClosed H := by
  exact And.intro E.hamiltonianEquationsClosed E.conservedQuantitiesClosed

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse