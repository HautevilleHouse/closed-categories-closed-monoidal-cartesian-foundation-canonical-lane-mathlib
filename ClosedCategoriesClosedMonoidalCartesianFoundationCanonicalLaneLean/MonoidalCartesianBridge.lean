import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean.ClosedCategoryDefinition
import HautevilleHouse.ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean.ClosedMonoidalAdjunction

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure MonoidalCartesianRelation {C : ClosedCategoryStructure} (M : ClosedMonoidalStructure C) (CC : CartesianClosedStructure C) where
  tensorProductIsProduct : Prop
  internalHomIsExponential : Prop
  unitIsTerminal : Prop
  compatibilityConditions : Prop

def MonoidalCartesianBridgeClosed {C : ClosedCategoryStructure} {M : ClosedMonoidalStructure C} {CC : CartesianClosedStructure C}
    (R : MonoidalCartesianRelation M CC) : Prop :=
  R.tensorProductIsProduct ∧ R.internalHomIsExponential ∧ R.unitIsTerminal ∧ R.compatibilityConditions

theorem monoidal_cartesian_bridge_closed {C : ClosedCategoryStructure} {M : ClosedMonoidalStructure C} {CC : CartesianClosedStructure C}
    (R : MonoidalCartesianRelation M CC) : MonoidalCartesianBridgeClosed R :=
  by
    exact And.intro R.tensorProductIsProduct (And.intro R.internalHomIsExponential (And.intro R.unitIsTerminal R.compatibilityConditions))

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse