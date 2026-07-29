import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure LogisticFamilyPackage where
  parameterValue : ℝ
  logisticMap : ℝ → ℝ
  orbitAnalysis : Type
  bifurcationDiagram : Prop
  periodDoublingRoute : Prop
  chaosRegionDetected : Prop
  orbitAnalysisClosed : orbitAnalysis
  bifurcationDiagramClosed : bifurcationDiagram
  periodDoublingRouteClosed : periodDoublingRoute
  chaosRegionDetectedClosed : chaosRegionDetected

structure LogisticFamilyEvidence (P : LogisticFamilyPackage) where
  orbitAnalysisClosed : P.orbitAnalysisClosed
  bifurcationDiagramClosed : P.bifurcationDiagramClosed
  periodDoublingRouteClosed : P.periodDoublingRouteClosed
  chaosRegionDetectedClosed : P.chaosRegionDetectedClosed

def LogisticFamilyClosed (P : LogisticFamilyPackage) : Prop :=
  (P.orbitAnalysisClosed : Prop) ∧ (P.bifurcationDiagramClosed : Prop) ∧ (P.periodDoublingRouteClosed : Prop) ∧ (P.chaosRegionDetectedClosed : Prop)

theorem logistic_family_closed_from_evidence
    (P : LogisticFamilyPackage) (E : LogisticFamilyEvidence P) :
    LogisticFamilyClosed P := by
  exact And.intro E.orbitAnalysisClosed (And.intro E.bifurcationDiagramClosed (And.intro E.periodDoublingRouteClosed E.chaosRegionDetectedClosed))

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse