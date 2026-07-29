import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean.PeriodicPointDensity

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure TentMapTurbulencePackage where
  tentMapParameter : ℝ
  topologicalEntropyPositive : Prop
  horseshoeExists : Prop
  chaosInLiYorkeSense : Prop
  periodThreeImpliesChaos : Prop

structure TentMapTurbulenceEvidence (T : TentMapTurbulencePackage) where
  topologicalEntropyPositiveClosed : T.topologicalEntropyPositive
  horseshoeExistsClosed : T.horseshoeExists
  chaosInLiYorkeSenseClosed : T.chaosInLiYorkeSense
  periodThreeImpliesChaosClosed : T.periodThreeImpliesChaos

def TentMapTurbulenceClosed (T : TentMapTurbulencePackage) : Prop :=
  T.topologicalEntropyPositive ∧ T.horseshoeExists ∧ T.chaosInLiYorkeSense ∧ T.periodThreeImpliesChaos

theorem tent_map_turbulence_closed_from_evidence (T : TentMapTurbulencePackage) (E : TentMapTurbulenceEvidence T) :
    TentMapTurbulenceClosed T := by
  exact And.intro E.topologicalEntropyPositiveClosed (And.intro E.horseshoeExistsClosed (And.intro E.chaosInLiYorkeSenseClosed E.periodThreeImpliesChaosClosed))

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse