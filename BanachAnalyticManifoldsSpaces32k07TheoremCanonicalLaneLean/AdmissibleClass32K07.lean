import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean.BanachAnalyticManifold

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

structure AdmittedTheoremObject where
  objectKey : String
  theoremStatement : String
  banachAnalyticManifold : BanachAnalyticManifold ℂ
  analyticSheafLayerClosed : Prop
  analyticVectorBundleClosed : Prop

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse