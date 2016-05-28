# Automatically generated using Clang.jl wrap_c, version 0.0.0

const OBJC_NEW_PROPERTIES = 1

# Skipping MacroDefinition: NULL ( ( void * ) 0 )
# Skipping MacroDefinition: offsetof ( t , d ) __builtin_offsetof ( t , d )

const INT8_MAX = 127
const INT16_MAX = 32767
const INT32_MAX = 2147483647
const INT64_MAX = 9223372036854775807
const INT8_MIN = -128
const INT16_MIN = -32768
const INT32_MIN = -INT32_MAX - 1
const INT64_MIN = -INT64_MAX - 1
const UINT8_MAX = 255
const UINT16_MAX = 65535
const UINT32_MAX = 4294967295
const UINT64_MAX = @int128_str("18446744073709551615")
const INT_LEAST8_MIN = INT8_MIN
const INT_LEAST16_MIN = INT16_MIN
const INT_LEAST32_MIN = INT32_MIN
const INT_LEAST64_MIN = INT64_MIN
const INT_LEAST8_MAX = INT8_MAX
const INT_LEAST16_MAX = INT16_MAX
const INT_LEAST32_MAX = INT32_MAX
const INT_LEAST64_MAX = INT64_MAX
const UINT_LEAST8_MAX = UINT8_MAX
const UINT_LEAST16_MAX = UINT16_MAX
const UINT_LEAST32_MAX = UINT32_MAX
const UINT_LEAST64_MAX = UINT64_MAX
const INT_FAST8_MIN = INT8_MIN
const INT_FAST16_MIN = INT16_MIN
const INT_FAST32_MIN = INT32_MIN
const INT_FAST64_MIN = INT64_MIN
const INT_FAST8_MAX = INT8_MAX
const INT_FAST16_MAX = INT16_MAX
const INT_FAST32_MAX = INT32_MAX
const INT_FAST64_MAX = INT64_MAX
const UINT_FAST8_MAX = UINT8_MAX
const UINT_FAST16_MAX = UINT16_MAX
const UINT_FAST32_MAX = UINT32_MAX
const UINT_FAST64_MAX = UINT64_MAX
const INTPTR_MIN = INT64_MIN
const INTPTR_MAX = INT64_MAX
const UINTPTR_MAX = UINT64_MAX
const INTMAX_MIN = INT64_MIN
const INTMAX_MAX = INT64_MAX
const UINTMAX_MAX = UINT64_MAX
const PTRDIFF_MIN = INT64_MIN
const PTRDIFF_MAX = INT64_MAX
const SIZE_MAX = UINT64_MAX
const RSIZE_MAX = SIZE_MAX >> 1
const WINT_MIN = INT32_MIN
const WINT_MAX = INT32_MAX
const SIG_ATOMIC_MIN = INT32_MIN
const SIG_ATOMIC_MAX = INT32_MAX

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

typealias ptrdiff_t Clong
typealias size_t Culong
typealias wchar_t Cint

type max_align_t
    __clang_max_align_nonce1::Clonglong
    __clang_max_align_nonce2::Float64
end

typealias int8_t UInt8
typealias int16_t Int16
typealias int32_t Cint
typealias int64_t Clonglong
typealias uint8_t Cuchar
typealias uint16_t UInt16
typealias uint32_t UInt32
typealias uint64_t Culonglong
typealias int_least8_t Int8
typealias int_least16_t Int16
typealias int_least32_t Int32
typealias int_least64_t Int64
typealias uint_least8_t UInt8
typealias uint_least16_t UInt16
typealias uint_least32_t UInt32
typealias uint_least64_t UInt64
typealias int_fast8_t Int8
typealias int_fast16_t Int16
typealias int_fast32_t Int32
typealias int_fast64_t Int64
typealias uint_fast8_t UInt8
typealias uint_fast16_t UInt16
typealias uint_fast32_t UInt32
typealias uint_fast64_t UInt64


type uiInitOptions
    Size::Csize_t
end

type uiControl
    Signature::UInt32
    OSSignature::UInt32
    TypeSignature::UInt32
    Destroy::Ptr{Void}
    Handle::Ptr{Void}
    Parent::Ptr{Void}
    SetParent::Ptr{Void}
    Toplevel::Ptr{Void}
    Visible::Ptr{Void}
    Show::Ptr{Void}
    Hide::Ptr{Void}
    Enabled::Ptr{Void}
    Enable::Ptr{Void}
    Disable::Ptr{Void}
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
    Draw::Ptr{Void}
    MouseEvent::Ptr{Void}
    MouseCrossed::Ptr{Void}
    DragBroken::Ptr{Void}
    KeyEvent::Ptr{Void}
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

typealias uiDrawBrushType UInt32

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

typealias uiDrawLineCap UInt32
typealias uiDrawLineJoin UInt32

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
typealias ANONYMOUS_1 UInt32
const uiDrawBrushTypeSolid = (UInt32)(0)
const uiDrawBrushTypeLinearGradient = (UInt32)(1)
const uiDrawBrushTypeRadialGradient = (UInt32)(2)
const uiDrawBrushTypeImage = (UInt32)(3)
# end enum ANONYMOUS_1

# begin enum ANONYMOUS_2
typealias ANONYMOUS_2 UInt32
const uiDrawLineCapFlat = (UInt32)(0)
const uiDrawLineCapRound = (UInt32)(1)
const uiDrawLineCapSquare = (UInt32)(2)
# end enum ANONYMOUS_2

# begin enum ANONYMOUS_3
typealias ANONYMOUS_3 UInt32
const uiDrawLineJoinMiter = (UInt32)(0)
const uiDrawLineJoinRound = (UInt32)(1)
const uiDrawLineJoinBevel = (UInt32)(2)
# end enum ANONYMOUS_3

typealias uiDrawFillMode UInt32

# begin enum ANONYMOUS_4
typealias ANONYMOUS_4 UInt32
const uiDrawFillModeWinding = (UInt32)(0)
const uiDrawFillModeAlternate = (UInt32)(1)
# end enum ANONYMOUS_4

type uiDrawFontFamilies
end

type uiDrawTextLayout
end

type uiDrawTextFont
end

typealias uiDrawTextWeight UInt32
typealias uiDrawTextItalic UInt32
typealias uiDrawTextStretch UInt32

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
typealias ANONYMOUS_5 UInt32
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
typealias ANONYMOUS_6 UInt32
const uiDrawTextItalicNormal = (UInt32)(0)
const uiDrawTextItalicOblique = (UInt32)(1)
const uiDrawTextItalicItalic = (UInt32)(2)
# end enum ANONYMOUS_6

# begin enum ANONYMOUS_7
typealias ANONYMOUS_7 UInt32
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
typealias ANONYMOUS_8 UInt32
const uiModifierCtrl = (UInt32)(1)
const uiModifierAlt = (UInt32)(2)
const uiModifierShift = (UInt32)(4)
const uiModifierSuper = (UInt32)(8)
# end enum ANONYMOUS_8

# begin enum ANONYMOUS_9
typealias ANONYMOUS_9 UInt32
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
