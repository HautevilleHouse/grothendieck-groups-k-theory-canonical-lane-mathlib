import GrothendieckGroupsKTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCanonicalLaneLean

def ConstrainedGrothendieckClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_grothendieck_endgame (A : AdmissibleClass) :
    ConstrainedGrothendieckClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GrothendieckGroupsKTheoryCanonicalLaneLean
end HautevilleHouse