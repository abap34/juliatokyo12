using Base.Threads  
using Statistics

N_THREADS = 8
N = 10^11

monte_carlo_pi(N) = 4 * mean(rand()^2 + rand()^2 < 1 for _ in 1:N)

function monte_carlo_threaded(; N, N_THREADS)
    tasks = [Threads.@spawn monte_carlo_pi(N ÷ N_THREADS) for _ in 1:N_THREADS]
    return mean(fetch.(tasks))
end

println("Estimated: ", monte_carlo_threaded(N=N, N_THREADS=N_THREADS))



