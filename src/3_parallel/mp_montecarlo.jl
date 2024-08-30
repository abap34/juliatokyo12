using Distributed
using Random

N_WORKERS = 8

@everywhere using Statistics

@everywhere monte_carlo_pi(n) = 4 * mean(rand()^2 + rand()^2 < 1 for _ in 1:n)

function monte_carlo_distibuted(; N, N_WORKERS)
    tasks = [remotecall(monte_carlo_pi, i, N ÷ N_WORKERS) for i in workers()]
    return mean(fetch.(tasks))
end

println("Estimated: ", monte_carlo_distibuted(N=10^11, N_WORKERS=N_WORKERS))