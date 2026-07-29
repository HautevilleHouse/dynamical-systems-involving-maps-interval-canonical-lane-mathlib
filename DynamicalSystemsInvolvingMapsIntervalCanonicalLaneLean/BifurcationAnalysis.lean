import DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean.MapStructuralStability

/-!
# Bifurcation Analysis Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure BifurcationAnalysisPackage {A : AdmissibleIntervalClass} (S : StructuralStabilityPackage A) where
  parameterFamily : ℝ → A.object.map
  bifurcationPoints : Set ℝ
  topologicalChanges : Prop

structure BifurcationAnalysisEvidence {A : AdmissibleIntervalClass} {S : StructuralStabilityPackage A}
    (B : BifurcationAnalysisPackage S) where
  topologicalChangesClosed : B.topologicalChanges

def BifurcationAnalysisClosed {A : AdmissibleIntervalClass} {S : StructuralStabilityPackage A}
    (B : BifurcationAnalysisPackage S) : Prop :=
  B.topologicalChanges

theorem bifurcation_analysis_closed_from_evidence {A : AdmissibleIntervalClass} {S : StructuralStabilityPackage A}
    (B : BifurcationAnalysisPackage S) (E : BifurcationAnalysisEvidence B) :
    BifurcationAnalysisClosed B := by
  exact E.topologicalChangesClosed

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse