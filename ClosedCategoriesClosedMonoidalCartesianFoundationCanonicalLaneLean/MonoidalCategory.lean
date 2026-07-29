import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure MonoidalCategory where
  tensorProduct : Type
  unitObject : Type
  associatorIso : Prop
  leftUnitorIso : Prop
  rightUnitorIso : Prop
  pentagonEquation : Prop
  triangleEquation : Prop

structure MonoidalCategoryEvidence (M : MonoidalCategory) where
  tensorProductClosed : Prop
  unitObjectClosed : Prop
  associatorIsoClosed : M.associatorIso
  leftUnitorIsoClosed : M.leftUnitorIso
  rightUnitorIsoClosed : M.rightUnitorIso
  pentagonEquationClosed : M.pentagonEquation
  triangleEquationClosed : M.triangleEquation

def MonoidalCategoryClosed (M : MonoidalCategory) : Prop :=
  M.tensorProduct ≠ M.unitObject ∧ M.associatorIso ∧ M.leftUnitorIso ∧ M.rightUnitorIso ∧ M.pentagonEquation ∧ M.triangleEquation

theorem monoidal_category_closed_from_evidence (M : MonoidalCategory)
    (E : MonoidalCategoryEvidence M) : MonoidalCategoryClosed M := by
  refine And.intro ?_ (And.intro E.associatorIsoClosed
    (And.intro E.leftUnitorIsoClosed
      (And.intro E.rightUnitorIsoClosed
        (And.intro E.pentagonEquationClosed E.triangleEquationClosed))))
  exact E.tensorProductClosed

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse
