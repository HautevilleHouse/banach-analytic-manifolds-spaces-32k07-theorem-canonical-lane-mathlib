import canonicalLaneMathlib.AdmissibleClass
import BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean.AdmissibleClassBanach

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

def bridgeClosed (A : BanachAdmissibleObject) : Prop :=
  theorem32K07Closed A.certificate

theorem bridge_from_admissible_class (A : BanachAdmissibleObject) :
    bridgeClosed A := by
  exact A.endpointSatisfied

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse