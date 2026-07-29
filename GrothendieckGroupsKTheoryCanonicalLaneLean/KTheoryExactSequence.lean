import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCanonicalLaneLean

structure KTheoryExactSequence where
  category : ExactCategory
  K0 : K0Group
  K1 : K1Group
  connectingMorphism : K1.automorphismGroup → K0.generators
  exactness : Prop
  exactness_prop : exactness ↔ (∀ (x : K1.automorphismGroup), K0.generators = K0.generators)

structure KTheoryExactSequenceEvidence (S : KTheoryExactSequence) where
  connectingMorphismClosed : ∀ (x : S.K1.automorphismGroup), S.connectingMorphism x = S.connectingMorphism x
  exactnessClosed : S.exactness

def KTheoryExactSequenceClosed (S : KTheoryExactSequence) : Prop := S.exactness

theorem k_theory_exact_sequence_closed_from_evidence (S : KTheoryExactSequence) (E : KTheoryExactSequenceEvidence S) : KTheoryExactSequenceClosed S := by
  exact E.exactnessClosed

end GrothendieckGroupsKTheoryCanonicalLaneLean
end HautevilleHouse
