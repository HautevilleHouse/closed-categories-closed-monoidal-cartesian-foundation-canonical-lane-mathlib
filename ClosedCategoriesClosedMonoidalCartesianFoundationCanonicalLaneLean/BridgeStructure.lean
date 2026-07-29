import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure ClosedMonoidalBridgePackage where
  isoInternalHom : Prop
  adjunctionCounit : Prop
  evaluationMap : Prop
  compositionMap : Prop
  tensorHomAdjunction : Prop

def ClosedMonoidalBridgeClosed (B : ClosedMonoidalBridgePackage) : Prop :=
  B.isoInternalHom ∧ B.adjunctionCounit ∧ B.evaluationMap ∧ B.compositionMap ∧ B.tensorHomAdjunction

structure ClosedMonoidalBridgeEvidence (B : ClosedMonoidalBridgePackage) where
  isoInternalHomClosed : B.isoInternalHom
  adjunctionCounitClosed : B.adjunctionCounit
  evaluationMapClosed : B.evaluationMap
  compositionMapClosed : B.compositionMap
  tensorHomAdjunctionClosed : B.tensorHomAdjunction

theorem closed_monoidal_bridge_closed_from_evidence (B : ClosedMonoidalBridgePackage) (E : ClosedMonoidalBridgeEvidence B) : ClosedMonoidalBridgeClosed B := by
  exact And.intro E.isoInternalHomClosed (And.intro E.adjunctionCounitClosed (And.intro E.evaluationMapClosed (And.intro E.compositionMapClosed E.tensorHomAdjunctionClosed)))

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse
