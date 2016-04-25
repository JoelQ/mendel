module Trait where

type Trait a = Trait a a
type Gene a = Dominant a | Recessive a

dominant : Trait a -> Gene a
dominant (Trait d _) =
  Dominant d

recessive : Trait a -> Gene a
recessive (Trait _ r) =
  Recessive r

type PodColor = Green | Yellow
type Smoothness = Rough | Smooth
type FlowerColor = White | Violet

podColor : Trait PodColor
podColor =
  Trait Green Yellow

smoothness : Trait Smoothness
smoothness =
  Trait Rough Smooth

flowerColor : Trait FlowerColor
flowerColor =
  Trait White Violet

