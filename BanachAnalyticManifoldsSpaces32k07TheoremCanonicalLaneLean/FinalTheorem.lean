import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

def ConstrainedBanachAnalyticClosure (A : BanachAnalyticAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

def NativeClosureTheorem (A : BanachAnalyticAdmissibleClass) : Prop :=
  ConstrainedBanachAnalyticClosure A

def ConditionalRouteClosure (A : BanachAnalyticAdmissibleClass) : Prop :=
  ConstrainedBanachAnalyticClosure A ∧ ClassicalSourceBoundaryCarried

theorem constrained_banach_analytic_endgame (A : BanachAnalyticAdmissibleClass) :
    ConstrainedBanachAnalyticClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

theorem native_closure_theorem_checked (A : BanachAnalyticAdmissibleClass) :
    NativeClosureTheorem A := by
  exact constrained_banach_analytic_endgame A

theorem conditional_route_closure_checked (A : BanachAnalyticAdmissibleClass) :
    ConditionalRouteClosure A := by
  exact And.intro (constrained_banach_analytic_endgame A) classical_source_boundary_carried_checked

theorem conditional_route_source_boundary_carried (A : BanachAnalyticAdmissibleClass) :
    ConditionalRouteClosure A -> ClassicalSourceBoundaryCarried := by
  intro h
  exact h.2

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse