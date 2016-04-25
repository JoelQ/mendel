import Html exposing(..)
import Trait exposing(Trait, PodColor, Smoothness, FlowerColor, Gene(..))
import Allele exposing (Allele)

type alias Genotype =
  { podColor : Allele PodColor
  , smoothness : Allele Smoothness
  , flowerColor : Allele FlowerColor
  }

initialGenotype : Genotype
initialGenotype =
  { podColor = Allele.heterozygous Trait.podColor
  , smoothness = Allele.heterozygous Trait.smoothness
  , flowerColor = Allele.heterozygous Trait.flowerColor
  }

main : Html
main =
  view initialGenotype

view : Genotype -> Html
view genetype =
  dl []
    [ dt [] [ text "Pod Color"]
    , dd [] [ viewAllele genetype.podColor ]
    , dt [] [ text "Smoothness"]
    , dd [] [ viewAllele genetype.smoothness ]
    , dt [] [ text "Flower Color"]
    , dd [] [ viewAllele genetype.flowerColor ]
    ]

viewAllele : Allele a -> Html
viewAllele (maternal, paternal) =
  span [] [ text <| (viewGene maternal) ++ ", " ++ (viewGene paternal) ]

viewGene : Gene a -> String
viewGene gene =
  case gene of
    Dominant g -> (toString g) ++ " (dominant)"
    Recessive g -> toString g
