import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BiologicalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyEnhancersSilencersTheoremCanonicalLaneLean
end HautevilleHouse