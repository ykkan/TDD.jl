using TDD
using Documenter

DocMeta.setdocmeta!(TDD, :DocTestSetup, :(using TDD); recursive=true)

makedocs(;
    modules=[TDD],
    authors="Yi-Kai Kan <tw.ykkan@gmail.com> and contributors",
    repo="https://github.com/ykkan/TDD.jl/blob/{commit}{path}#{line}",
    sitename="TDD.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://ykkan.github.io/TDD.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/ykkan/TDD.jl",
    devbranch="main",
)
