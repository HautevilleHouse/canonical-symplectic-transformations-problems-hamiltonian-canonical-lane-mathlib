import canonicalLaneMathlib.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SymplecticSpace where
  carrier : Type
  symplecticForm : Type

structure AdmittedObject where
  space : SymplecticSpace
  hamiltonianFunction : Type
  flowComplete : Prop
  invariantStructure : Prop
  forcedStructure : Type
  conclusion : forcedStructure

structure SymplecticEndgameState where
  object : AdmittedObject

def AdmittedWitnessClosed (O : AdmittedObject) : Prop :=
  O.forcedStructure

end CanonicalSymplecticTransformationsProblemsHamiltonianCanonicalLaneLean
end HautevilleHouse