import DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean.BifurcationAnalysis

/-!
# Period Doubling Route to Chaos Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure PeriodDoublingRoutePackage {A : AdmissibleIntervalClass} {S : StructuralStabilityPackage A}
    (B : BifurcationAnalysisPackage S) where
  feigenbaumPoint : ℝ
  universalScaling : Prop
  infinitePeriodDoubling : Prop

structure PeriodDoublingRouteEvidence {A : AdmissibleIntervalClass} {S : StructuralStabilityPackage A}
    {B : BifurcationAnalysisPackage S} (P : PeriodDoublingRoutePackage B) where
  universalScalingClosed : P.universalScaling
  infinitePeriodDoublingClosed : P.infinitePeriodDoubling

def PeriodDoublingRouteClosed {A : AdmissibleIntervalClass} {S : StructuralStabilityPackage A}
    {B : BifurcationAnalysisPackage S} (P : PeriodDoublingRoutePackage B) : Prop :=
  P.universalScaling ∧ P.infinitePeriodDoubling

theorem period_doubling_route_closed_from_evidence {A : AdmissibleIntervalClass} {S : StructuralStabilityPackage A}
    {B : BifurcationAnalysisPackage S} (P : PeriodDoublingRoutePackage B)
    (E : PeriodDoublingRouteEvidence P) : PeriodDoublingRouteClosed P := by
  exact And.intro E.universalScalingClosed E.infinitePeriodDoublingClosed

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse