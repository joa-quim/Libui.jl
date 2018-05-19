using Libui
@static if VERSION >= v"0.7-"
    using Test
else
    using Base.Test
end

# write your own tests here
@test 1 == 1
