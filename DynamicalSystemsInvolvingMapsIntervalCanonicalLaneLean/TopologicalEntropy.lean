import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean.MixingProperties

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure TopologicalEntropyPackage (O : IntervalMapAdmittedObject) (P : InvariantMeasurePackage O) (M : MixingPropertiesPackage O P) where
  entropyDefined : Prop
  variationalPrinciple : Prop
  positiveEntropyTendency : Prop

structure TopologicalEntropyEvidence (O : IntervalMapAdmittedObject) (P : InvariantMeasurePackage O) (M : MixingPropertiesPackage O P) (T : TopologicalEntropyPackage O P M) where
  entropyDefinedClosed : T.entropyDefined
  variationalPrincipleClosed : T.variationalPrinciple
  positiveEntropyTendencyClosed : T.positiveEntropyTendency

def TopologicalEntropyClosed (O : IntervalMapAdmittedObject) (P : InvariantMeasurePackage O) (M : MixingPropertiesPackage O P) (T : TopologicalEntropyPackage O P M) : Prop :=
  T.entropyDefined ∧ T.variationalPrinciple ∧ T.positiveEntropyTendency

theorem topological_entropy_closed_from_evidence (O : IntervalMapAdmittedObject) (P : InvariantMeasurePackage O) (M : MixingPropertiesPackage O P) (T : TopologicalEntropyPackage O P M) (E : TopologicalEntropyEvidence O P M T) : TopologicalEntropyClosed O P M T := by
  exact And.intro E.entropyDefinedClosed (And.intro E.variationalPrincipleClosed E.positiveEntropyTendencyClosed)

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse