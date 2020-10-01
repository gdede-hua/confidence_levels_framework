# confidence_levels_framework

This framework incorporates the confidence levels in pairwise comparisons (PWC), in order to deal with uncertainty issues related to the individual expert judgments.
A theoretical model based on the multivariate normal cumulative distribution function is used to estimate the probability of rank reversal (PRR).

The basic idea behind our approach is simple: each expert is asked to quantify his confidence level on a particular judgment or a set of judgments, in terms of a number
in the range of 0 to 100%. We then apply a methodological framework that translates the individual confidence levels to a measure on the credibility of the outcome and
more specifically we estimate the probability PRR that the ranking of at least two alternatives is reversed.

Here in this example we consider M=4 experts and n=4 criteria for our decision making problem. So we have 4 pairwise comparison matrices nxn and 4 matrices nxn with the confidence levels of each expert for each judgment of the PWC matrix.

In this context we provide the following functions:

a. bestimator: estimated the p parameter of the exponential distribution function P(x+1)=a*exp(-b*|x|)
b. Pxestimator: takes as perameters the indexes [-8  8] converted from the values of the nine level scale of Saaty (1/9 1/8 1/7/ 1/6/ 1/5 1/4 1/3 1/2 1 2 3 4 5 6 7 8 9), the b, the element ij of the PWC matrix, the number of values and estimates the probability for the PWC element ij. 
