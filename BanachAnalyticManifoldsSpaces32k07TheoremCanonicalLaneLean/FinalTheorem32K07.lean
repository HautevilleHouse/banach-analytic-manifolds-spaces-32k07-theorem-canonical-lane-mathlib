import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean.BridgeLemmas32K07
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean.GateLemmas32K07

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_endgame (A : AdmissibleClass) : ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse