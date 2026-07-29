import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean.CanonicalTransformation

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure IntegrabilityPackage {S : SymplecticFormPackage} {H : HamiltonianSystemPackage S} {C : CanonicalTransformationPackage H} where
  actionAngleCoordinates : Type u
  involutiveFirstIntegrals : Prop
  liouvilleArnoldTorus : Prop
  integrabilityConditionsMet : Prop
  involutiveFirstIntegralsTerm : involutiveFirstIntegrals
  liouvilleArnoldTorusTerm : liouvilleArnoldTorus
  integrabilityConditionsMetTerm : integrabilityConditionsMet

structure IntegrabilityEvidence {S : SymplecticFormPackage} {H : HamiltonianSystemPackage S} {C : CanonicalTransformationPackage H} (I : IntegrabilityPackage C) where
  involutiveFirstIntegralsClosed : I.involutiveFirstIntegrals
  liouvilleArnoldTorusClosed : I.liouvilleArnoldTorus
  integrabilityConditionsMetClosed : I.integrabilityConditionsMet

def IntegrabilityClosed {S : SymplecticFormPackage} {H : HamiltonianSystemPackage S} {C : CanonicalTransformationPackage H} (I : IntegrabilityPackage C) : Prop :=
  I.involutiveFirstIntegrals ∧ I.liouvilleArnoldTorus ∧ I.integrabilityConditionsMet

theorem integrability_closed_from_evidence {S : SymplecticFormPackage} {H : HamiltonianSystemPackage S} {C : CanonicalTransformationPackage H} (I : IntegrabilityPackage C) (E : IntegrabilityEvidence I) : IntegrabilityClosed I := by
  exact And.intro E.involutiveFirstIntegralsClosed (And.intro E.liouvilleArnoldTorusClosed E.integrabilityConditionsMetClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse