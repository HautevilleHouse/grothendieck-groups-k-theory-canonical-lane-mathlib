import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCanonicalLaneLean

structure ExactSequencePackage where
  category : Type u
  objects : List (category)
  morphisms : List ((a b : category) → (a → b))
  kernelImageProperty : Prop
  cokernelImageProperty : Prop
  exactAtEachObject : Prop

def ExactSequenceClosed (P : ExactSequencePackage) : Prop :=
  P.kernelImageProperty ∧ P.cokernelImageProperty ∧ P.exactAtEachObject

end GrothendieckGroupsKTheoryCanonicalLaneLean
end HautevilleHouse
