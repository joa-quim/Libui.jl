## Julia interface to the `libui` GUI library

GUI building, using the `libui` library: [https://github.com/andlabs/libui](https://github.com/andlabs/libui) version `alpha4`.
<br/>

[![Build Status](https://travis-ci.org/joa-quim/Libui.jl.svg?branch=master)](https://travis-ci.org/joa-quim/Libui.jl)
[![Coverage Status](https://coveralls.io/repos/github/joa-quim/Libui.jl/badge.svg?branch=master)](https://coveralls.io/github/joa-quim/Libui.jl?branch=master)
[![codecov.io](http://codecov.io/github/joa-quim/Libui.jl/coverage.svg?branch=master)](http://codecov.io/github/joa-quim/Libui.jl?branch=master)

## Installation

To install `Libui.jl`, do

    Pkg.clone("Libui")
    Pkg.build("Libui")

## Using

I have only tested it on Windows and recreated the `controlgallery` examples by porting it directly from the `C` version.
You can call it directly by adding the `src` and `examples` installation dir to `LOAD_PATH` or by providing the full path
via include. e.g. (with my path)

    include("c:/j/.julia/v0.4/Libui/examples/controlgallery.jl");

    controlgallery()

A bad surprise not yet solved is that it crashes on a second call.
