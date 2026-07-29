import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure FinitelyGeneratedModule (R : NoetherianRing) where
  carrier : Type u
  moduleStruct : Module R.carrier carrier
  generators : List carrier
  spanGenerators : Prop
  proofSpan : spanGenerators

structure FinitelyGeneratedModuleEvidence {R : NoetherianRing}
    (M : FinitelyGeneratedModule R) where
  spanGeneratorsClosed : M.spanGenerators

def FinitelyGeneratedModuleClosed {R : NoetherianRing}
    (M : FinitelyGeneratedModule R) : Prop :=
  M.spanGenerators

theorem finitely_generated_module_closed_from_evidence
    {R : NoetherianRing} (M : FinitelyGeneratedModule R)
    (E : FinitelyGeneratedModuleEvidence M) :
    FinitelyGeneratedModuleClosed M := by
  exact E.spanGeneratorsClosed

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse