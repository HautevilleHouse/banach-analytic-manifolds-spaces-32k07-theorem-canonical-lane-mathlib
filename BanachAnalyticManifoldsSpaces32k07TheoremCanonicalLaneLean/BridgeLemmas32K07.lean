import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean.AdmissibleClass32K07

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.analyticSheafLayerClosed ∧ A.object.analyticVectorBundleClosed

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact ⟨A.object.analyticSheafLayerClosed, A.object.analyticVectorBundleClosed⟩

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse