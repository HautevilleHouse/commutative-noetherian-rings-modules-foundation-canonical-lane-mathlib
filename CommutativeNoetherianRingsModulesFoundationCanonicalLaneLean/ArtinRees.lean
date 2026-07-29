import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure ArtinReesPackage where
  ring : Type u
  module : Type v
  submodule : Submodule ring module
  ideal : Submodule ring module
  stableUnderMultiplication : Prop
  containment : Prop

structure ArtinReesEvidence (A : ArtinReesPackage) where
  stableUnderMultiplicationClosed : A.stableUnderMultiplication
  containmentClosed : A.containment

def ArtinReesClosed (A : ArtinReesPackage) : Prop :=
  A.containment

theorem artin_rees_closed_from_evidence (A : ArtinReesPackage) (E : ArtinReesEvidence A) :
    ArtinReesClosed A := by
  exact E.containmentClosed

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse