import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure CartesianCategoryPackage where
  categoryType : Type u
  product : categoryType → categoryType → categoryType
  terminalObject : categoryType
  projectionMaps : Prop
  universalProperty : Prop
  terminalUniversal : Prop

structure CartesianCategoryEvidence (C : CartesianCategoryPackage) where
  projectionMapsClosed : C.projectionMaps
  universalPropertyClosed : C.universalProperty
  terminalUniversalClosed : C.terminalUniversal

def CartesianCategoryClosed (C : CartesianCategoryPackage) : Prop :=
  C.projectionMaps ∧ C.universalProperty ∧ C.terminalUniversal

theorem cartesian_category_closed_from_evidence (C : CartesianCategoryPackage) (E : CartesianCategoryEvidence C) :
    CartesianCategoryClosed C := by
  exact And.intro E.projectionMapsClosed (And.intro E.universalPropertyClosed E.terminalUniversalClosed)

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse