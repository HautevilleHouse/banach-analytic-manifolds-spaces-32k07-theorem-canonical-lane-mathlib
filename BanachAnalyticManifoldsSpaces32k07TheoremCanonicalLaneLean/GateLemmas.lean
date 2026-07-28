import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

def gateClosed (A : BanachAnalyticAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : BanachAnalyticAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse