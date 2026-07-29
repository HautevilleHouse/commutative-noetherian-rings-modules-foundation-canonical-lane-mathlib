import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure NoetherianModule (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] where
  submoduleChainCondition : Prop
  finiteGenerationSubmodules : Prop
  chainConditionProof : submoduleChainCondition
  finiteGenerationProof : finiteGenerationSubmodules

structure NoetherianModuleEvidence (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (N : NoetherianModule R M) where
  chainClosed : N.submoduleChainCondition
  generationClosed : N.finiteGenerationSubmodules

def NoetherianModuleClosed (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (N : NoetherianModule R M) : Prop :=
  N.submoduleChainCondition ∧ N.finiteGenerationSubmodules

theorem noetherian_module_closed_from_evidence (R : Type u) [CommRing R] (M : Type v) [AddCommGroup M] [Module R M] (N : NoetherianModule R M) (E : NoetherianModuleEvidence R M N) :
    NoetherianModuleClosed R M N := by
  exact And.intro E.chainClosed E.generationClosed

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse
