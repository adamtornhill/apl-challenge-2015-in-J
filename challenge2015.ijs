NB. These are my solutions, in J, to the Dyalog APL Challenge 2015
NB. See https://studentcompetitions-general.s3.amazonaws.com/dyalog2015/apl/2015/2015%20PhaseI%20Problems.pdf

NB. =========================================================
NB. Problem	1 -	Nag A Ram
NB. =========================================================

NB. A one-liner in tacit style:
isAnagramOf =: -: &: (/:~ @ tolower) &: (-. & ' ')

NB. A second version with named verbs for the intermediate steps
stripSpace =: -. & ' '
comparable =: /:~ @ tolower
isAnagramOf1 =: -: &: comparable &: stripSpace

NB. =========================================================
NB. Problem	5 – He's so mean, he has no standard deviation
NB. =========================================================

sd=: %: & (+/ & (*: @ ((-/) (+/%#))) % #)

NB. =========================================================
NB. Problem 8 – Unlucky 13
NB. =========================================================

NB. This is quite simple if we want to use a script to introduce a monadic verb:
makeLucky =: 3 : '12.99 (I. 13=y) } y'

NB. Let's also solve this in tacit style and experiment with dyadic forks:
indiciesOfThirteen =: I. @: (13 & =)
replacesThirteenIn =: indiciesOfThirteen @: ] }
makeLucky =: 12.99 & replacesThirteenIn

