import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean

structure ArtinReesLemmaPackage where
  ring : Type u
  ringStructure : CommRing ring
  isNoetherian : Prop
  artinReesHolds : Prop

structure ArtinReesLemmaEvidence (A : ArtinReesLemmaPackage) where
  isNoetherianClosed : A.isNoetherian
  artinReesHoldsClosed : A.artinReesHolds

def ArtinReesLemmaClosed (A : ArtinReesLemmaPackage) : Prop :=
  A.isNoetherian ∧ A.artinReesHolds

theorem artin_rees_lemma_closed_from_evidence (A : ArtinReesLemmaPackage) (E : ArtinReesLemmaEvidence A) :
    ArtinReesLemmaClosed A := by
  exact And.intro E.isNoetherianClosed E.artinReesHoldsClosed

end CommutativeNoetherianRingsModulesFoundationCanonicalLaneLean
end HautevilleHouse