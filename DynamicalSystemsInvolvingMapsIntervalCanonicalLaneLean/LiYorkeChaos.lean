import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure LiYorkeChaosPackage where
  intervalMap : ℝ → ℝ
  scrambledSet : Set ℝ
  uncountableSet : Prop
  nonPeriodicPair : Prop
  sensitiveDependence : Prop
  liYorkeChaosDefinition : Prop
  uncountableSetClosed : uncountableSet
  nonPeriodicPairClosed : nonPeriodicPair
  sensitiveDependenceClosed : sensitiveDependence
  liYorkeChaosDefinitionClosed : liYorkeChaosDefinition

structure LiYorkeChaosEvidence (P : LiYorkeChaosPackage) where
  uncountableSetClosed : P.uncountableSetClosed
  nonPeriodicPairClosed : P.nonPeriodicPairClosed
  sensitiveDependenceClosed : P.sensitiveDependenceClosed
  liYorkeChaosDefinitionClosed : P.liYorkeChaosDefinitionClosed

def LiYorkeChaosClosed (P : LiYorkeChaosPackage) : Prop :=
  (P.uncountableSetClosed : Prop) ∧ (P.nonPeriodicPairClosed : Prop) ∧ (P.sensitiveDependenceClosed : Prop) ∧ (P.liYorkeChaosDefinitionClosed : Prop)

theorem li_yorke_chaos_closed_from_evidence
    (P : LiYorkeChaosPackage) (E : LiYorkeChaosEvidence P) :
    LiYorkeChaosClosed P := by
  exact And.intro E.uncountableSetClosed (And.intro E.nonPeriodicPairClosed (And.intro E.sensitiveDependenceClosed E.liYorkeChaosDefinitionClosed))

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse