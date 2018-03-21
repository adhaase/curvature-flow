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
![image](https://user-images.githubusercontent.com/9776844/37691586-5dd71142-2c89-11e8-96c5-0001da87c965.png)

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
In order to deduce the computational complexity, I first tabulated the CPU time of my algorithm for each time step. 
After CPU Time calculations, a regression analysis was performed by graphing the coordinates based on M and CPU Time and proved to be linear. Therefore the resulting computational cost will be in terms of O(n). 
in terms of M: cost(M) = aM + b => O(M) because cost(M)/M = a + b/M : as x --> infinity.

## V. Error, Efficiency, and Order of Accuracy
* M = number of spatial discretization points
* N = number of time steps
In order to tabulate the error and order of accuracy of my algorithm, I calculated L(4) using trapezoidal rule with M = 64 and n = 1600 as a base value. Using this as a reference, I computed L(4) with N = 100, 200, 400, 800. 

## VI. Results
![curvature flow](https://user-images.githubusercontent.com/9776844/37691757-7274b1da-2c8a-11e8-9a6b-5f70c206754a.PNG)

The number of time steps, N, is shown to heavily influence the resulting calculation and error. 
N = 100 ... Result = 17.7667 ... Error = 16.6563
N = 200 ... Result = 8.8833 ... Error = 7.7729
N = 400 ... Result = 4.4417 ... Error = 3.3313
N = 800 ... Result = 2.2208 ... Error = 1.1104
N = 1600 ... Result = 1.1104 ... Error = 0.000
