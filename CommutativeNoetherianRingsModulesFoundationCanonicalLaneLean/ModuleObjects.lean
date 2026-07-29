import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure ModuleSpace where
  carrier : Type
  ring : Ring carrier
  module : Module carrier carrier

structure ModuleAdmittedObject where
  space : ModuleSpace
  noetherian : Prop
  finiteGeneration : Prop
  resolutionFinite : Prop
  conclusion : resolutionFinite

def ModuleWitnessClosed (O : ModuleAdmittedObject) : Prop :=
  O.resolutionFinite

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse