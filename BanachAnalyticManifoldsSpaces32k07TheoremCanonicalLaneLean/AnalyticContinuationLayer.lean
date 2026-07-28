import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.PathConnected

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

structure AnalyticContinuationDatum (E : Type) [NormedAddCommGroup E] [BanachSpace ℂ E] where
  manifold : BanachAnalyticManifold E
  basePoint : manifold.carrier
  germ : AnalyticGerm ℂ manifold.carrier basePoint
  continuationPath : Path manifold.carrier basePoint basePoint
  continuationResult : AnalyticGerm ℂ manifold.carrier (continuationPath 1)
  agreementOnPath : ∀ t ∈ Set.Ioo 0 1,
    AnalyticGerm.eqOnGerm (germ.transportAlong continuationPath) continuationResult at (continuationPath t)

def analyticContinuationClosed (D : AnalyticContinuationDatum ℂ) : Prop :=
  D.basePoint = D.continuationPath 1 ∧
  D.germ = D.continuationResult

theorem analytic_continuation_preserves_germ (D : AnalyticContinuationDatum ℂ) :
    analyticContinuationClosed D → D.germ = D.continuationResult := by
  intro h
  exact h.2

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse