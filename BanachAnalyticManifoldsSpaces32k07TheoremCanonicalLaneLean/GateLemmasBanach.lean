import canonicalLaneMathlib.AdmissibleClass
import BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean.BridgeLemmasBanach

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

def gateClosed (A : BanachAdmissibleObject) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BanachAdmissibleObject) :
    gateClosed A := by
  exact A.gateWitness

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse