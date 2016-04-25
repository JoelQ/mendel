module Organism where
import Trait exposing(Trait, PodColor, Smoothness, FlowerColor, Gene(..))
import Allele exposing (Allele)

type alias Genotype =
  { podColor : Allele PodColor
  , smoothness : Allele Smoothness
  , flowerColor : Allele FlowerColor
  }

type alias Phenotype =
  { podColor : PodColor
  , smoothness : Smoothness
  , flowerColor : FlowerColor
  }

phenotype : Genotype -> Phenotype
phenotype genotype =
  { podColor = Allele.phenotype genotype.podColor
  , smoothness = Allele.phenotype genotype.smoothness
  , flowerColor = Allele.phenotype genotype.flowerColor
  }

initialGenotype : Genotype
initialGenotype =
  { podColor = Allele.heterozygous Trait.podColor
  , smoothness = Allele.heterozygous Trait.smoothness
  , flowerColor = Allele.heterozygous Trait.flowerColor
  }

