import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure KrullDimension (R : NoetherianRing) where
  dimension : ℕ
  chainCondition : Prop
  maximalChainLength : Prop
  proofChainCondition : chainCondition
  proofMaximalChainLength : maximalChainLength

structure KrullDimensionEvidence {R : NoetherianRing}
    (K : KrullDimension R) where
  chainConditionClosed : K.chainCondition
  maximalChainLengthClosed : K.maximalChainLength

def KrullDimensionClosed {R : NoetherianRing}
    (K : KrullDimension R) : Prop :=
  K.chainCondition ∧ K.maximalChainLength

theorem krull_dimension_closed_from_evidence
    {R : NoetherianRing} (K : KrullDimension R)
    (E : KrullDimensionEvidence K) : KrullDimensionClosed K := by
  exact And.intro E.chainConditionClosed E.maximalChainLengthClosed

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse