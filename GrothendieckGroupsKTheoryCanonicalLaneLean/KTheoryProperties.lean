import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCanonicalLaneLean

structure KTheoryProperties where
  additiveProperty : Prop
  multiplicativeProperty : Prop
  resolutionProperty : Prop
  devissageProperty : Prop
  localizationProperty : Prop

def KTheoryPropertiesClosed (K : KTheoryProperties) : Prop :=
  K.additiveProperty ∧ K.multiplicativeProperty ∧ K.resolutionProperty ∧
  K.devissageProperty ∧ K.localizationProperty

end GrothendieckGroupsKTheoryCanonicalLaneLean
end HautevilleHouse
