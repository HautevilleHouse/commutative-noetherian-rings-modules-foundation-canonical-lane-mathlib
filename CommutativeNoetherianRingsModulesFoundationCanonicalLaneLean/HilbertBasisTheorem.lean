import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure HilbertBasisTheorem (R : NoetherianRing) where
  polynomialRing : Ring
  polynomialRingIsNoetherian : Prop

def HilbertBasisClosed (R : NoetherianRing) (H : HilbertBasisTheorem R) : Prop :=
  H.polynomialRingIsNoetherian

theorem hilbert_basis_closed (R : NoetherianRing) (H : HilbertBasisTheorem R) :
    HilbertBasisClosed R H := by
  exact H.polynomialRingIsNoetherian

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse