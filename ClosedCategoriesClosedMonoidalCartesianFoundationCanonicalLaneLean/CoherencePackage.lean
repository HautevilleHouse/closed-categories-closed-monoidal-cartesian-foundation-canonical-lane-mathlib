import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure CoherencePackage {C : ClosedMonoidalCategory} where
  pentagonCondition : (X Y Z W : C.obj) → (tensor X (tensor Y Z)) ⊗ W ≅ X ⊗ (tensor Y Z ⊗ W) → (X ⊗ Y) ⊗ (Z ⊗ W) ≅ X ⊗ (Y ⊗ (Z ⊗ W))
  triangleCondition : (X Y : C.obj) → tensor X (tensor C.unitObject Y) ≅ X ⊗ Y
  coherenceSatisfied : Prop

structure CoherenceEvidence {C : ClosedMonoidalCategory} (P : CoherencePackage C) where
  pentagonClosed : P.pentagonCondition
  triangleClosed : P.triangleCondition
  coherenceSatisfiedClosed : P.coherenceSatisfied

def CoherenceClosed {C : ClosedMonoidalCategory} (P : CoherencePackage C) : Prop :=
  P.pentagonCondition ∧ P.triangleCondition ∧ P.coherenceSatisfied

theorem coherence_closed_from_evidence {C : ClosedMonoidalCategory} (P : CoherencePackage C) (E : CoherenceEvidence P) : CoherenceClosed P :=
  And.intro E.pentagonClosed (And.intro E.triangleClosed E.coherenceSatisfiedClosed)

end HautevilleHouse.ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse