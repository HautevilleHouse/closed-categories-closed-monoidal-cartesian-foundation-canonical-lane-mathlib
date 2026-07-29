import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure ClosedMonoidalGatePackage where
  internalHomDefined : Prop
  tensorProductDefined : Prop
  unitObjectDefined : Prop
  associatorNatural : Prop
  leftUnitorNatural : Prop
  rightUnitorNatural : Prop
  symmetryNatural : Prop

def ClosedMonoidalGateClosed (G : ClosedMonoidalGatePackage) : Prop :=
  G.internalHomDefined ∧ G.tensorProductDefined ∧ G.unitObjectDefined ∧ G.associatorNatural ∧ G.leftUnitorNatural ∧ G.rightUnitorNatural ∧ G.symmetryNatural

structure ClosedMonoidalGateEvidence (G : ClosedMonoidalGatePackage) where
  internalHomDefinedClosed : G.internalHomDefined
  tensorProductDefinedClosed : G.tensorProductDefined
  unitObjectDefinedClosed : G.unitObjectDefined
  associatorNaturalClosed : G.associatorNatural
  leftUnitorNaturalClosed : G.leftUnitorNatural
  rightUnitorNaturalClosed : G.rightUnitorNatural
  symmetryNaturalClosed : G.symmetryNatural

theorem closed_monoidal_gate_closed_from_evidence (G : ClosedMonoidalGatePackage) (E : ClosedMonoidalGateEvidence G) : ClosedMonoidalGateClosed G := by
  exact And.intro E.internalHomDefinedClosed (And.intro E.tensorProductDefinedClosed (And.intro E.unitObjectDefinedClosed (And.intro E.associatorNaturalClosed (And.intro E.leftUnitorNaturalClosed (And.intro E.rightUnitorNaturalClosed E.symmetryNaturalClosed)))))

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse
