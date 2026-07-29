import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure ClosedCategoryStructure where
  category : Type u → Type v → Type w
  identity : {α : Type u} → category α α
  compose : {α β γ : Type u} → category β γ → category α β → category α γ
  associativity : Prop
  identityLeft : Prop
  identityRight : Prop

structure ClosedMonoidalStructure (C : ClosedCategoryStructure) where
  tensorProduct : Type u → Type u → Type u
  internalHom : Type u → Type u → Type u
  tensorUnit : Type u
  associator : Prop
  leftUnitor : Prop
  rightUnitor : Prop
  tensorInternalHomAdjunction : Prop

structure CartesianClosedStructure (C : ClosedCategoryStructure) where
  product : Type u → Type u → Type u
  terminal : Type u
  productAssociator : Prop
  productLeftUnitor : Prop
  productRightUnitor : Prop
  exponential : Type u → Type u → Type u
  eval : {A B : Type u} → exponential A B → product A B → B
  curry : {A B C : Type u} → (product A B → C) → A → exponential B C
  exponentialAdjunction : Prop

def ClosedCategoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem closed_category_endgame (A : AdmissibleClass) :
    ClosedCategoryClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse