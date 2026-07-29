import canonicalLaneMathlib.AdmissibleClass
import DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean.InvariantMeasureExistence

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure MixingPropertiesPackage (O : IntervalMapAdmittedObject) (P : InvariantMeasurePackage O) where
  strongMixing : Prop
  weakMixing : Prop
  ergodicity : Prop
  mixingEquivalences : Prop

structure MixingPropertiesEvidence (O : IntervalMapAdmittedObject) (P : InvariantMeasurePackage O) (M : MixingPropertiesPackage O P) where
  strongMixingClosed : M.strongMixing
  weakMixingClosed : M.weakMixing
  ergodicityClosed : M.ergodicity
  mixingEquivalencesClosed : M.mixingEquivalences

def MixingPropertiesClosed (O : IntervalMapAdmittedObject) (P : InvariantMeasurePackage O) (M : MixingPropertiesPackage O P) : Prop :=
  M.strongMixing ∧ M.weakMixing ∧ M.ergodicity ∧ M.mixingEquivalences

theorem mixing_properties_closed_from_evidence (O : IntervalMapAdmittedObject) (P : InvariantMeasurePackage O) (M : MixingPropertiesPackage O P) (E : MixingPropertiesEvidence O P M) : MixingPropertiesClosed O P M := by
  exact And.intro E.strongMixingClosed (And.intro E.weakMixingClosed (And.intro E.ergodicityClosed E.mixingEquivalencesClosed))

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse