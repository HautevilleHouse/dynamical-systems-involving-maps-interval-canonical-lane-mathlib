import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean

structure SharkovskyOrderingPackage where
  intervalMap : ℝ → ℝ
  periodicPoints : Set ℕ
  shankovskyOrdering : ℕ → ℕ → Prop
  periodForcingTheorem : Prop
  minimalPeriods : Prop
  shankovskyOrderingClosed : shankovskyOrdering
  periodForcingTheoremClosed : periodForcingTheorem
  minimalPeriodsClosed : minimalPeriods

structure SharkovskyOrderingEvidence (P : SharkovskyOrderingPackage) where
  shankovskyOrderingClosed : P.shankovskyOrderingClosed
  periodForcingTheoremClosed : P.periodForcingTheoremClosed
  minimalPeriodsClosed : P.minimalPeriodsClosed

def SharkovskyOrderingClosed (P : SharkovskyOrderingPackage) : Prop :=
  (P.shankovskyOrderingClosed : Prop) ∧ (P.periodForcingTheoremClosed : Prop) ∧ (P.minimalPeriodsClosed : Prop)

theorem sharkovsky_ordering_closed_from_evidence
    (P : SharkovskyOrderingPackage) (E : SharkovskyOrderingEvidence P) :
    SharkovskyOrderingClosed P := by
  exact And.intro E.shankovskyOrderingClosed (And.intro E.periodForcingTheoremClosed E.minimalPeriodsClosed)

end DynamicalSystemsInvolvingMapsIntervalCanonicalLaneLean
end HautevilleHouse