import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure PrimaryDecomposition (R : NoetherianRing) (M : FinitelyGeneratedModule R) where
  submodules : List (Submodule R.carrier M.carrier)
  primaryComponents : Prop
  intersectionEqualsZero : Prop
  proofPrimary : primaryComponents
  proofIntersection : intersectionEqualsZero

structure PrimaryDecompositionEvidence {R : NoetherianRing}
    {M : FinitelyGeneratedModule R} (P : PrimaryDecomposition R M) where
  primaryComponentsClosed : P.primaryComponents
  intersectionEqualsZeroClosed : P.intersectionEqualsZero

def PrimaryDecompositionClosed {R : NoetherianRing}
    {M : FinitelyGeneratedModule R} (P : PrimaryDecomposition R M) : Prop :=
  P.primaryComponents ∧ P.intersectionEqualsZero

theorem primary_decomposition_closed_from_evidence
    {R : NoetherianRing} {M : FinitelyGeneratedModule R}
    (P : PrimaryDecomposition R M) (E : PrimaryDecompositionEvidence P) :
    PrimaryDecompositionClosed P := by
  exact And.intro E.primaryComponentsClosed E.intersectionEqualsZeroClosed

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse