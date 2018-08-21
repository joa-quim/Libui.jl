using Libui
@static if VERSION >= v"0.7-"
  using Test
else
  using Base.Test
end

@testset "Init and Uninit" begin
  o = Libui.uiInitOptions(0)
  err = uiInit(Ref(o))
  @test err == C_NULL

  uiUninit()
end

@testset "Control Gallery" begin
  include("controlgallery.jl")
end