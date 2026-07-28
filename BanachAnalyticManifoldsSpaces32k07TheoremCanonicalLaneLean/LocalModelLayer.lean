import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

structure BanachAnalyticLocalModel (E : Type*) [NormedAddCommGroup E] [NormedSpace ℂ E] where
  source : Set E
  target : Set E
  transition : E → E
  analyticTransition : AnalyticOn ℂ transition source

structure LocalModelLayerCertificate where
  localModelType : Type
  sourceKey : String
  localModelLayerClosed : Bool

def localModelLayerClosed (C : LocalModelLayerCertificate) : Prop :=
  C.localModelLayerClosed = true

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse