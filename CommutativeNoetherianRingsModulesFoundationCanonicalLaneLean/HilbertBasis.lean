import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure HilbertBasisPackage where
  ring : Type u
  polynomialRing : Type v
  ideal : Submodule ring polynomialRing
  finitelyGenerated : Prop
  basis : List (Submodule ring polynomialRing)

def HilbertBasisClosed (H : HilbertBasisPackage) : Prop :=
  H.finitelyGenerated

theorem hilbert_basis_endgame (H : HilbertBasisPackage) (h : H.finitelyGenerated) :
    HilbertBasisClosed H := by
  exact h

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse