using Random
using Statistics

N = 10^10

monte_carlo_pi(N) = 4 * mean(rand()^2 + rand()^2 < 1 for _ in 1:N)

println("Estimated: ", monte_carlo_pi(N))