import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure ModuleFinitelyGenerated (R : NoetherianRing) where
  module : Type u
  modStr : Module (Ring R) module
  finiteBasis : Prop

def ModuleFinitelyGeneratedClosed (R : NoetherianRing) (M : ModuleFinitelyGenerated R) : Prop :=
  M.finiteBasis

theorem module_finitely_generated_closed (R : NoetherianRing) (M : ModuleFinitelyGenerated R) :
    ModuleFinitelyGeneratedClosed R M := by
  exact M.finiteBasis

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse