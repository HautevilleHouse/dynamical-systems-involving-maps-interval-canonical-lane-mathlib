import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean.IntervalMapAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  IntervalMapWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse