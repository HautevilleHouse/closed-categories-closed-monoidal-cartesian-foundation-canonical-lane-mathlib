import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean.ClosedCategory
import HautevilleHouse.ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean.MonoidalCategory

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure ClosedMonoidalCategoryPackage where
  monoidal : MonoidalCategoryPackage
  closed : ClosedCategoryPackage
  compatibility : Prop

structure ClosedMonoidalCategoryEvidence (C : ClosedMonoidalCategoryPackage) where
  monoidalClosed : MonoidalCategoryClosed C.monoidal
  closedClosed : ClosedCategoryClosed C.closed
  compatibilityClosed : C.compatibility

def ClosedMonoidalCategoryClosed (C : ClosedMonoidalCategoryPackage) : Prop :=
  MonoidalCategoryClosed C.monoidal ∧ ClosedCategoryClosed C.closed ∧ C.compatibility

theorem closed_monoidal_category_closed_from_evidence (C : ClosedMonoidalCategoryPackage) (E : ClosedMonoidalCategoryEvidence C) :
    ClosedMonoidalCategoryClosed C := by
  exact And.intro E.monoidalClosed (And.intro E.closedClosed E.compatibilityClosed)

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse