function claytonCopula(θ::Int64, samples::Int64, dim::Int64)
	res = zeros(dim, samples)
	U_dist = Uniform(0,1)
	γ_dist = Gamma(1/θ,1)
	for i = 1:samples
		V = rand(U_dist, dim)
		γ = rand(γ_dist, 1)
		Ψ(t) = (t+1)^(-1/θ)
		U_γ = Ψ.(-log.(V)./γ)
        for j = 1:dim
            res[j,i] = U_γ[j]
        end
	end
    return res
end