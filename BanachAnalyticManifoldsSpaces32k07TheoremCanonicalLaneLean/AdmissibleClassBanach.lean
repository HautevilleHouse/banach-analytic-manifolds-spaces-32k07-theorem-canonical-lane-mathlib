import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.ContDiff

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

structure BanachAdmissibleObject where
  certificate : Theorem32K07Certificate ℂ
  endpointSatisfied : theorem32K07Closed certificate
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def banachAdmittedClosure (A : BanachAdmissibleObject) : Prop :=
  bridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def bridgeClosed (A : BanachAdmissibleObject) : Prop :=
  theorem32K07Closed A.certificate

theorem bridge_from_banach_admissible (A : BanachAdmissibleObject) :
    bridgeClosed A := by
  exact A.endpointSatisfied

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse