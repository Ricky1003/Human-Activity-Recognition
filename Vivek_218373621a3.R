install.packages("lpSolve")
install.packages("lpSolveAPI")
library(lpSolveAPI)

#Question 2

# Initialising the model with 3 variables
cereals <- make.lp(0, 3)

# Maximizing the Objective Function
lp.control(cereals, sense= "maximize")

# Setting up objective function
set.objfn(cereals, c(1.1913, 1.0397, 1.4673))

# Adding our constraints 

#Minimum demand of A
add.constraint(cereals, c(1, 0, 0), ">=", 2000)

#Minimum demand of B
add.constraint(cereals, c(0, 1, 0), ">=", 1600)

#Minimum demand of C
add.constraint(cereals, c(0, 0, 1), ">=", 1500)

#Maximum availability of Oates
add.constraint(cereals, c(0.8, 0.6, 0.45), "<=", 10000)

#Maximum availability of Raisins
add.constraint(cereals, c(0.1, 0.25, 0.15), "<=", 5000)

#Maximum availability of Apricots 
add.constraint(cereals, c(0.05, 0.05, 0.1), "<=", 2000)

#Maximum availability of Hazelnut
add.constraint(cereals, c(0.05, 0.1, 0.3), "<=", 2000)

set.type(cereals, c(1:3),"real")
set.bounds(cereals, lower = rep(0, 3), upper = rep(Inf, 3))

#Names of constraints and variables
Constraint_Names = c("Minimum_demand_A", "Minimum_demand_B", "Minimum_demand_C", "Maximum_availability_Oats", "Maximum_availability_Raisins", "Maximum_availability_Apricots", "Maximum_availability_Hazelnut" )
Variable_Names = c("A_content", "B_content", "C_content")
dimnames(cereals) <- list(Constraint_Names, Variable_Names)

cereals

#solving the model
solve(cereals)
get.objective(cereals)
get.variables(cereals)
get.constraints(cereals)

#Question 3

# Player I Alice's game #

Game <- make.lp(0, 6)
lp.control(Game, sense= "maximize")  
set.objfn(Game, c(0, 0, 0, 0, 0, 1))
add.constraint(Game, c(1, 0, 0, 0, 1, 1), "<=", 0)
add.constraint(Game, c(1, 1, 0, 1, 1, 1), "<=", 0)
add.constraint(Game, c(0, 1, 2, 1, 0, 1), "<=", 0)
add.constraint(Game, c(1,1,1,1,1,0), "=", 1)
set.bounds(Game, lower = c(0, 0, 0, 0, 0, -Inf))
Row_Names <- c("Row1", "Row2", "Row3","Row4")
Column_Names <- c("x1", "x2", "x3", "x4", "x5", "v")
dimnames(Game) <- list(Row_Names, Column_Names)
solve(Game)
get.objective(Game)
get.variables(Game)
get.constraints(Game)
Game

# Player II John's game
Game <- make.lp(0, 7)
lp.control(Game, sense= "minimize") 
set.objfn(Game, c(0, 0, 0, 0, 0, 0, 1))
add.constraint(Game, c(1, 1, 0, 0, 1, 1, 1), ">=", 0)
add.constraint(Game, c(0, 1, 1, 1, 1, 0, 1), ">=", 0)
add.constraint(Game, c(0, 0, 2, 2, 0, 0, 1), ">=", 0)
add.constraint(Game, c(1,1,1,1,1,1,0), "=", 1)
set.bounds(Game, lower = c(0, 0, 0, 0, 0, 0, -Inf))
Row_Names <- c("Row1", "Row2", "Row3","Row4")
Column_Names <- c("y1", "y2", "y3", "y4", "y5", "y6", "v")
dimnames(Game) <- list(Row_Names, Column_Names)
solve(Game)
get.objective(Game)
get.variables(Game)
get.constraints(Game)
Game


