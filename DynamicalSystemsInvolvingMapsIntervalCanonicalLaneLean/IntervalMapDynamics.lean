import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure IntervalMap where
  domain : Set ℝ
  f : ℝ → ℝ
  continuousOnDomain : ContinuousOn f domain
  invariantSubinterval : Set ℝ
  invariantProp : f '' invariantSubinterval ⊆ invariantSubinterval

structure IntervalDynamicsPackage where
  map : IntervalMap
  symbolicEncoding : Type u
  kneadingMatrix : Type v
  topologicalEntropy : ℝ
  kneadingDeterminant : ℝ

structure IntervalDynamicsEvidence (P : IntervalDynamicsPackage) where
  mapInvariantClosed : P.map.invariantProp
  symbolicEncodingExists : Nonempty (P.symbolicEncoding)
  kneadingMatrixWellDefined : Inhabited (P.kneadingMatrix)
  entropyPositive : P.topologicalEntropy > 0

def IntervalDynamicsClosed (P : IntervalDynamicsPackage) : Prop :=
  P.map.invariantProp ∧ Nonempty (P.symbolicEncoding) ∧ Inhabited (P.kneadingMatrix) ∧ P.topologicalEntropy > 0

theorem interval_dynamics_closed_from_evidence (P : IntervalDynamicsPackage) (E : IntervalDynamicsEvidence P) : IntervalDynamicsClosed P :=
  And.intro E.mapInvariantClosed (And.intro E.symbolicEncodingExists (And.intro E.kneadingMatrixWellDefined E.entropyPositive))

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse