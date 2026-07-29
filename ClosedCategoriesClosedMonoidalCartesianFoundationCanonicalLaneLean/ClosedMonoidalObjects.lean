import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure ClosedMonoidalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClosedMonoidalAdmittedObject where
  space : ClosedMonoidalSpace
  isClosedMonoidalCategory : Prop
  hasInternalHom : Prop
  monoidalClosed : Prop
  cartesianMonoidal : Prop
  productExists : Prop
  exponentiationExists : Prop
  conclusion : isClosedMonoidalCategory ∧ hasInternalHom ∧ monoidalClosed ∧ cartesianMonoidal ∧ productExists ∧ exponentiationExists

structure ClosedMonoidalEndgameState where
  object : ClosedMonoidalAdmittedObject

def ClosedMonoidalWitnessClosed (O : ClosedMonoidalAdmittedObject) : Prop :=
  O.conclusion

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse
