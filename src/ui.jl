# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/libui/ui.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@windows? (const thelib = "libui") : (const thelib = "libui")  # Name of libui shared lib.


function uiInit(options::Ref{uiInitOptions})
    ccall((:uiInit,thelib),Ptr{UInt8},(Ptr{uiInitOptions},),options)
end

function uiUninit()
    ccall((:uiUninit,thelib),Void,())
end

function uiFreeInitError(err)
    ccall((:uiFreeInitError,thelib),Void,(Ptr{UInt8},),err)
end

function uiMain()
    ccall((:uiMain,thelib),Void,())
end

function uiMainStep(wait::Integer)
    ccall((:uiMainStep,thelib),Cint,(Cint,),wait)
end

function uiQuit()
    ccall((:uiQuit,thelib),Void,())
end

function uiQueueMain(f::Ptr{Void},data::Ptr{Void})
    ccall((:uiQueueMain,thelib),Void,(Ptr{Void},Ptr{Void}),f,data)
end

function uiOnShouldQuit(f::Ptr{Void},data::Ptr{Void})
    ccall((:uiOnShouldQuit,thelib),Void,(Ptr{Void},Ptr{Void}),f,data)
end

function uiFreeText(text)
    ccall((:uiFreeText,thelib),Void,(Ptr{UInt8},),text)
end

function uiControlDestroy(arg1::Ptr{uiControl})
    ccall((:uiControlDestroy,thelib),Void,(Ptr{uiControl},),arg1)
end

function uiControlHandle(arg1::Ptr{uiControl})
    ccall((:uiControlHandle,thelib),Csize_t,(Ptr{uiControl},),arg1)
end

function uiControlParent(arg1::Ptr{uiControl})
    ccall((:uiControlParent,thelib),Ptr{uiControl},(Ptr{uiControl},),arg1)
end

function uiControlSetParent(arg1::Ptr{uiControl},arg2::Ptr{uiControl})
    ccall((:uiControlSetParent,thelib),Void,(Ptr{uiControl},Ptr{uiControl}),arg1,arg2)
end

function uiControlToplevel(arg1::Ptr{uiControl})
    ccall((:uiControlToplevel,thelib),Cint,(Ptr{uiControl},),arg1)
end

function uiControlVisible(arg1::Ptr{uiControl})
    ccall((:uiControlVisible,thelib),Cint,(Ptr{uiControl},),arg1)
end

function uiControlShow(arg1::Ptr{uiControl})
    ccall((:uiControlShow,thelib),Void,(Ptr{uiControl},),arg1)
end

function uiControlHide(arg1::Ptr{uiControl})
    ccall((:uiControlHide,thelib),Void,(Ptr{uiControl},),arg1)
end

function uiControlEnabled(arg1::Ptr{uiControl})
    ccall((:uiControlEnabled,thelib),Cint,(Ptr{uiControl},),arg1)
end

function uiControlEnable(arg1::Ptr{uiControl})
    ccall((:uiControlEnable,thelib),Void,(Ptr{uiControl},),arg1)
end

function uiControlDisable(arg1::Ptr{uiControl})
    ccall((:uiControlDisable,thelib),Void,(Ptr{uiControl},),arg1)
end

function uiAllocControl(n::Csize_t,OSsig::Integer,typesig::UInt32,typenamestr)
    ccall((:uiAllocControl,thelib),Ptr{uiControl},(Csize_t,UInt32,UInt32,Ptr{UInt8}),n,OSsig,typesig,typenamestr)
end

function uiFreeControl(arg1::Ptr{uiControl})
    ccall((:uiFreeControl,thelib),Void,(Ptr{uiControl},),arg1)
end

function uiControlVerifySetParent(arg1::Ptr{uiControl},arg2::Ptr{uiControl})
    ccall((:uiControlVerifySetParent,thelib),Void,(Ptr{uiControl},Ptr{uiControl}),arg1,arg2)
end

function uiControlEnabledToUser(arg1::Ptr{uiControl})
    ccall((:uiControlEnabledToUser,thelib),Cint,(Ptr{uiControl},),arg1)
end

function uiUserBugCannotSetParentOnToplevel(_type)
    ccall((:uiUserBugCannotSetParentOnToplevel,thelib),Void,(Ptr{UInt8},),_type)
end

function uiWindowTitle(w::Ptr{uiWindow})
    ccall((:uiWindowTitle,thelib),Ptr{UInt8},(Ptr{uiWindow},),w)
end

function uiWindowSetTitle(w::Ptr{uiWindow},title)
    ccall((:uiWindowSetTitle,thelib),Void,(Ptr{uiWindow},Ptr{UInt8}),w,title)
end

function uiWindowOnClosing(w::Ptr{uiWindow},f::Ptr{Void},data::Ptr{Void})
    ccall((:uiWindowOnClosing,thelib),Void,(Ptr{uiWindow},Ptr{Void},Ptr{Void}),w,f,data)
end

function uiWindowSetChild(w::Ptr{uiWindow},child::Ptr{uiControl})
    ccall((:uiWindowSetChild,thelib),Void,(Ptr{uiWindow},Ptr{uiControl}),w,child)
end

function uiWindowMargined(w::Ptr{uiWindow})
    ccall((:uiWindowMargined,thelib),Cint,(Ptr{uiWindow},),w)
end

function uiWindowSetMargined(w::Ptr{uiWindow},margined::Integer)
    ccall((:uiWindowSetMargined,thelib),Void,(Ptr{uiWindow},Cint),w,margined)
end

function uiNewWindow(title,width::Integer,height::Integer,hasMenubar::Integer)
    ccall((:uiNewWindow,thelib),Ptr{uiWindow},(Ptr{UInt8},Cint,Cint,Cint),title,width,height,hasMenubar)
end

function uiButtonText(b::Ptr{uiButton})
    ccall((:uiButtonText,thelib),Ptr{UInt8},(Ptr{uiButton},),b)
end

function uiButtonSetText(b::Ptr{uiButton},text)
    ccall((:uiButtonSetText,thelib),Void,(Ptr{uiButton},Ptr{UInt8}),b,text)
end

function uiButtonOnClicked(b::Ptr{uiButton},f::Ptr{Void},data::Ptr{Void})
    ccall((:uiButtonOnClicked,thelib),Void,(Ptr{uiButton},Ptr{Void},Ptr{Void}),b,f,data)
end

function uiNewButton(text)
    ccall((:uiNewButton,thelib),Ptr{uiButton},(Ptr{UInt8},),text)
end

function uiBoxAppend(b::Ptr{uiBox},child::Ptr{uiControl},stretchy::Integer)
    ccall((:uiBoxAppend,thelib),Void,(Ptr{uiBox},Ptr{uiControl},Cint),b,child,stretchy)
end

function uiBoxDelete(b::Ptr{uiBox},index::Integer)
    ccall((:uiBoxDelete,thelib),Void,(Ptr{uiBox},Culong),b,index)
end

function uiBoxPadded(b::Ptr{uiBox})
    ccall((:uiBoxPadded,thelib),Cint,(Ptr{uiBox},),b)
end

function uiBoxSetPadded(b::Ptr{uiBox},padded::Integer)
    ccall((:uiBoxSetPadded,thelib),Void,(Ptr{uiBox},Cint),b,padded)
end

function uiNewHorizontalBox()
    ccall((:uiNewHorizontalBox,thelib),Ptr{uiBox},())
end

function uiNewVerticalBox()
    ccall((:uiNewVerticalBox,thelib),Ptr{uiBox},())
end

function uiEntryText(e::Ptr{uiEntry})
    ccall((:uiEntryText,thelib),Ptr{UInt8},(Ptr{uiEntry},),e)
end

function uiEntrySetText(e::Ptr{uiEntry},text)
    ccall((:uiEntrySetText,thelib),Void,(Ptr{uiEntry},Ptr{UInt8}),e,text)
end

function uiEntryOnChanged(e::Ptr{uiEntry},f::Ptr{Void},data::Ptr{Void})
    ccall((:uiEntryOnChanged,thelib),Void,(Ptr{uiEntry},Ptr{Void},Ptr{Void}),e,f,data)
end

function uiEntryReadOnly(e::Ptr{uiEntry})
    ccall((:uiEntryReadOnly,thelib),Cint,(Ptr{uiEntry},),e)
end

function uiEntrySetReadOnly(e::Ptr{uiEntry},readonly::Integer)
    ccall((:uiEntrySetReadOnly,thelib),Void,(Ptr{uiEntry},Cint),e,readonly)
end

function uiNewEntry()
    ccall((:uiNewEntry,thelib),Ptr{uiEntry},())
end

function uiCheckboxText(c::Ptr{uiCheckbox})
    ccall((:uiCheckboxText,thelib),Ptr{UInt8},(Ptr{uiCheckbox},),c)
end

function uiCheckboxSetText(c::Ptr{uiCheckbox},text)
    ccall((:uiCheckboxSetText,thelib),Void,(Ptr{uiCheckbox},Ptr{UInt8}),c,text)
end

function uiCheckboxOnToggled(c::Ptr{uiCheckbox},f::Ptr{Void},data::Ptr{Void})
    ccall((:uiCheckboxOnToggled,thelib),Void,(Ptr{uiCheckbox},Ptr{Void},Ptr{Void}),c,f,data)
end

function uiCheckboxChecked(c::Ptr{uiCheckbox})
    ccall((:uiCheckboxChecked,thelib),Cint,(Ptr{uiCheckbox},),c)
end

function uiCheckboxSetChecked(c::Ptr{uiCheckbox},checked::Integer)
    ccall((:uiCheckboxSetChecked,thelib),Void,(Ptr{uiCheckbox},Cint),c,checked)
end

function uiNewCheckbox(text)
    ccall((:uiNewCheckbox,thelib),Ptr{uiCheckbox},(Ptr{UInt8},),text)
end

function uiLabelText(l::Ptr{uiLabel})
    ccall((:uiLabelText,thelib),Ptr{UInt8},(Ptr{uiLabel},),l)
end

function uiLabelSetText(l::Ptr{uiLabel},text)
    ccall((:uiLabelSetText,thelib),Void,(Ptr{uiLabel},Ptr{UInt8}),l,text)
end

function uiNewLabel(text)
    ccall((:uiNewLabel,thelib),Ptr{uiLabel},(Ptr{UInt8},),text)
end

function uiTabAppend(t::Ptr{uiTab},name,c::Ptr{uiControl})
    ccall((:uiTabAppend,thelib),Void,(Ptr{uiTab},Ptr{UInt8},Ptr{uiControl}),t,name,c)
end

function uiTabInsertAt(t::Ptr{uiTab},name,before::Integer,c::Ptr{uiControl})
    ccall((:uiTabInsertAt,thelib),Void,(Ptr{uiTab},Ptr{UInt8},Culong,Ptr{uiControl}),t,name,before,c)
end

function uiTabDelete(t::Ptr{uiTab},index::Integer)
    ccall((:uiTabDelete,thelib),Void,(Ptr{uiTab},Culong),t,index)
end

function uiTabNumPages(t::Ptr{uiTab})
    ccall((:uiTabNumPages,thelib),Culong,(Ptr{uiTab},),t)
end

function uiTabMargined(t::Ptr{uiTab},page::Integer)
    ccall((:uiTabMargined,thelib),Cint,(Ptr{uiTab},Culong),t,page)
end

function uiTabSetMargined(t::Ptr{uiTab},page::Integer,margined::Integer)
    ccall((:uiTabSetMargined,thelib),Void,(Ptr{uiTab},Culong,Cint),t,page,margined)
end

function uiNewTab()
    ccall((:uiNewTab,thelib),Ptr{uiTab},())
end

function uiGroupTitle(g::Ptr{uiGroup})
    ccall((:uiGroupTitle,thelib),Ptr{UInt8},(Ptr{uiGroup},),g)
end

function uiGroupSetTitle(g::Ptr{uiGroup},title)
    ccall((:uiGroupSetTitle,thelib),Void,(Ptr{uiGroup},Ptr{UInt8}),g,title)
end

function uiGroupSetChild(g::Ptr{uiGroup},c::Ptr{uiControl})
    ccall((:uiGroupSetChild,thelib),Void,(Ptr{uiGroup},Ptr{uiControl}),g,c)
end

function uiGroupMargined(g::Ptr{uiGroup})
    ccall((:uiGroupMargined,thelib),Cint,(Ptr{uiGroup},),g)
end

function uiGroupSetMargined(g::Ptr{uiGroup},margined::Integer)
    ccall((:uiGroupSetMargined,thelib),Void,(Ptr{uiGroup},Cint),g,margined)
end

function uiNewGroup(title)
    ccall((:uiNewGroup,thelib),Ptr{uiGroup},(Ptr{UInt8},),title)
end

function uiSpinboxValue(s::Ptr{uiSpinbox})
    ccall((:uiSpinboxValue,thelib),Clong,(Ptr{uiSpinbox},),s)
end

function uiSpinboxSetValue(s::Ptr{uiSpinbox},value::Integer)
    ccall((:uiSpinboxSetValue,thelib),Void,(Ptr{uiSpinbox},Clong),s,value)
end

function uiSpinboxOnChanged(s::Ptr{uiSpinbox},f::Ptr{Void},data::Ptr{Void})
    ccall((:uiSpinboxOnChanged,thelib),Void,(Ptr{uiSpinbox},Ptr{Void},Ptr{Void}),s,f,data)
end

function uiNewSpinbox(min::Integer,max::Integer)
    ccall((:uiNewSpinbox,thelib),Ptr{uiSpinbox},(Clong,Clong),min,max)
end

function uiProgressBarSetValue(p::Ptr{uiProgressBar},n::Integer)
    ccall((:uiProgressBarSetValue,thelib),Void,(Ptr{uiProgressBar},Cint),p,n)
end

function uiNewProgressBar()
    ccall((:uiNewProgressBar,thelib),Ptr{uiProgressBar},())
end

function uiSliderValue(s::Ptr{uiSlider})
    ccall((:uiSliderValue,thelib),Clong,(Ptr{uiSlider},),s)
end

function uiSliderSetValue(s::Ptr{uiSlider},value::Integer)
    ccall((:uiSliderSetValue,thelib),Void,(Ptr{uiSlider},Clong),s,value)
end

function uiSliderOnChanged(s::Ptr{uiSlider},f::Ptr{Void},data::Ptr{Void})
    ccall((:uiSliderOnChanged,thelib),Void,(Ptr{uiSlider},Ptr{Void},Ptr{Void}),s,f,data)
end

function uiNewSlider(min::Integer,max::Integer)
    ccall((:uiNewSlider,thelib),Ptr{uiSlider},(Clong,Clong),min,max)
end

function uiNewHorizontalSeparator()
    ccall((:uiNewHorizontalSeparator,thelib),Ptr{uiSeparator},())
end

function uiComboboxAppend(c::Ptr{uiCombobox},text)
    ccall((:uiComboboxAppend,thelib),Void,(Ptr{uiCombobox},Ptr{UInt8}),c,text)
end

function uiComboboxSelected(c::Ptr{uiCombobox})
    ccall((:uiComboboxSelected,thelib),Clong,(Ptr{uiCombobox},),c)
end

function uiComboboxSetSelected(c::Ptr{uiCombobox},n::Integer)
    ccall((:uiComboboxSetSelected,thelib),Void,(Ptr{uiCombobox},Clong),c,n)
end

function uiComboboxOnSelected(c::Ptr{uiCombobox},f::Ptr{Void},data::Ptr{Void})
    ccall((:uiComboboxOnSelected,thelib),Void,(Ptr{uiCombobox},Ptr{Void},Ptr{Void}),c,f,data)
end

function uiNewCombobox()
    ccall((:uiNewCombobox,thelib),Ptr{uiCombobox},())
end

function uiEditableComboboxAppend(c::Ptr{uiEditableCombobox},text)
    ccall((:uiEditableComboboxAppend,thelib),Void,(Ptr{uiEditableCombobox},Ptr{UInt8}),c,text)
end

function uiEditableComboboxText(c::Ptr{uiEditableCombobox})
    ccall((:uiEditableComboboxText,thelib),Ptr{UInt8},(Ptr{uiEditableCombobox},),c)
end

function uiEditableComboboxSetText(c::Ptr{uiEditableCombobox},text)
    ccall((:uiEditableComboboxSetText,thelib),Void,(Ptr{uiEditableCombobox},Ptr{UInt8}),c,text)
end

function uiEditableComboboxOnChanged(c::Ptr{uiEditableCombobox},f::Ptr{Void},data::Ptr{Void})
    ccall((:uiEditableComboboxOnChanged,thelib),Void,(Ptr{uiEditableCombobox},Ptr{Void},Ptr{Void}),c,f,data)
end

function uiNewEditableCombobox()
    ccall((:uiNewEditableCombobox,thelib),Ptr{uiEditableCombobox},())
end

function uiRadioButtonsAppend(r::Ptr{uiRadioButtons},text)
    ccall((:uiRadioButtonsAppend,thelib),Void,(Ptr{uiRadioButtons},Ptr{UInt8}),r,text)
end

function uiNewRadioButtons()
    ccall((:uiNewRadioButtons,thelib),Ptr{uiRadioButtons},())
end

function uiNewDateTimePicker()
    ccall((:uiNewDateTimePicker,thelib),Ptr{uiDateTimePicker},())
end

function uiNewDatePicker()
    ccall((:uiNewDatePicker,thelib),Ptr{uiDateTimePicker},())
end

function uiNewTimePicker()
    ccall((:uiNewTimePicker,thelib),Ptr{uiDateTimePicker},())
end

function uiMultilineEntryText(e::Ptr{uiMultilineEntry})
    ccall((:uiMultilineEntryText,thelib),Ptr{UInt8},(Ptr{uiMultilineEntry},),e)
end

function uiMultilineEntrySetText(e::Ptr{uiMultilineEntry},text)
    ccall((:uiMultilineEntrySetText,thelib),Void,(Ptr{uiMultilineEntry},Ptr{UInt8}),e,text)
end

function uiMultilineEntryAppend(e::Ptr{uiMultilineEntry},text)
    ccall((:uiMultilineEntryAppend,thelib),Void,(Ptr{uiMultilineEntry},Ptr{UInt8}),e,text)
end

function uiMultilineEntryOnChanged(e::Ptr{uiMultilineEntry},f::Ptr{Void},data::Ptr{Void})
    ccall((:uiMultilineEntryOnChanged,thelib),Void,(Ptr{uiMultilineEntry},Ptr{Void},Ptr{Void}),e,f,data)
end

function uiMultilineEntryReadOnly(e::Ptr{uiMultilineEntry})
    ccall((:uiMultilineEntryReadOnly,thelib),Cint,(Ptr{uiMultilineEntry},),e)
end

function uiMultilineEntrySetReadOnly(e::Ptr{uiMultilineEntry},readonly::Integer)
    ccall((:uiMultilineEntrySetReadOnly,thelib),Void,(Ptr{uiMultilineEntry},Cint),e,readonly)
end

function uiNewMultilineEntry()
    ccall((:uiNewMultilineEntry,thelib),Ptr{uiMultilineEntry},())
end

function uiNewNonWrappingMultilineEntry()
    ccall((:uiNewNonWrappingMultilineEntry,thelib),Ptr{uiMultilineEntry},())
end

function uiMenuItemEnable(m::Ptr{uiMenuItem})
    ccall((:uiMenuItemEnable,thelib),Void,(Ptr{uiMenuItem},),m)
end

function uiMenuItemDisable(m::Ptr{uiMenuItem})
    ccall((:uiMenuItemDisable,thelib),Void,(Ptr{uiMenuItem},),m)
end

function uiMenuItemOnClicked(m::Ptr{uiMenuItem},f::Ptr{Void},data::Ptr{Void})
    ccall((:uiMenuItemOnClicked,thelib),Void,(Ptr{uiMenuItem},Ptr{Void},Ptr{Void}),m,f,data)
end

function uiMenuItemChecked(m::Ptr{uiMenuItem})
    ccall((:uiMenuItemChecked,thelib),Cint,(Ptr{uiMenuItem},),m)
end

function uiMenuItemSetChecked(m::Ptr{uiMenuItem},checked::Integer)
    ccall((:uiMenuItemSetChecked,thelib),Void,(Ptr{uiMenuItem},Cint),m,checked)
end

function uiMenuAppendItem(m::Ptr{uiMenu},name)
    ccall((:uiMenuAppendItem,thelib),Ptr{uiMenuItem},(Ptr{uiMenu},Ptr{UInt8}),m,name)
end

function uiMenuAppendCheckItem(m::Ptr{uiMenu},name)
    ccall((:uiMenuAppendCheckItem,thelib),Ptr{uiMenuItem},(Ptr{uiMenu},Ptr{UInt8}),m,name)
end

function uiMenuAppendQuitItem(m::Ptr{uiMenu})
    ccall((:uiMenuAppendQuitItem,thelib),Ptr{uiMenuItem},(Ptr{uiMenu},),m)
end

function uiMenuAppendPreferencesItem(m::Ptr{uiMenu})
    ccall((:uiMenuAppendPreferencesItem,thelib),Ptr{uiMenuItem},(Ptr{uiMenu},),m)
end

function uiMenuAppendAboutItem(m::Ptr{uiMenu})
    ccall((:uiMenuAppendAboutItem,thelib),Ptr{uiMenuItem},(Ptr{uiMenu},),m)
end

function uiMenuAppendSeparator(m::Ptr{uiMenu})
    ccall((:uiMenuAppendSeparator,thelib),Void,(Ptr{uiMenu},),m)
end

function uiNewMenu(name)
    ccall((:uiNewMenu,thelib),Ptr{uiMenu},(Ptr{UInt8},),name)
end

function uiOpenFile(parent::Ptr{uiWindow})
    ccall((:uiOpenFile,thelib),Ptr{UInt8},(Ptr{uiWindow},),parent)
end

function uiSaveFile(parent::Ptr{uiWindow})
    ccall((:uiSaveFile,thelib),Ptr{UInt8},(Ptr{uiWindow},),parent)
end

function uiMsgBox(parent::Ptr{uiWindow},title,description)
    ccall((:uiMsgBox,thelib),Void,(Ptr{uiWindow},Ptr{UInt8},Ptr{UInt8}),parent,title,description)
end

function uiMsgBoxError(parent::Ptr{uiWindow},title,description)
    ccall((:uiMsgBoxError,thelib),Void,(Ptr{uiWindow},Ptr{UInt8},Ptr{UInt8}),parent,title,description)
end

function uiAreaSetSize(a::Ptr{uiArea},width::Integer,height::Integer)
    ccall((:uiAreaSetSize,thelib),Void,(Ptr{uiArea},Clong,Clong),a,width,height)
end

function uiAreaQueueRedrawAll(a::Ptr{uiArea})
    ccall((:uiAreaQueueRedrawAll,thelib),Void,(Ptr{uiArea},),a)
end

function uiAreaScrollTo(a::Ptr{uiArea},x::Cdouble,y::Cdouble,width::Cdouble,height::Cdouble)
    ccall((:uiAreaScrollTo,thelib),Void,(Ptr{uiArea},Cdouble,Cdouble,Cdouble,Cdouble),a,x,y,width,height)
end

function uiNewArea(ah::Ptr{uiAreaHandler})
    ccall((:uiNewArea,thelib),Ptr{uiArea},(Ptr{uiAreaHandler},),ah)
end

function uiNewScrollingArea(ah::Ptr{uiAreaHandler},width::Integer,height::Integer)
    ccall((:uiNewScrollingArea,thelib),Ptr{uiArea},(Ptr{uiAreaHandler},Clong,Clong),ah,width,height)
end

function uiDrawNewPath(fillMode::uiDrawFillMode)
    ccall((:uiDrawNewPath,thelib),Ptr{uiDrawPath},(uiDrawFillMode,),fillMode)
end

function uiDrawFreePath(p::Ptr{uiDrawPath})
    ccall((:uiDrawFreePath,thelib),Void,(Ptr{uiDrawPath},),p)
end

function uiDrawPathNewFigure(p::Ptr{uiDrawPath},x::Cdouble,y::Cdouble)
    ccall((:uiDrawPathNewFigure,thelib),Void,(Ptr{uiDrawPath},Cdouble,Cdouble),p,x,y)
end

function uiDrawPathNewFigureWithArc(p::Ptr{uiDrawPath},xCenter::Cdouble,yCenter::Cdouble,radius::Cdouble,startAngle::Cdouble,sweep::Cdouble,negative::Integer)
    ccall((:uiDrawPathNewFigureWithArc,thelib),Void,(Ptr{uiDrawPath},Cdouble,Cdouble,Cdouble,Cdouble,Cdouble,Cint),p,xCenter,yCenter,radius,startAngle,sweep,negative)
end

function uiDrawPathLineTo(p::Ptr{uiDrawPath},x::Cdouble,y::Cdouble)
    ccall((:uiDrawPathLineTo,thelib),Void,(Ptr{uiDrawPath},Cdouble,Cdouble),p,x,y)
end

function uiDrawPathArcTo(p::Ptr{uiDrawPath},xCenter::Cdouble,yCenter::Cdouble,radius::Cdouble,startAngle::Cdouble,sweep::Cdouble,negative::Integer)
    ccall((:uiDrawPathArcTo,thelib),Void,(Ptr{uiDrawPath},Cdouble,Cdouble,Cdouble,Cdouble,Cdouble,Cint),p,xCenter,yCenter,radius,startAngle,sweep,negative)
end

function uiDrawPathBezierTo(p::Ptr{uiDrawPath},c1x::Cdouble,c1y::Cdouble,c2x::Cdouble,c2y::Cdouble,endX::Cdouble,endY::Cdouble)
    ccall((:uiDrawPathBezierTo,thelib),Void,(Ptr{uiDrawPath},Cdouble,Cdouble,Cdouble,Cdouble,Cdouble,Cdouble),p,c1x,c1y,c2x,c2y,endX,endY)
end

function uiDrawPathCloseFigure(p::Ptr{uiDrawPath})
    ccall((:uiDrawPathCloseFigure,thelib),Void,(Ptr{uiDrawPath},),p)
end

function uiDrawPathAddRectangle(p::Ptr{uiDrawPath},x::Cdouble,y::Cdouble,width::Cdouble,height::Cdouble)
    ccall((:uiDrawPathAddRectangle,thelib),Void,(Ptr{uiDrawPath},Cdouble,Cdouble,Cdouble,Cdouble),p,x,y,width,height)
end

function uiDrawPathEnd(p::Ptr{uiDrawPath})
    ccall((:uiDrawPathEnd,thelib),Void,(Ptr{uiDrawPath},),p)
end

function uiDrawStroke(c::Ptr{uiDrawContext},path::Ptr{uiDrawPath},b::Ptr{uiDrawBrush},p::Ptr{uiDrawStrokeParams})
    ccall((:uiDrawStroke,thelib),Void,(Ptr{uiDrawContext},Ptr{uiDrawPath},Ptr{uiDrawBrush},Ptr{uiDrawStrokeParams}),c,path,b,p)
end

function uiDrawFill(c::Ptr{uiDrawContext},path::Ptr{uiDrawPath},b::Ptr{uiDrawBrush})
    ccall((:uiDrawFill,thelib),Void,(Ptr{uiDrawContext},Ptr{uiDrawPath},Ptr{uiDrawBrush}),c,path,b)
end

function uiDrawMatrixSetIdentity(m::Ptr{uiDrawMatrix})
    ccall((:uiDrawMatrixSetIdentity,thelib),Void,(Ptr{uiDrawMatrix},),m)
end

function uiDrawMatrixTranslate(m::Ptr{uiDrawMatrix},x::Cdouble,y::Cdouble)
    ccall((:uiDrawMatrixTranslate,thelib),Void,(Ptr{uiDrawMatrix},Cdouble,Cdouble),m,x,y)
end

function uiDrawMatrixScale(m::Ptr{uiDrawMatrix},xCenter::Cdouble,yCenter::Cdouble,x::Cdouble,y::Cdouble)
    ccall((:uiDrawMatrixScale,thelib),Void,(Ptr{uiDrawMatrix},Cdouble,Cdouble,Cdouble,Cdouble),m,xCenter,yCenter,x,y)
end

function uiDrawMatrixRotate(m::Ptr{uiDrawMatrix},x::Cdouble,y::Cdouble,amount::Cdouble)
    ccall((:uiDrawMatrixRotate,thelib),Void,(Ptr{uiDrawMatrix},Cdouble,Cdouble,Cdouble),m,x,y,amount)
end

function uiDrawMatrixSkew(m::Ptr{uiDrawMatrix},x::Cdouble,y::Cdouble,xamount::Cdouble,yamount::Cdouble)
    ccall((:uiDrawMatrixSkew,thelib),Void,(Ptr{uiDrawMatrix},Cdouble,Cdouble,Cdouble,Cdouble),m,x,y,xamount,yamount)
end

function uiDrawMatrixMultiply(dest::Ptr{uiDrawMatrix},src::Ptr{uiDrawMatrix})
    ccall((:uiDrawMatrixMultiply,thelib),Void,(Ptr{uiDrawMatrix},Ptr{uiDrawMatrix}),dest,src)
end

function uiDrawMatrixInvertible(m::Ptr{uiDrawMatrix})
    ccall((:uiDrawMatrixInvertible,thelib),Cint,(Ptr{uiDrawMatrix},),m)
end

function uiDrawMatrixInvert(m::Ptr{uiDrawMatrix})
    ccall((:uiDrawMatrixInvert,thelib),Cint,(Ptr{uiDrawMatrix},),m)
end

function uiDrawMatrixTransformPoint(m::Ptr{uiDrawMatrix},x::Ptr{Cdouble},y::Ptr{Cdouble})
    ccall((:uiDrawMatrixTransformPoint,thelib),Void,(Ptr{uiDrawMatrix},Ptr{Cdouble},Ptr{Cdouble}),m,x,y)
end

function uiDrawMatrixTransformSize(m::Ptr{uiDrawMatrix},x::Ptr{Cdouble},y::Ptr{Cdouble})
    ccall((:uiDrawMatrixTransformSize,thelib),Void,(Ptr{uiDrawMatrix},Ptr{Cdouble},Ptr{Cdouble}),m,x,y)
end

function uiDrawTransform(c::Ptr{uiDrawContext},m::Ptr{uiDrawMatrix})
    ccall((:uiDrawTransform,thelib),Void,(Ptr{uiDrawContext},Ptr{uiDrawMatrix}),c,m)
end

function uiDrawClip(c::Ptr{uiDrawContext},path::Ptr{uiDrawPath})
    ccall((:uiDrawClip,thelib),Void,(Ptr{uiDrawContext},Ptr{uiDrawPath}),c,path)
end

function uiDrawSave(c::Ptr{uiDrawContext})
    ccall((:uiDrawSave,thelib),Void,(Ptr{uiDrawContext},),c)
end

function uiDrawRestore(c::Ptr{uiDrawContext})
    ccall((:uiDrawRestore,thelib),Void,(Ptr{uiDrawContext},),c)
end

function uiDrawListFontFamilies()
    ccall((:uiDrawListFontFamilies,thelib),Ptr{uiDrawFontFamilies},())
end

function uiDrawFontFamiliesNumFamilies(ff::Ptr{uiDrawFontFamilies})
    ccall((:uiDrawFontFamiliesNumFamilies,thelib),Culong,(Ptr{uiDrawFontFamilies},),ff)
end

function uiDrawFontFamiliesFamily(ff::Ptr{uiDrawFontFamilies},n::Integer)
    ccall((:uiDrawFontFamiliesFamily,thelib),Ptr{UInt8},(Ptr{uiDrawFontFamilies},Culong),ff,n)
end

function uiDrawFreeFontFamilies(ff::Ptr{uiDrawFontFamilies})
    ccall((:uiDrawFreeFontFamilies,thelib),Void,(Ptr{uiDrawFontFamilies},),ff)
end

function uiDrawLoadClosestFont(desc::Ptr{uiDrawTextFontDescriptor})
    ccall((:uiDrawLoadClosestFont,thelib),Ptr{uiDrawTextFont},(Ptr{uiDrawTextFontDescriptor},),desc)
end

function uiDrawFreeTextFont(font::Ptr{uiDrawTextFont})
    ccall((:uiDrawFreeTextFont,thelib),Void,(Ptr{uiDrawTextFont},),font)
end

function uiDrawTextFontHandle(font::Ptr{uiDrawTextFont})
    ccall((:uiDrawTextFontHandle,thelib),Csize_t,(Ptr{uiDrawTextFont},),font)
end

function uiDrawTextFontDescribe(font::Ptr{uiDrawTextFont},desc::Ptr{uiDrawTextFontDescriptor})
    ccall((:uiDrawTextFontDescribe,thelib),Void,(Ptr{uiDrawTextFont},Ptr{uiDrawTextFontDescriptor}),font,desc)
end

function uiDrawTextFontGetMetrics(font::Ptr{uiDrawTextFont},metrics::Ptr{uiDrawTextFontMetrics})
    ccall((:uiDrawTextFontGetMetrics,thelib),Void,(Ptr{uiDrawTextFont},Ptr{uiDrawTextFontMetrics}),font,metrics)
end

function uiDrawNewTextLayout(text,defaultFont::Ptr{uiDrawTextFont},width::Cdouble)
    ccall((:uiDrawNewTextLayout,thelib),Ptr{uiDrawTextLayout},(Ptr{UInt8},Ptr{uiDrawTextFont},Cdouble),text,defaultFont,width)
end

function uiDrawFreeTextLayout(layout::Ptr{uiDrawTextLayout})
    ccall((:uiDrawFreeTextLayout,thelib),Void,(Ptr{uiDrawTextLayout},),layout)
end

function uiDrawTextLayoutSetWidth(layout::Ptr{uiDrawTextLayout},width::Cdouble)
    ccall((:uiDrawTextLayoutSetWidth,thelib),Void,(Ptr{uiDrawTextLayout},Cdouble),layout,width)
end

function uiDrawTextLayoutExtents(layout::Ptr{uiDrawTextLayout},width::Ptr{Cdouble},height::Ptr{Cdouble})
    ccall((:uiDrawTextLayoutExtents,thelib),Void,(Ptr{uiDrawTextLayout},Ptr{Cdouble},Ptr{Cdouble}),layout,width,height)
end

function uiDrawTextLayoutSetColor(layout::Ptr{uiDrawTextLayout},startChar::Integer,endChar::Integer,r::Cdouble,g::Cdouble,b::Cdouble,a::Cdouble)
    ccall((:uiDrawTextLayoutSetColor,thelib),Void,(Ptr{uiDrawTextLayout},Clong,Clong,Cdouble,Cdouble,Cdouble,Cdouble),layout,startChar,endChar,r,g,b,a)
end

function uiDrawText(c::Ptr{uiDrawContext},x::Cdouble,y::Cdouble,layout::Ptr{uiDrawTextLayout})
    ccall((:uiDrawText,thelib),Void,(Ptr{uiDrawContext},Cdouble,Cdouble,Ptr{uiDrawTextLayout}),c,x,y,layout)
end

function uiFontButtonFont(b::Ptr{uiFontButton})
    ccall((:uiFontButtonFont,thelib),Ptr{uiDrawTextFont},(Ptr{uiFontButton},),b)
end

function uiFontButtonOnChanged(b::Ptr{uiFontButton},f::Ptr{Void},data::Ptr{Void})
    ccall((:uiFontButtonOnChanged,thelib),Void,(Ptr{uiFontButton},Ptr{Void},Ptr{Void}),b,f,data)
end

function uiNewFontButton()
    ccall((:uiNewFontButton,thelib),Ptr{uiFontButton},())
end

function uiColorButtonColor(b::Ptr{uiColorButton},r::Ptr{Cdouble},g::Ptr{Cdouble},bl::Ptr{Cdouble},a::Ptr{Cdouble})
    ccall((:uiColorButtonColor,thelib),Void,(Ptr{uiColorButton},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble}),b,r,g,bl,a)
end

function uiColorButtonSetColor(b::Ptr{uiColorButton},r::Cdouble,g::Cdouble,bl::Cdouble,a::Cdouble)
    ccall((:uiColorButtonSetColor,thelib),Void,(Ptr{uiColorButton},Cdouble,Cdouble,Cdouble,Cdouble),b,r,g,bl,a)
end

function uiColorButtonOnChanged(b::Ptr{uiColorButton},f::Ptr{Void},data::Ptr{Void})
    ccall((:uiColorButtonOnChanged,thelib),Void,(Ptr{uiColorButton},Ptr{Void},Ptr{Void}),b,f,data)
end

function uiNewColorButton()
    ccall((:uiNewColorButton,thelib),Ptr{uiColorButton},())
end
