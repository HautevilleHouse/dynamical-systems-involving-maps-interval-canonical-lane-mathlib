import DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean.BridgeLemmas
import DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

def ConstrainedIntervalMapClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_interval_map_endgame (A : AdmissibleClass) :
    ConstrainedIntervalMapClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse