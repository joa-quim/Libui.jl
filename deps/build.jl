using BinDeps
@static if VERSION <= v"0.7-"
	import Compat: Sys
end

@BinDeps.setup

const libui = library_dependency("libui")
const libuiVer = "4"
const libuiFilebase = "alpha$(libuiVer)"

const prefix = joinpath(BinDeps.depsdir(libui), "usr")
const srcdir = joinpath(BinDeps.depsdir(libui), "src")

#TODO: Switch download based on architecture as well as platform. Otherwise,
# the installation below will incorrectly claim to be successful.
const srcpath = if Sys.islinux()
	provides(Sources,
			 URI("https://github.com/andlabs/libui/releases/download/alpha$(libuiVer)/libui-$(libuiFilebase)-linux-amd64-shared.tgz"),
			 unpacked_dir = srcdir,
			 libui)
	joinpath(BinDeps.srcdir(libui), "libui.so.0")
elseif Sys.isapple()
	provides(Sources,
			 URI("https://github.com/andlabs/libui/releases/download/alpha$(libuiVer)/libui-$(libuiFilebase)-darwin-amd64-shared.tgz"),
			 unpacked_dir = srcdir,
			 libui)
	joinpath(BinDeps.srcdir(libui), "libui.A.dylib")
elseif Sys.iswindows() #TODO: Check this on a CI service
	provides(Sources,
			 URI("https://github.com/andlabs/libui/releases/download/alpha$(libuiVer)/libui-$(libuiFilebase)-windows-amd64-shared.tgz"),
			 unpacked_dir = srcdir,
			 libui)
	joinpath(BinDeps.srcdir(libui), "libui.dll")
else
	error("Platform not supported.")
end

const binaryNameTarget = if Sys.islinux()
	"libui.so"
elseif Sys.isapple()
	"libui.dylib"
elseif Sys.iswindows()
	"libui.dll"
else
	error("Platform not supported.")
end

provides(SimpleBuild,
		 (@build_steps begin
		  GetSources(libui)
		  CreateDirectory(joinpath(prefix, "lib"))
		  `cp -v $(srcpath) $(joinpath(prefix, "lib", binaryNameTarget))`
		  end
		  ), libui)

@BinDeps.install Dict(:libui => :libui)
