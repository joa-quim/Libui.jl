using Libui
@static if VERSION >= v"0.7-"
    using Test
else
    using Base.Test
end
@static if VERSION < v"0.7-"
	using Compat: Nothing
end

@testset "Init and Uninit" begin
o = Libui.uiInitOptions(0)
err = uiInit(Ref(o))

@show err
@show o

uiUninit()
end