import GrothendieckGroupsKTheoryCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GrothendieckGroupsKTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GrothendieckWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GrothendieckGroupsKTheoryCanonicalLaneLean
end HautevilleHouse