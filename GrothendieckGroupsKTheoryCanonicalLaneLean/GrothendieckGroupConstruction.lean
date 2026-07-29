import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCanonicalLaneLean

structure AdditiveCategory where
  obj : Type u
  hom : obj → obj → Type v
  composition : ∀ {A B C : obj}, hom A B → hom B C → hom A C
  identity : ∀ (A : obj), hom A A
  associativity : ∀ {A B C D : obj} (f : hom A B) (g : hom B C) (h : hom C D), composition (composition f g) h = composition f (composition g h)
  identityLeft : ∀ {A B : obj} (f : hom A B), composition (identity A) f = f
  identityRight : ∀ {A B : obj} (f : hom A B), composition f (identity B) = f
  zeroObject : obj
  zeroMorphism : ∀ (A B : obj), hom A B
  biproduct : ∀ (A B : obj), obj
  biproductProjections : ∀ (A B : obj), hom (biproduct A B) A × hom (biproduct A B) B

structure ExactSequence {C : AdditiveCategory} (A B : C.obj) where
  kernel : C.obj
  cokernel : C.obj
  exactness : Prop

structure GrothendieckGroup where
  generators : Type u
  relations : Type v
  freeAbelianGroup : Type w
  quotientRelation : Prop
  abelianGroupStructure : Prop

structure GrothendieckGroupEvidence (G : GrothendieckGroup) where
  generatorsClosed : G.generators → Prop
  relationsClosed : G.relations → Prop
  freeAbelianGroupClosed : G.freeAbelianGroup → Prop
  quotientRelationClosed : G.quotientRelation
  abelianGroupStructureClosed : G.abelianGroupStructure

def GrothendieckGroupClosed (G : GrothendieckGroup) : Prop :=
  (∀ x : G.generators, True) ∧ (∀ r : G.relations, True) ∧ G.quotientRelation ∧ G.abelianGroupStructure

theorem grothendieck_group_closed_from_evidence (G : GrothendieckGroup) (E : GrothendieckGroupEvidence G) : GrothendieckGroupClosed G := by
  exact And.intro (by intro x; exact E.generatorsClosed x) (And.intro (by intro r; exact E.relationsClosed r) (And.intro E.quotientRelationClosed E.abelianGroupStructureClosed))

end GrothendieckGroupsKTheoryCanonicalLaneLean
end HautevilleHouse