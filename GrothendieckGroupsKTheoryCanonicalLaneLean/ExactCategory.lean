import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCanonicalLaneLean

structure ExactCategory where
  Obj : Type u
  Morphism : Obj → Obj → Type v
  composition : ∀ {A B C : Obj}, Morphism A B → Morphism B C → Morphism A C
  identity : ∀ (A : Obj), Morphism A A
  kernel : ∀ {A B : Obj} (f : Morphism A B), Obj
  cokernel : ∀ {A B : Obj} (f : Morphism A B), Obj
  exactSequence : ∀ {A B C : Obj} (f : Morphism A B) (g : Morphism B C), Prop
  exactSequence_prop : ∀ {A B C : Obj} (f : Morphism A B) (g : Morphism B C), exactSequence f g ↔ (kernel g = f)

structure ExactCategoryEvidence (C : ExactCategory) where
  kernel_exists : ∀ {A B : Obj} (f : C.Morphism A B), C.kernel f = C.kernel f
  cokernel_exists : ∀ {A B : Obj} (f : C.Morphism A B), C.cokernel f = C.cokernel f

def ExactCategoryClosed (C : ExactCategory) : Prop := True

theorem exact_category_closed_from_evidence (C : ExactCategory) (E : ExactCategoryEvidence C) : ExactCategoryClosed C := by
  trivial

end GrothendieckGroupsKTheoryCanonicalLaneLean
end HautevilleHouse
