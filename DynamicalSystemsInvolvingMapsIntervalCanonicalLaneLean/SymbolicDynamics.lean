import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean.IntervalMapDynamics

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure SymbolicDynamicsPackage (P : IntervalDynamicsPackage) where
  alphabet : Type u
  shiftSpace : Set (ℕ → alphabet)
  subshiftOfFiniteType : Prop
  kneadingSequenceEmbedding : ℕ → alphabet

structure SymbolicDynamicsEvidence (P : IntervalDynamicsPackage) (S : SymbolicDynamicsPackage P) where
  alphabetNonempty : Nonempty (S.alphabet)
  shiftSpaceClosed : IsClosed (S.shiftSpace)
  subshiftOfFiniteTypeClosed : S.subshiftOfFiniteType
  embeddingConsistent : ∀ n, S.kneadingSequenceEmbedding n ∈ P.map.f '' (P.map.invariantSubinterval)

def SymbolicDynamicsClosed (P : IntervalDynamicsPackage) (S : SymbolicDynamicsPackage P) : Prop :=
  Nonempty (S.alphabet) ∧ IsClosed (S.shiftSpace) ∧ S.subshiftOfFiniteType ∧ (∀ n, S.kneadingSequenceEmbedding n ∈ P.map.f '' (P.map.invariantSubinterval))

theorem symbolic_dynamics_closed_from_evidence (P : IntervalDynamicsPackage) (S : SymbolicDynamicsPackage P) (E : SymbolicDynamicsEvidence P S) : SymbolicDynamicsClosed P S :=
  And.intro E.alphabetNonempty (And.intro E.shiftSpaceClosed (And.intro E.subshiftOfFiniteTypeClosed E.embeddingConsistent))

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse