import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrothendieckGroupsKTheoryCanonicalLaneLean.K0Group

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCanonicalLaneLean

structure K1Group (C : AdditiveCategory) where
  automorphisms : Type u
  homotopyClasses : Type v
  inducedMap : K0Group C → K0Group C
  exactSequence : ExactSequence C (C.zeroObject) (C.zeroObject)

structure K1GroupEvidence {C : AdditiveCategory} (K : K1Group C) where
  automorphismsClosed : K.automorphisms → Prop
  homotopyClassesClosed : K.homotopyClasses → Prop
  inducedMapClosed : ∀ (x : K0Group C), K.inducedMap x = x
  exactSequenceClosed : K.exactSequence.exactness

def K1GroupClosed {C : AdditiveCategory} (K : K1Group C) : Prop :=
  (∀ x : K.automorphisms, True) ∧ K.exactSequence.exactness

theorem k1_group_closed_from_evidence {C : AdditiveCategory} (K : K1Group C) (E : K1GroupEvidence K) : K1GroupClosed K := by
  exact And.intro (by intro x; trivial) E.exactSequenceClosed

end GrothendieckGroupsKTheoryCanonicalLaneLean
end HautevilleHouse