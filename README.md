##Julia interface to the `libui` GUI library
Gui building, using the libui library: [https://github.com/andlabs/libui](https://github.com/andlabs/libui)
<br>

[![Build Status](https://travis-ci.org/joa-quim/Libui.jl.svg?branch=master)](https://travis-ci.org/joa-quim/Libui.jl)

## Installation

Prior to using this wrapper, you must install `libui` on your computer.

To install `Libui.jl`, do

  Pkg.clone("Libui")

## Using

I have only tested it on Windows and recreated the `controlgallery` examples by porting it directly from the `C` version.
You can call it directly by adding the `src` and `examples` installation dir to `LOAD_PATH` or by providing the full path
via include. e.g. (with my path)

  include("c:/j/.julia/v0.4/Libui/examples/controlgallery.jl");

  controlgallery()

A bad surprise not yet solved is that it crashes on a second call.