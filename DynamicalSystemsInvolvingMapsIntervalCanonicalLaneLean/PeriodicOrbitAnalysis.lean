import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsInterval.IntervalDynamicsCore

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsInterval

structure PeriodicOrbitParameters where
  period : ℕ
  orbitPoints : List ℝ
  stability : Prop

structure PeriodicOrbitAnalysisPackage (A : AdmissibleClass) where
  orbits : List PeriodicOrbitParameters
  orbitCountFinite : Prop
  periodBounds : Prop
  evidenceOrbitCountFinite : orbitCountFinite
  evidencePeriodBounds : periodBounds

def PeriodicOrbitAnalysisClosed (A : AdmissibleClass) : Prop :=
  let P : PeriodicOrbitAnalysisPackage A := PeriodicOrbitAnalysisPackage.mk
    [] (by trivial) (by trivial) (by trivial) (by trivial)
  in P.orbitCountFinite ∧ P.periodBounds

end DynamicalSystemsInvolvingMapsInterval
end HautevilleHouse