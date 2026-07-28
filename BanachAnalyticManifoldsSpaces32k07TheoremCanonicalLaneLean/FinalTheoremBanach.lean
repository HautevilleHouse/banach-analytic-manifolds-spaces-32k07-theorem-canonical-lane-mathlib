import canonicalLaneMathlib.AdmissibleClass
import BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean.GateLemmasBanach

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

def ConstrainedTheoremClosure (A : BanachAdmissibleObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : BanachAdmissibleObject) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

theorem banach_32K07_endgame :
    ConstrainedTheoremClosure (default : BanachAdmissibleObject) := by
  exact constrained_theorem_closure (default : BanachAdmissibleObject)

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse