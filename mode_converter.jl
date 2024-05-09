using StructuredLight, CairoMakie

rs = LinRange(-2.5, 2.5, 1024)

fig = Figure(resolution=(600,1200))
ψs = [diagonal_hg(rs, rs, m=1), diagonal_hg(rs, rs, n=1)]

for j ∈ 1:2
    ax = Axis(fig[j, 1], aspect=1)
    hidedecorations!(ax)
    heatmap!(ax, abs2.(ψs[j]), colormap=:hot)
end

fig
save("hermites.png", fig)