# Julia wrapper for header: /Users/jgoldfar/Documents/misc/julia/Libui/src/../deps/src/ui.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0


function uiInit(options)
	ccall((:uiInit, libui), Cstring, (Ptr{uiInitOptions},), options)
end

function uiUninit()
	ccall((:uiUninit, libui), Nothing, ())
end

function uiFreeInitError(err)
	ccall((:uiFreeInitError, libui), Nothing, (Cstring,), err)
end

function uiMain()
	ccall((:uiMain, libui), Nothing, ())
end

function uiMainSteps()
	ccall((:uiMainSteps, libui), Nothing, ())
end

function uiMainStep(wait::Integer)
	ccall((:uiMainStep, libui), Cint, (Cint,), wait)
end

function uiQuit()
	ccall((:uiQuit, libui), Nothing, ())
end

function uiQueueMain(f, data)
	ccall((:uiQueueMain, libui), Nothing, (Ptr{Void}, Ptr{Void}), f, data)
end

function uiTimer(milliseconds::Integer, f, data)
	ccall((:uiTimer, libui), Nothing, (Cint, Ptr{Void}, Ptr{Void}), milliseconds, f, data)
end

function uiOnShouldQuit(f, data)
	ccall((:uiOnShouldQuit, libui), Nothing, (Ptr{Void}, Ptr{Void}), f, data)
end

function uiFreeText(text)
	ccall((:uiFreeText, libui), Nothing, (Cstring,), text)
end

function uiControlDestroy(arg1)
	ccall((:uiControlDestroy, libui), Nothing, (Ptr{uiControl},), arg1)
end

function uiControlHandle(arg1)
	ccall((:uiControlHandle, libui), Csize_t, (Ptr{uiControl},), arg1)
end

function uiControlParent(arg1)
	ccall((:uiControlParent, libui), Ptr{uiControl}, (Ptr{uiControl},), arg1)
end

function uiControlSetParent(arg1, arg2)
	ccall((:uiControlSetParent, libui), Nothing, (Ptr{uiControl}, Ptr{uiControl}), arg1, arg2)
end

function uiControlToplevel(arg1)
	ccall((:uiControlToplevel, libui), Cint, (Ptr{uiControl},), arg1)
end

function uiControlVisible(arg1)
	ccall((:uiControlVisible, libui), Cint, (Ptr{uiControl},), arg1)
end

function uiControlShow(arg1)
	ccall((:uiControlShow, libui), Nothing, (Ptr{uiControl},), arg1)
end

function uiControlHide(arg1)
	ccall((:uiControlHide, libui), Nothing, (Ptr{uiControl},), arg1)
end

function uiControlEnabled(arg1)
	ccall((:uiControlEnabled, libui), Cint, (Ptr{uiControl},), arg1)
end

function uiControlEnable(arg1)
	ccall((:uiControlEnable, libui), Nothing, (Ptr{uiControl},), arg1)
end

function uiControlDisable(arg1)
	ccall((:uiControlDisable, libui), Nothing, (Ptr{uiControl},), arg1)
end

function uiAllocControl(n::Csize_t, OSsig::UInt32, typesig::UInt32, typenamestr)
	ccall((:uiAllocControl, libui), Ptr{uiControl}, (Csize_t, UInt32, UInt32, Cstring), n, OSsig, typesig, typenamestr)
end

function uiFreeControl(arg1)
	ccall((:uiFreeControl, libui), Nothing, (Ptr{uiControl},), arg1)
end

function uiControlVerifySetParent(arg1, arg2)
	ccall((:uiControlVerifySetParent, libui), Nothing, (Ptr{uiControl}, Ptr{uiControl}), arg1, arg2)
end

function uiControlEnabledToUser(arg1)
	ccall((:uiControlEnabledToUser, libui), Cint, (Ptr{uiControl},), arg1)
end

function uiUserBugCannotSetParentOnToplevel(_type)
	ccall((:uiUserBugCannotSetParentOnToplevel, libui), Nothing, (Cstring,), _type)
end

function uiWindowTitle(w)
	ccall((:uiWindowTitle, libui), Cstring, (Ptr{uiWindow},), w)
end

function uiWindowSetTitle(w, title)
	ccall((:uiWindowSetTitle, libui), Nothing, (Ptr{uiWindow}, Cstring), w, title)
end

function uiWindowContentSize(w, width, height)
	ccall((:uiWindowContentSize, libui), Nothing, (Ptr{uiWindow}, Ptr{Cint}, Ptr{Cint}), w, width, height)
end

function uiWindowSetContentSize(w, width::Integer, height::Integer)
	ccall((:uiWindowSetContentSize, libui), Nothing, (Ptr{uiWindow}, Cint, Cint), w, width, height)
end

function uiWindowFullscreen(w)
	ccall((:uiWindowFullscreen, libui), Cint, (Ptr{uiWindow},), w)
end

function uiWindowSetFullscreen(w, fullscreen::Integer)
	ccall((:uiWindowSetFullscreen, libui), Nothing, (Ptr{uiWindow}, Cint), w, fullscreen)
end

function uiWindowOnContentSizeChanged(w, f, data)
	ccall((:uiWindowOnContentSizeChanged, libui), Nothing, (Ptr{uiWindow}, Ptr{Void}, Ptr{Void}), w, f, data)
end

function uiWindowOnClosing(w, f, data)
	ccall((:uiWindowOnClosing, libui), Nothing, (Ptr{uiWindow}, Ptr{Void}, Ptr{Void}), w, f, data)
end

function uiWindowBorderless(w)
	ccall((:uiWindowBorderless, libui), Cint, (Ptr{uiWindow},), w)
end

function uiWindowSetBorderless(w, borderless::Integer)
	ccall((:uiWindowSetBorderless, libui), Nothing, (Ptr{uiWindow}, Cint), w, borderless)
end

function uiWindowSetChild(w, child)
	ccall((:uiWindowSetChild, libui), Nothing, (Ptr{uiWindow}, Ptr{uiControl}), w, child)
end

function uiWindowMargined(w)
	ccall((:uiWindowMargined, libui), Cint, (Ptr{uiWindow},), w)
end

function uiWindowSetMargined(w, margined::Integer)
	ccall((:uiWindowSetMargined, libui), Nothing, (Ptr{uiWindow}, Cint), w, margined)
end

function uiNewWindow(title, width::Integer, height::Integer, hasMenubar::Integer)
	ccall((:uiNewWindow, libui), Ptr{uiWindow}, (Cstring, Cint, Cint, Cint), title, width, height, hasMenubar)
end

function uiButtonText(b)
	ccall((:uiButtonText, libui), Cstring, (Ptr{uiButton},), b)
end

function uiButtonSetText(b, text)
	ccall((:uiButtonSetText, libui), Nothing, (Ptr{uiButton}, Cstring), b, text)
end

function uiButtonOnClicked(b, f, data)
	ccall((:uiButtonOnClicked, libui), Nothing, (Ptr{uiButton}, Ptr{Void}, Ptr{Void}), b, f, data)
end

function uiNewButton(text)
	ccall((:uiNewButton, libui), Ptr{uiButton}, (Cstring,), text)
end

function uiBoxAppend(b, child, stretchy::Integer)
	ccall((:uiBoxAppend, libui), Nothing, (Ptr{uiBox}, Ptr{uiControl}, Cint), b, child, stretchy)
end

function uiBoxDelete(b, index::Integer)
	ccall((:uiBoxDelete, libui), Nothing, (Ptr{uiBox}, Cint), b, index)
end

function uiBoxPadded(b)
	ccall((:uiBoxPadded, libui), Cint, (Ptr{uiBox},), b)
end

function uiBoxSetPadded(b, padded::Integer)
	ccall((:uiBoxSetPadded, libui), Nothing, (Ptr{uiBox}, Cint), b, padded)
end

function uiNewHorizontalBox()
	ccall((:uiNewHorizontalBox, libui), Ptr{uiBox}, ())
end

function uiNewVerticalBox()
	ccall((:uiNewVerticalBox, libui), Ptr{uiBox}, ())
end

function uiCheckboxText(c)
	ccall((:uiCheckboxText, libui), Cstring, (Ptr{uiCheckbox},), c)
end

function uiCheckboxSetText(c, text)
	ccall((:uiCheckboxSetText, libui), Nothing, (Ptr{uiCheckbox}, Cstring), c, text)
end

function uiCheckboxOnToggled(c, f, data)
	ccall((:uiCheckboxOnToggled, libui), Nothing, (Ptr{uiCheckbox}, Ptr{Void}, Ptr{Void}), c, f, data)
end

function uiCheckboxChecked(c)
	ccall((:uiCheckboxChecked, libui), Cint, (Ptr{uiCheckbox},), c)
end

function uiCheckboxSetChecked(c, checked::Integer)
	ccall((:uiCheckboxSetChecked, libui), Nothing, (Ptr{uiCheckbox}, Cint), c, checked)
end

function uiNewCheckbox(text)
	ccall((:uiNewCheckbox, libui), Ptr{uiCheckbox}, (Cstring,), text)
end

function uiEntryText(e)
	ccall((:uiEntryText, libui), Cstring, (Ptr{uiEntry},), e)
end

function uiEntrySetText(e, text)
	ccall((:uiEntrySetText, libui), Nothing, (Ptr{uiEntry}, Cstring), e, text)
end

function uiEntryOnChanged(e, f, data)
	ccall((:uiEntryOnChanged, libui), Nothing, (Ptr{uiEntry}, Ptr{Void}, Ptr{Void}), e, f, data)
end

function uiEntryReadOnly(e)
	ccall((:uiEntryReadOnly, libui), Cint, (Ptr{uiEntry},), e)
end

function uiEntrySetReadOnly(e, readonly::Integer)
	ccall((:uiEntrySetReadOnly, libui), Nothing, (Ptr{uiEntry}, Cint), e, readonly)
end

function uiNewEntry()
	ccall((:uiNewEntry, libui), Ptr{uiEntry}, ())
end

function uiNewPasswordEntry()
	ccall((:uiNewPasswordEntry, libui), Ptr{uiEntry}, ())
end

function uiNewSearchEntry()
	ccall((:uiNewSearchEntry, libui), Ptr{uiEntry}, ())
end

function uiLabelText(l)
	ccall((:uiLabelText, libui), Cstring, (Ptr{uiLabel},), l)
end

function uiLabelSetText(l, text)
	ccall((:uiLabelSetText, libui), Nothing, (Ptr{uiLabel}, Cstring), l, text)
end

function uiNewLabel(text)
	ccall((:uiNewLabel, libui), Ptr{uiLabel}, (Cstring,), text)
end

function uiTabAppend(t, name, c)
	ccall((:uiTabAppend, libui), Nothing, (Ptr{uiTab}, Cstring, Ptr{uiControl}), t, name, c)
end

function uiTabInsertAt(t, name, before::Integer, c)
	ccall((:uiTabInsertAt, libui), Nothing, (Ptr{uiTab}, Cstring, Cint, Ptr{uiControl}), t, name, before, c)
end

function uiTabDelete(t, index::Integer)
	ccall((:uiTabDelete, libui), Nothing, (Ptr{uiTab}, Cint), t, index)
end

function uiTabNumPages(t)
	ccall((:uiTabNumPages, libui), Cint, (Ptr{uiTab},), t)
end

function uiTabMargined(t, page::Integer)
	ccall((:uiTabMargined, libui), Cint, (Ptr{uiTab}, Cint), t, page)
end

function uiTabSetMargined(t, page::Integer, margined::Integer)
	ccall((:uiTabSetMargined, libui), Nothing, (Ptr{uiTab}, Cint, Cint), t, page, margined)
end

function uiNewTab()
	ccall((:uiNewTab, libui), Ptr{uiTab}, ())
end

function uiGroupTitle(g)
	ccall((:uiGroupTitle, libui), Cstring, (Ptr{uiGroup},), g)
end

function uiGroupSetTitle(g, title)
	ccall((:uiGroupSetTitle, libui), Nothing, (Ptr{uiGroup}, Cstring), g, title)
end

function uiGroupSetChild(g, c)
	ccall((:uiGroupSetChild, libui), Nothing, (Ptr{uiGroup}, Ptr{uiControl}), g, c)
end

function uiGroupMargined(g)
	ccall((:uiGroupMargined, libui), Cint, (Ptr{uiGroup},), g)
end

function uiGroupSetMargined(g, margined::Integer)
	ccall((:uiGroupSetMargined, libui), Nothing, (Ptr{uiGroup}, Cint), g, margined)
end

function uiNewGroup(title)
	ccall((:uiNewGroup, libui), Ptr{uiGroup}, (Cstring,), title)
end

function uiSpinboxValue(s)
	ccall((:uiSpinboxValue, libui), Cint, (Ptr{uiSpinbox},), s)
end

function uiSpinboxSetValue(s, value::Integer)
	ccall((:uiSpinboxSetValue, libui), Nothing, (Ptr{uiSpinbox}, Cint), s, value)
end

function uiSpinboxOnChanged(s, f, data)
	ccall((:uiSpinboxOnChanged, libui), Nothing, (Ptr{uiSpinbox}, Ptr{Void}, Ptr{Void}), s, f, data)
end

function uiNewSpinbox(min::Integer, max::Integer)
	ccall((:uiNewSpinbox, libui), Ptr{uiSpinbox}, (Cint, Cint), min, max)
end

function uiSliderValue(s)
	ccall((:uiSliderValue, libui), Cint, (Ptr{uiSlider},), s)
end

function uiSliderSetValue(s, value::Integer)
	ccall((:uiSliderSetValue, libui), Nothing, (Ptr{uiSlider}, Cint), s, value)
end

function uiSliderOnChanged(s, f, data)
	ccall((:uiSliderOnChanged, libui), Nothing, (Ptr{uiSlider}, Ptr{Void}, Ptr{Void}), s, f, data)
end

function uiNewSlider(min::Integer, max::Integer)
	ccall((:uiNewSlider, libui), Ptr{uiSlider}, (Cint, Cint), min, max)
end

function uiProgressBarValue(p)
	ccall((:uiProgressBarValue, libui), Cint, (Ptr{uiProgressBar},), p)
end

function uiProgressBarSetValue(p, n::Integer)
	ccall((:uiProgressBarSetValue, libui), Nothing, (Ptr{uiProgressBar}, Cint), p, n)
end

function uiNewProgressBar()
	ccall((:uiNewProgressBar, libui), Ptr{uiProgressBar}, ())
end

function uiNewHorizontalSeparator()
	ccall((:uiNewHorizontalSeparator, libui), Ptr{uiSeparator}, ())
end

function uiNewVerticalSeparator()
	ccall((:uiNewVerticalSeparator, libui), Ptr{uiSeparator}, ())
end

function uiComboboxAppend(c, text)
	ccall((:uiComboboxAppend, libui), Nothing, (Ptr{uiCombobox}, Cstring), c, text)
end

function uiComboboxSelected(c)
	ccall((:uiComboboxSelected, libui), Cint, (Ptr{uiCombobox},), c)
end

function uiComboboxSetSelected(c, n::Integer)
	ccall((:uiComboboxSetSelected, libui), Nothing, (Ptr{uiCombobox}, Cint), c, n)
end

function uiComboboxOnSelected(c, f, data)
	ccall((:uiComboboxOnSelected, libui), Nothing, (Ptr{uiCombobox}, Ptr{Void}, Ptr{Void}), c, f, data)
end

function uiNewCombobox()
	ccall((:uiNewCombobox, libui), Ptr{uiCombobox}, ())
end

function uiEditableComboboxAppend(c, text)
	ccall((:uiEditableComboboxAppend, libui), Nothing, (Ptr{uiEditableCombobox}, Cstring), c, text)
end

function uiEditableComboboxText(c)
	ccall((:uiEditableComboboxText, libui), Cstring, (Ptr{uiEditableCombobox},), c)
end

function uiEditableComboboxSetText(c, text)
	ccall((:uiEditableComboboxSetText, libui), Nothing, (Ptr{uiEditableCombobox}, Cstring), c, text)
end

function uiEditableComboboxOnChanged(c, f, data)
	ccall((:uiEditableComboboxOnChanged, libui), Nothing, (Ptr{uiEditableCombobox}, Ptr{Void}, Ptr{Void}), c, f, data)
end

function uiNewEditableCombobox()
	ccall((:uiNewEditableCombobox, libui), Ptr{uiEditableCombobox}, ())
end

function uiRadioButtonsAppend(r, text)
	ccall((:uiRadioButtonsAppend, libui), Nothing, (Ptr{uiRadioButtons}, Cstring), r, text)
end

function uiRadioButtonsSelected(r)
	ccall((:uiRadioButtonsSelected, libui), Cint, (Ptr{uiRadioButtons},), r)
end

function uiRadioButtonsSetSelected(r, n::Integer)
	ccall((:uiRadioButtonsSetSelected, libui), Nothing, (Ptr{uiRadioButtons}, Cint), r, n)
end

function uiRadioButtonsOnSelected(r, f, data)
	ccall((:uiRadioButtonsOnSelected, libui), Nothing, (Ptr{uiRadioButtons}, Ptr{Void}, Ptr{Void}), r, f, data)
end

function uiNewRadioButtons()
	ccall((:uiNewRadioButtons, libui), Ptr{uiRadioButtons}, ())
end

function uiDateTimePickerTime(d, time)
	ccall((:uiDateTimePickerTime, libui), Nothing, (Ptr{uiDateTimePicker}, Ptr{Void}), d, time)
end

function uiDateTimePickerSetTime(d, time)
	ccall((:uiDateTimePickerSetTime, libui), Nothing, (Ptr{uiDateTimePicker}, Ptr{Void}), d, time)
end

function uiDateTimePickerOnChanged(d, f, data)
	ccall((:uiDateTimePickerOnChanged, libui), Nothing, (Ptr{uiDateTimePicker}, Ptr{Void}, Ptr{Void}), d, f, data)
end

function uiNewDateTimePicker()
	ccall((:uiNewDateTimePicker, libui), Ptr{uiDateTimePicker}, ())
end

function uiNewDatePicker()
	ccall((:uiNewDatePicker, libui), Ptr{uiDateTimePicker}, ())
end

function uiNewTimePicker()
	ccall((:uiNewTimePicker, libui), Ptr{uiDateTimePicker}, ())
end

function uiMultilineEntryText(e)
	ccall((:uiMultilineEntryText, libui), Cstring, (Ptr{uiMultilineEntry},), e)
end

function uiMultilineEntrySetText(e, text)
	ccall((:uiMultilineEntrySetText, libui), Nothing, (Ptr{uiMultilineEntry}, Cstring), e, text)
end

function uiMultilineEntryAppend(e, text)
	ccall((:uiMultilineEntryAppend, libui), Nothing, (Ptr{uiMultilineEntry}, Cstring), e, text)
end

function uiMultilineEntryOnChanged(e, f, data)
	ccall((:uiMultilineEntryOnChanged, libui), Nothing, (Ptr{uiMultilineEntry}, Ptr{Void}, Ptr{Void}), e, f, data)
end

function uiMultilineEntryReadOnly(e)
	ccall((:uiMultilineEntryReadOnly, libui), Cint, (Ptr{uiMultilineEntry},), e)
end

function uiMultilineEntrySetReadOnly(e, readonly::Integer)
	ccall((:uiMultilineEntrySetReadOnly, libui), Nothing, (Ptr{uiMultilineEntry}, Cint), e, readonly)
end

function uiNewMultilineEntry()
	ccall((:uiNewMultilineEntry, libui), Ptr{uiMultilineEntry}, ())
end

function uiNewNonWrappingMultilineEntry()
	ccall((:uiNewNonWrappingMultilineEntry, libui), Ptr{uiMultilineEntry}, ())
end

function uiMenuItemEnable(m)
	ccall((:uiMenuItemEnable, libui), Nothing, (Ptr{uiMenuItem},), m)
end

function uiMenuItemDisable(m)
	ccall((:uiMenuItemDisable, libui), Nothing, (Ptr{uiMenuItem},), m)
end

function uiMenuItemOnClicked(m, f, data)
	ccall((:uiMenuItemOnClicked, libui), Nothing, (Ptr{uiMenuItem}, Ptr{Void}, Ptr{Void}), m, f, data)
end

function uiMenuItemChecked(m)
	ccall((:uiMenuItemChecked, libui), Cint, (Ptr{uiMenuItem},), m)
end

function uiMenuItemSetChecked(m, checked::Integer)
	ccall((:uiMenuItemSetChecked, libui), Nothing, (Ptr{uiMenuItem}, Cint), m, checked)
end

function uiMenuAppendItem(m, name)
	ccall((:uiMenuAppendItem, libui), Ptr{uiMenuItem}, (Ptr{uiMenu}, Cstring), m, name)
end

function uiMenuAppendCheckItem(m, name)
	ccall((:uiMenuAppendCheckItem, libui), Ptr{uiMenuItem}, (Ptr{uiMenu}, Cstring), m, name)
end

function uiMenuAppendQuitItem(m)
	ccall((:uiMenuAppendQuitItem, libui), Ptr{uiMenuItem}, (Ptr{uiMenu},), m)
end

function uiMenuAppendPreferencesItem(m)
	ccall((:uiMenuAppendPreferencesItem, libui), Ptr{uiMenuItem}, (Ptr{uiMenu},), m)
end

function uiMenuAppendAboutItem(m)
	ccall((:uiMenuAppendAboutItem, libui), Ptr{uiMenuItem}, (Ptr{uiMenu},), m)
end

function uiMenuAppendSeparator(m)
	ccall((:uiMenuAppendSeparator, libui), Nothing, (Ptr{uiMenu},), m)
end

function uiNewMenu(name)
	ccall((:uiNewMenu, libui), Ptr{uiMenu}, (Cstring,), name)
end

function uiOpenFile(parent)
	ccall((:uiOpenFile, libui), Cstring, (Ptr{uiWindow},), parent)
end

function uiSaveFile(parent)
	ccall((:uiSaveFile, libui), Cstring, (Ptr{uiWindow},), parent)
end

function uiMsgBox(parent, title, description)
	ccall((:uiMsgBox, libui), Nothing, (Ptr{uiWindow}, Cstring, Cstring), parent, title, description)
end

function uiMsgBoxError(parent, title, description)
	ccall((:uiMsgBoxError, libui), Nothing, (Ptr{uiWindow}, Cstring, Cstring), parent, title, description)
end

function uiAreaSetSize(a, width::Integer, height::Integer)
	ccall((:uiAreaSetSize, libui), Nothing, (Ptr{uiArea}, Cint, Cint), a, width, height)
end

function uiAreaQueueRedrawAll(a)
	ccall((:uiAreaQueueRedrawAll, libui), Nothing, (Ptr{uiArea},), a)
end

function uiAreaScrollTo(a, x::Cdouble, y::Cdouble, width::Cdouble, height::Cdouble)
	ccall((:uiAreaScrollTo, libui), Nothing, (Ptr{uiArea}, Cdouble, Cdouble, Cdouble, Cdouble), a, x, y, width, height)
end

function uiAreaBeginUserWindowMove(a)
	ccall((:uiAreaBeginUserWindowMove, libui), Nothing, (Ptr{uiArea},), a)
end

function uiAreaBeginUserWindowResize(a, edge::uiWindowResizeEdge)
	ccall((:uiAreaBeginUserWindowResize, libui), Nothing, (Ptr{uiArea}, uiWindowResizeEdge), a, edge)
end

function uiNewArea(ah)
	ccall((:uiNewArea, libui), Ptr{uiArea}, (Ptr{uiAreaHandler},), ah)
end

function uiNewScrollingArea(ah, width::Integer, height::Integer)
	ccall((:uiNewScrollingArea, libui), Ptr{uiArea}, (Ptr{uiAreaHandler}, Cint, Cint), ah, width, height)
end

function uiDrawNewPath(fillMode::uiDrawFillMode)
	ccall((:uiDrawNewPath, libui), Ptr{uiDrawPath}, (uiDrawFillMode,), fillMode)
end

function uiDrawFreePath(p)
	ccall((:uiDrawFreePath, libui), Nothing, (Ptr{uiDrawPath},), p)
end

function uiDrawPathNewFigure(p, x::Cdouble, y::Cdouble)
	ccall((:uiDrawPathNewFigure, libui), Nothing, (Ptr{uiDrawPath}, Cdouble, Cdouble), p, x, y)
end

function uiDrawPathNewFigureWithArc(p, xCenter::Cdouble, yCenter::Cdouble, radius::Cdouble, startAngle::Cdouble, sweep::Cdouble, negative::Integer)
	ccall((:uiDrawPathNewFigureWithArc, libui), Nothing, (Ptr{uiDrawPath}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cint), p, xCenter, yCenter, radius, startAngle, sweep, negative)
end

function uiDrawPathLineTo(p, x::Cdouble, y::Cdouble)
	ccall((:uiDrawPathLineTo, libui), Nothing, (Ptr{uiDrawPath}, Cdouble, Cdouble), p, x, y)
end

function uiDrawPathArcTo(p, xCenter::Cdouble, yCenter::Cdouble, radius::Cdouble, startAngle::Cdouble, sweep::Cdouble, negative::Integer)
	ccall((:uiDrawPathArcTo, libui), Nothing, (Ptr{uiDrawPath}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cint), p, xCenter, yCenter, radius, startAngle, sweep, negative)
end

function uiDrawPathBezierTo(p, c1x::Cdouble, c1y::Cdouble, c2x::Cdouble, c2y::Cdouble, endX::Cdouble, endY::Cdouble)
	ccall((:uiDrawPathBezierTo, libui), Nothing, (Ptr{uiDrawPath}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), p, c1x, c1y, c2x, c2y, endX, endY)
end

function uiDrawPathCloseFigure(p)
	ccall((:uiDrawPathCloseFigure, libui), Nothing, (Ptr{uiDrawPath},), p)
end

function uiDrawPathAddRectangle(p, x::Cdouble, y::Cdouble, width::Cdouble, height::Cdouble)
	ccall((:uiDrawPathAddRectangle, libui), Nothing, (Ptr{uiDrawPath}, Cdouble, Cdouble, Cdouble, Cdouble), p, x, y, width, height)
end

function uiDrawPathEnd(p)
	ccall((:uiDrawPathEnd, libui), Nothing, (Ptr{uiDrawPath},), p)
end

function uiDrawStroke(c, path, b, p)
	ccall((:uiDrawStroke, libui), Nothing, (Ptr{uiDrawContext}, Ptr{uiDrawPath}, Ptr{uiDrawBrush}, Ptr{uiDrawStrokeParams}), c, path, b, p)
end

function uiDrawFill(c, path, b)
	ccall((:uiDrawFill, libui), Nothing, (Ptr{uiDrawContext}, Ptr{uiDrawPath}, Ptr{uiDrawBrush}), c, path, b)
end

function uiDrawMatrixSetIdentity(m)
	ccall((:uiDrawMatrixSetIdentity, libui), Nothing, (Ptr{uiDrawMatrix},), m)
end

function uiDrawMatrixTranslate(m, x::Cdouble, y::Cdouble)
	ccall((:uiDrawMatrixTranslate, libui), Nothing, (Ptr{uiDrawMatrix}, Cdouble, Cdouble), m, x, y)
end

function uiDrawMatrixScale(m, xCenter::Cdouble, yCenter::Cdouble, x::Cdouble, y::Cdouble)
	ccall((:uiDrawMatrixScale, libui), Nothing, (Ptr{uiDrawMatrix}, Cdouble, Cdouble, Cdouble, Cdouble), m, xCenter, yCenter, x, y)
end

function uiDrawMatrixRotate(m, x::Cdouble, y::Cdouble, amount::Cdouble)
	ccall((:uiDrawMatrixRotate, libui), Nothing, (Ptr{uiDrawMatrix}, Cdouble, Cdouble, Cdouble), m, x, y, amount)
end

function uiDrawMatrixSkew(m, x::Cdouble, y::Cdouble, xamount::Cdouble, yamount::Cdouble)
	ccall((:uiDrawMatrixSkew, libui), Nothing, (Ptr{uiDrawMatrix}, Cdouble, Cdouble, Cdouble, Cdouble), m, x, y, xamount, yamount)
end

function uiDrawMatrixMultiply(dest, src)
	ccall((:uiDrawMatrixMultiply, libui), Nothing, (Ptr{uiDrawMatrix}, Ptr{uiDrawMatrix}), dest, src)
end

function uiDrawMatrixInvertible(m)
	ccall((:uiDrawMatrixInvertible, libui), Cint, (Ptr{uiDrawMatrix},), m)
end

function uiDrawMatrixInvert(m)
	ccall((:uiDrawMatrixInvert, libui), Cint, (Ptr{uiDrawMatrix},), m)
end

function uiDrawMatrixTransformPoint(m, x, y)
	ccall((:uiDrawMatrixTransformPoint, libui), Nothing, (Ptr{uiDrawMatrix}, Ptr{Cdouble}, Ptr{Cdouble}), m, x, y)
end

function uiDrawMatrixTransformSize(m, x, y)
	ccall((:uiDrawMatrixTransformSize, libui), Nothing, (Ptr{uiDrawMatrix}, Ptr{Cdouble}, Ptr{Cdouble}), m, x, y)
end

function uiDrawTransform(c, m)
	ccall((:uiDrawTransform, libui), Nothing, (Ptr{uiDrawContext}, Ptr{uiDrawMatrix}), c, m)
end

function uiDrawClip(c, path)
	ccall((:uiDrawClip, libui), Nothing, (Ptr{uiDrawContext}, Ptr{uiDrawPath}), c, path)
end

function uiDrawSave(c)
	ccall((:uiDrawSave, libui), Nothing, (Ptr{uiDrawContext},), c)
end

function uiDrawRestore(c)
	ccall((:uiDrawRestore, libui), Nothing, (Ptr{uiDrawContext},), c)
end

function uiFreeAttribute(a)
	ccall((:uiFreeAttribute, libui), Nothing, (Ptr{uiAttribute},), a)
end

function uiAttributeGetType(a)
	ccall((:uiAttributeGetType, libui), uiAttributeType, (Ptr{uiAttribute},), a)
end

function uiNewFamilyAttribute(family)
	ccall((:uiNewFamilyAttribute, libui), Ptr{uiAttribute}, (Cstring,), family)
end

function uiAttributeFamily(a)
	ccall((:uiAttributeFamily, libui), Cstring, (Ptr{uiAttribute},), a)
end

function uiNewSizeAttribute(size::Cdouble)
	ccall((:uiNewSizeAttribute, libui), Ptr{uiAttribute}, (Cdouble,), size)
end

function uiAttributeSize(a)
	ccall((:uiAttributeSize, libui), Cdouble, (Ptr{uiAttribute},), a)
end

function uiNewWeightAttribute(weight::uiTextWeight)
	ccall((:uiNewWeightAttribute, libui), Ptr{uiAttribute}, (uiTextWeight,), weight)
end

function uiAttributeWeight(a)
	ccall((:uiAttributeWeight, libui), uiTextWeight, (Ptr{uiAttribute},), a)
end

function uiNewItalicAttribute(italic::uiTextItalic)
	ccall((:uiNewItalicAttribute, libui), Ptr{uiAttribute}, (uiTextItalic,), italic)
end

function uiAttributeItalic(a)
	ccall((:uiAttributeItalic, libui), uiTextItalic, (Ptr{uiAttribute},), a)
end

function uiNewStretchAttribute(stretch::uiTextStretch)
	ccall((:uiNewStretchAttribute, libui), Ptr{uiAttribute}, (uiTextStretch,), stretch)
end

function uiAttributeStretch(a)
	ccall((:uiAttributeStretch, libui), uiTextStretch, (Ptr{uiAttribute},), a)
end

function uiNewColorAttribute(r::Cdouble, g::Cdouble, b::Cdouble, a::Cdouble)
	ccall((:uiNewColorAttribute, libui), Ptr{uiAttribute}, (Cdouble, Cdouble, Cdouble, Cdouble), r, g, b, a)
end

function uiAttributeColor(a, r, g, b, alpha)
	ccall((:uiAttributeColor, libui), Nothing, (Ptr{uiAttribute}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), a, r, g, b, alpha)
end

function uiNewBackgroundAttribute(r::Cdouble, g::Cdouble, b::Cdouble, a::Cdouble)
	ccall((:uiNewBackgroundAttribute, libui), Ptr{uiAttribute}, (Cdouble, Cdouble, Cdouble, Cdouble), r, g, b, a)
end

function uiNewUnderlineAttribute(u::uiUnderline)
	ccall((:uiNewUnderlineAttribute, libui), Ptr{uiAttribute}, (uiUnderline,), u)
end

function uiAttributeUnderline(a)
	ccall((:uiAttributeUnderline, libui), uiUnderline, (Ptr{uiAttribute},), a)
end

function uiNewUnderlineColorAttribute(u::uiUnderlineColor, r::Cdouble, g::Cdouble, b::Cdouble, a::Cdouble)
	ccall((:uiNewUnderlineColorAttribute, libui), Ptr{uiAttribute}, (uiUnderlineColor, Cdouble, Cdouble, Cdouble, Cdouble), u, r, g, b, a)
end

function uiAttributeUnderlineColor(a, u, r, g, b, alpha)
	ccall((:uiAttributeUnderlineColor, libui), Nothing, (Ptr{uiAttribute}, Ptr{uiUnderlineColor}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), a, u, r, g, b, alpha)
end

function uiNewOpenTypeFeatures()
	ccall((:uiNewOpenTypeFeatures, libui), Ptr{uiOpenTypeFeatures}, ())
end

function uiFreeOpenTypeFeatures(otf)
	ccall((:uiFreeOpenTypeFeatures, libui), Nothing, (Ptr{uiOpenTypeFeatures},), otf)
end

function uiOpenTypeFeaturesClone(otf)
	ccall((:uiOpenTypeFeaturesClone, libui), Ptr{uiOpenTypeFeatures}, (Ptr{uiOpenTypeFeatures},), otf)
end

function uiOpenTypeFeaturesAdd(otf, a::UInt8, b::UInt8, c::UInt8, d::UInt8, value::UInt32)
	ccall((:uiOpenTypeFeaturesAdd, libui), Nothing, (Ptr{uiOpenTypeFeatures}, UInt8, UInt8, UInt8, UInt8, UInt32), otf, a, b, c, d, value)
end

function uiOpenTypeFeaturesRemove(otf, a::UInt8, b::UInt8, c::UInt8, d::UInt8)
	ccall((:uiOpenTypeFeaturesRemove, libui), Nothing, (Ptr{uiOpenTypeFeatures}, UInt8, UInt8, UInt8, UInt8), otf, a, b, c, d)
end

function uiOpenTypeFeaturesGet(otf, a::UInt8, b::UInt8, c::UInt8, d::UInt8, value)
	ccall((:uiOpenTypeFeaturesGet, libui), Cint, (Ptr{uiOpenTypeFeatures}, UInt8, UInt8, UInt8, UInt8, Ptr{UInt32}), otf, a, b, c, d, value)
end

function uiOpenTypeFeaturesForEach(otf, f::uiOpenTypeFeaturesForEachFunc, data)
	ccall((:uiOpenTypeFeaturesForEach, libui), Nothing, (Ptr{uiOpenTypeFeatures}, uiOpenTypeFeaturesForEachFunc, Ptr{Void}), otf, f, data)
end

function uiNewFeaturesAttribute(otf)
	ccall((:uiNewFeaturesAttribute, libui), Ptr{uiAttribute}, (Ptr{uiOpenTypeFeatures},), otf)
end

function uiAttributeFeatures(a)
	ccall((:uiAttributeFeatures, libui), Ptr{uiOpenTypeFeatures}, (Ptr{uiAttribute},), a)
end

function uiNewAttributedString(initialString)
	ccall((:uiNewAttributedString, libui), Ptr{uiAttributedString}, (Cstring,), initialString)
end

function uiFreeAttributedString(s)
	ccall((:uiFreeAttributedString, libui), Nothing, (Ptr{uiAttributedString},), s)
end

function uiAttributedStringString(s)
	ccall((:uiAttributedStringString, libui), Cstring, (Ptr{uiAttributedString},), s)
end

function uiAttributedStringLen(s)
	ccall((:uiAttributedStringLen, libui), Csize_t, (Ptr{uiAttributedString},), s)
end

function uiAttributedStringAppendUnattributed(s, str)
	ccall((:uiAttributedStringAppendUnattributed, libui), Nothing, (Ptr{uiAttributedString}, Cstring), s, str)
end

function uiAttributedStringInsertAtUnattributed(s, str, at::Csize_t)
	ccall((:uiAttributedStringInsertAtUnattributed, libui), Nothing, (Ptr{uiAttributedString}, Cstring, Csize_t), s, str, at)
end

function uiAttributedStringDelete(s, start::Csize_t, _end::Csize_t)
	ccall((:uiAttributedStringDelete, libui), Nothing, (Ptr{uiAttributedString}, Csize_t, Csize_t), s, start, _end)
end

function uiAttributedStringSetAttribute(s, a, start::Csize_t, _end::Csize_t)
	ccall((:uiAttributedStringSetAttribute, libui), Nothing, (Ptr{uiAttributedString}, Ptr{uiAttribute}, Csize_t, Csize_t), s, a, start, _end)
end

function uiAttributedStringForEachAttribute(s, f::uiAttributedStringForEachAttributeFunc, data)
	ccall((:uiAttributedStringForEachAttribute, libui), Nothing, (Ptr{uiAttributedString}, uiAttributedStringForEachAttributeFunc, Ptr{Void}), s, f, data)
end

function uiAttributedStringNumGraphemes(s)
	ccall((:uiAttributedStringNumGraphemes, libui), Csize_t, (Ptr{uiAttributedString},), s)
end

function uiAttributedStringByteIndexToGrapheme(s, pos::Csize_t)
	ccall((:uiAttributedStringByteIndexToGrapheme, libui), Csize_t, (Ptr{uiAttributedString}, Csize_t), s, pos)
end

function uiAttributedStringGraphemeToByteIndex(s, pos::Csize_t)
	ccall((:uiAttributedStringGraphemeToByteIndex, libui), Csize_t, (Ptr{uiAttributedString}, Csize_t), s, pos)
end

function uiDrawNewTextLayout(params)
	ccall((:uiDrawNewTextLayout, libui), Ptr{uiDrawTextLayout}, (Ptr{uiDrawTextLayoutParams},), params)
end

function uiDrawFreeTextLayout(tl)
	ccall((:uiDrawFreeTextLayout, libui), Nothing, (Ptr{uiDrawTextLayout},), tl)
end

function uiDrawText(c, tl, x::Cdouble, y::Cdouble)
	ccall((:uiDrawText, libui), Nothing, (Ptr{uiDrawContext}, Ptr{uiDrawTextLayout}, Cdouble, Cdouble), c, tl, x, y)
end

function uiDrawTextLayoutExtents(tl, width, height)
	ccall((:uiDrawTextLayoutExtents, libui), Nothing, (Ptr{uiDrawTextLayout}, Ptr{Cdouble}, Ptr{Cdouble}), tl, width, height)
end

function uiFontButtonFont(b, desc)
	ccall((:uiFontButtonFont, libui), Nothing, (Ptr{uiFontButton}, Ptr{uiFontDescriptor}), b, desc)
end

function uiFontButtonOnChanged(b, f, data)
	ccall((:uiFontButtonOnChanged, libui), Nothing, (Ptr{uiFontButton}, Ptr{Void}, Ptr{Void}), b, f, data)
end

function uiNewFontButton()
	ccall((:uiNewFontButton, libui), Ptr{uiFontButton}, ())
end

function uiFreeFontButtonFont(desc)
	ccall((:uiFreeFontButtonFont, libui), Nothing, (Ptr{uiFontDescriptor},), desc)
end

function uiColorButtonColor(b, r, g, bl, a)
	ccall((:uiColorButtonColor, libui), Nothing, (Ptr{uiColorButton}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), b, r, g, bl, a)
end

function uiColorButtonSetColor(b, r::Cdouble, g::Cdouble, bl::Cdouble, a::Cdouble)
	ccall((:uiColorButtonSetColor, libui), Nothing, (Ptr{uiColorButton}, Cdouble, Cdouble, Cdouble, Cdouble), b, r, g, bl, a)
end

function uiColorButtonOnChanged(b, f, data)
	ccall((:uiColorButtonOnChanged, libui), Nothing, (Ptr{uiColorButton}, Ptr{Void}, Ptr{Void}), b, f, data)
end

function uiNewColorButton()
	ccall((:uiNewColorButton, libui), Ptr{uiColorButton}, ())
end

function uiFormAppend(f, label, c, stretchy::Integer)
	ccall((:uiFormAppend, libui), Nothing, (Ptr{uiForm}, Cstring, Ptr{uiControl}, Cint), f, label, c, stretchy)
end

function uiFormDelete(f, index::Integer)
	ccall((:uiFormDelete, libui), Nothing, (Ptr{uiForm}, Cint), f, index)
end

function uiFormPadded(f)
	ccall((:uiFormPadded, libui), Cint, (Ptr{uiForm},), f)
end

function uiFormSetPadded(f, padded::Integer)
	ccall((:uiFormSetPadded, libui), Nothing, (Ptr{uiForm}, Cint), f, padded)
end

function uiNewForm()
	ccall((:uiNewForm, libui), Ptr{uiForm}, ())
end

function uiGridAppend(g, c, left::Integer, top::Integer, xspan::Integer, yspan::Integer, hexpand::Integer, halign::uiAlign, vexpand::Integer, valign::uiAlign)
	ccall((:uiGridAppend, libui), Nothing, (Ptr{uiGrid}, Ptr{uiControl}, Cint, Cint, Cint, Cint, Cint, uiAlign, Cint, uiAlign), g, c, left, top, xspan, yspan, hexpand, halign, vexpand, valign)
end

function uiGridInsertAt(g, c, existing, at::uiAt, xspan::Integer, yspan::Integer, hexpand::Integer, halign::uiAlign, vexpand::Integer, valign::uiAlign)
	ccall((:uiGridInsertAt, libui), Nothing, (Ptr{uiGrid}, Ptr{uiControl}, Ptr{uiControl}, uiAt, Cint, Cint, Cint, uiAlign, Cint, uiAlign), g, c, existing, at, xspan, yspan, hexpand, halign, vexpand, valign)
end

function uiGridPadded(g)
	ccall((:uiGridPadded, libui), Cint, (Ptr{uiGrid},), g)
end

function uiGridSetPadded(g, padded::Integer)
	ccall((:uiGridSetPadded, libui), Nothing, (Ptr{uiGrid}, Cint), g, padded)
end

function uiNewGrid()
	ccall((:uiNewGrid, libui), Ptr{uiGrid}, ())
end

function uiNewImage(width::Cdouble, height::Cdouble)
	ccall((:uiNewImage, libui), Ptr{uiImage}, (Cdouble, Cdouble), width, height)
end

function uiFreeImage(i)
	ccall((:uiFreeImage, libui), Nothing, (Ptr{uiImage},), i)
end

function uiImageAppend(i, pixels, pixelWidth::Integer, pixelHeight::Integer, byteStride::Integer)
	ccall((:uiImageAppend, libui), Nothing, (Ptr{uiImage}, Ptr{Void}, Cint, Cint, Cint), i, pixels, pixelWidth, pixelHeight, byteStride)
end

function uiFreeTableValue(v)
	ccall((:uiFreeTableValue, libui), Nothing, (Ptr{uiTableValue},), v)
end

function uiTableValueGetType(v)
	ccall((:uiTableValueGetType, libui), uiTableValueType, (Ptr{uiTableValue},), v)
end

function uiNewTableValueString(str)
	ccall((:uiNewTableValueString, libui), Ptr{uiTableValue}, (Cstring,), str)
end

function uiTableValueString(v)
	ccall((:uiTableValueString, libui), Cstring, (Ptr{uiTableValue},), v)
end

function uiNewTableValueImage(img)
	ccall((:uiNewTableValueImage, libui), Ptr{uiTableValue}, (Ptr{uiImage},), img)
end

function uiTableValueImage(v)
	ccall((:uiTableValueImage, libui), Ptr{uiImage}, (Ptr{uiTableValue},), v)
end

function uiNewTableValueInt(i::Integer)
	ccall((:uiNewTableValueInt, libui), Ptr{uiTableValue}, (Cint,), i)
end

function uiTableValueInt(v)
	ccall((:uiTableValueInt, libui), Cint, (Ptr{uiTableValue},), v)
end

function uiNewTableValueColor(r::Cdouble, g::Cdouble, b::Cdouble, a::Cdouble)
	ccall((:uiNewTableValueColor, libui), Ptr{uiTableValue}, (Cdouble, Cdouble, Cdouble, Cdouble), r, g, b, a)
end

function uiTableValueColor(v, r, g, b, a)
	ccall((:uiTableValueColor, libui), Nothing, (Ptr{uiTableValue}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), v, r, g, b, a)
end

function uiNewTableModel(mh)
	ccall((:uiNewTableModel, libui), Ptr{uiTableModel}, (Ptr{uiTableModelHandler},), mh)
end

function uiFreeTableModel(m)
	ccall((:uiFreeTableModel, libui), Nothing, (Ptr{uiTableModel},), m)
end

function uiTableModelRowInserted(m, newIndex::Integer)
	ccall((:uiTableModelRowInserted, libui), Nothing, (Ptr{uiTableModel}, Cint), m, newIndex)
end

function uiTableModelRowChanged(m, index::Integer)
	ccall((:uiTableModelRowChanged, libui), Nothing, (Ptr{uiTableModel}, Cint), m, index)
end

function uiTableModelRowDeleted(m, oldIndex::Integer)
	ccall((:uiTableModelRowDeleted, libui), Nothing, (Ptr{uiTableModel}, Cint), m, oldIndex)
end

function uiTableAppendTextColumn(t, name, textModelColumn::Integer, textEditableModelColumn::Integer, textParams)
	ccall((:uiTableAppendTextColumn, libui), Nothing, (Ptr{uiTable}, Cstring, Cint, Cint, Ptr{uiTableTextColumnOptionalParams}), t, name, textModelColumn, textEditableModelColumn, textParams)
end

function uiTableAppendImageColumn(t, name, imageModelColumn::Integer)
	ccall((:uiTableAppendImageColumn, libui), Nothing, (Ptr{uiTable}, Cstring, Cint), t, name, imageModelColumn)
end

function uiTableAppendImageTextColumn(t, name, imageModelColumn::Integer, textModelColumn::Integer, textEditableModelColumn::Integer, textParams)
	ccall((:uiTableAppendImageTextColumn, libui), Nothing, (Ptr{uiTable}, Cstring, Cint, Cint, Cint, Ptr{uiTableTextColumnOptionalParams}), t, name, imageModelColumn, textModelColumn, textEditableModelColumn, textParams)
end

function uiTableAppendCheckboxColumn(t, name, checkboxModelColumn::Integer, checkboxEditableModelColumn::Integer)
	ccall((:uiTableAppendCheckboxColumn, libui), Nothing, (Ptr{uiTable}, Cstring, Cint, Cint), t, name, checkboxModelColumn, checkboxEditableModelColumn)
end

function uiTableAppendCheckboxTextColumn(t, name, checkboxModelColumn::Integer, checkboxEditableModelColumn::Integer, textModelColumn::Integer, textEditableModelColumn::Integer, textParams)
	ccall((:uiTableAppendCheckboxTextColumn, libui), Nothing, (Ptr{uiTable}, Cstring, Cint, Cint, Cint, Cint, Ptr{uiTableTextColumnOptionalParams}), t, name, checkboxModelColumn, checkboxEditableModelColumn, textModelColumn, textEditableModelColumn, textParams)
end

function uiTableAppendProgressBarColumn(t, name, progressModelColumn::Integer)
	ccall((:uiTableAppendProgressBarColumn, libui), Nothing, (Ptr{uiTable}, Cstring, Cint), t, name, progressModelColumn)
end

function uiTableAppendButtonColumn(t, name, buttonModelColumn::Integer, buttonClickableModelColumn::Integer)
	ccall((:uiTableAppendButtonColumn, libui), Nothing, (Ptr{uiTable}, Cstring, Cint, Cint), t, name, buttonModelColumn, buttonClickableModelColumn)
end

function uiNewTable(params)
	ccall((:uiNewTable, libui), Ptr{uiTable}, (Ptr{uiTableParams},), params)
end
