import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

structure ComplexStructure (E : Type) [NormedAddCommGroup E] [BanachSpace ℂ E] where
  almostComplex : (M : BanachAnalyticManifold E) → (x : M.carrier) → (End (TangentSpace M x))
  integrable : ∀ (M : BanachAnalyticManifold E), NijenhuisTensor M almostComplex = 0

def complexStructureClosed (cs : ComplexStructure ℂ) : Prop :=
  ∀ (M : BanachAnalyticManifold ℂ),
    hasComplexStructure M ∧ cs.integrable M

structure ComplexManifold (E : Type) [NormedAddCommGroup E] [BanachSpace ℂ E] extends BanachAnalyticManifold E where
  complexStructure : ComplexStructure E

theorem complex_manifold_has_complex_structure (M : ComplexManifold ℂ) :
    hasComplexStructure M.toBanachAnalyticManifold := by
  exact M.complexStructure.integrable M.toBanachAnalyticManifold

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse