NB. These are my solutions, in J, to the Dyalog APL Challenge 2015
NB. See https://studentcompetitions-general.s3.amazonaws.com/dyalog2015/apl/2015/2015%20PhaseI%20Problems.pdf

NB. =========================================================
NB. Problem	1 -	Nag A Ram
NB. =========================================================

isAnagramOf=:(0:`((*/)@(=&((/:~@tolower)@(' ' & i.#])))))@.(=&(#@:(' ' & i.#])))

NB. =========================================================
NB. Problem	5 – He's so mean, he has no standard deviation
NB. =========================================================

sd=: %: & (+/ & (*: @ ((-/) (+/%#))) % #)

NB. =========================================================
NB. Problem 8 – Unlucky 13
NB. =========================================================

NB. Let's solve this in tacit style and experiment with dyadic forks:

13 (i. @: # @: ]) i.20

indiciesIn =: = # (i. @: # @: ])
thirteenIndiciesIn =: 13 & indiciesIn
replacesThirteenIn =: thirteenIndiciesIn @: ] }
makeLucky =: 12.99 & replacesThirteenIn
