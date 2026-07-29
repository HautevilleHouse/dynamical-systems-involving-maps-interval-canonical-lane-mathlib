import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean.SarkovskiiOrderingGate

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure PeriodicPointDensityPackage where
  periodicPointsDense : Prop
  topologicalTransitivity : Prop
  mixingProperty : Prop
  sensitivityToInitialConditions : Prop

structure PeriodicPointDensityEvidence (P : PeriodicPointDensityPackage) where
  periodicPointsDenseClosed : P.periodicPointsDense
  topologicalTransitivityClosed : P.topologicalTransitivity
  mixingPropertyClosed : P.mixingProperty
  sensitivityToInitialConditionsClosed : P.sensitivityToInitialConditions

def PeriodicPointDensityClosed (P : PeriodicPointDensityPackage) : Prop :=
  P.periodicPointsDense ∧ P.topologicalTransitivity ∧ P.mixingProperty ∧ P.sensitivityToInitialConditions

theorem periodic_point_density_closed_from_evidence (P : PeriodicPointDensityPackage) (E : PeriodicPointDensityEvidence P) :
    PeriodicPointDensityClosed P := by
  exact And.intro E.periodicPointsDenseClosed (And.intro E.topologicalTransitivityClosed (And.intro E.mixingPropertyClosed E.sensitivityToInitialConditionsClosed))

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse