import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure InternalHomStructure (F : ClosedMonoidalCartesianFoundation) where
  homObject : ∀ (a b : F.category), F.category
  evaluationMap : ∀ (a b : F.category), F.tensorProduct (homObject a b) a → b
  coevaluationMap : ∀ (a b : F.category), b → homObject a (F.tensorProduct b a)
  adjunction : ∀ (a b c : F.category), (F.tensorProduct a b → c) ≃ (a → homObject b c)

def InternalHomClosed (F : ClosedMonoidalCartesianFoundation) (H : InternalHomStructure F) : Prop :=
  ∀ (a b : F.category), H.evaluationMap a b ∧ H.coevaluationMap a b

theorem internal_hom_closed_from_structure (F : ClosedMonoidalCartesianFoundation)
    (H : InternalHomStructure F) (h : ∀ (a b : F.category), H.evaluationMap a b ∧ H.coevaluationMap a b) :
    InternalHomClosed F H := by
  exact h

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse