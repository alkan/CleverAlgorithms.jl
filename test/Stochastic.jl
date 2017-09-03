include("../src/CleverAlgorithms.jl")

using CA

val = CA.Stochastic.randdom_search((x) -> x^2, (-5,5))
println(val)
val = CA.Stochastic.randdom_search((x) -> x^2, (-5,5); op = >)
println(val)
