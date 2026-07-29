import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrothendieckGroupsKTheoryCanonicalLaneLean.GrothendieckGroupConstruction

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCanonicalLaneLean

structure K0Group (C : AdditiveCategory) where
  vectorBundles : Type u
  isomorphismClasses : Type v
  directSumOperation : isomorphismClasses → isomorphismClasses → isomorphismClasses
  zeroClass : isomorphismClasses
  additiveGroup : Prop
  grothendieckConstruction : GrothendieckGroup

structure K0GroupEvidence {C : AdditiveCategory} (K : K0Group C) where
  vectorBundlesClosed : K.vectorBundles → Prop
  isomorphismClassesClosed : K.isomorphismClasses → Prop
  directSumOperationClosed : ∀ (x y : K.isomorphismClasses), K.directSumOperation x y = K.directSumOperation y x
  zeroClassClosed : ∀ (x : K.isomorphismClasses), K.directSumOperation K.zeroClass x = x
  additiveGroupClosed : K.additiveGroup
  grothendieckConstructionClosed : GrothendieckGroupEvidence K.grothendieckConstruction

def K0GroupClosed {C : AdditiveCategory} (K : K0Group C) : Prop :=
  (∀ x : K.isomorphismClasses, True) ∧ K.additiveGroup ∧ GrothendieckGroupClosed K.grothendieckConstruction

theorem k0_group_closed_from_evidence {C : AdditiveCategory} (K : K0Group C) (E : K0GroupEvidence K) : K0GroupClosed K := by
  exact And.intro (by intro x; trivial) (And.intro E.additiveGroupClosed (grothendieck_group_closed_from_evidence K.grothendieckConstruction E.grothendieckConstructionClosed))

end GrothendieckGroupsKTheoryCanonicalLaneLean
end HautevilleHouse