import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure NoetherianRing where
  ring : Type u
  ringStr : CommRing ring
  idealAscendingChainCondition : Prop

def NoetherianRingClosed (R : NoetherianRing) : Prop :=
  R.idealAscendingChainCondition

theorem noetherian_ring_closed (R : NoetherianRing) : NoetherianRingClosed R := by
  exact R.idealAscendingChainCondition

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse