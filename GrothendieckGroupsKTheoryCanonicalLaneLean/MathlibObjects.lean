import GrothendieckGroupsKTheoryCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GrothendieckSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GrothendieckAdmittedObject where
  space : GrothendieckSpace
  abelianCategory : Prop
  exactSequencesSplit : Prop
  grothendieckGroupConstructed : Prop
  resolutionTheoremHolds : Prop
  conclusion : grothendieckGroupConstructed ∧ resolutionTheoremHolds

def GrothendieckWitnessClosed (O : GrothendieckAdmittedObject) : Prop :=
  O.conclusion

end GrothendieckGroupsKTheoryCanonicalLaneLean
end HautevilleHouse