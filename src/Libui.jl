VERSION >= v"0.4.0-dev+6521" && __precompile__()
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
	newWindow


include("ui_h.jl")
include("ui.jl")

# ---------------------------------------------------------------------------------------------
function uiControl_(this)
	r = convert(Ptr{uiControl}, this)
end

# ---------------------------------------------------------------------------------------------
function shouldQuit(mainwin::Ptr{uiWindow})
	uiControlDestroy(uiControl_(mainwin))
	return C_NULL
end
const shouldQuitPtr = cfunction(shouldQuit, Ptr{Nothing}, (Ptr{uiWindow},))

# ---------------------------------------------------------------------------------------------
function onClosing(mainwin::Ptr{uiWindow})
	uiQuit()
	return C_NULL
end
const onClosingPtr = cfunction(onClosing, Ptr{Nothing}, (Ptr{uiWindow},))

function newWindow(args...)
	wPtr = uiNewWindow(args...)
	uiWindowOnClosing(wPtr, onClosingPtr, C_NULL)
	uiOnShouldQuit(shouldQuitPtr, convert(Ptr{Nothing}, wPtr))
	wPtr
end


end # module
