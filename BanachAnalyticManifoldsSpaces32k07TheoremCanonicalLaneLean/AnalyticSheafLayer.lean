import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean.BanachAnalyticManifold

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

structure AnalyticSheaf (M : Type*) [TopologicalSpace M] (E : Type*) [NormedAddCommGroup E] [NormedSpace ℂ E] where
  sections : (Set M) → Set (AnalyticFunction M E)
  restriction : ∀ (U V : Set M) (h : V ⊆ U), (sections U) → (sections V)
  sheafCondition : ∀ (U : Set M) (openCover : Set (Set M)),
    (∀ V ∈ openCover, V ⊆ U) → (∀ (f : AnalyticFunction M E), f.domain = U →
    ((∀ V ∈ openCover, (restriction U V (Set.Subset.refl _)) f ∈ sections V) → f ∈ sections U))

structure AnalyticSheafLayerCertificate where
  manifoldType : Type
  sheaf : AnalyticSheaf manifoldType ℂ
  sourceKey : String
  sheafLayerClosed : Bool

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse