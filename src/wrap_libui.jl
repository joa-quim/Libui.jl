# This file is not an active part of the package. This is the code
# that uses the Clang.jl package to wrap Libui using the headers.

# Find all headers
# To run the script from Julia console:
push!(Libdl.DL_LOAD_PATH, "/usr/local/Cellar/llvm/6.0.1/lib")
using Clang.wrap_c
const wdir = dirname(@__FILE__)
const pkgbasedir = joinpath(wdir, "..")

# `outpath` specifies, where the julian wrappers would be generated.
# If the generated .jl files are ok, they have to be copied to the "src" folder
# overwriting the old ones
const outpath = joinpath(pkgbasedir, "new")
rm(outpath, recursive = true, force = true)
mkpath(outpath)

const incpath = joinpath(pkgbasedir, "deps", "src")
if !isdir(incpath)
  error("Run Pkg.build(\"Libui\") before trying to wrap C headers.")
end

info("Scanning Libui headers in $incpath...")
const Libui_header_file = joinpath(incpath, "ui.h")

const clang_path = "/usr/local/Cellar/llvm/6.0.1/lib/clang/6.0.1/" # change to your clang location
const includes = [
	joinpath(clang_path, "include"),
	incpath,
]

function find_outfile(s)
	joinpath(outpath, string(first(splitext(basename(s))), ".jl"))
end
find_libfile(s) = "libui"

const context = wrap_c.init(
	headers = [Libui_header_file,],
	common_file = joinpath(outpath, "ui_h.jl"),
	clang_args = [
		"-D", "__STDC_LIMIT_MACROS",
		"-D", "__STDC_CONSTANT_MACROS",
		# "-v"
	],
	# clang_diagnostics = true,
	header_library = find_libfile,
	header_outputfile = find_outfile,
	clang_includes = includes,
)

info("Generating .jl wrappers for Libui in $outpath...")
run(context)
info("Done generating .jl wrappers for Libui in $outpath")
