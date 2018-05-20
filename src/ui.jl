# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/libui/ui.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0 

function uiInit(options::Ref{uiInitOptions})
	ccall((:uiInit,libui),Ptr{UInt8},(Ptr{uiInitOptions},),options)
end

function uiUninit()
	ccall((:uiUninit,libui),Nothing,())
end

function uiFreeInitError(err)
	ccall((:uiFreeInitError,libui),Nothing,(Ptr{UInt8},),err)
end

function uiMain()
	ccall((:uiMain,libui),Nothing,())
end

function uiMainStep(wait::Integer)
	ccall((:uiMainStep,libui),Cint,(Cint,),wait)
end

function uiQuit()
	ccall((:uiQuit,libui),Nothing,())
end

function uiQueueMain(f::Ptr{Nothing},data::Ptr{Nothing})
	ccall((:uiQueueMain,libui),Nothing,(Ptr{Nothing},Ptr{Nothing}),f,data)
end

function uiOnShouldQuit(f::Ptr{Nothing},data::Ptr{Nothing})
	ccall((:uiOnShouldQuit,libui),Nothing,(Ptr{Nothing},Ptr{Nothing}),f,data)
end

function uiFreeText(text)
	ccall((:uiFreeText,libui),Nothing,(Ptr{UInt8},),text)
end

function uiControlDestroy(arg1::Ptr{uiControl})
	ccall((:uiControlDestroy,libui),Nothing,(Ptr{uiControl},),arg1)
end

function uiControlHandle(arg1::Ptr{uiControl})
	ccall((:uiControlHandle,libui),Csize_t,(Ptr{uiControl},),arg1)
end

function uiControlParent(arg1::Ptr{uiControl})
	ccall((:uiControlParent,libui),Ptr{uiControl},(Ptr{uiControl},),arg1)
end

function uiControlSetParent(arg1::Ptr{uiControl},arg2::Ptr{uiControl})
	ccall((:uiControlSetParent,libui),Nothing,(Ptr{uiControl},Ptr{uiControl}),arg1,arg2)
end

function uiControlToplevel(arg1::Ptr{uiControl})
	ccall((:uiControlToplevel,libui),Cint,(Ptr{uiControl},),arg1)
end

function uiControlVisible(arg1::Ptr{uiControl})
	ccall((:uiControlVisible,libui),Cint,(Ptr{uiControl},),arg1)
end

function uiControlShow(arg1::Ptr{uiControl})
	ccall((:uiControlShow,libui),Nothing,(Ptr{uiControl},),arg1)
end

function uiControlHide(arg1::Ptr{uiControl})
	ccall((:uiControlHide,libui),Nothing,(Ptr{uiControl},),arg1)
end

function uiControlEnabled(arg1::Ptr{uiControl})
	ccall((:uiControlEnabled,libui),Cint,(Ptr{uiControl},),arg1)
end

function uiControlEnable(arg1::Ptr{uiControl})
	ccall((:uiControlEnable,libui),Nothing,(Ptr{uiControl},),arg1)
end

function uiControlDisable(arg1::Ptr{uiControl})
	ccall((:uiControlDisable,libui),Nothing,(Ptr{uiControl},),arg1)
end

function uiAllocControl(n::Csize_t,OSsig::Integer,typesig::UInt32,typenamestr)
	ccall((:uiAllocControl,libui),Ptr{uiControl},(Csize_t,UInt32,UInt32,Ptr{UInt8}),n,OSsig,typesig,typenamestr)
end

function uiFreeControl(arg1::Ptr{uiControl})
	ccall((:uiFreeControl,libui),Nothing,(Ptr{uiControl},),arg1)
end

function uiControlVerifySetParent(arg1::Ptr{uiControl},arg2::Ptr{uiControl})
	ccall((:uiControlVerifySetParent,libui),Nothing,(Ptr{uiControl},Ptr{uiControl}),arg1,arg2)
end

function uiControlEnabledToUser(arg1::Ptr{uiControl})
	ccall((:uiControlEnabledToUser,libui),Cint,(Ptr{uiControl},),arg1)
end

function uiUserBugCannotSetParentOnToplevel(_type)
	ccall((:uiUserBugCannotSetParentOnToplevel,libui),Nothing,(Ptr{UInt8},),_type)
end

function uiWindowTitle(w::Ptr{uiWindow})
	ccall((:uiWindowTitle,libui),Ptr{UInt8},(Ptr{uiWindow},),w)
end

function uiWindowSetTitle(w::Ptr{uiWindow},title)
	ccall((:uiWindowSetTitle,libui),Nothing,(Ptr{uiWindow},Ptr{UInt8}),w,title)
end

function uiWindowOnClosing(w::Ptr{uiWindow},f::Ptr{Nothing},data::Ptr{Nothing})
	ccall((:uiWindowOnClosing,libui),Nothing,(Ptr{uiWindow},Ptr{Nothing},Ptr{Nothing}),w,f,data)
end

function uiWindowSetChild(w::Ptr{uiWindow},child::Ptr{uiControl})
	ccall((:uiWindowSetChild,libui),Nothing,(Ptr{uiWindow},Ptr{uiControl}),w,child)
end

function uiWindowMargined(w::Ptr{uiWindow})
	ccall((:uiWindowMargined,libui),Cint,(Ptr{uiWindow},),w)
end

function uiWindowSetMargined(w::Ptr{uiWindow},margined::Integer)
	ccall((:uiWindowSetMargined,libui),Nothing,(Ptr{uiWindow},Cint),w,margined)
end

function uiNewWindow(title,width::Integer,height::Integer,hasMenubar::Integer)
	ccall((:uiNewWindow,libui),Ptr{uiWindow},(Ptr{UInt8},Cint,Cint,Cint),title,width,height,hasMenubar)
end

function uiButtonText(b::Ptr{uiButton})
	ccall((:uiButtonText,libui),Ptr{UInt8},(Ptr{uiButton},),b)
end

function uiButtonSetText(b::Ptr{uiButton},text)
	ccall((:uiButtonSetText,libui),Nothing,(Ptr{uiButton},Ptr{UInt8}),b,text)
end

function uiButtonOnClicked(b::Ptr{uiButton},f::Ptr{Nothing},data::Ptr{Nothing})
	ccall((:uiButtonOnClicked,libui),Nothing,(Ptr{uiButton},Ptr{Nothing},Ptr{Nothing}),b,f,data)
end

function uiNewButton(text)
	ccall((:uiNewButton,libui),Ptr{uiButton},(Ptr{UInt8},),text)
end

function uiBoxAppend(b::Ptr{uiBox},child::Ptr{uiControl},stretchy::Integer)
	ccall((:uiBoxAppend,libui),Nothing,(Ptr{uiBox},Ptr{uiControl},Cint),b,child,stretchy)
end

function uiBoxDelete(b::Ptr{uiBox},index::Integer)
	ccall((:uiBoxDelete,libui),Nothing,(Ptr{uiBox},Culong),b,index)
end

function uiBoxPadded(b::Ptr{uiBox})
	ccall((:uiBoxPadded,libui),Cint,(Ptr{uiBox},),b)
end

function uiBoxSetPadded(b::Ptr{uiBox},padded::Integer)
	ccall((:uiBoxSetPadded,libui),Nothing,(Ptr{uiBox},Cint),b,padded)
end

function uiNewHorizontalBox()
	ccall((:uiNewHorizontalBox,libui),Ptr{uiBox},())
end

function uiNewVerticalBox()
	ccall((:uiNewVerticalBox,libui),Ptr{uiBox},())
end

function uiEntryText(e::Ptr{uiEntry})
	ccall((:uiEntryText,libui),Ptr{UInt8},(Ptr{uiEntry},),e)
end

function uiEntrySetText(e::Ptr{uiEntry},text)
	ccall((:uiEntrySetText,libui),Nothing,(Ptr{uiEntry},Ptr{UInt8}),e,text)
end

function uiEntryOnChanged(e::Ptr{uiEntry},f::Ptr{Nothing},data::Ptr{Nothing})
	ccall((:uiEntryOnChanged,libui),Nothing,(Ptr{uiEntry},Ptr{Nothing},Ptr{Nothing}),e,f,data)
end

function uiEntryReadOnly(e::Ptr{uiEntry})
	ccall((:uiEntryReadOnly,libui),Cint,(Ptr{uiEntry},),e)
end

function uiEntrySetReadOnly(e::Ptr{uiEntry},readonly::Integer)
	ccall((:uiEntrySetReadOnly,libui),Nothing,(Ptr{uiEntry},Cint),e,readonly)
end

function uiNewEntry()
	ccall((:uiNewEntry,libui),Ptr{uiEntry},())
end

function uiCheckboxText(c::Ptr{uiCheckbox})
	ccall((:uiCheckboxText,libui),Ptr{UInt8},(Ptr{uiCheckbox},),c)
end

function uiCheckboxSetText(c::Ptr{uiCheckbox},text)
	ccall((:uiCheckboxSetText,libui),Nothing,(Ptr{uiCheckbox},Ptr{UInt8}),c,text)
end

function uiCheckboxOnToggled(c::Ptr{uiCheckbox},f::Ptr{Nothing},data::Ptr{Nothing})
	ccall((:uiCheckboxOnToggled,libui),Nothing,(Ptr{uiCheckbox},Ptr{Nothing},Ptr{Nothing}),c,f,data)
end

function uiCheckboxChecked(c::Ptr{uiCheckbox})
	ccall((:uiCheckboxChecked,libui),Cint,(Ptr{uiCheckbox},),c)
end

function uiCheckboxSetChecked(c::Ptr{uiCheckbox},checked::Integer)
	ccall((:uiCheckboxSetChecked,libui),Nothing,(Ptr{uiCheckbox},Cint),c,checked)
end

function uiNewCheckbox(text)
	ccall((:uiNewCheckbox,libui),Ptr{uiCheckbox},(Ptr{UInt8},),text)
end

function uiLabelText(l::Ptr{uiLabel})
	ccall((:uiLabelText,libui),Ptr{UInt8},(Ptr{uiLabel},),l)
end

function uiLabelSetText(l::Ptr{uiLabel},text)
	ccall((:uiLabelSetText,libui),Nothing,(Ptr{uiLabel},Ptr{UInt8}),l,text)
end

function uiNewLabel(text)
	ccall((:uiNewLabel,libui),Ptr{uiLabel},(Ptr{UInt8},),text)
end

function uiTabAppend(t::Ptr{uiTab},name,c::Ptr{uiControl})
	ccall((:uiTabAppend,libui),Nothing,(Ptr{uiTab},Ptr{UInt8},Ptr{uiControl}),t,name,c)
end

function uiTabInsertAt(t::Ptr{uiTab},name,before::Integer,c::Ptr{uiControl})
	ccall((:uiTabInsertAt,libui),Nothing,(Ptr{uiTab},Ptr{UInt8},Culong,Ptr{uiControl}),t,name,before,c)
end

function uiTabDelete(t::Ptr{uiTab},index::Integer)
	ccall((:uiTabDelete,libui),Nothing,(Ptr{uiTab},Culong),t,index)
end

function uiTabNumPages(t::Ptr{uiTab})
	ccall((:uiTabNumPages,libui),Culong,(Ptr{uiTab},),t)
end

function uiTabMargined(t::Ptr{uiTab},page::Integer)
	ccall((:uiTabMargined,libui),Cint,(Ptr{uiTab},Culong),t,page)
end

function uiTabSetMargined(t::Ptr{uiTab},page::Integer,margined::Integer)
	ccall((:uiTabSetMargined,libui),Nothing,(Ptr{uiTab},Culong,Cint),t,page,margined)
end

function uiNewTab()
	ccall((:uiNewTab,libui),Ptr{uiTab},())
end

function uiGroupTitle(g::Ptr{uiGroup})
	ccall((:uiGroupTitle,libui),Ptr{UInt8},(Ptr{uiGroup},),g)
end

function uiGroupSetTitle(g::Ptr{uiGroup},title)
	ccall((:uiGroupSetTitle,libui),Nothing,(Ptr{uiGroup},Ptr{UInt8}),g,title)
end

function uiGroupSetChild(g::Ptr{uiGroup},c::Ptr{uiControl})
	ccall((:uiGroupSetChild,libui),Nothing,(Ptr{uiGroup},Ptr{uiControl}),g,c)
end

function uiGroupMargined(g::Ptr{uiGroup})
	ccall((:uiGroupMargined,libui),Cint,(Ptr{uiGroup},),g)
end

function uiGroupSetMargined(g::Ptr{uiGroup},margined::Integer)
	ccall((:uiGroupSetMargined,libui),Nothing,(Ptr{uiGroup},Cint),g,margined)
end

function uiNewGroup(title)
	ccall((:uiNewGroup,libui),Ptr{uiGroup},(Ptr{UInt8},),title)
end

function uiSpinboxValue(s::Ptr{uiSpinbox})
	ccall((:uiSpinboxValue,libui),Clong,(Ptr{uiSpinbox},),s)
end

function uiSpinboxSetValue(s::Ptr{uiSpinbox},value::Integer)
	ccall((:uiSpinboxSetValue,libui),Nothing,(Ptr{uiSpinbox},Clong),s,value)
end

function uiSpinboxOnChanged(s::Ptr{uiSpinbox},f::Ptr{Nothing},data::Ptr{Nothing})
	ccall((:uiSpinboxOnChanged,libui),Nothing,(Ptr{uiSpinbox},Ptr{Nothing},Ptr{Nothing}),s,f,data)
end

function uiNewSpinbox(min::Integer,max::Integer)
	ccall((:uiNewSpinbox,libui),Ptr{uiSpinbox},(Clong,Clong),min,max)
end

function uiProgressBarSetValue(p::Ptr{uiProgressBar},n::Integer)
	ccall((:uiProgressBarSetValue,libui),Nothing,(Ptr{uiProgressBar},Cint),p,n)
end

function uiNewProgressBar()
	ccall((:uiNewProgressBar,libui),Ptr{uiProgressBar},())
end

function uiSliderValue(s::Ptr{uiSlider})
	ccall((:uiSliderValue,libui),Clong,(Ptr{uiSlider},),s)
end

function uiSliderSetValue(s::Ptr{uiSlider},value::Integer)
	ccall((:uiSliderSetValue,libui),Nothing,(Ptr{uiSlider},Clong),s,value)
end

function uiSliderOnChanged(s::Ptr{uiSlider},f::Ptr{Nothing},data::Ptr{Nothing})
	ccall((:uiSliderOnChanged,libui),Nothing,(Ptr{uiSlider},Ptr{Nothing},Ptr{Nothing}),s,f,data)
end

function uiNewSlider(min::Integer,max::Integer)
	ccall((:uiNewSlider,libui),Ptr{uiSlider},(Clong,Clong),min,max)
end

function uiNewHorizontalSeparator()
	ccall((:uiNewHorizontalSeparator,libui),Ptr{uiSeparator},())
end

function uiComboboxAppend(c::Ptr{uiCombobox},text)
	ccall((:uiComboboxAppend,libui),Nothing,(Ptr{uiCombobox},Ptr{UInt8}),c,text)
end

function uiComboboxSelected(c::Ptr{uiCombobox})
	ccall((:uiComboboxSelected,libui),Clong,(Ptr{uiCombobox},),c)
end

function uiComboboxSetSelected(c::Ptr{uiCombobox},n::Integer)
	ccall((:uiComboboxSetSelected,libui),Nothing,(Ptr{uiCombobox},Clong),c,n)
end

function uiComboboxOnSelected(c::Ptr{uiCombobox},f::Ptr{Nothing},data::Ptr{Nothing})
	ccall((:uiComboboxOnSelected,libui),Nothing,(Ptr{uiCombobox},Ptr{Nothing},Ptr{Nothing}),c,f,data)
end

function uiNewCombobox()
	ccall((:uiNewCombobox,libui),Ptr{uiCombobox},())
end

function uiEditableComboboxAppend(c::Ptr{uiEditableCombobox},text)
	ccall((:uiEditableComboboxAppend,libui),Nothing,(Ptr{uiEditableCombobox},Ptr{UInt8}),c,text)
end

function uiEditableComboboxText(c::Ptr{uiEditableCombobox})
	ccall((:uiEditableComboboxText,libui),Ptr{UInt8},(Ptr{uiEditableCombobox},),c)
end

function uiEditableComboboxSetText(c::Ptr{uiEditableCombobox},text)
	ccall((:uiEditableComboboxSetText,libui),Nothing,(Ptr{uiEditableCombobox},Ptr{UInt8}),c,text)
end

function uiEditableComboboxOnChanged(c::Ptr{uiEditableCombobox},f::Ptr{Nothing},data::Ptr{Nothing})
	ccall((:uiEditableComboboxOnChanged,libui),Nothing,(Ptr{uiEditableCombobox},Ptr{Nothing},Ptr{Nothing}),c,f,data)
end

function uiNewEditableCombobox()
	ccall((:uiNewEditableCombobox,libui),Ptr{uiEditableCombobox},())
end

function uiRadioButtonsAppend(r::Ptr{uiRadioButtons},text)
	ccall((:uiRadioButtonsAppend,libui),Nothing,(Ptr{uiRadioButtons},Ptr{UInt8}),r,text)
end

function uiNewRadioButtons()
	ccall((:uiNewRadioButtons,libui),Ptr{uiRadioButtons},())
end

function uiNewDateTimePicker()
	ccall((:uiNewDateTimePicker,libui),Ptr{uiDateTimePicker},())
end

function uiNewDatePicker()
	ccall((:uiNewDatePicker,libui),Ptr{uiDateTimePicker},())
end

function uiNewTimePicker()
	ccall((:uiNewTimePicker,libui),Ptr{uiDateTimePicker},())
end

function uiMultilineEntryText(e::Ptr{uiMultilineEntry})
	ccall((:uiMultilineEntryText,libui),Ptr{UInt8},(Ptr{uiMultilineEntry},),e)
end

function uiMultilineEntrySetText(e::Ptr{uiMultilineEntry},text)
	ccall((:uiMultilineEntrySetText,libui),Nothing,(Ptr{uiMultilineEntry},Ptr{UInt8}),e,text)
end

function uiMultilineEntryAppend(e::Ptr{uiMultilineEntry},text)
	ccall((:uiMultilineEntryAppend,libui),Nothing,(Ptr{uiMultilineEntry},Ptr{UInt8}),e,text)
end

function uiMultilineEntryOnChanged(e::Ptr{uiMultilineEntry},f::Ptr{Nothing},data::Ptr{Nothing})
	ccall((:uiMultilineEntryOnChanged,libui),Nothing,(Ptr{uiMultilineEntry},Ptr{Nothing},Ptr{Nothing}),e,f,data)
end

function uiMultilineEntryReadOnly(e::Ptr{uiMultilineEntry})
	ccall((:uiMultilineEntryReadOnly,libui),Cint,(Ptr{uiMultilineEntry},),e)
end

function uiMultilineEntrySetReadOnly(e::Ptr{uiMultilineEntry},readonly::Integer)
	ccall((:uiMultilineEntrySetReadOnly,libui),Nothing,(Ptr{uiMultilineEntry},Cint),e,readonly)
end

function uiNewMultilineEntry()
	ccall((:uiNewMultilineEntry,libui),Ptr{uiMultilineEntry},())
end

function uiNewNonWrappingMultilineEntry()
	ccall((:uiNewNonWrappingMultilineEntry,libui),Ptr{uiMultilineEntry},())
end

function uiMenuItemEnable(m::Ptr{uiMenuItem})
	ccall((:uiMenuItemEnable,libui),Nothing,(Ptr{uiMenuItem},),m)
end

function uiMenuItemDisable(m::Ptr{uiMenuItem})
	ccall((:uiMenuItemDisable,libui),Nothing,(Ptr{uiMenuItem},),m)
end

function uiMenuItemOnClicked(m::Ptr{uiMenuItem},f::Ptr{Nothing},data::Ptr{Nothing})
	ccall((:uiMenuItemOnClicked,libui),Nothing,(Ptr{uiMenuItem},Ptr{Nothing},Ptr{Nothing}),m,f,data)
end

function uiMenuItemChecked(m::Ptr{uiMenuItem})
	ccall((:uiMenuItemChecked,libui),Cint,(Ptr{uiMenuItem},),m)
end

function uiMenuItemSetChecked(m::Ptr{uiMenuItem},checked::Integer)
	ccall((:uiMenuItemSetChecked,libui),Nothing,(Ptr{uiMenuItem},Cint),m,checked)
end

function uiMenuAppendItem(m::Ptr{uiMenu},name)
	ccall((:uiMenuAppendItem,libui),Ptr{uiMenuItem},(Ptr{uiMenu},Ptr{UInt8}),m,name)
end

function uiMenuAppendCheckItem(m::Ptr{uiMenu},name)
	ccall((:uiMenuAppendCheckItem,libui),Ptr{uiMenuItem},(Ptr{uiMenu},Ptr{UInt8}),m,name)
end

function uiMenuAppendQuitItem(m::Ptr{uiMenu})
	ccall((:uiMenuAppendQuitItem,libui),Ptr{uiMenuItem},(Ptr{uiMenu},),m)
end

function uiMenuAppendPreferencesItem(m::Ptr{uiMenu})
	ccall((:uiMenuAppendPreferencesItem,libui),Ptr{uiMenuItem},(Ptr{uiMenu},),m)
end

function uiMenuAppendAboutItem(m::Ptr{uiMenu})
	ccall((:uiMenuAppendAboutItem,libui),Ptr{uiMenuItem},(Ptr{uiMenu},),m)
end

function uiMenuAppendSeparator(m::Ptr{uiMenu})
	ccall((:uiMenuAppendSeparator,libui),Nothing,(Ptr{uiMenu},),m)
end

function uiNewMenu(name)
	ccall((:uiNewMenu,libui),Ptr{uiMenu},(Ptr{UInt8},),name)
end

function uiOpenFile(parent::Ptr{uiWindow})
	ccall((:uiOpenFile,libui),Ptr{UInt8},(Ptr{uiWindow},),parent)
end

function uiSaveFile(parent::Ptr{uiWindow})
	ccall((:uiSaveFile,libui),Ptr{UInt8},(Ptr{uiWindow},),parent)
end

function uiMsgBox(parent::Ptr{uiWindow},title,description)
	ccall((:uiMsgBox,libui),Nothing,(Ptr{uiWindow},Ptr{UInt8},Ptr{UInt8}),parent,title,description)
end

function uiMsgBoxError(parent::Ptr{uiWindow},title,description)
	ccall((:uiMsgBoxError,libui),Nothing,(Ptr{uiWindow},Ptr{UInt8},Ptr{UInt8}),parent,title,description)
end

function uiAreaSetSize(a::Ptr{uiArea},width::Integer,height::Integer)
	ccall((:uiAreaSetSize,libui),Nothing,(Ptr{uiArea},Clong,Clong),a,width,height)
end

function uiAreaQueueRedrawAll(a::Ptr{uiArea})
	ccall((:uiAreaQueueRedrawAll,libui),Nothing,(Ptr{uiArea},),a)
end

function uiAreaScrollTo(a::Ptr{uiArea},x::Cdouble,y::Cdouble,width::Cdouble,height::Cdouble)
	ccall((:uiAreaScrollTo,libui),Nothing,(Ptr{uiArea},Cdouble,Cdouble,Cdouble,Cdouble),a,x,y,width,height)
end

function uiNewArea(ah::Ptr{uiAreaHandler})
	ccall((:uiNewArea,libui),Ptr{uiArea},(Ptr{uiAreaHandler},),ah)
end

function uiNewScrollingArea(ah::Ptr{uiAreaHandler},width::Integer,height::Integer)
	ccall((:uiNewScrollingArea,libui),Ptr{uiArea},(Ptr{uiAreaHandler},Clong,Clong),ah,width,height)
end

function uiDrawNewPath(fillMode::uiDrawFillMode)
	ccall((:uiDrawNewPath,libui),Ptr{uiDrawPath},(uiDrawFillMode,),fillMode)
end

function uiDrawFreePath(p::Ptr{uiDrawPath})
	ccall((:uiDrawFreePath,libui),Nothing,(Ptr{uiDrawPath},),p)
end

function uiDrawPathNewFigure(p::Ptr{uiDrawPath},x::Cdouble,y::Cdouble)
	ccall((:uiDrawPathNewFigure,libui),Nothing,(Ptr{uiDrawPath},Cdouble,Cdouble),p,x,y)
end

function uiDrawPathNewFigureWithArc(p::Ptr{uiDrawPath},xCenter::Cdouble,yCenter::Cdouble,radius::Cdouble,startAngle::Cdouble,sweep::Cdouble,negative::Integer)
	ccall((:uiDrawPathNewFigureWithArc,libui),Nothing,(Ptr{uiDrawPath},Cdouble,Cdouble,Cdouble,Cdouble,Cdouble,Cint),p,xCenter,yCenter,radius,startAngle,sweep,negative)
end

function uiDrawPathLineTo(p::Ptr{uiDrawPath},x::Cdouble,y::Cdouble)
	ccall((:uiDrawPathLineTo,libui),Nothing,(Ptr{uiDrawPath},Cdouble,Cdouble),p,x,y)
end

function uiDrawPathArcTo(p::Ptr{uiDrawPath},xCenter::Cdouble,yCenter::Cdouble,radius::Cdouble,startAngle::Cdouble,sweep::Cdouble,negative::Integer)
	ccall((:uiDrawPathArcTo,libui),Nothing,(Ptr{uiDrawPath},Cdouble,Cdouble,Cdouble,Cdouble,Cdouble,Cint),p,xCenter,yCenter,radius,startAngle,sweep,negative)
end

function uiDrawPathBezierTo(p::Ptr{uiDrawPath},c1x::Cdouble,c1y::Cdouble,c2x::Cdouble,c2y::Cdouble,endX::Cdouble,endY::Cdouble)
	ccall((:uiDrawPathBezierTo,libui),Nothing,(Ptr{uiDrawPath},Cdouble,Cdouble,Cdouble,Cdouble,Cdouble,Cdouble),p,c1x,c1y,c2x,c2y,endX,endY)
end

function uiDrawPathCloseFigure(p::Ptr{uiDrawPath})
	ccall((:uiDrawPathCloseFigure,libui),Nothing,(Ptr{uiDrawPath},),p)
end

function uiDrawPathAddRectangle(p::Ptr{uiDrawPath},x::Cdouble,y::Cdouble,width::Cdouble,height::Cdouble)
	ccall((:uiDrawPathAddRectangle,libui),Nothing,(Ptr{uiDrawPath},Cdouble,Cdouble,Cdouble,Cdouble),p,x,y,width,height)
end

function uiDrawPathEnd(p::Ptr{uiDrawPath})
	ccall((:uiDrawPathEnd,libui),Nothing,(Ptr{uiDrawPath},),p)
end

function uiDrawStroke(c::Ptr{uiDrawContext},path::Ptr{uiDrawPath},b::Ptr{uiDrawBrush},p::Ptr{uiDrawStrokeParams})
	ccall((:uiDrawStroke,libui),Nothing,(Ptr{uiDrawContext},Ptr{uiDrawPath},Ptr{uiDrawBrush},Ptr{uiDrawStrokeParams}),c,path,b,p)
end

function uiDrawFill(c::Ptr{uiDrawContext},path::Ptr{uiDrawPath},b::Ptr{uiDrawBrush})
	ccall((:uiDrawFill,libui),Nothing,(Ptr{uiDrawContext},Ptr{uiDrawPath},Ptr{uiDrawBrush}),c,path,b)
end

function uiDrawMatrixSetIdentity(m::Ptr{uiDrawMatrix})
	ccall((:uiDrawMatrixSetIdentity,libui),Nothing,(Ptr{uiDrawMatrix},),m)
end

function uiDrawMatrixTranslate(m::Ptr{uiDrawMatrix},x::Cdouble,y::Cdouble)
	ccall((:uiDrawMatrixTranslate,libui),Nothing,(Ptr{uiDrawMatrix},Cdouble,Cdouble),m,x,y)
end

function uiDrawMatrixScale(m::Ptr{uiDrawMatrix},xCenter::Cdouble,yCenter::Cdouble,x::Cdouble,y::Cdouble)
	ccall((:uiDrawMatrixScale,libui),Nothing,(Ptr{uiDrawMatrix},Cdouble,Cdouble,Cdouble,Cdouble),m,xCenter,yCenter,x,y)
end

function uiDrawMatrixRotate(m::Ptr{uiDrawMatrix},x::Cdouble,y::Cdouble,amount::Cdouble)
	ccall((:uiDrawMatrixRotate,libui),Nothing,(Ptr{uiDrawMatrix},Cdouble,Cdouble,Cdouble),m,x,y,amount)
end

function uiDrawMatrixSkew(m::Ptr{uiDrawMatrix},x::Cdouble,y::Cdouble,xamount::Cdouble,yamount::Cdouble)
	ccall((:uiDrawMatrixSkew,libui),Nothing,(Ptr{uiDrawMatrix},Cdouble,Cdouble,Cdouble,Cdouble),m,x,y,xamount,yamount)
end

function uiDrawMatrixMultiply(dest::Ptr{uiDrawMatrix},src::Ptr{uiDrawMatrix})
	ccall((:uiDrawMatrixMultiply,libui),Nothing,(Ptr{uiDrawMatrix},Ptr{uiDrawMatrix}),dest,src)
end

function uiDrawMatrixInvertible(m::Ptr{uiDrawMatrix})
	ccall((:uiDrawMatrixInvertible,libui),Cint,(Ptr{uiDrawMatrix},),m)
end

function uiDrawMatrixInvert(m::Ptr{uiDrawMatrix})
	ccall((:uiDrawMatrixInvert,libui),Cint,(Ptr{uiDrawMatrix},),m)
end

function uiDrawMatrixTransformPoint(m::Ptr{uiDrawMatrix},x::Ptr{Cdouble},y::Ptr{Cdouble})
	ccall((:uiDrawMatrixTransformPoint,libui),Nothing,(Ptr{uiDrawMatrix},Ptr{Cdouble},Ptr{Cdouble}),m,x,y)
end

function uiDrawMatrixTransformSize(m::Ptr{uiDrawMatrix},x::Ptr{Cdouble},y::Ptr{Cdouble})
	ccall((:uiDrawMatrixTransformSize,libui),Nothing,(Ptr{uiDrawMatrix},Ptr{Cdouble},Ptr{Cdouble}),m,x,y)
end

function uiDrawTransform(c::Ptr{uiDrawContext},m::Ptr{uiDrawMatrix})
	ccall((:uiDrawTransform,libui),Nothing,(Ptr{uiDrawContext},Ptr{uiDrawMatrix}),c,m)
end

function uiDrawClip(c::Ptr{uiDrawContext},path::Ptr{uiDrawPath})
	ccall((:uiDrawClip,libui),Nothing,(Ptr{uiDrawContext},Ptr{uiDrawPath}),c,path)
end

function uiDrawSave(c::Ptr{uiDrawContext})
	ccall((:uiDrawSave,libui),Nothing,(Ptr{uiDrawContext},),c)
end

function uiDrawRestore(c::Ptr{uiDrawContext})
	ccall((:uiDrawRestore,libui),Nothing,(Ptr{uiDrawContext},),c)
end

function uiDrawListFontFamilies()
	ccall((:uiDrawListFontFamilies,libui),Ptr{uiDrawFontFamilies},())
end

function uiDrawFontFamiliesNumFamilies(ff::Ptr{uiDrawFontFamilies})
	ccall((:uiDrawFontFamiliesNumFamilies,libui),Culong,(Ptr{uiDrawFontFamilies},),ff)
end

function uiDrawFontFamiliesFamily(ff::Ptr{uiDrawFontFamilies},n::Integer)
	ccall((:uiDrawFontFamiliesFamily,libui),Ptr{UInt8},(Ptr{uiDrawFontFamilies},Culong),ff,n)
end

function uiDrawFreeFontFamilies(ff::Ptr{uiDrawFontFamilies})
	ccall((:uiDrawFreeFontFamilies,libui),Nothing,(Ptr{uiDrawFontFamilies},),ff)
end

function uiDrawLoadClosestFont(desc::Ptr{uiDrawTextFontDescriptor})
	ccall((:uiDrawLoadClosestFont,libui),Ptr{uiDrawTextFont},(Ptr{uiDrawTextFontDescriptor},),desc)
end

function uiDrawFreeTextFont(font::Ptr{uiDrawTextFont})
	ccall((:uiDrawFreeTextFont,libui),Nothing,(Ptr{uiDrawTextFont},),font)
end

function uiDrawTextFontHandle(font::Ptr{uiDrawTextFont})
	ccall((:uiDrawTextFontHandle,libui),Csize_t,(Ptr{uiDrawTextFont},),font)
end

function uiDrawTextFontDescribe(font::Ptr{uiDrawTextFont},desc::Ptr{uiDrawTextFontDescriptor})
	ccall((:uiDrawTextFontDescribe,libui),Nothing,(Ptr{uiDrawTextFont},Ptr{uiDrawTextFontDescriptor}),font,desc)
end

function uiDrawTextFontGetMetrics(font::Ptr{uiDrawTextFont},metrics::Ptr{uiDrawTextFontMetrics})
	ccall((:uiDrawTextFontGetMetrics,libui),Nothing,(Ptr{uiDrawTextFont},Ptr{uiDrawTextFontMetrics}),font,metrics)
end

function uiDrawNewTextLayout(text,defaultFont::Ptr{uiDrawTextFont},width::Cdouble)
	ccall((:uiDrawNewTextLayout,libui),Ptr{uiDrawTextLayout},(Ptr{UInt8},Ptr{uiDrawTextFont},Cdouble),text,defaultFont,width)
end

function uiDrawFreeTextLayout(layout::Ptr{uiDrawTextLayout})
	ccall((:uiDrawFreeTextLayout,libui),Nothing,(Ptr{uiDrawTextLayout},),layout)
end

function uiDrawTextLayoutSetWidth(layout::Ptr{uiDrawTextLayout},width::Cdouble)
	ccall((:uiDrawTextLayoutSetWidth,libui),Nothing,(Ptr{uiDrawTextLayout},Cdouble),layout,width)
end

function uiDrawTextLayoutExtents(layout::Ptr{uiDrawTextLayout},width::Ptr{Cdouble},height::Ptr{Cdouble})
	ccall((:uiDrawTextLayoutExtents,libui),Nothing,(Ptr{uiDrawTextLayout},Ptr{Cdouble},Ptr{Cdouble}),layout,width,height)
end

function uiDrawTextLayoutSetColor(layout::Ptr{uiDrawTextLayout},startChar::Integer,endChar::Integer,r::Cdouble,g::Cdouble,b::Cdouble,a::Cdouble)
	ccall((:uiDrawTextLayoutSetColor,libui),Nothing,(Ptr{uiDrawTextLayout},Clong,Clong,Cdouble,Cdouble,Cdouble,Cdouble),layout,startChar,endChar,r,g,b,a)
end

function uiDrawText(c::Ptr{uiDrawContext},x::Cdouble,y::Cdouble,layout::Ptr{uiDrawTextLayout})
	ccall((:uiDrawText,libui),Nothing,(Ptr{uiDrawContext},Cdouble,Cdouble,Ptr{uiDrawTextLayout}),c,x,y,layout)
end

function uiFontButtonFont(b::Ptr{uiFontButton})
	ccall((:uiFontButtonFont,libui),Ptr{uiDrawTextFont},(Ptr{uiFontButton},),b)
end

function uiFontButtonOnChanged(b::Ptr{uiFontButton},f::Ptr{Nothing},data::Ptr{Nothing})
	ccall((:uiFontButtonOnChanged,libui),Nothing,(Ptr{uiFontButton},Ptr{Nothing},Ptr{Nothing}),b,f,data)
end

function uiNewFontButton()
	ccall((:uiNewFontButton,libui),Ptr{uiFontButton},())
end

function uiColorButtonColor(b::Ptr{uiColorButton},r::Ptr{Cdouble},g::Ptr{Cdouble},bl::Ptr{Cdouble},a::Ptr{Cdouble})
	ccall((:uiColorButtonColor,libui),Nothing,(Ptr{uiColorButton},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble},Ptr{Cdouble}),b,r,g,bl,a)
end

function uiColorButtonSetColor(b::Ptr{uiColorButton},r::Cdouble,g::Cdouble,bl::Cdouble,a::Cdouble)
	ccall((:uiColorButtonSetColor,libui),Nothing,(Ptr{uiColorButton},Cdouble,Cdouble,Cdouble,Cdouble),b,r,g,bl,a)
end

function uiColorButtonOnChanged(b::Ptr{uiColorButton},f::Ptr{Nothing},data::Ptr{Nothing})
	ccall((:uiColorButtonOnChanged,libui),Nothing,(Ptr{uiColorButton},Ptr{Nothing},Ptr{Nothing}),b,f,data)
end

function uiNewColorButton()
	ccall((:uiNewColorButton,libui),Ptr{uiColorButton},())
end
