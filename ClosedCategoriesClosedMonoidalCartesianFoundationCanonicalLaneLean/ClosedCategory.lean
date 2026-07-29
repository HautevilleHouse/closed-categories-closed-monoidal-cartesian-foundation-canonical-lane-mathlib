import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure ClosedCategory where
  internalHom : Type
  evaluationMorphism : Prop
  compositionMorphism : Prop
  adjunction : Prop

structure ClosedCategoryEvidence (C : ClosedCategory) where
  internalHomClosed : Prop
  evaluationMorphismClosed : C.evaluationMorphism
  compositionMorphismClosed : C.compositionMorphism
  adjunctionClosed : C.adjunction

def ClosedCategoryClosed (C : ClosedCategory) : Prop :=
  C.internalHom ≠ C.evaluationMorphism ∧ C.evaluationMorphism ∧ C.compositionMorphism ∧ C.adjunction

theorem closed_category_closed_from_evidence (C : ClosedCategory)
    (E : ClosedCategoryEvidence C) : ClosedCategoryClosed C := by
  refine And.intro ?_ (And.intro E.evaluationMorphismClosed
    (And.intro E.compositionMorphismClosed E.adjunctionClosed))
  exact E.internalHomClosed

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse
