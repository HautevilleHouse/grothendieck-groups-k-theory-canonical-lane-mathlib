import GrothendieckGroupsKTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def grothendieckProjection : Projection GrothendieckEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl
  }

theorem grothendieck_projection_idempotent (x : GrothendieckEndgameState) :
    grothendieckProjection.toFun (grothendieckProjection.toFun x) = grothendieckProjection.toFun x := by
  exact grothendieckProjection.idempotent x

end GrothendieckGroupsKTheoryCanonicalLaneLean
end HautevilleHouse