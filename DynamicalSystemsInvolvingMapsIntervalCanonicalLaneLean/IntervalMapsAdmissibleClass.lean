import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure IntervalMapAdmittedObject where
  interval : Set ℝ
  map : ℝ → ℝ
  mapContinuous : Continuous map
  mapInvariant : map '' interval ⊆ interval
  conclusion : Prop

structure AdmissibleClass where
  object : IntervalMapAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  IntervalMapWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse