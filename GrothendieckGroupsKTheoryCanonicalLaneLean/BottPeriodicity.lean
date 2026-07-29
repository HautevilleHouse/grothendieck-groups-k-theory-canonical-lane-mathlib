import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GrothendieckGroupsKTheoryCanonicalLaneLean.K0Group
import HautevilleHouse.GrothendieckGroupsKTheoryCanonicalLaneLean.K1Group

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCanonicalLaneLean

structure BottPeriodicityTheorem where
  k0OfR : K0Group (AdditiveCategory.R)
  k0OfC : K0Group (AdditiveCategory.C)
  k1OfR : K1Group (AdditiveCategory.R)
  k1OfC : K1Group (AdditiveCategory.C)
  isomorphismK0R_K0R : k0OfR.isomorphismClasses ≃ k0OfR.isomorphismClasses
  isomorphismK0C_K0C : k0OfC.isomorphismClasses ≃ k0OfC.isomorphismClasses
  isomorphismK1R_K1R : k1OfR.automorphisms ≃ k1OfR.automorphisms
  isomorphismK1C_K1C : k1OfC.automorphisms ≃ k1OfC.automorphisms
  periodicityTwo : Prop

structure BottPeriodicityEvidence (B : BottPeriodicityTheorem) where
  k0OfRClosed : K0GroupClosed B.k0OfR
  k0OfCClosed : K0GroupClosed B.k0OfC
  k1OfRClosed : K1GroupClosed B.k1OfR
  k1OfCClosed : K1GroupClosed B.k1OfC
  isomorphismK0R_K0RClosed : ∀ (x : B.k0OfR.isomorphismClasses), B.isomorphismK0R_K0R x = x
  isomorphismK0C_K0CClosed : ∀ (x : B.k0OfC.isomorphismClasses), B.isomorphismK0C_K0C x = x
  isomorphismK1R_K1RClosed : ∀ (x : B.k1OfR.automorphisms), B.isomorphismK1R_K1R x = x
  isomorphismK1C_K1CClosed : ∀ (x : B.k1OfC.automorphisms), B.isomorphismK1C_K1C x = x
  periodicityTwoClosed : B.periodicityTwo

def BottPeriodicityClosed (B : BottPeriodicityTheorem) : Prop :=
  K0GroupClosed B.k0OfR ∧ K0GroupClosed B.k0OfC ∧ K1GroupClosed B.k1OfR ∧ K1GroupClosed B.k1OfC ∧ B.periodicityTwo

theorem bott_periodicity_closed_from_evidence (B : BottPeriodicityTheorem) (E : BottPeriodicityEvidence B) : BottPeriodicityClosed B := by
  exact And.intro E.k0OfRClosed (And.intro E.k0OfCClosed (And.intro E.k1OfRClosed (And.intro E.k1OfCClosed E.periodicityTwoClosed)))

end GrothendieckGroupsKTheoryCanonicalLaneLean
end HautevilleHouse