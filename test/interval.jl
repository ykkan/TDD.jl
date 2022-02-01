@testset "interval.jl" begin
    it = Interval(2.0, 5.0)
    @test minimum(it) == 2.0
    @test maximum(it) == 5.0

    @test in(3.0, it) == true
    @test in(10.0, it) == false
    @test in(5.0, it) == true

    @test isempty(it) == false
    @test isempty(Interval(2.0,1.0)) == true
    @test isempty(Interval(0.0, 0.0)) == true

    @test intersect(Interval(2.0, 5.0), Interval(3.0, 6.0)) == Interval(3.0, 5.0)
    @test intersect(Interval(2.0, 5.0), Interval(6.0, 9.0)) == Interval(0.0, 0.0)

    @test intersect(Interval(2.0, 5.0), Interval(0.0, 0.0)) == Interval(0.0, 0.0)
    @test intersect(Interval(5.0, 5.0), Interval(2.0, 5.0)) == Interval(0.0, 0.0)
end
