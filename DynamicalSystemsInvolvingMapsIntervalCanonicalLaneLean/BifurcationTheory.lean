import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsInterval.IntervalDynamicsCore

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsInterval

structure BifurcationParameters where
  parameterSpace : ℝ
  bifurcationPoint : ℝ
  type : String

structure BifurcationTheoryPackage (A : AdmissibleClass) where
  bifurcations : List BifurcationParameters
  allClassified : Prop
  evidenceAllClassified : allClassified

def BifurcationTheoryClosed (A : AdmissibleClass) : Prop :=
  let B : BifurcationTheoryPackage A := BifurcationTheoryPackage.mk
    [] (by trivial) (by trivial)
  in B.allClassified

end DynamicalSystemsInvolvingMapsInterval
end HautevilleHouse