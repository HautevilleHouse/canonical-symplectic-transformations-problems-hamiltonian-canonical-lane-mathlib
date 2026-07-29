import HautevilleHouse.CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean.SymplecticPackage

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

structure GeneratingFunctionType where
  oldCoordinates : Type u
  newCoordinates : Type v
  generatingFunction : Type w
  mixedVariables : Prop
  typeOne : Prop
  typeTwo : Prop
  typeThree : Prop
  typeFour : Prop
  transformationDerived : Prop

def GeneratingFunctionClosed (G : GeneratingFunctionType) : Prop :=
  G.mixedVariables ∧ G.typeOne ∧ G.typeTwo ∧ G.typeThree ∧ G.typeFour ∧ G.transformationDerived

structure GeneratingFunctionEvidence (G : GeneratingFunctionType) where
  mixedVariablesClosed : G.mixedVariables
  typeOneClosed : G.typeOne
  typeTwoClosed : G.typeTwo
  typeThreeClosed : G.typeThree
  typeFourClosed : G.typeFour
  transformationDerivedClosed : G.transformationDerived

theorem generating_function_closed_from_evidence
    (G : GeneratingFunctionType) (E : GeneratingFunctionEvidence G) :
    GeneratingFunctionClosed G := by
  exact And.intro E.mixedVariablesClosed
    (And.intro E.typeOneClosed
      (And.intro E.typeTwoClosed
        (And.intro E.typeThreeClosed
          (And.intro E.typeFourClosed E.transformationDerivedClosed))))

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse