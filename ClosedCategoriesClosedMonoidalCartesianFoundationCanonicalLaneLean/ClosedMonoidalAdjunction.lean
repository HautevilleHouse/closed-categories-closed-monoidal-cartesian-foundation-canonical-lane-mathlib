import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean.ClosedCategoryDefinition

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure TensorHomAdjunction {C : ClosedCategoryStructure} (M : ClosedMonoidalStructure C) where
  tensorFunctor : Type u → Type u
  homFunctor : Type u → Type u
  unit : Prop
  counit : Prop
  triangleIdentities : Prop
  adjunctionIso : Prop

def TensorHomAdjunctionClosed {C : ClosedCategoryStructure} {M : ClosedMonoidalStructure C}
    (A : TensorHomAdjunction M) : Prop :=
  A.unit ∧ A.counit ∧ A.triangleIdentities ∧ A.adjunctionIso

theorem tensor_hom_adjunction_closed {C : ClosedCategoryStructure} {M : ClosedMonoidalStructure C}
    (A : TensorHomAdjunction M) : TensorHomAdjunctionClosed A :=
  by
    exact And.intro A.unit (And.intro A.counit (And.intro A.triangleIdentities A.adjunctionIso))

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse