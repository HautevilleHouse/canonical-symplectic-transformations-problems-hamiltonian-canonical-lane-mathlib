import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure GeneratingFunction where
  oldVariables : Type
  newVariables : Type
  mixing : Type
  functionType : Type  -- e.g., F1, F2, F3, F4
  transformationClosed : Prop
  functionClosed : functionType
  transformationClosedTerm : transformationClosed

structure GeneratingFunctionEvidence (G : GeneratingFunction) where
  transformationClosed : G.transformationClosed
  functionClosed : G.functionClosed

def GeneratingFunctionClosed (G : GeneratingFunction) : Prop :=
  G.transformationClosed ∧ G.functionClosed

theorem generating_function_closed_from_evidence (G : GeneratingFunction)
    (E : GeneratingFunctionEvidence G) : GeneratingFunctionClosed G := by
  exact And.intro E.transformationClosed E.functionClosed

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse