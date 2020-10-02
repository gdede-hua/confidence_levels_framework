# confidence_levels_framework

## Table of contents
- [Description](#description)
- [Usage](#usage)

## Description

This framework incorporates the confidence levels in pairwise comparisons (PWC), in order to deal with uncertainty issues related to the individual expert judgments.
A theoretical model based on the multivariate normal cumulative distribution function is used to estimate the probability of rank reversal (PRR).

The basic idea behind our approach is simple: each expert is asked to quantify his confidence level on a particular judgment or a set of judgments, in terms of a number
in the range of 0 to 100%. We then apply a methodological framework that translates the individual confidence levels to a measure on the credibility of the outcome and
more specifically we estimate the probability PRR that the ranking of at least two alternatives is reversed.

Here in this example we consider M=4 experts and n=4 criteria for our decision making problem. So we have 4 pairwise comparison matrices nxn and 4 matrices nxn with the confidence levels of each expert for each judgment of the PWC matrix.

In this context we provide the following functions:

a. bestimator: estimated the p parameter of the exponential distribution function P(x+1)=a*exp(-b*|x|)

b. Pxestimator: takes as perameters the indexes [-8  8] converted from the values of the nine level scale of Saaty (1/9 1/8 1/7/ 1/6/ 1/5 1/4 1/3 1/2 1 2 3 4 5 6 7 8 9), the b, the element ij of the PWC matrix, the number of values and estimates the probability for the PWC element ij. 

c. correlation_ij_github: estimates the PRR based on the MVNCDF


## Usage
This framework can be used in Octave and Matlab versions.

## Example 
The example given for this framework is for n=4 criteria and M=4 experts who have filled in the following PWC matrices (Px) and confidence levels matrices (Cx). Note that the experts have to fill in only the upper triangular arrays of the matrices, but here we give the total matrices.

The estimated PRR for this example is 14%.

P1=[1 1/6 4 5;6 1 4 2;1/4 1/4 1 1/4;1/5 1/2 4 1];
P2=[1 1/7 1/5 1/3;7 1 3 3;5 1/3 1 5;3 1/ 1/5 1];
P3=[1 2 1 1/2;1/2 1 1/6 1/2;1 6 1 2;2 2 1/2 1];
P4=[1 5 1 3; 1/5 1 1/3 1/5;1 3 1 1;1/3 5 1 1];

C1=[1 0.90 0.65 0.75;0.90 1 0.75 0.40;0.65 0.75 1 0.65 0.75 0.40 0.65 1];
C2=[1 0.65 0.70 0.75;0.65 1 0.70 0.65;0.70 0.70 1 0.65;0.75 0.65 0.65 1];
C3=[1 0.55 0.85 0.80;0.55 1 0.65 0.75 0.85 0.65 1 0.85;0.80 0.75 0.85 1];
C4=[1 0.75 0.55 0.75;0.75 1 0.90 0.60;0.55 0.90 1 0.65;0.75 0.60 1];
