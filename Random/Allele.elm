module Random.Allele where

import Random exposing (Generator)
import Allele exposing (Allele)
import Trait exposing (Gene)

gene : Allele a -> Generator (Gene a)
gene (x, y) =
  let decision = Random.bool
      decisionToGene d =
        case d of
          True -> x
          False -> y
  in
     Random.map decisionToGene decision

cross : Allele a -> Allele a -> Generator (Allele a)
cross parent1 parent2 =
  Random.map2 (,) (gene parent1) (gene parent2)
