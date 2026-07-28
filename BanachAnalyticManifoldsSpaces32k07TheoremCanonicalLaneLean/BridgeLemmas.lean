import HautevilleHouse.BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean

def bridgeClosed (A : BanachAnalyticAdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : BanachAnalyticAdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.operatorModelWitness,
    A.object.spectralPersistenceBridgeWitness,
    A.object.sourceBoundaryLedgerWitness,
    A.object.classicalRemainderCarried⟩

end BanachAnalyticManifoldsSpaces32k07TheoremCanonicalLaneLean
end HautevilleHouse