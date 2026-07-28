import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

open Complex

structure Theorem32K07Certificate (E : Type) [NormedAddCommGroup E] [BanachSpace ℂ E] where
  manifold : BanachAnalyticManifold E
  complexStructure : ComplexStructure E
  analyticContinuation : AnalyticContinuationDatum E
  uniquenessProperty : ∀ (f g : AnalyticOn ℂ (fun x : manifold.carrier => ℂ) Set.univ),
    f = g on analyticContinuation.continuationPath.image → f = g

def theorem32K07Closed (C : Theorem32K07Certificate ℂ) : Prop :=
  banachAnalyticManifoldClosed C.manifold ∧
  complexStructureClosed C.complexStructure ∧
  analyticContinuationClosed C.analyticContinuation ∧
  C.uniquenessProperty

theorem theorem_32K07_certificate_checked (C : Theorem32K07Certificate ℂ) :
    theorem32K07Closed C := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))
  · exact banachAnalyticManifoldClosed_iff.mp ?_
  · exact complexStructureClosed_iff.mp ?_
  · exact analyticContinuationClosed_iff.mp ?_
  · exact C.uniquenessProperty

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse