import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure ClosedMonoidalCartesianFoundation where
  category : Type u
  tensorProduct : category → category → category
  internalHom : category → category → category
  evaluation : ∀ (a b : category), internalHom a b ⊗ a → b
  coevaluation : ∀ (a b : category), b → internalHom a (b ⊗ a)
  cartesianProduct : category → category → category
  projection1 : ∀ (a b : category), cartesianProduct a b → a
  projection2 : ∀ (a b : category), cartesianProduct a b → b
  pairing : ∀ (a b c : category), (c → a) → (c → b) → c → cartesianProduct a b
  tensorUnit : category
  leftUnitor : ∀ (a : category), tensorUnit ⊗ a → a
  rightUnitor : ∀ (a : category), a ⊗ tensorUnit → a
  associator : ∀ (a b c : category), (a ⊗ b) ⊗ c → a ⊗ (b ⊗ c)

structure ClosedMonoidalCartesianFoundationEvidence (F : ClosedMonoidalCartesianFoundation) where
  tensorProductClosed : Prop
  internalHomClosed : Prop
  cartesianProductClosed : Prop
  tensorUnitClosed : Prop
  coherenceConditions : F.tensorProductClosed ∧ F.internalHomClosed ∧ F.cartesianProductClosed ∧ F.tensorUnitClosed

def ClosedMonoidalCartesianFoundationClosed (F : ClosedMonoidalCartesianFoundation) : Prop :=
  F.tensorProductClosed ∧ F.internalHomClosed ∧ F.cartesianProductClosed ∧ F.tensorUnitClosed

theorem closed_monoidal_cartesian_foundation_closed_from_evidence
    (F : ClosedMonoidalCartesianFoundation) (E : ClosedMonoidalCartesianFoundationEvidence F) :
    ClosedMonoidalCartesianFoundationClosed F := by
  exact E.coherenceConditions

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse