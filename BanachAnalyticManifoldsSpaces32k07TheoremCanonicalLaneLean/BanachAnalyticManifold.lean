import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

structure BanachAnalyticManifold (E : Type*) [NormedAddCommGroup E] [NormedSpace ℂ E] where
  carrier : Type*
  topological : TopologicalSpace carrier
  chartAt : carrier → (E → carrier)
  analyticTransition : ∀ x y : carrier, AnalyticOn ℂ (chartAt y ∘ (chartAt x)⁻¹) (Set.range (chartAt x))

structure AnalyticFunction (M : Type*) [TopologicalSpace M] (E : Type*) [NormedAddCommGroup E] [NormedSpace ℂ E] where
  domain : Set M
  codomain : E
  analytic : ∀ x ∈ domain, AnalyticAt ℂ (fun _ : M => codomain) x

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse