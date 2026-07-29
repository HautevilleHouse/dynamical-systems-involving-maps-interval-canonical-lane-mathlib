import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsInterval

structure IntervalMap where
  domain : Set ℝ
  rule : ℝ → ℝ
  continuous : Prop

structure IntervalDynamicsAdmittedObject where
  map : IntervalMap
  invariantSet : Set ℝ
  dynamicsClosed : Prop

structure AdmissibleClass where
  object : IntervalDynamicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.dynamicsClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingMapsInterval
end HautevilleHouse