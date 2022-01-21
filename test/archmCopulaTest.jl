@testset "archmCopula.jl" begin
    @test length(claytonCopula(2,3,2)) > 0
    @test length(claytonCopula(2,4,2)) > 0
end