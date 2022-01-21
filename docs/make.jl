push!(LOAD_PATH,"../src/")
using MvrtCopula
using Documenter

DocMeta.setdocmeta!(MvrtCopula, :DocTestSetup, :(using MvrtCopula); recursive=true)

makedocs(;
    modules=[MvrtCopula],
    authors="Kiar Fatah",
    repo="https://github.com/Xiar-fatah/MvrtCopula.jl/blob/{commit}{path}#{line}",
    sitename="MvrtCopula.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Xiar-fatah.github.io/MvrtCopula.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Xiar-fatah/MvrtCopula.jl",
    devbranch="master",
)
