import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure DynamicalIntervalMap (X : Type) [TopologicalSpace X] [PartialOrder X] where
  map : X → X
  continuity : Continuous map
  orderPreserving : Monotone map
  fixedPoints : Set X
  periodicPoints : ℕ → Set X
  topologicalEntropy : ℝ
  mixingProperties : Prop

structure AdmissibleClass where
  object : DynamicalIntervalMap
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DynamicalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse