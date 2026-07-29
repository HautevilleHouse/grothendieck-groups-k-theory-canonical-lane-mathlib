import GrothendieckGroupsKTheoryCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : GrothendieckAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GrothendieckWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GrothendieckGroupsKTheoryCanonicalLaneLean
end HautevilleHouse