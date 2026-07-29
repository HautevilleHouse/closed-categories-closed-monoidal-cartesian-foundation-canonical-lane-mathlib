import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure CartesianClosedCategory where
  hasFiniteProducts : Prop
  hasExponentials : Prop
  curryUncurryAdjoint : Prop
  evaluationMap : Prop

structure CartesianClosedCategoryEvidence (C : CartesianClosedCategory) where
  hasFiniteProductsClosed : C.hasFiniteProducts
  hasExponentialsClosed : C.hasExponentials
  curryUncurryAdjointClosed : C.curryUncurryAdjoint
  evaluationMapClosed : C.evaluationMap

def CartesianClosedCategoryClosed (C : CartesianClosedCategory) : Prop :=
  C.hasFiniteProducts ∧ C.hasExponentials ∧ C.curryUncurryAdjoint ∧ C.evaluationMap

theorem cartesian_closed_category_closed_from_evidence (C : CartesianClosedCategory)
    (E : CartesianClosedCategoryEvidence C) : CartesianClosedCategoryClosed C := by
  exact And.intro E.hasFiniteProductsClosed
    (And.intro E.hasExponentialsClosed
      (And.intro E.curryUncurryAdjointClosed E.evaluationMapClosed))

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse
