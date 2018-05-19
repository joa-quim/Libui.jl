## Julia interface to the `libui` GUI library

GUI building, using the `libui` library: [https://github.com/andlabs/libui](https://github.com/andlabs/libui)
<br/>

[![Build Status](https://travis-ci.org/jgoldfar/Libui.jl.svg?branch=master)](https://travis-ci.org/jgoldfar/Libui.jl)
[![Coverage Status](https://coveralls.io/repos/github/jgoldfar/Libui.jl/badge.svg?branch=master)](https://coveralls.io/github/jgoldfar/Libui.jl?branch=master)
[![codecov.io](http://codecov.io/github/jgoldfar/Libui.jl/coverage.svg?branch=master)](http://codecov.io/github/jgoldfar/Libui.jl?branch=master)

## Installation

Prior to using this wrapper, you must install `libui` on your computer.

To install `Libui.jl`, do

    Pkg.clone("Libui")

For Windows you can download the libui DLL from [here](http://w3.ualg.pt/~jluis/ftp/libui.dll.zip)
and make sure that the lib *libui.dll* is found by Julia. For unix, I'm afraid the user will to have
to build the libui shared library from source.

## Using

I have only tested it on Windows and recreated the `controlgallery` examples by porting it directly from the `C` version.
You can call it directly by adding the `src` and `examples` installation dir to `LOAD_PATH` or by providing the full path
via include. e.g. (with my path)

    include("c:/j/.julia/v0.4/Libui/examples/controlgallery.jl");

    controlgallery()

A bad surprise not yet solved is that it crashes on a second call.
