import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean.IntervalMapDynamics

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure RenormalizationPackage (P : IntervalDynamicsPackage) where
  renormalizationPeriod : ℕ
  renormalizedMap : IntervalMap
  renormalizationOperator : Type u
  scalingFactor : ℝ

structure RenormalizationEvidence (P : IntervalDynamicsPackage) (R : RenormalizationPackage P) where
  periodGreaterOne : R.renormalizationPeriod > 1
  renormalizedMapInvariant : R.renormalizedMap.invariantProp
  scalingFactorPositive : R.scalingFactor > 0
  renormalizationOperatorExists : Nonempty (R.renormalizationOperator)

def RenormalizationClosed (P : IntervalDynamicsPackage) (R : RenormalizationPackage P) : Prop :=
  R.renormalizationPeriod > 1 ∧ R.renormalizedMap.invariantProp ∧ R.scalingFactor > 0 ∧ Nonempty (R.renormalizationOperator)

theorem renormalization_closed_from_evidence (P : IntervalDynamicsPackage) (R : RenormalizationPackage P) (E : RenormalizationEvidence P R) : RenormalizationClosed P R :=
  And.intro E.periodGreaterOne (And.intro E.renormalizedMapInvariant (And.intro E.scalingFactorPositive E.renormalizationOperatorExists))

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse