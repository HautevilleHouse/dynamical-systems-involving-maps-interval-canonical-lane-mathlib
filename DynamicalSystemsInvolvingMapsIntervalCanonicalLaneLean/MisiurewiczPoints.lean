import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure MisiurewiczPointsPackage where
  parameterValue : ℝ
  logisticMap : ℝ → ℝ
  criticalPointOrbit : List ℝ
  nonPeriodicCondition : Prop
  topologicalTransitivity : Prop
  criticalPointOrbitClosed : criticalPointOrbit
  nonPeriodicConditionClosed : nonPeriodicCondition
  topologicalTransitivityClosed : topologicalTransitivity

structure MisiurewiczPointsEvidence (P : MisiurewiczPointsPackage) where
  criticalPointOrbitClosed : P.criticalPointOrbitClosed
  nonPeriodicConditionClosed : P.nonPeriodicConditionClosed
  topologicalTransitivityClosed : P.topologicalTransitivityClosed

def MisiurewiczPointsClosed (P : MisiurewiczPointsPackage) : Prop :=
  (P.criticalPointOrbitClosed : Prop) ∧ (P.nonPeriodicConditionClosed : Prop) ∧ (P.topologicalTransitivityClosed : Prop)

theorem misiurewicz_points_closed_from_evidence
    (P : MisiurewiczPointsPackage) (E : MisiurewiczPointsEvidence P) :
    MisiurewiczPointsClosed P := by
  exact And.intro E.criticalPointOrbitClosed (And.intro E.nonPeriodicConditionClosed E.topologicalTransitivityClosed)

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse