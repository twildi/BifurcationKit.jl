# using Revise
using Test

@testset "BifurcationKit" begin

	@testset "Linear Solvers" begin
		include("precond.jl")
		include("test_linear.jl")
	end

	@testset "Newton" begin
		include("test_newton.jl")
	end

	@testset "Continuation" begin
		include("test_bif_detection.jl")
		include("test-cont-non-vector.jl")
		include("simple_continuation.jl")
	end

	@testset "Normal forms" begin
	GC.gc()
		include("testNF.jl")
		include("testNF_maps.jl")
	end

	@testset "Events / User function" begin
		include("event.jl")
	end

	@testset "Fold Codim 2" begin
		include("testJacobianFoldDeflation.jl")
		include("codim2.jl")
	end

	@testset "Hopf Codim 2" begin
	GC.gc()
		include("testHopfMA.jl")
		include("lorenz84.jl")
		include("COModel.jl")
	end

	@testset "Periodic orbits function FD" begin
		include("test_potrap.jl")
		include("stuartLandauTrap.jl")
		include("stuartLandauCollocation.jl")
	end

	@testset "Periodic orbits function SH1" begin
		@info "Entry in test_SS.jl"
		include("test_SS.jl")
	end

	@testset "Periodic orbits function SH2" begin
		@info "Entry in poincareMap.jl"
		include("poincareMap.jl")
	end

	@testset "Periodic orbits function SH3" begin
		@info "Entry in stuartLandauSH.jl"
		include("stuartLandauSH.jl")
	end

	@testset "Periodic orbits function SH4" begin
		# for testing period doubling aBS
		@info "Entry in testLure.jl"
		include("testLure.jl")
	end

	@testset "codim 2 PO Shooting MF" begin
	GC.gc()
		@info "Entry in codim2PO-shooting-mf.jl"
		include("codim2PO-shooting-mf.jl")
	end

	@testset "codim 2 PO Shooting" begin
	GC.gc()
		@info "Entry in codim2PO-shooting.jl"
		include("codim2PO-shooting.jl")
	end

	@testset "codim 2 PO Collocation" begin
	GC.gc()
		@info "Entry in codim2PO-OColl.jl"
		include("codim2PO-OColl.jl")
	end

	@testset "Wave" begin
		@info "Entry in wave.jl"
		include("test_wave.jl")
	end
end
