import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure PathIntegralQuantizationPackage where
  phaseSpace : Type u
  propagator : Type v
  lanczosFormula : Prop
  semiclassicalLimit : Prop
  canonicalClosure : Prop

structure PathIntegralQuantizationEvidence (P : PathIntegralQuantizationPackage) where
  lanczosFormulaClosed : P.lanczosFormula
  semiclassicalLimitClosed : P.semiclassicalLimit
  canonicalClosureClosed : P.canonicalClosure

def PathIntegralQuantizationClosed (P : PathIntegralQuantizationPackage) : Prop :=
  P.lanczosFormula ∧ P.semiclassicalLimit ∧ P.canonicalClosure

theorem path_integral_quantization_closed_from_evidence (P : PathIntegralQuantizationPackage)
    (E : PathIntegralQuantizationEvidence P) : PathIntegralQuantizationClosed P := by
  exact And.intro E.lanczosFormulaClosed (And.intro E.semiclassicalLimitClosed E.canonicalClosureClosed)

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse
