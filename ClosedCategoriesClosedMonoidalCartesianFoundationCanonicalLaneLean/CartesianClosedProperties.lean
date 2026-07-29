import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean.ClosedCategoryDefinition

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

structure CartesianExponentialStructure (C : ClosedCategoryStructure) (CC : CartesianClosedStructure C) where
  evalNatural : Prop
  curryNatural : Prop
  betaReduction : Prop
  etaExpansion : Prop

def CartesianExponentialClosed {C : ClosedCategoryStructure} {CC : CartesianClosedStructure C}
    (E : CartesianExponentialStructure CC) : Prop :=
  E.evalNatural ∧ E.curryNatural ∧ E.betaReduction ∧ E.etaExpansion

theorem cartesian_exponential_closed {C : ClosedCategoryStructure} {CC : CartesianClosedStructure C}
    (E : CartesianExponentialStructure CC) : CartesianExponentialClosed E :=
  by
    exact And.intro E.evalNatural (And.intro E.curryNatural (And.intro E.betaReduction E.etaExpansion))

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse