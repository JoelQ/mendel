import Html exposing(..)
import Organism exposing (Genotype, Phenotype, initialGenotype)
import Random.Organism

import Random

initialSeed : Random.Seed
initialSeed = Random.initialSeed 1234567890

offspring : Genotype
offspring =
  let generator = Random.Organism.cross initialGenotype initialGenotype
  in
     Random.generate generator initialSeed |> fst

main : Html
main =
  view (Organism.phenotype offspring)

view : Phenotype -> Html
view phenotype =
  dl []
    [ dt [] [ text "Pod Color"]
    , dd [] [ text (toString phenotype.podColor) ]
    , dt [] [ text "Smoothness"]
    , dd [] [ text (toString phenotype.smoothness) ]
    , dt [] [ text "Flower Color"]
    , dd [] [ text (toString phenotype.flowerColor) ]
    ]
