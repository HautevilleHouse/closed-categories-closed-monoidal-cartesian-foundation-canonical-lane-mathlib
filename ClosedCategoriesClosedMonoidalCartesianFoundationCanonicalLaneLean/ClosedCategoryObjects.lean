import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure ClosedMonoidalCategory where
  obj : Type u
  hom : obj → obj → Type v
  id : (X : obj) → hom X X
  comp : {X Y Z : obj} → hom X Y → hom Y Z → hom X Z
  tensor : obj → obj → obj
  internalHom : obj → obj → obj
  tensorHom : {X Y Z W : obj} → hom X Y → hom Z W → hom (tensor X Z) (tensor Y W)
  tensorId : (X Y : obj) → id (tensor X Y) = tensorHom (id X) (id Y)
  adjunction : {X Y Z : obj} → hom (tensor X Y) Z ≃ hom X (internalHom Y Z)
  closedCondition : (X Y Z : obj) → (tensor X Y) ⊗ Z ≅ X ⊗ (Y ⊗ Z)  -- coherence
  unitObject : obj
  unitIsUnit : (X : obj) → tensor unitObject X ≅ X

structure AdmittedMonoidalObject where
  category : ClosedMonoidalCategory
  cartesian : Prop
  cartesianClosed : (X Y : category.obj) → category.internalHom X Y ≅ category.obj  -- simplified
  admissibleClosure : cartesian ∧ cartesianClosed

end HautevilleHouse.ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse