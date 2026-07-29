import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | AdmittedMonoidalObject.mk cat _ _ => True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  match A.object with
  | AdmittedMonoidalObject.mk _ _ _ => trivial

end HautevilleHouse.ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse