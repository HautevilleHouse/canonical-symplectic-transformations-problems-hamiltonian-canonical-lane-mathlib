import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean.Integrability

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure PerturbationTheoryPackage {S : SymplecticFormPackage} {H : HamiltonianSystemPackage S} {C : CanonicalTransformationPackage H} {I : IntegrabilityPackage C} where
  smallParameter : Type u
  perturbedHamiltonian : Type v
  kolmogorovArnoldMoserTheorem : Prop
  averagingMethods : Prop
  kamClosed : kolmogorovArnoldMoserTheorem
  averagingClosed : averagingMethods

structure PerturbationTheoryEvidence {S : SymplecticFormPackage} {H : HamiltonianSystemPackage S} {C : CanonicalTransformationPackage H} {I : IntegrabilityPackage C} (P : PerturbationTheoryPackage I) where
  kamClosedClosed : P.kolmogorovArnoldMoserTheorem
  averagingClosedClosed : P.averagingMethods

def PerturbationTheoryClosed {S : SymplecticFormPackage} {H : HamiltonianSystemPackage S} {C : CanonicalTransformationPackage H} {I : IntegrabilityPackage C} (P : PerturbationTheoryPackage I) : Prop :=
  P.kolmogorovArnoldMoserTheorem ∧ P.averagingMethods

theorem perturbation_theory_closed_from_evidence {S : SymplecticFormPackage} {H : HamiltonianSystemPackage S} {C : CanonicalTransformationPackage H} {I : IntegrabilityPackage C} (P : PerturbationTheoryPackage I) (E : PerturbationTheoryEvidence P) : PerturbationTheoryClosed P := by
  exact And.intro E.kamClosedClosed E.averagingClosedClosed

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse