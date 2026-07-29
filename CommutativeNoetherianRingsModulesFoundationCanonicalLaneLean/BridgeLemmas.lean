import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ModuleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse