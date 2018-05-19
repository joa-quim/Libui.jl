# Automatically generated using Clang.jl wrap_c, version 0.0.0
@static if VERSION < v"0.7-"
	using Compat: Nothing
end

const OBJC_NEW_PROPERTIES = 1

# Skipping MacroDefinition: NULL ( ( void * ) 0 )
# Skipping MacroDefinition: offsetof ( t , d ) __builtin_offsetof ( t , d )

# Skipping MacroDefinition: INT8_C ( v ) ( v )
# Skipping MacroDefinition: INT16_C ( v ) ( v )
# Skipping MacroDefinition: INT32_C ( v ) ( v )
# Skipping MacroDefinition: INT64_C ( v ) ( v ## LL )
# Skipping MacroDefinition: UINT8_C ( v ) ( v ## U )
# Skipping MacroDefinition: UINT16_C ( v ) ( v ## U )
# Skipping MacroDefinition: UINT32_C ( v ) ( v ## U )
# Skipping MacroDefinition: UINT64_C ( v ) ( v ## ULL )
# Skipping MacroDefinition: INTMAX_C ( v ) ( v ## L )
# Skipping MacroDefinition: UINTMAX_C ( v ) ( v ## UL )

const uiPi = 3.141592653589793

# Skipping MacroDefinition: uiControl ( this ) ( ( uiControl * ) ( this ) )
# Skipping MacroDefinition: uiWindow ( this ) ( ( uiWindow * ) ( this ) )
# Skipping MacroDefinition: uiButton ( this ) ( ( uiButton * ) ( this ) )
# Skipping MacroDefinition: uiBox ( this ) ( ( uiBox * ) ( this ) )
# Skipping MacroDefinition: uiEntry ( this ) ( ( uiEntry * ) ( this ) )
# Skipping MacroDefinition: uiCheckbox ( this ) ( ( uiCheckbox * ) ( this ) )
# Skipping MacroDefinition: uiLabel ( this ) ( ( uiLabel * ) ( this ) )
# Skipping MacroDefinition: uiTab ( this ) ( ( uiTab * ) ( this ) )
# Skipping MacroDefinition: uiGroup ( this ) ( ( uiGroup * ) ( this ) )
# Skipping MacroDefinition: uiSpinbox ( this ) ( ( uiSpinbox * ) ( this ) )
# Skipping MacroDefinition: uiProgressBar ( this ) ( ( uiProgressBar * ) ( this ) )
# Skipping MacroDefinition: uiSlider ( this ) ( ( uiSlider * ) ( this ) )
# Skipping MacroDefinition: uiSeparator ( this ) ( ( uiSeparator * ) ( this ) )
# Skipping MacroDefinition: uiCombobox ( this ) ( ( uiCombobox * ) ( this ) )
# Skipping MacroDefinition: uiEditableCombobox ( this ) ( ( uiEditableCombobox * ) ( this ) )
# Skipping MacroDefinition: uiRadioButtons ( this ) ( ( uiRadioButtons * ) ( this ) )
# Skipping MacroDefinition: uiDateTimePicker ( this ) ( ( uiDateTimePicker * ) ( this ) )
# Skipping MacroDefinition: uiMultilineEntry ( this ) ( ( uiMultilineEntry * ) ( this ) )
# Skipping MacroDefinition: uiMenuItem ( this ) ( ( uiMenuItem * ) ( this ) )
# Skipping MacroDefinition: uiMenu ( this ) ( ( uiMenu * ) ( this ) )
# Skipping MacroDefinition: uiArea ( this ) ( ( uiArea * ) ( this ) )

const uiDrawDefaultMiterLimit = 10.0

# Skipping MacroDefinition: uiFontButton ( this ) ( ( uiFontButton * ) ( this ) )
# Skipping MacroDefinition: uiColorButton ( this ) ( ( uiColorButton * ) ( this ) )


type uiInitOptions
	Size::Csize_t
end

type uiControl
	Signature::UInt32
	OSSignature::UInt32
	TypeSignature::UInt32
	Destroy::Ptr{Nothing}
	Handle::Ptr{Nothing}
	Parent::Ptr{Nothing}
	SetParent::Ptr{Nothing}
	Toplevel::Ptr{Nothing}
	Visible::Ptr{Nothing}
	Show::Ptr{Nothing}
	Hide::Ptr{Nothing}
	Enabled::Ptr{Nothing}
	Enable::Ptr{Nothing}
	Disable::Ptr{Nothing}
end

type uiWindow
end

type uiButton
end

type uiBox
end

type uiEntry
end

type uiCheckbox
end

type uiLabel
end

type uiTab
end

type uiGroup
end

type uiSpinbox
end

type uiProgressBar
end

type uiSlider
end

type uiSeparator
end

type uiCombobox
end

type uiEditableCombobox
end

type uiRadioButtons
end

type uiDateTimePicker
end

type uiMultilineEntry
end

type uiMenuItem
end

type uiMenu
end

type uiArea
end

type uiAreaHandler
	Draw::Ptr{Nothing}
	MouseEvent::Ptr{Nothing}
	MouseCrossed::Ptr{Nothing}
	DragBroken::Ptr{Nothing}
	KeyEvent::Ptr{Nothing}
end

type uiDrawContext
end

type uiAreaDrawParams
	Context::Ptr{uiDrawContext}
	AreaWidth::Cdouble
	AreaHeight::Cdouble
	ClipX::Cdouble
	ClipY::Cdouble
	ClipWidth::Cdouble
	ClipHeight::Cdouble
end

type uiAreaMouseEvent
	X::Cdouble
	Y::Cdouble
	AreaWidth::Cdouble
	AreaHeight::Cdouble
	Down::Culong
	Up::Culong
	Count::Culong
	Modifiers::UInt32
	Held1To64::UInt64
end

type uiAreaKeyEvent
	Key::UInt8
	ExtKey::UInt32
	Modifier::UInt32
	Modifiers::UInt32
	Up::Cint
end

type uiDrawPath
end

const uiDrawBrushType = UInt32

type uiDrawBrushGradientStop
	Pos::Cdouble
	R::Cdouble
	G::Cdouble
	B::Cdouble
	A::Cdouble
end

type uiDrawBrush
	Type::uiDrawBrushType
	R::Cdouble
	G::Cdouble
	B::Cdouble
	A::Cdouble
	X0::Cdouble
	Y0::Cdouble
	X1::Cdouble
	Y1::Cdouble
	OuterRadius::Cdouble
	Stops::Ptr{uiDrawBrushGradientStop}
	NumStops::Csize_t
end

const uiDrawLineCap = UInt32
const uiDrawLineJoin = UInt32

type uiDrawStrokeParams
	Cap::UInt32
	Join::UInt32
	Thickness::Cdouble
	MiterLimit::Cdouble
	Dashes::Ptr{Cdouble}
	NumDashes::Csize_t
	DashPhase::Cdouble
end

type uiDrawMatrix
	M11::Cdouble
	M12::Cdouble
	M21::Cdouble
	M22::Cdouble
	M31::Cdouble
	M32::Cdouble
end

# begin enum ANONYMOUS_1
const ANONYMOUS_1 = UInt32
const uiDrawBrushTypeSolid = (UInt32)(0)
const uiDrawBrushTypeLinearGradient = (UInt32)(1)
const uiDrawBrushTypeRadialGradient = (UInt32)(2)
const uiDrawBrushTypeImage = (UInt32)(3)
# end enum ANONYMOUS_1

# begin enum ANONYMOUS_2
const ANONYMOUS_2 = UInt32
const uiDrawLineCapFlat = (UInt32)(0)
const uiDrawLineCapRound = (UInt32)(1)
const uiDrawLineCapSquare = (UInt32)(2)
# end enum ANONYMOUS_2

# begin enum ANONYMOUS_3
const ANONYMOUS_3 = UInt32
const uiDrawLineJoinMiter = (UInt32)(0)
const uiDrawLineJoinRound = (UInt32)(1)
const uiDrawLineJoinBevel = (UInt32)(2)
# end enum ANONYMOUS_3

const uiDrawFillMode = UInt32

# begin enum ANONYMOUS_4
const ANONYMOUS_4 = UInt32
const uiDrawFillModeWinding = (UInt32)(0)
const uiDrawFillModeAlternate = (UInt32)(1)
# end enum ANONYMOUS_4

type uiDrawFontFamilies
end

type uiDrawTextLayout
end

type uiDrawTextFont
end

const uiDrawTextWeight = UInt32
const uiDrawTextItalic = UInt32
const uiDrawTextStretch = UInt32

type uiDrawTextFontDescriptor
	Family::Ptr{UInt8}
	Size::Cdouble
	Weight::UInt32
	Italic::UInt32
	Stretch::UInt32
end

type uiDrawTextFontMetrics
	Ascent::Cdouble
	Descent::Cdouble
	Leading::Cdouble
	UnderlinePos::Cdouble
	UnderlineThickness::Cdouble
end

# begin enum ANONYMOUS_5
const ANONYMOUS_5 = UInt32
const uiDrawTextWeightThin = (UInt32)(0)
const uiDrawTextWeightUltraLight = (UInt32)(1)
const uiDrawTextWeightLight = (UInt32)(2)
const uiDrawTextWeightBook = (UInt32)(3)
const uiDrawTextWeightNormal = (UInt32)(4)
const uiDrawTextWeightMedium = (UInt32)(5)
const uiDrawTextWeightSemiBold = (UInt32)(6)
const uiDrawTextWeightBold = (UInt32)(7)
const uiDrawTextWeightUtraBold = (UInt32)(8)
const uiDrawTextWeightHeavy = (UInt32)(9)
const uiDrawTextWeightUltraHeavy = (UInt32)(10)
# end enum ANONYMOUS_5

# begin enum ANONYMOUS_6
const ANONYMOUS_6 = UInt32
const uiDrawTextItalicNormal = (UInt32)(0)
const uiDrawTextItalicOblique = (UInt32)(1)
const uiDrawTextItalicItalic = (UInt32)(2)
# end enum ANONYMOUS_6

# begin enum ANONYMOUS_7
const ANONYMOUS_7 = UInt32
const uiDrawTextStretchUltraCondensed = (UInt32)(0)
const uiDrawTextStretchExtraCondensed = (UInt32)(1)
const uiDrawTextStretchCondensed = (UInt32)(2)
const uiDrawTextStretchSemiCondensed = (UInt32)(3)
const uiDrawTextStretchNormal = (UInt32)(4)
const uiDrawTextStretchSemiExpanded = (UInt32)(5)
const uiDrawTextStretchExpanded = (UInt32)(6)
const uiDrawTextStretchExtraExpanded = (UInt32)(7)
const uiDrawTextStretchUltraExpanded = (UInt32)(8)
# end enum ANONYMOUS_7

# begin enum ANONYMOUS_8
const ANONYMOUS_8 = UInt32
const uiModifierCtrl = (UInt32)(1)
const uiModifierAlt = (UInt32)(2)
const uiModifierShift = (UInt32)(4)
const uiModifierSuper = (UInt32)(8)
# end enum ANONYMOUS_8

# begin enum ANONYMOUS_9
const ANONYMOUS_9 = UInt32
const uiExtKeyEscape = (UInt32)(1)
const uiExtKeyInsert = (UInt32)(2)
const uiExtKeyDelete = (UInt32)(3)
const uiExtKeyHome = (UInt32)(4)
const uiExtKeyEnd = (UInt32)(5)
const uiExtKeyPageUp = (UInt32)(6)
const uiExtKeyPageDown = (UInt32)(7)
const uiExtKeyUp = (UInt32)(8)
const uiExtKeyDown = (UInt32)(9)
const uiExtKeyLeft = (UInt32)(10)
const uiExtKeyRight = (UInt32)(11)
const uiExtKeyF1 = (UInt32)(12)
const uiExtKeyF2 = (UInt32)(13)
const uiExtKeyF3 = (UInt32)(14)
const uiExtKeyF4 = (UInt32)(15)
const uiExtKeyF5 = (UInt32)(16)
const uiExtKeyF6 = (UInt32)(17)
const uiExtKeyF7 = (UInt32)(18)
const uiExtKeyF8 = (UInt32)(19)
const uiExtKeyF9 = (UInt32)(20)
const uiExtKeyF10 = (UInt32)(21)
const uiExtKeyF11 = (UInt32)(22)
const uiExtKeyF12 = (UInt32)(23)
const uiExtKeyN0 = (UInt32)(24)
const uiExtKeyN1 = (UInt32)(25)
const uiExtKeyN2 = (UInt32)(26)
const uiExtKeyN3 = (UInt32)(27)
const uiExtKeyN4 = (UInt32)(28)
const uiExtKeyN5 = (UInt32)(29)
const uiExtKeyN6 = (UInt32)(30)
const uiExtKeyN7 = (UInt32)(31)
const uiExtKeyN8 = (UInt32)(32)
const uiExtKeyN9 = (UInt32)(33)
const uiExtKeyNDot = (UInt32)(34)
const uiExtKeyNEnter = (UInt32)(35)
const uiExtKeyNAdd = (UInt32)(36)
const uiExtKeyNSubtract = (UInt32)(37)
const uiExtKeyNMultiply = (UInt32)(38)
const uiExtKeyNDivide = (UInt32)(39)
# end enum ANONYMOUS_9

type uiFontButton
end

type uiColorButton
end
