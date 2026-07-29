import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure IntervalMapTopologicalDynamicsPackage where
  interval : Set ℝ
  map : ℝ → ℝ
  invariantMeasure : Type
  topologicalEntropy : ℝ
  mixingProperty : Prop
  chaosProperty : Prop
  invariantMeasureClosed : invariantMeasure
  topologicalEntropyClosed : topologicalEntropy ≥ 0
  mixingPropertyClosed : mixingProperty
  chaosPropertyClosed : chaosProperty

structure IntervalMapTopologicalDynamicsEvidence (P : IntervalMapTopologicalDynamicsPackage) where
  invariantMeasureClosed : P.invariantMeasureClosed
  topologicalEntropyClosed : P.topologicalEntropyClosed
  mixingPropertyClosed : P.mixingPropertyClosed
  chaosPropertyClosed : P.chaosPropertyClosed

def IntervalMapTopologicalDynamicsClosed (P : IntervalMapTopologicalDynamicsPackage) : Prop :=
  (P.invariantMeasureClosed : Prop) ∧ (P.topologicalEntropyClosed : Prop) ∧ (P.mixingPropertyClosed : Prop) ∧ (P.chaosPropertyClosed : Prop)

theorem interval_map_topological_dynamics_closed_from_evidence
    (P : IntervalMapTopologicalDynamicsPackage) (E : IntervalMapTopologicalDynamicsEvidence P) :
    IntervalMapTopologicalDynamicsClosed P := by
  exact And.intro E.invariantMeasureClosed (And.intro E.topologicalEntropyClosed (And.intro E.mixingPropertyClosed E.chaosPropertyClosed))

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse