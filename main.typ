#import "@preview/equate:0.2.0": equate
#import "@preview/showybox:2.0.1": showybox
#import "@preview/lovelace:0.3.0": *
#import "@preview/ilm:1.1.2": *



#show: ilm.with(
  title: [Probability & Statistics],
  author: "Roiban Marius-Alexandru",
  date: datetime(year: 2024, month: 07, day: 26),
  abstract: [],
  preface: [],
  figure-index: (enabled: true),
  table-index: (enabled: true),
  listing-index: (enabled: true)
)

#let showbox(title, body) = box()[
  #showybox(
    shadow: (
      offset:3.5pt
    ), title: title,
    [#body]
  )
]


#let pseudocodeblock(title, code) = box[#text(
  font: "FiraCode Nerd Font Mono", 
  ligatures: true
)[
  #showybox(
    shadow: (
      offset: 3.5pt
  ),
  title: title,
  [#code]
  )
]]

#let CQFD = box[$space square.filled$]



= Probability
== Exercices
=== Ex 1

*Density Function*
$
f_(X)(x)= cases(
  k cos(x) space space &#[if $-pi/2<=X<=pi/2$], 
  0 space space &#[else]
)
$
*Value k where $f_X (x)$ is a probability density function*

We know that the integral probability density function must be equal to 1 so we calculate the integral of $f_X (x)$
$
f_X (x)&= integral^(pi/2)_(-pi/2) k cos(x) d x = 1 \
&=k integral^(pi/2)_(-pi/2) cos(x) d x \
&= k [sin(x)]^(pi/2)_(-pi/2) \
&= k[sin(pi/2) - sin(-pi/2)] \
&= k[1 - (-1)] \
&= 2k =1 \
k &= 1/2
$

1. $P(0<=X<=pi/4)$

$
P(0<=X<=pi/4)&= integral_0^(pi/4) 1/2 cos(x) d x \ 
&= 1/2 [sin(pi/4) - sin(0)] \
&= 1/2 [sqrt(2)/2] \
&= sqrt(2)/4


$

2. $P(0 <= X <= pi/4 | 0 <= X <= pi/2)=sqrt(2)/2$

#showbox(
  "Conditional Probability",
  [
    When we have a conditional probability of the form 
    $
    P(X|Y) = frac(P(X and Y),P(Y))
    $ we will take into account 3 possible cases.

    *Case 1*

    $X $ and $ Y$ are independent, thus our conditional probability will behave diferently:
    $
    P(X|Y) &= frac(P(X and Y),P(Y)) \
    &= frac(P(X)P(Y),P(Y))
    $
    We will calculate the $and$ probability separately!

    *Case 2*

    $X$ and $Y$ are contained in one or the other so either $X subset Y$ or $Y subset X$:

    if $X subset Y$:
    $
    P(X|Y)&=P(X and Y)/P(Y) \
    &=1
     $

  if $Y subset X$:

  $
  P(X|Y)&=P(X and Y)/P(Y) \
  &= P(X)/P(Y)
  $

  *Case 3*
  
  ...
  ]

)

