import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure IntegrableSystemPackage where
  involutiveFirstIntegrals : Type u
  invariantTori : Type v
  actionAngleCoordinates : Prop
  frequencyNondegeneracy : Prop
  integrabilityConditions : Prop

structure IntegrableSystemEvidence (I : IntegrableSystemPackage) where
  actionAngleCoordinatesClosed : I.actionAngleCoordinates
  frequencyNondegeneracyClosed : I.frequencyNondegeneracy
  integrabilityConditionsClosed : I.integrabilityConditions

def IntegrableSystemClosed (I : IntegrableSystemPackage) : Prop :=
  I.actionAngleCoordinates ∧ I.frequencyNondegeneracy ∧ I.integrabilityConditions

theorem integrable_system_closed_from_evidence (I : IntegrableSystemPackage) (E : IntegrableSystemEvidence I) :
    IntegrableSystemClosed I := by
  exact And.intro E.actionAngleCoordinatesClosed (And.intro E.frequencyNondegeneracyClosed E.integrabilityConditionsClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse
