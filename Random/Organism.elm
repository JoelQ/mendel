module Random.Organism where

import Random exposing (Generator)
import Random.Allele
import Organism exposing (Genotype)

cross : Genotype -> Genotype -> Generator Genotype
cross parent1 parent2 =
  let podColor = Random.Allele.cross parent1.podColor parent2.podColor
      smoothness = Random.Allele.cross parent1.smoothness parent2.smoothness
      flowerColor = Random.Allele.cross parent1.flowerColor parent2.flowerColor
  in
     Random.map3 Genotype podColor smoothness flowerColor
