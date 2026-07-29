import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean.IntervalMapAdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure InvariantMeasurePackage (O : IntervalMapAdmittedObject) where
  continuousTransformation : Prop
  compactMetricSpace : Prop
  borelSigmaAlgebra : Prop
  invariantProbabilityMeasure : Prop
  krylovBogolyubovApplied : Prop

structure InvariantMeasureEvidence (O : IntervalMapAdmittedObject) (P : InvariantMeasurePackage O) where
  continuousTransformationClosed : P.continuousTransformation
  compactMetricSpaceClosed : P.compactMetricSpace
  borelSigmaAlgebraClosed : P.borelSigmaAlgebra
  invariantProbabilityMeasureClosed : P.invariantProbabilityMeasure
  krylovBogolyubovAppliedClosed : P.krylovBogolyubovApplied

def InvariantMeasureClosed (O : IntervalMapAdmittedObject) (P : InvariantMeasurePackage O) : Prop :=
  P.continuousTransformation ∧ P.compactMetricSpace ∧ P.borelSigmaAlgebra ∧ P.invariantProbabilityMeasure ∧ P.krylovBogolyubovApplied

theorem invariant_measure_closed_from_evidence (O : IntervalMapAdmittedObject) (P : InvariantMeasurePackage O) (E : InvariantMeasureEvidence O P) : InvariantMeasureClosed O P := by
  exact And.intro E.continuousTransformationClosed (And.intro E.compactMetricSpaceClosed (And.intro E.borelSigmaAlgebraClosed (And.intro E.invariantProbabilityMeasureClosed E.krylovBogolyubovAppliedClosed)))

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse