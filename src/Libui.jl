__precompile__()
module Libui

const depsfile = joinpath(dirname(dirname(@__FILE__)), "deps", "deps.jl")
if isfile(depsfile)
	include(depsfile)
else
	error("Libui not properly installed. Please run Pkg.build(\"Libui\")")
end

export
	uiBoxAppend,
	uiBoxSetPadded,
	uiComboboxAppend,
	uiControl,
	uiControlShow,
	uiControlDestroy,
	uiInit,
	uiInitOptions,
	uiEditableComboboxAppend,
	uiEntrySetText,
	uiFreeText,
	uiGroupSetChild,
	uiGroupSetMargined,
	uiMain,
	uiMenuAppendAboutItem,
	uiMenuAppendCheckItem,
	uiMenuAppendItem,
	uiMenuAppendPreferencesItem,
	uiMenuAppendQuitItem,
	uiMenuAppendSeparator,
	uiMenuItemDisable,
	uiMenuItemOnClicked,
	uiMsgBoxError,
	uiNewButton,
	uiNewCheckbox,
	uiNewColorButton,
	uiNewCombobox,
	uiNewDateTimePicker,
	uiNewDatePicker,
	uiNewEditableCombobox,
	uiNewEntry,
	uiNewFontButton,
	uiNewGroup,
	uiNewHorizontalBox,
	uiNewHorizontalSeparator,
	uiNewLabel,
	uiNewMenu,
	uiNewProgressBar,
	uiNewRadioButtons,
	uiNewSlider,
	uiNewSpinbox,
	uiNewTab,
	uiNewTimePicker,
	uiNewVerticalBox,
	uiNewWindow,
	uiOpenFile,
	uiProgressBarSetValue,
	uiRadioButtonsAppend,
	uiSaveFile,
	uiSlider,
	uiSliderOnChanged,
	uiSliderSetValue,
	uiSliderValue,
	uiSpinbox,
	uiSpinboxOnChanged,
	uiSpinboxSetValue,
	uiSpinboxValue,
	uiTabAppend,
	uiWindowSetMargined,
	uiWindowOnClosing,
	uiWindowSetChild,
	uiUninit,
	uiWindow,
	uiOnShouldQuit,
# Non C-wrapper functions
	uiControl_, shouldQuit, onClosing,
	newWindow, with_ui


include("ui_h.jl")
include("ui.jl")

# ---------------------------------------------------------------------------------------------
"""
	uiControl_(this)

Convert Ptr `this` to a generic Ptr{uiControl}.
""" 
function uiControl_(this::Ptr)
	r = convert(Ptr{uiControl}, this)
end

# ---------------------------------------------------------------------------------------------
"""
	shouldQuit(mainwin::Ptr{uiWindow})

Default handler for shouldQuit events.
"""
function shouldQuit(mainwin::Ptr{uiWindow})
	uiControlDestroy(uiControl_(mainwin))
	return C_NULL
end

"""
	shouldQuitPtr

Pointer to c-callable version of [`shouldQuit`](@ref)
"""
const shouldQuitPtr = cfunction(shouldQuit, Ptr{Nothing}, (Ptr{uiWindow},))

# ---------------------------------------------------------------------------------------------
"""
	onClosing(mainwin::Ptr{uiWindow}, data::Ptr{Nothing})

Default handler for onClosing events.
"""
function onClosing(mainwin::Ptr{uiWindow}, data::Ptr{Nothing})
	uiQuit()
	return C_NULL
end

"""
	onClosingPtr

Pointer to c-callable version of (`onClosing`)[@ref]
"""
const onClosingPtr = cfunction(onClosing, Ptr{Nothing}, (Ptr{uiWindow},Ptr{Nothing}))

"""
	newWindow(args...)

Wrapper for [`uiNewWindow`](@ref) that provides the correct (default) onClosing and shouldQuit
handlers.
"""
function newWindow(args...)
	wPtr = uiNewWindow(args...)
	uiWindowOnClosing(wPtr, onClosingPtr, C_NULL)
	uiOnShouldQuit(shouldQuitPtr, convert(Ptr{Nothing}, wPtr))
	wPtr
end

"""
	with_ui(f)

Initialize libui and run `f`.

### Example
```
with_ui() do
	mainwin = newWindow("libui Example", 640, 480, 1)
	uiWindowSetMargined(mainwin, 1)
	uiControlShow(uiControl_(mainwin))
	
	uiMain()
end
```

Note: This does not uninitialize libui, since the library function to do this
seems to prevent re-initialization (and will segfault or cause an illegal
instruction to be emitted.)
"""
function with_ui(f)
	o = uiInitOptions(0)
	err = uiInit(Ref(o))
	if err != C_NULL
		println(stderr, unsafe_string(err))
		uiFreeInitError(err)
	end
	try
		# GC.@preserve o # This does not fix the deallocation/illegal instruction issue.
		f()
	finally
		# uiUninit()
	end
	return nothing
end

end # module
