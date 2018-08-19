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
# Skipping MacroDefinition: uiCheckbox ( this ) ( ( uiCheckbox * ) ( this ) )
# Skipping MacroDefinition: uiEntry ( this ) ( ( uiEntry * ) ( this ) )
# Skipping MacroDefinition: uiLabel ( this ) ( ( uiLabel * ) ( this ) )
# Skipping MacroDefinition: uiTab ( this ) ( ( uiTab * ) ( this ) )
# Skipping MacroDefinition: uiGroup ( this ) ( ( uiGroup * ) ( this ) )
# Skipping MacroDefinition: uiSpinbox ( this ) ( ( uiSpinbox * ) ( this ) )
# Skipping MacroDefinition: uiSlider ( this ) ( ( uiSlider * ) ( this ) )
# Skipping MacroDefinition: uiProgressBar ( this ) ( ( uiProgressBar * ) ( this ) )
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
# Skipping MacroDefinition: uiForm ( this ) ( ( uiForm * ) ( this ) )
# Skipping MacroDefinition: uiGrid ( this ) ( ( uiGrid * ) ( this ) )

const uiTableModelColumnNeverEditable = -1
const uiTableModelColumnAlwaysEditable = -2

# Skipping MacroDefinition: uiTable ( this ) ( ( uiTable * ) ( this ) )

const uiForEach = UInt32

# begin enum ANONYMOUS_1
const ANONYMOUS_1 = UInt32
const uiForEachContinue = (UInt32)(0)
const uiForEachStop = (UInt32)(1)
# end enum ANONYMOUS_1

mutable struct uiInitOptions
    Size::Csize_t
end

mutable struct uiControl
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

mutable struct uiWindow
end

mutable struct uiButton
end

mutable struct uiBox
end

mutable struct uiCheckbox
end

mutable struct uiEntry
end

mutable struct uiLabel
end

mutable struct uiTab
end

mutable struct uiGroup
end

mutable struct uiSpinbox
end

mutable struct uiSlider
end

mutable struct uiProgressBar
end

mutable struct uiSeparator
end

mutable struct uiCombobox
end

mutable struct uiEditableCombobox
end

mutable struct uiRadioButtons
end

mutable struct tm
end

mutable struct uiDateTimePicker
end

mutable struct uiMultilineEntry
end

mutable struct uiMenuItem
end

mutable struct uiMenu
end

mutable struct uiArea
end

mutable struct uiAreaHandler
    Draw::Ptr{Nothing}
    MouseEvent::Ptr{Nothing}
    MouseCrossed::Ptr{Nothing}
    DragBroken::Ptr{Nothing}
    KeyEvent::Ptr{Nothing}
end

mutable struct uiDrawContext
end

mutable struct uiAreaDrawParams
    Context::Ptr{uiDrawContext}
    AreaWidth::Cdouble
    AreaHeight::Cdouble
    ClipX::Cdouble
    ClipY::Cdouble
    ClipWidth::Cdouble
    ClipHeight::Cdouble
end

const uiModifiers = UInt32

mutable struct uiAreaMouseEvent
    X::Cdouble
    Y::Cdouble
    AreaWidth::Cdouble
    AreaHeight::Cdouble
    Down::Cint
    Up::Cint
    Count::Cint
    Modifiers::uiModifiers
    Held1To64::UInt64
end

const uiExtKey = UInt32

mutable struct uiAreaKeyEvent
    Key::UInt8
    ExtKey::uiExtKey
    Modifier::uiModifiers
    Modifiers::uiModifiers
    Up::Cint
end

const uiWindowResizeEdge = UInt32

# begin enum ANONYMOUS_2
const ANONYMOUS_2 = UInt32
const uiWindowResizeEdgeLeft = (UInt32)(0)
const uiWindowResizeEdgeTop = (UInt32)(1)
const uiWindowResizeEdgeRight = (UInt32)(2)
const uiWindowResizeEdgeBottom = (UInt32)(3)
const uiWindowResizeEdgeTopLeft = (UInt32)(4)
const uiWindowResizeEdgeTopRight = (UInt32)(5)
const uiWindowResizeEdgeBottomLeft = (UInt32)(6)
const uiWindowResizeEdgeBottomRight = (UInt32)(7)
# end enum ANONYMOUS_2

mutable struct uiDrawPath
end

const uiDrawBrushType = UInt32

mutable struct uiDrawBrushGradientStop
    Pos::Cdouble
    R::Cdouble
    G::Cdouble
    B::Cdouble
    A::Cdouble
end

mutable struct uiDrawBrush
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

mutable struct uiDrawStrokeParams
    Cap::uiDrawLineCap
    Join::uiDrawLineJoin
    Thickness::Cdouble
    MiterLimit::Cdouble
    Dashes::Ptr{Cdouble}
    NumDashes::Csize_t
    DashPhase::Cdouble
end

mutable struct uiDrawMatrix
    M11::Cdouble
    M12::Cdouble
    M21::Cdouble
    M22::Cdouble
    M31::Cdouble
    M32::Cdouble
end

# begin enum ANONYMOUS_3
const ANONYMOUS_3 = UInt32
const uiDrawBrushTypeSolid = (UInt32)(0)
const uiDrawBrushTypeLinearGradient = (UInt32)(1)
const uiDrawBrushTypeRadialGradient = (UInt32)(2)
const uiDrawBrushTypeImage = (UInt32)(3)
# end enum ANONYMOUS_3

# begin enum ANONYMOUS_4
const ANONYMOUS_4 = UInt32
const uiDrawLineCapFlat = (UInt32)(0)
const uiDrawLineCapRound = (UInt32)(1)
const uiDrawLineCapSquare = (UInt32)(2)
# end enum ANONYMOUS_4

# begin enum ANONYMOUS_5
const ANONYMOUS_5 = UInt32
const uiDrawLineJoinMiter = (UInt32)(0)
const uiDrawLineJoinRound = (UInt32)(1)
const uiDrawLineJoinBevel = (UInt32)(2)
# end enum ANONYMOUS_5

const uiDrawFillMode = UInt32

# begin enum ANONYMOUS_6
const ANONYMOUS_6 = UInt32
const uiDrawFillModeWinding = (UInt32)(0)
const uiDrawFillModeAlternate = (UInt32)(1)
# end enum ANONYMOUS_6

mutable struct uiAttribute
end

const uiAttributeType = UInt32

# begin enum ANONYMOUS_7
const ANONYMOUS_7 = UInt32
const uiAttributeTypeFamily = (UInt32)(0)
const uiAttributeTypeSize = (UInt32)(1)
const uiAttributeTypeWeight = (UInt32)(2)
const uiAttributeTypeItalic = (UInt32)(3)
const uiAttributeTypeStretch = (UInt32)(4)
const uiAttributeTypeColor = (UInt32)(5)
const uiAttributeTypeBackground = (UInt32)(6)
const uiAttributeTypeUnderline = (UInt32)(7)
const uiAttributeTypeUnderlineColor = (UInt32)(8)
const uiAttributeTypeFeatures = (UInt32)(9)
# end enum ANONYMOUS_7

const uiTextWeight = UInt32

# begin enum ANONYMOUS_8
const ANONYMOUS_8 = UInt32
const uiTextWeightMinimum = (UInt32)(0)
const uiTextWeightThin = (UInt32)(100)
const uiTextWeightUltraLight = (UInt32)(200)
const uiTextWeightLight = (UInt32)(300)
const uiTextWeightBook = (UInt32)(350)
const uiTextWeightNormal = (UInt32)(400)
const uiTextWeightMedium = (UInt32)(500)
const uiTextWeightSemiBold = (UInt32)(600)
const uiTextWeightBold = (UInt32)(700)
const uiTextWeightUltraBold = (UInt32)(800)
const uiTextWeightHeavy = (UInt32)(900)
const uiTextWeightUltraHeavy = (UInt32)(950)
const uiTextWeightMaximum = (UInt32)(1000)
# end enum ANONYMOUS_8

const uiTextItalic = UInt32

# begin enum ANONYMOUS_9
const ANONYMOUS_9 = UInt32
const uiTextItalicNormal = (UInt32)(0)
const uiTextItalicOblique = (UInt32)(1)
const uiTextItalicItalic = (UInt32)(2)
# end enum ANONYMOUS_9

const uiTextStretch = UInt32

# begin enum ANONYMOUS_10
const ANONYMOUS_10 = UInt32
const uiTextStretchUltraCondensed = (UInt32)(0)
const uiTextStretchExtraCondensed = (UInt32)(1)
const uiTextStretchCondensed = (UInt32)(2)
const uiTextStretchSemiCondensed = (UInt32)(3)
const uiTextStretchNormal = (UInt32)(4)
const uiTextStretchSemiExpanded = (UInt32)(5)
const uiTextStretchExpanded = (UInt32)(6)
const uiTextStretchExtraExpanded = (UInt32)(7)
const uiTextStretchUltraExpanded = (UInt32)(8)
# end enum ANONYMOUS_10

const uiUnderline = UInt32

# begin enum ANONYMOUS_11
const ANONYMOUS_11 = UInt32
const uiUnderlineNone = (UInt32)(0)
const uiUnderlineSingle = (UInt32)(1)
const uiUnderlineDouble = (UInt32)(2)
const uiUnderlineSuggestion = (UInt32)(3)
# end enum ANONYMOUS_11

const uiUnderlineColor = UInt32

# begin enum ANONYMOUS_12
const ANONYMOUS_12 = UInt32
const uiUnderlineColorCustom = (UInt32)(0)
const uiUnderlineColorSpelling = (UInt32)(1)
const uiUnderlineColorGrammar = (UInt32)(2)
const uiUnderlineColorAuxiliary = (UInt32)(3)
# end enum ANONYMOUS_12

mutable struct uiOpenTypeFeatures
end

const uiOpenTypeFeaturesForEachFunc = Ptr{Nothing}

mutable struct uiAttributedString
end

const uiAttributedStringForEachAttributeFunc = Ptr{Nothing}

mutable struct uiFontDescriptor
    Family::Cstring
    Size::Cdouble
    Weight::uiTextWeight
    Italic::uiTextItalic
    Stretch::uiTextStretch
end

mutable struct uiDrawTextLayout
end

const uiDrawTextAlign = UInt32

# begin enum ANONYMOUS_13
const ANONYMOUS_13 = UInt32
const uiDrawTextAlignLeft = (UInt32)(0)
const uiDrawTextAlignCenter = (UInt32)(1)
const uiDrawTextAlignRight = (UInt32)(2)
# end enum ANONYMOUS_13

mutable struct uiDrawTextLayoutParams
    String::Ptr{uiAttributedString}
    DefaultFont::Ptr{uiFontDescriptor}
    Width::Cdouble
    Align::uiDrawTextAlign
end

mutable struct uiFontButton
end

# begin enum ANONYMOUS_14
const ANONYMOUS_14 = UInt32
const uiModifierCtrl = (UInt32)(1)
const uiModifierAlt = (UInt32)(2)
const uiModifierShift = (UInt32)(4)
const uiModifierSuper = (UInt32)(8)
# end enum ANONYMOUS_14

# begin enum ANONYMOUS_15
const ANONYMOUS_15 = UInt32
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
# end enum ANONYMOUS_15

mutable struct uiColorButton
end

mutable struct uiForm
end

const uiAlign = UInt32

# begin enum ANONYMOUS_16
const ANONYMOUS_16 = UInt32
const uiAlignFill = (UInt32)(0)
const uiAlignStart = (UInt32)(1)
const uiAlignCenter = (UInt32)(2)
const uiAlignEnd = (UInt32)(3)
# end enum ANONYMOUS_16

const uiAt = UInt32

# begin enum ANONYMOUS_17
const ANONYMOUS_17 = UInt32
const uiAtLeading = (UInt32)(0)
const uiAtTop = (UInt32)(1)
const uiAtTrailing = (UInt32)(2)
const uiAtBottom = (UInt32)(3)
# end enum ANONYMOUS_17

mutable struct uiGrid
end

mutable struct uiImage
end

mutable struct uiTableValue
end

const uiTableValueType = UInt32

# begin enum ANONYMOUS_18
const ANONYMOUS_18 = UInt32
const uiTableValueTypeString = (UInt32)(0)
const uiTableValueTypeImage = (UInt32)(1)
const uiTableValueTypeInt = (UInt32)(2)
const uiTableValueTypeColor = (UInt32)(3)
# end enum ANONYMOUS_18

mutable struct uiTableModel
end

mutable struct uiTableModelHandler
    NumColumns::Ptr{Nothing}
    ColumnType::Ptr{Nothing}
    NumRows::Ptr{Nothing}
    CellValue::Ptr{Nothing}
    SetCellValue::Ptr{Nothing}
end

mutable struct uiTableTextColumnOptionalParams
    ColorModelColumn::Cint
end

mutable struct uiTableParams
    Model::Ptr{uiTableModel}
    RowBackgroundColorModelColumn::Cint
end

mutable struct uiTable
end
