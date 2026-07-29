import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure ArtinianModule (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  descendingChainCondition : Prop
  finiteLengthSubmodules : Prop
  chainConditionProof : descendingChainCondition
  finiteLengthProof : finiteLengthSubmodules

structure ArtinianModuleEvidence (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (A : ArtinianModule R M) where
  chainClosed : A.descendingChainCondition
  lengthClosed : A.finiteLengthSubmodules

def ArtinianModuleClosed (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (A : ArtinianModule R M) : Prop :=
  A.descendingChainCondition ∧ A.finiteLengthSubmodules

theorem artinian_module_closed_from_evidence (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (A : ArtinianModule R M) (E : ArtinianModuleEvidence R M A) :
    ArtinianModuleClosed R M A := by
  exact And.intro E.chainClosed E.lengthClosed

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse
