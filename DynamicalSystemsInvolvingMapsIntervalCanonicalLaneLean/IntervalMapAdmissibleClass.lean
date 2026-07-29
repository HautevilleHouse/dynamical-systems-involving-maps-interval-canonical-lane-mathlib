import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure IntervalMapAdmittedObject where
  interval : Set ℝ
  map : ℝ → ℝ
  continuousMap : Prop
  invariantMeasure : Prop
  conclusion : invariantMeasure

def IntervalMapWitnessClosed (O : IntervalMapAdmittedObject) : Prop :=
  O.invariantMeasure

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse