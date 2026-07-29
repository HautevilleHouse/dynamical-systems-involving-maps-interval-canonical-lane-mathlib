import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure KneadingTheoryPackage where
  intervalMap : ℝ → ℝ
  kneadingDeterminant : Type
  topologicalEntropyComputation : ℝ
  kneadingSequence : List ℕ
  admissibilityCondition : Prop
  kneadingDeterminantClosed : kneadingDeterminant
  topologicalEntropyComputationClosed : topologicalEntropyComputation ≥ 0
  kneadingSequenceClosed : kneadingSequence
  admissibilityConditionClosed : admissibilityCondition

structure KneadingTheoryEvidence (P : KneadingTheoryPackage) where
  kneadingDeterminantClosed : P.kneadingDeterminantClosed
  topologicalEntropyComputationClosed : P.topologicalEntropyComputationClosed
  kneadingSequenceClosed : P.kneadingSequenceClosed
  admissibilityConditionClosed : P.admissibilityConditionClosed

def KneadingTheoryClosed (P : KneadingTheoryPackage) : Prop :=
  (P.kneadingDeterminantClosed : Prop) ∧ (P.topologicalEntropyComputationClosed : Prop) ∧ (P.kneadingSequenceClosed : Prop) ∧ (P.admissibilityConditionClosed : Prop)

theorem kneading_theory_closed_from_evidence
    (P : KneadingTheoryPackage) (E : KneadingTheoryEvidence P) :
    KneadingTheoryClosed P := by
  exact And.intro E.kneadingDeterminantClosed (And.intro E.topologicalEntropyComputationClosed (And.intro E.kneadingSequenceClosed E.admissibilityConditionClosed))

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse