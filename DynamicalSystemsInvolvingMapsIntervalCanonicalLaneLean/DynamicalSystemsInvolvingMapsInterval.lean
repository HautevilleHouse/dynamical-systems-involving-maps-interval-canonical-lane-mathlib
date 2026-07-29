import canonicalLaneMathlib.AdmissibleClass

/-!
# Dynamical Systems Involving Maps Interval

This module defines the root package for Dynamical Systems Involving Maps Interval.
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure IntervalMapObject where
  domain : Set ℝ
  codomain : Set ℝ
  map : domain → codomain
  invariantMeasure : Prop
  topologicalEntropy : Prop

structure AdmissibleIntervalClass extends AdmissibleClass where
  object : IntervalMapObject
  orbitStructure : Prop
  bifurcationData : Prop

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse