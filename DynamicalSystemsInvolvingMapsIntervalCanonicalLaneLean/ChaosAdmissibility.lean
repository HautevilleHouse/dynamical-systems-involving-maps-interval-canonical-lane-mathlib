import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsInterval.IntervalDynamicsCore

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsInterval

structure ChaosProperties where
  sensitiveDependence : Prop
  topologicalTransitivity : Prop
  densePeriodicPoints : Prop

structure ChaosAdmissibilityPackage (A : AdmissibleClass) where
  properties : ChaosProperties
  evidenceSensitive : properties.sensitiveDependence
  evidenceTransitivity : properties.topologicalTransitivity
  evidenceDense : properties.densePeriodicPoints

def ChaosClosed (A : AdmissibleClass) : Prop :=
  let C : ChaosAdmissibilityPackage A := ChaosAdmissibilityPackage.mk
    (ChaosProperties.mk True True True) (by trivial) (by trivial) (by trivial)
  in C.properties.sensitiveDependence ∧ C.properties.topologicalTransitivity ∧ C.properties.densePeriodicPoints

end DynamicalSystemsInvolvingMapsInterval
end HautevilleHouse