import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean

def ConstrainedClosedMonoidalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_closed_monoidal_endgame (A : AdmissibleClass) :
    ConstrainedClosedMonoidalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClosedCategoriesClosedMonoidalCartesianFoundationCanonicalLaneLean
end HautevilleHouse
