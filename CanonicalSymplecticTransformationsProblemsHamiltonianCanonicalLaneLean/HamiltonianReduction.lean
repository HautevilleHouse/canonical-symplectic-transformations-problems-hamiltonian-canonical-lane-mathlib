import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean.Integrability

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure HamiltonianReductionPackage {S : SymplecticFormPackage} {H : HamiltonianSystemPackage S} {C : CanonicalTransformationPackage H} {I : IntegrabilityPackage C} where
  symplecticReduction : Type u
  momentMap : Prop
  reducedPhaseSpace : Type v
  marsdenWeinsteinTheorem : Prop
  momentMapTerm : momentMap
  marsdenWeinsteinTheoremTerm : marsdenWeinsteinTheorem

structure HamiltonianReductionEvidence {S : SymplecticFormPackage} {H : HamiltonianSystemPackage S} {C : CanonicalTransformationPackage H} {I : IntegrabilityPackage C} (R : HamiltonianReductionPackage I) where
  momentMapClosed : R.momentMap
  marsdenWeinsteinTheoremClosed : R.marsdenWeinsteinTheorem

def HamiltonianReductionClosed {S : SymplecticFormPackage} {H : HamiltonianSystemPackage S} {C : CanonicalTransformationPackage H} {I : IntegrabilityPackage C} (R : HamiltonianReductionPackage I) : Prop :=
  R.momentMap ∧ R.marsdenWeinsteinTheorem

theorem hamiltonian_reduction_closed_from_evidence {S : SymplecticFormPackage} {H : HamiltonianSystemPackage S} {C : CanonicalTransformationPackage H} {I : IntegrabilityPackage C} (R : HamiltonianReductionPackage I) (E : HamiltonianReductionEvidence R) : HamiltonianReductionClosed R := by
  exact And.intro E.momentMapClosed E.marsdenWeinsteinTheoremClosed

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse