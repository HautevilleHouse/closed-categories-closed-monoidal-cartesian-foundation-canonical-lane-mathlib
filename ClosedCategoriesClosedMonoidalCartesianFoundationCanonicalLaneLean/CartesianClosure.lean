import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure CartesianClosure (F : ClosedMonoidalCartesianFoundation) where
  productObject : ∀ (a b : F.category), F.category
  projection1 : ∀ (a b : F.category), productObject a b → a
  projection2 : ∀ (a b : F.category), productObject a b → b
  universal : ∀ (a b c : F.category), (c → a) → (c → b) → c → productObject a b
  terminalObject : F.category
  terminalArrow : ∀ (a : F.category), a → terminalObject

def CartesianClosed (F : ClosedMonoidalCartesianFoundation) (C : CartesianClosure F) : Prop :=
  ∀ (a b : F.category), C.universal a b F.category (fun x => x) (fun x => x)

theorem cartesian_closed_from_closure (F : ClosedMonoidalCartesianFoundation)
    (C : CartesianClosure F) (h : ∀ (a b : F.category), C.universal a b F.category (fun x => x) (fun x => x)) :
    CartesianClosed F C := by
  exact h

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse