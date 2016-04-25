module Allele where

import Trait exposing(Trait, Gene(..))

type alias Allele a = (Gene a, Gene a)

heterozygous : Trait a -> Allele a
heterozygous trait =
  (Trait.dominant trait, Trait.recessive trait)
