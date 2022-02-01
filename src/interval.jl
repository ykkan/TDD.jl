export Interval

struct Interval{T<:Real}
    a::T
    b::T
end

Base.minimum(it::Interval) = it.a
Base.maximum(it::Interval) = it.b
Base.in(x, it::Interval) = (x <= maximum(it)) && (x >= minimum(it))
Base.isempty(it::Interval) = ~(maximum(it) > minimum(it))

function Base.intersect(A::Interval, B::Interval)
    if isempty(A) || isempty(B)
        return Interval(0.0, 0.0)
    end
    Amin = minimum(A)
    Amax = maximum(A)
    Bmin = minimum(B)
    Bmax = maximum(B)
    if (Bmin > Amax) || (Amin > Bmax)
        return Interval(0.0, 0.0)
    else
        Cmin = max(Amin, Bmin)
        Cmax = min(Amax, Bmax)
        return Interval(Cmin, Cmax)
    end
end
