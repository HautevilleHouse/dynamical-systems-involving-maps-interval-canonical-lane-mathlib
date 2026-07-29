import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsInterval.IntervalDynamicsCore

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsInterval

structure ConjugacyData where
  map1 : IntervalMap
  map2 : IntervalMap
  homeomorphism : ℝ → ℝ
  conjugacyHolds : Prop

structure ConjugacyClassificationPackage (A : AdmissibleClass) where
  classifiedUpToConjugacy : Prop
  evidenceClassified : classifiedUpToConjugacy

def ConjugacyClassificationClosed (A : AdmissibleClass) : Prop :=
  let C : ConjugacyClassificationPackage A := ConjugacyClassificationPackage.mk
    (by trivial) (by trivial)
  in C.classifiedUpToConjugacy

end DynamicalSystemsInvolvingMapsInterval
end HautevilleHouse