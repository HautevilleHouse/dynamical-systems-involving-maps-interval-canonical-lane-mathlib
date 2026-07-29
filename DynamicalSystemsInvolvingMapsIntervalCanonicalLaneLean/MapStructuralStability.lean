import DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean.DynamicalSystemsInvolvingMapsInterval

/-!
# Map Structural Stability Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure StructuralStabilityPackage (A : AdmissibleIntervalClass) where
  hyperbolicity : Prop
  transversalIntersections : Prop
  stabilityUnderPerturbation : Prop

structure StructuralStabilityEvidence {A : AdmissibleIntervalClass} (S : StructuralStabilityPackage A) where
  hyperbolicityClosed : S.hyperbolicity
  transversalIntersectionsClosed : S.transversalIntersections
  stabilityUnderPerturbationClosed : S.stabilityUnderPerturbation

def StructuralStabilityClosed {A : AdmissibleIntervalClass} (S : StructuralStabilityPackage A) : Prop :=
  S.hyperbolicity ∧ S.transversalIntersections ∧ S.stabilityUnderPerturbation

theorem structural_stability_closed_from_evidence {A : AdmissibleIntervalClass}
    (S : StructuralStabilityPackage A) (E : StructuralStabilityEvidence S) :
    StructuralStabilityClosed S := by
  exact And.intro E.hyperbolicityClosed (And.intro E.transversalIntersectionsClosed E.stabilityUnderPerturbationClosed)

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse