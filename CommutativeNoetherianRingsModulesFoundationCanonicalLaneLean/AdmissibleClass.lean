import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : ModuleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ModuleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse