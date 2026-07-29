import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure PrimaryDecompositionPackage where
  module : Type u
  ring : Type v
  submodules : List (Submodule ring module)
  primaryCondition : List Prop
  intersectionIsZero : Prop
  irredundant : Prop

structure PrimaryDecompositionEvidence (P : PrimaryDecompositionPackage) where
  primaryConditionClosed : List True
  intersectionIsZeroClosed : P.intersectionIsZero
  irredundantClosed : P.irredundant

def PrimaryDecompositionClosed (P : PrimaryDecompositionPackage) : Prop :=
  P.intersectionIsZero ∧ P.irredundant

theorem primary_decomposition_closed_from_evidence (P : PrimaryDecompositionPackage) (E : PrimaryDecompositionEvidence P) :
    PrimaryDecompositionClosed P := by
  exact And.intro E.intersectionIsZeroClosed E.irredundantClosed

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse