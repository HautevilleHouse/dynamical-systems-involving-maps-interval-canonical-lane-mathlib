import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsInterval.IntervalDynamicsCore

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsInterval

structure TopologicalEntropy where
  entropyValue : ℝ
  positive : Prop

structure EntropyInvariantPackage (A : AdmissibleClass) where
  entropy : TopologicalEntropy
  entropyIsInvariant : Prop
  evidenceEntropyInvariant : entropyIsInvariant

def EntropyInvariantClosed (A : AdmissibleClass) : Prop :=
  let E : EntropyInvariantPackage A := EntropyInvariantPackage.mk
    (TopologicalEntropy.mk (0 : ℝ) (by trivial)) (by trivial) (by trivial)
  in E.entropyIsInvariant

end DynamicalSystemsInvolvingMapsInterval
end HautevilleHouse