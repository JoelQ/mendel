import Html exposing(..)
import Organism exposing (Phenotype)

main : Html
main =
  view (Organism.phenotype Organism.initialGenotype)

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
