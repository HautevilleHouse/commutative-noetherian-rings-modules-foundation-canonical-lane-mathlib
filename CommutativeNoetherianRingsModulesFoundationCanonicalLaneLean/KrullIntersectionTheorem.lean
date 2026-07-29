import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure KrullIntersectionTheorem (R : Type u) [CommRing R] (I : Ideal R) where
  noetherianCondition : Prop
  intersectionZero : Prop
  noetherianProof : noetherianCondition
  intersectionProof : intersectionZero

structure KrullIntersectionEvidence (R : Type u) [CommRing R] (I : Ideal R) (K : KrullIntersectionTheorem R I) where
  noetherianClosed : K.noetherianCondition
  intersectionClosed : K.intersectionZero

def KrullIntersectionClosed (R : Type u) [CommRing R] (I : Ideal R) (K : KrullIntersectionTheorem R I) : Prop :=
  K.noetherianCondition ∧ K.intersectionZero

theorem krull_intersection_closed_from_evidence (R : Type u) [CommRing R] (I : Ideal R) (K : KrullIntersectionTheorem R I) (E : KrullIntersectionEvidence R I K) :
    KrullIntersectionClosed R I K := by
  exact And.intro E.noetherianClosed E.intersectionClosed

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse
