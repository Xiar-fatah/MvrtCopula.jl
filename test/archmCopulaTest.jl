@testset "archmCopula.jl" begin
    @test length(claytonCopula(2,3,2)) > 0
end