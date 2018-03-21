# Curvature Flow to Smoothen a Noisy Geometric Surface
MATLAB program which introduces successive alterations to a geometric surface in order to de-noise the geometry.

## Contents
#### I. What is Curvature Flow?
#### II. Program Mechanics
#### III. Process
#### IV. Computational Cost
#### V. Error, Efficiency, and Order of Accuracy
#### VI. Results

## I. What is Curvature Flow?
Curvature flow is a process which introduces successive alterations to geometric surfaces in order to de-noise (smoothen) the geometry.
The process starts with a certain initial shape, and over time by utilizing Euler’s and finite difference methods, we can plot the curve  with respect to time at various points on a parameter. Our end result should resemble a smooth and uniform surface, like a circle. 

## II. Program Mechanics
The program is split up into a series of functions:
* ẋ : (governing Curvature Flow equation)

* n :  (element vector) – element of ẋ

* x0 (α) :(initial point calculations) – element of ẋ 

* x : (main vector equation which consists of initial x1 and x2 which changes with respect to time)

* x1α and x2α :  (initial system of equations) and their derivatives (x1αα and x2αα)

The algorithm itself works by computing these various components and then plotting different instances of the evolution of the curve at various times. 

## III. Process
1. We start the process by declaring initial system of equations, x1α and x2α.
2. Calculate the derivatives using finite difference methods (I used central difference approximations in my program) 
3. Compute the final resulting ẋ equation for one vector iteration 
4. After I have this one calculation in vector form, I run another function that computes Euler’s method and plots the result.
5. This process repeats continuously until the time is reached – updating the initial equations every iteration
* This final step shows us the output and various time steps. If this program is continued to run for a long period of time, the final output resembles a circle. 

## IV. Computational Cost

## V. Error, Efficiency, and Order of Accuracy

## VI. Results
