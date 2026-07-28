import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean.BanachAnalyticManifold

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

structure AnalyticVectorBundle (M : Type*) [TopologicalSpace M] (E : Type*) [NormedAddCommGroup E] [NormedSpace ℂ E] where
  base : M → Type*
  trivialization : (x : M) → (base x) ≃ₗ[ℂ] E
  analyticTransition : ∀ x y : M, AnalyticOn ℂ (trivialization y ∘ (trivialization x)⁻¹) (Set.range (trivialization x))

structure AnalyticVectorBundleCertificate where
  baseManifold : Type
  fiberType : Type
  bundleType : AnalyticVectorBundle baseManifold fiberType
  sourceKey : String
  vectorBundleClosed : Bool

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse