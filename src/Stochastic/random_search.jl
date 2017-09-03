function randdom_search(objective::Function, search_space::Tuple{Real,Real};
    max_iter::Int=100, op = <)
    rnd() = search_space[1] + (search_space[2] - search_space[1]) * rand()
    best = objective(rnd())
    for i = 2:max_iter
        candidate = objective(rnd())
        op(candidate, best) && (best = candidate)
    end
    best
end
