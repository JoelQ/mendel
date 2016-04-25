module Allele where

import Trait exposing(Trait, Gene(..))

type alias Allele a = (Gene a, Gene a)

heterozygous : Trait a -> Allele a
heterozygous trait =
  (Trait.dominant trait, Trait.recessive trait)

phenotype : Allele a -> a
phenotype allele =
  case allele of
    (Dominant x, Dominant _) -> x
    (Dominant x, Recessive _) -> x
    (Recessive _, Dominant x) -> x
    (Recessive x, Recessive _) -> x
