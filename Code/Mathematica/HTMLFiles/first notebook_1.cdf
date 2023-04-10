(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 13.0' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[    201663,       4097]
NotebookOptionsPosition[    202123,       4091]
NotebookOutlinePosition[    202619,       4112]
CellTagsIndexPosition[    202576,       4109]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 NamespaceBox["WolframAlphaQueryResults",
  DynamicModuleBox[{Typeset`q$$ = "Integrate 1/(1-x^3)", Typeset`opts$$ = {
   AppearanceElements -> {
     "Extrusion", "Warnings", "Assumptions", "Pods", "Unsuccessful"}, 
    Asynchronous -> All, 
    Method -> {
     "ExtrusionChosen" -> {
       "IndefiniteIntegral", "Indefinite integral", 1, 1, "Input", 
        "Integrate[1/(1 - x^3), x]"}, "ExtrusionOpen" -> False, 
      "Formats" -> {"cell", "minput", "moutput", "msound", "dataformats"}}, 
    PodStates -> {"IndefiniteIntegral__Step-by-step solution"}}, 
   Typeset`elements$$ = {
   "Extrusion", "Warnings", "Assumptions", "Pods", "Unsuccessful"}, 
   Typeset`pod1$$ = XMLElement[
   "pod", {"title" -> "Indefinite integrals", "scanner" -> "Integral", "id" -> 
     "IndefiniteIntegral", "position" -> "100", "error" -> "false", 
     "numsubpods" -> "2", "primary" -> "true"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement["minput", {}, {"Integrate[1/(1 - x^3), x]"}], 
       XMLElement[
       "moutput", {}, {
        "(2 Sqrt[3] ArcTan[(1 + 2 x)/Sqrt[3]] - 2 Log[1 - x] + Log[1 + x + \
x^2])/6"}], 
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            RowBox[{
              TagBox[
               RowBox[{"\[Integral]", 
                 RowBox[{
                   TagBox[
                    TagBox[
                    FractionBox["1", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["x", "3"]}]], Identity], 
                    PrecedenceForm[#, 400.]& ], 
                   RowBox[{"\[DifferentialD]", "x"}]}]}], HoldForm], 
              "\[LongEqual]", 
              TagBox[
               StyleBox[
                RowBox[{
                  StyleBox[
                   RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"log", "(", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}], ")"}], 
                    "-", 
                    RowBox[{"2", " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"1", "-", "x"}], ")"}]}], "+", 
                    RowBox[{"2", " ", 
                    SqrtBox["3"], " ", 
                    RowBox[{
                    SuperscriptBox["tan", 
                    RowBox[{"-", "1"}]], "(", 
                    FractionBox[
                    RowBox[{
                    RowBox[{"2", " ", "x"}], "+", "1"}], 
                    SqrtBox["3"]], ")"}]}]}], ")"}]}], {
                    GrayLevel[0], LinebreakAdjustments -> {1, 100, 1, 0, 100},
                     LineIndent -> 0}], "+", 
                  StyleBox[
                  "\"constant\"", {
                   Magnification -> 0.9 Inherited, FontFamily -> "Roboto", 
                    FontSize -> Inherited, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}], {
                 GrayLevel[0.6], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                 LineIndent -> 0}], Identity]}], TraditionalForm]], 
          "Output", {
          Background -> None, 
           GraphicsBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics"}, 
             DefaultAxesStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsAxes"], DefaultFrameStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsFrame"], DefaultFrameTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsFrameTicks"], 
             DefaultTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsTicks"]}, 
           Graphics3DBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics3D"}}}, 
          NumberPoint -> ".", CellSize -> {550, Automatic}, 
          AutoStyleOptions -> {"HighlightFormattingErrors" -> False}, 
          RenderingOptions -> {
           "3DRenderingMethod" -> "BSPTreeOrDepthBuffer"}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,minput,moutput,computabledata,formatteddata,formuladata"}]}\
], 
     XMLElement["subpod", {"title" -> "Possible intermediate steps"}, {
       XMLElement["cell", {"compressed" -> True, "string" -> False}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             GridBox[{{
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"Take the integral:\""}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["x", "3"]}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
                  GridBoxSpacings -> {
                   "Columns" -> {{None}}, "Rows" -> {{0.5}}}], "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"For \"", "\"the \"", "\"integrand \"", 
                    TemplateBox[{
                    FractionBox["1", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["x", "3"]}]], "\",\"", "\" \""}, 
                    "RowDefault"], "\"use \"", "\"partial \"", 
                    "\"fractions:\""}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"x", "+", "2"}], 
                    RowBox[{"3", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}], ")"}]}]], 
                    "-", 
                    FractionBox["1", 
                    RowBox[{"3", " ", 
                    RowBox[{"(", 
                    RowBox[{"x", "-", "1"}], ")"}]}]]}], ")"}], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}, "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    
                    TemplateBox[{
                    "\"Integrate \"", "\"the \"", "\"sum \"", "\"term \"", 
                    "\"by \"", "\"term \"", "\"and \"", "\"factor \"", 
                    "\"out \"", "\"constants:\""}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "3"], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"x", "+", "2"}], 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}], "-", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "3"]}], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{"x", "-", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}]}]}, 
                    "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"Rewrite \"", "\"the \"", "\"integrand \"", 
                    TemplateBox[{
                    FractionBox[
                    RowBox[{"x", "+", "2"}], 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}]], "\" \""},
                     "RowDefault"], "\"as \"", 
                    TemplateBox[{
                    RowBox[{
                    FractionBox[
                    RowBox[{
                    RowBox[{"2", " ", "x"}], "+", "1"}], 
                    RowBox[{"2", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}], ")"}]}]], 
                    "+", 
                    FractionBox["3", 
                    RowBox[{"2", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}], 
                    ")"}]}]]}], "\":\""}, "RowDefault"]}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "3"], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    FractionBox[
                    RowBox[{
                    RowBox[{"2", " ", "x"}], "+", "1"}], 
                    RowBox[{"2", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}], ")"}]}]], 
                    "+", 
                    FractionBox["3", 
                    RowBox[{"2", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}], 
                    ")"}]}]]}], ")"}], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}], "-", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "3"]}], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{"x", "-", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}]}]}, 
                    "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    
                    TemplateBox[{
                    "\"Integrate \"", "\"the \"", "\"sum \"", "\"term \"", 
                    "\"by \"", "\"term \"", "\"and \"", "\"factor \"", 
                    "\"out \"", "\"constants:\""}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox[
                    RowBox[{
                    RowBox[{"2", " ", "x"}], "+", "1"}], 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}], "+", 
                    RowBox[{
                    FractionBox["1", "2"], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}], "-", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "3"]}], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{"x", "-", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}]}]}, 
                    "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"For \"", "\"the \"", "\"integrand \"", 
                    TemplateBox[{
                    FractionBox[
                    RowBox[{
                    RowBox[{"2", " ", "x"}], "+", "1"}], 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}]], "\",\"", 
                    "\" \""}, "RowDefault"], "\"substitute \"", 
                    TemplateBox[{
                    RowBox[{"u", "\[LongEqual]", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}]}], 
                    "\" \""}, "RowDefault"], "\"and \"", 
                    TemplateBox[{
                    RowBox[{
                    RowBox[{"\[DifferentialD]", "u"}], "\[LongEqual]", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"2", " ", "x"}], "+", "1"}], ")"}]}], 
                    "\"\[ThinSpace]\""}, "RowDefault"], 
                    TemplateBox[{
                    RowBox[{"\[DifferentialD]", "x"}], "\":\""}, 
                    "RowDefault"]}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", "u"], 
                    RowBox[{"\[DifferentialD]", "u"}]}]}]}], "+", 
                    RowBox[{
                    FractionBox["1", "2"], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}], "-", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "3"]}], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{"x", "-", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}]}]}, 
                    "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"The \"", "\"integral \"", "\"of \"", 
                    TemplateBox[{
                    FractionBox["1", "u"], "\" \""}, "RowDefault"], "\"is \"", 
                    TemplateBox[{
                    RowBox[{"log", "(", "u", ")"}], "\":\""}, "RowDefault"]}, 
                    "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"log", "(", "u", ")"}], "6"], "+", 
                    RowBox[{
                    FractionBox["1", "2"], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}], "-", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "3"]}], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{"x", "-", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}]}]}, 
                    "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"For \"", "\"the \"", "\"integrand \"", 
                    TemplateBox[{
                    FractionBox["1", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}]], "\",\"", 
                    "\" \""}, "RowDefault"], "\"complete \"", "\"the \"", 
                    "\"square:\""}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"log", "(", "u", ")"}], "6"], "+", 
                    RowBox[{
                    FractionBox["1", "2"], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"x", "+", 
                    FractionBox["1", "2"]}], ")"}], "2"], "+", 
                    FractionBox["3", "4"]}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}], "-", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "3"]}], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{"x", "-", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}]}]}, "RowDefault"]}
                   }, GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"For \"", "\"the \"", "\"integrand \"", 
                    TemplateBox[{
                    FractionBox["1", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"x", "+", 
                    FractionBox["1", "2"]}], ")"}], "2"], "+", 
                    FractionBox["3", "4"]}]], "\",\"", "\" \""}, 
                    "RowDefault"], "\"substitute \"", 
                    TemplateBox[{
                    RowBox[{"s", "\[LongEqual]", 
                    RowBox[{"x", "+", 
                    FractionBox["1", "2"]}]}], "\" \""}, "RowDefault"], 
                    "\"and \"", 
                    TemplateBox[{
                    RowBox[{
                    RowBox[{"\[DifferentialD]", "s"}], "\[LongEqual]", 
                    "\"\""}], "\"\[ThinSpace]\""}, "RowDefault"], 
                    TemplateBox[{
                    RowBox[{"\[DifferentialD]", "x"}], "\":\""}, 
                    "RowDefault"]}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"log", "(", "u", ")"}], "6"], "+", 
                    RowBox[{
                    FractionBox["1", "2"], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{
                    SuperscriptBox["s", "2"], "+", 
                    FractionBox["3", "4"]}]], 
                    RowBox[{"\[DifferentialD]", "s"}]}]}]}], "-", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "3"]}], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{"x", "-", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}]}]}, 
                    "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"Factor \"", 
                    TemplateBox[{
                    FractionBox["3", "4"], "\" \""}, "RowDefault"], 
                    "\"from \"", "\"the \"", "\"denominator:\""}, 
                    "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"log", "(", "u", ")"}], "6"], "+", 
                    RowBox[{
                    FractionBox["1", "2"], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["4", 
                    RowBox[{"3", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"4", " ", 
                    SuperscriptBox["s", "2"]}], "3"], "+", "1"}], ")"}]}]], 
                    RowBox[{"\[DifferentialD]", "s"}]}]}]}], "-", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "3"]}], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{"x", "-", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}]}]}, 
                    "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    
                    TemplateBox[{"\"Factor \"", "\"out \"", "\"constants:\""},
                     "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"log", "(", "u", ")"}], "6"], "+", 
                    RowBox[{
                    FractionBox["2", "3"], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"4", " ", 
                    SuperscriptBox["s", "2"]}], "3"], "+", "1"}]], 
                    RowBox[{"\[DifferentialD]", "s"}]}]}]}], "-", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "3"]}], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{"x", "-", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}]}]}, 
                    "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"For \"", "\"the \"", "\"integrand \"", 
                    TemplateBox[{
                    FractionBox["1", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"4", " ", 
                    SuperscriptBox["s", "2"]}], "3"], "+", "1"}]], "\",\"", 
                    "\" \""}, "RowDefault"], "\"substitute \"", 
                    TemplateBox[{
                    RowBox[{"p", "\[LongEqual]", 
                    FractionBox[
                    RowBox[{"2", " ", "s"}], 
                    SqrtBox["3"]]}], "\" \""}, "RowDefault"], "\"and \"", 
                    TemplateBox[{
                    RowBox[{
                    RowBox[{"\[DifferentialD]", "p"}], "\[LongEqual]", 
                    FractionBox["2", 
                    SqrtBox["3"]]}], "\"\[ThinSpace]\""}, "RowDefault"], 
                    TemplateBox[{
                    RowBox[{"\[DifferentialD]", "s"}], "\":\""}, 
                    "RowDefault"]}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"log", "(", "u", ")"}], "6"], "+", 
                    RowBox[{
                    FractionBox["1", 
                    SqrtBox["3"]], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{
                    SuperscriptBox["p", "2"], "+", "1"}]], 
                    RowBox[{"\[DifferentialD]", "p"}]}]}]}], "-", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "3"]}], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{"x", "-", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}]}]}, 
                    "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"The \"", "\"integral \"", "\"of \"", 
                    TemplateBox[{
                    FractionBox["1", 
                    RowBox[{
                    SuperscriptBox["p", "2"], "+", "1"}]], "\" \""}, 
                    "RowDefault"], "\"is \"", 
                    TemplateBox[{
                    RowBox[{
                    SuperscriptBox["tan", 
                    RowBox[{"-", "1"}]], "(", "p", ")"}], "\":\""}, 
                    "RowDefault"]}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    RowBox[{
                    FractionBox[
                    RowBox[{
                    SuperscriptBox["tan", 
                    RowBox[{"-", "1"}]], "(", "p", ")"}], 
                    SqrtBox["3"]], "+", 
                    FractionBox[
                    RowBox[{"log", "(", "u", ")"}], "6"], "-", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "3"]}], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{"x", "-", "1"}]], 
                    RowBox[{"\[DifferentialD]", "x"}]}]}]}]}]}, 
                    "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"For \"", "\"the \"", "\"integrand \"", 
                    TemplateBox[{
                    FractionBox["1", 
                    RowBox[{"x", "-", "1"}]], "\",\"", "\" \""}, 
                    "RowDefault"], "\"substitute \"", 
                    TemplateBox[{
                    RowBox[{"w", "\[LongEqual]", 
                    RowBox[{"x", "-", "1"}]}], "\" \""}, "RowDefault"], 
                    "\"and \"", 
                    TemplateBox[{
                    RowBox[{
                    RowBox[{"\[DifferentialD]", "w"}], "\[LongEqual]", 
                    "\"\""}], "\"\[ThinSpace]\""}, "RowDefault"], 
                    TemplateBox[{
                    RowBox[{"\[DifferentialD]", "x"}], "\":\""}, 
                    "RowDefault"]}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    RowBox[{
                    FractionBox[
                    RowBox[{
                    SuperscriptBox["tan", 
                    RowBox[{"-", "1"}]], "(", "p", ")"}], 
                    SqrtBox["3"]], "+", 
                    FractionBox[
                    RowBox[{"log", "(", "u", ")"}], "6"], "-", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "3"]}], 
                    RowBox[{"\[Integral]", 
                    RowBox[{
                    FractionBox["1", "w"], 
                    RowBox[{"\[DifferentialD]", "w"}]}]}]}]}]}, 
                    "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"The \"", "\"integral \"", "\"of \"", 
                    TemplateBox[{
                    FractionBox["1", "w"], "\" \""}, "RowDefault"], "\"is \"", 
                    TemplateBox[{
                    RowBox[{"log", "(", "w", ")"}], "\":\""}, "RowDefault"]}, 
                    "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    StyleBox[
                    RowBox[{
                    StyleBox[
                    RowBox[{
                    FractionBox[
                    RowBox[{
                    SuperscriptBox["tan", 
                    RowBox[{"-", "1"}]], "(", "p", ")"}], 
                    SqrtBox["3"]], "+", 
                    FractionBox[
                    RowBox[{"log", "(", "u", ")"}], "6"], "-", 
                    FractionBox[
                    RowBox[{"log", "(", "w", ")"}], "3"]}], {
                    GrayLevel[0], LinebreakAdjustments -> {1, 100, 1, 0, 100},
                     LineIndent -> 0}], "+", 
                    StyleBox[
                    "\"constant\"", {
                    Magnification -> 0.9 Inherited, FontFamily -> "Roboto", 
                    FontSize -> Inherited, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}], {
                    GrayLevel[0.6], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"Substitute \"", "\"back \"", "\"for \"", 
                    TemplateBox[{
                    RowBox[{"w", "\[LongEqual]", 
                    RowBox[{"x", "-", "1"}]}], "\":\""}, "RowDefault"]}, 
                    "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    StyleBox[
                    RowBox[{
                    StyleBox[
                    RowBox[{
                    FractionBox[
                    RowBox[{
                    SuperscriptBox["tan", 
                    RowBox[{"-", "1"}]], "(", "p", ")"}], 
                    SqrtBox["3"]], "+", 
                    FractionBox[
                    RowBox[{"log", "(", "u", ")"}], "6"], "-", 
                    RowBox[{
                    FractionBox["1", "3"], " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"x", "-", "1"}], ")"}]}]}], {
                    GrayLevel[0], LinebreakAdjustments -> {1, 100, 1, 0, 100},
                     LineIndent -> 0}], "+", 
                    StyleBox[
                    "\"constant\"", {
                    Magnification -> 0.9 Inherited, FontFamily -> "Roboto", 
                    FontSize -> Inherited, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}], {
                    GrayLevel[0.6], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"Substitute \"", "\"back \"", "\"for \"", 
                    TemplateBox[{
                    RowBox[{"p", "\[LongEqual]", 
                    FractionBox[
                    RowBox[{"2", " ", "s"}], 
                    SqrtBox["3"]]}], "\":\""}, "RowDefault"]}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    StyleBox[
                    RowBox[{
                    StyleBox[
                    RowBox[{
                    FractionBox[
                    RowBox[{
                    SuperscriptBox["tan", 
                    RowBox[{"-", "1"}]], "(", 
                    FractionBox[
                    RowBox[{"2", " ", "s"}], 
                    SqrtBox["3"]], ")"}], 
                    SqrtBox["3"]], "+", 
                    FractionBox[
                    RowBox[{"log", "(", "u", ")"}], "6"], "-", 
                    RowBox[{
                    FractionBox["1", "3"], " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"x", "-", "1"}], ")"}]}]}], {
                    GrayLevel[0], LinebreakAdjustments -> {1, 100, 1, 0, 100},
                     LineIndent -> 0}], "+", 
                    StyleBox[
                    "\"constant\"", {
                    Magnification -> 0.9 Inherited, FontFamily -> "Roboto", 
                    FontSize -> Inherited, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}], {
                    GrayLevel[0.6], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"Substitute \"", "\"back \"", "\"for \"", 
                    TemplateBox[{
                    RowBox[{"s", "\[LongEqual]", 
                    RowBox[{"x", "+", 
                    FractionBox["1", "2"]}]}], "\":\""}, "RowDefault"]}, 
                    "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    StyleBox[
                    RowBox[{
                    StyleBox[
                    RowBox[{
                    FractionBox[
                    RowBox[{"log", "(", "u", ")"}], "6"], "-", 
                    RowBox[{
                    FractionBox["1", "3"], " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"x", "-", "1"}], ")"}]}], "+", 
                    FractionBox[
                    RowBox[{
                    SuperscriptBox["tan", 
                    RowBox[{"-", "1"}]], "(", 
                    FractionBox[
                    RowBox[{
                    RowBox[{"2", " ", "x"}], "+", "1"}], 
                    SqrtBox["3"]], ")"}], 
                    SqrtBox["3"]]}], {
                    GrayLevel[0], LinebreakAdjustments -> {1, 100, 1, 0, 100},
                     LineIndent -> 0}], "+", 
                    StyleBox[
                    "\"constant\"", {
                    Magnification -> 0.9 Inherited, FontFamily -> "Roboto", 
                    FontSize -> Inherited, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}], {
                    GrayLevel[0.6], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    TemplateBox[{"\"Substitute \"", "\"back \"", "\"for \"", 
                    TemplateBox[{
                    RowBox[{"u", "\[LongEqual]", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}]}], 
                    "\":\""}, "RowDefault"]}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    StyleBox[
                    RowBox[{
                    StyleBox[
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"log", "(", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}], ")"}]}], 
                    "-", 
                    RowBox[{
                    FractionBox["1", "3"], " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"x", "-", "1"}], ")"}]}], "+", 
                    FractionBox[
                    RowBox[{
                    SuperscriptBox["tan", 
                    RowBox[{"-", "1"}]], "(", 
                    FractionBox[
                    RowBox[{
                    RowBox[{"2", " ", "x"}], "+", "1"}], 
                    SqrtBox["3"]], ")"}], 
                    SqrtBox["3"]]}], {
                    GrayLevel[0], LinebreakAdjustments -> {1, 100, 1, 0, 100},
                     LineIndent -> 0}], "+", 
                    StyleBox[
                    "\"constant\"", {
                    Magnification -> 0.9 Inherited, FontFamily -> "Roboto", 
                    FontSize -> Inherited, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}], {
                    GrayLevel[0.6], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    
                    TemplateBox[{
                    "\"Factor \"", "\"the \"", "\"answer \"", "\"a \"", 
                    "\"different \"", "\"way:\""}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    StyleBox[
                    RowBox[{
                    StyleBox[
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"log", "(", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}], ")"}], 
                    "-", 
                    RowBox[{"2", " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"x", "-", "1"}], ")"}]}], "+", 
                    RowBox[{"2", " ", 
                    SqrtBox["3"], " ", 
                    RowBox[{
                    SuperscriptBox["tan", 
                    RowBox[{"-", "1"}]], "(", 
                    FractionBox[
                    RowBox[{
                    RowBox[{"2", " ", "x"}], "+", "1"}], 
                    SqrtBox["3"]], ")"}]}]}], ")"}]}], {
                    GrayLevel[0], LinebreakAdjustments -> {1, 100, 1, 0, 100},
                     LineIndent -> 0}], "+", 
                    StyleBox[
                    "\"constant\"", {
                    Magnification -> 0.9 Inherited, FontFamily -> "Roboto", 
                    FontSize -> Inherited, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}], {
                    GrayLevel[0.6], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, "RowDefault"]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}, {
                TagBox[
                 GridBox[{{
                    StyleBox[
                    StyleBox[
                    
                    TemplateBox[{
                    "\"Which \"", "\"is \"", "\"equivalent \"", "\"for \"", 
                    "\"restricted \"", 
                    TemplateBox[{"x", "\" \""}, "RowDefault"], "\"values \"", 
                    "\"to:\""}, "RowDefault"], 
                    GrayLevel[0.3], StripOnInput -> False], {
                    LinebreakAdjustments -> {1, 89, 100, 0, 100}, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, {
                    FrameBox[
                    TagBox[
                    GridBox[{{
                    StyleBox[
                    TemplateBox[{"\"Answer:\""}, "RowDefault"], FontFamily -> 
                    "Roboto", FontSize -> 12, StripOnInput -> False], 
                    "\[SpanFromLeft]"}, {"\"\"", 
                    TemplateBox[{"\" \"", "\"\[LongEqual] \"", 
                    StyleBox[
                    RowBox[{
                    StyleBox[
                    RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"log", "(", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}], ")"}], 
                    "-", 
                    RowBox[{"2", " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"1", "-", "x"}], ")"}]}], "+", 
                    RowBox[{"2", " ", 
                    SqrtBox["3"], " ", 
                    RowBox[{
                    SuperscriptBox["tan", 
                    RowBox[{"-", "1"}]], "(", 
                    FractionBox[
                    RowBox[{
                    RowBox[{"2", " ", "x"}], "+", "1"}], 
                    SqrtBox["3"]], ")"}]}]}], ")"}]}], {
                    GrayLevel[0], LinebreakAdjustments -> {1, 100, 1, 0, 100},
                     LineIndent -> 0}], "+", 
                    StyleBox[
                    "\"constant\"", {
                    Magnification -> 0.9 Inherited, FontFamily -> "Roboto", 
                    FontSize -> Inherited, 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}], {
                    GrayLevel[0.6], 
                    LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                    0}]}, "RowDefault"]}}, 
                    GridBoxAlignment -> {
                    "Columns" -> {{Left}}, "Rows" -> {{Baseline}}}, 
                    AutoDelete -> False, 
                    GridBoxItemSize -> {"Columns" -> {2.5, Automatic}}, 
                    GridBoxSpacings -> {
                    "Columns" -> {2, 0, 3}, "Rows" -> {1.5, 1, 2}}, 
                    AllowScriptLevelChange -> False], "Grid"], FrameStyle -> 
                    Directive[
                    AbsoluteThickness[1], 
                    RGBColor[0.52, 0.76, 0.86]], Background -> 
                    RGBColor[0.91, 0.98, 1], RoundingRadius -> 3, 
                    FrameMargins -> 12, StripOnInput -> False]}}, 
                  GridBoxAlignment -> {"Columns" -> {{Left}}}, 
                  AllowScriptLevelChange -> False, DefaultBaseStyle -> 
                  "Column", 
                  GridBoxItemSize -> {
                   "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
                 "Column"]}}, GridBoxAlignment -> {"Columns" -> {{Left}}}, 
              AllowScriptLevelChange -> False, DefaultBaseStyle -> "Column", 
              GridBoxDividers -> {
               "Columns" -> {{False}}, "Rows" -> {False, {True}, False}}, 
              GridBoxItemSize -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
              GridBoxSpacings -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{3}}}, FrameStyle -> 
              GrayLevel[0.7]], "Column"], TraditionalForm]], "Output", {
          Background -> None, 
           GraphicsBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics"}, 
             DefaultAxesStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsAxes"], DefaultFrameStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsFrame"], DefaultFrameTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsFrameTicks"], 
             DefaultTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsTicks"]}, 
           Graphics3DBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics3D"}}}, 
          NumberPoint -> ".", CellSize -> {550, Automatic}, 
          AutoStyleOptions -> {"HighlightFormattingErrors" -> False}, 
          RenderingOptions -> {
           "3DRenderingMethod" -> "BSPTreeOrDepthBuffer"}]}], 
       XMLElement["dataformats", {}, {"plaintext"}], 
       XMLElement["infos", {"count" -> "2"}, {
         XMLElement[
         "info", {"text" -> "tan^(-1)(x) is the inverse tangent function"}, {
           XMLElement[
           "link", {
            "url" -> "http://reference.wolfram.com/language/ref/ArcTan.html", 
             "text" -> "Documentation", "title" -> "Mathematica"}, {}], 
           XMLElement[
           "link", {
            "url" -> 
             "http://functions.wolfram.com/ElementaryFunctions/ArcTan", 
             "text" -> "Properties", "title" -> 
             "Wolfram Functions Site"}, {}], 
           XMLElement[
           "link", {
            "url" -> "http://mathworld.wolfram.com/InverseTangent.html", 
             "text" -> "Definition", "title" -> "MathWorld"}, {}]}], 
         XMLElement["info", {"text" -> "log(x) is the natural logarithm"}, {
           XMLElement[
           "link", {
            "url" -> "http://reference.wolfram.com/language/ref/Log.html", 
             "text" -> "Documentation", "title" -> "Mathematica"}, {}], 
           XMLElement[
           "link", {
            "url" -> "http://functions.wolfram.com/ElementaryFunctions/Log", 
             "text" -> "Properties", "title" -> 
             "Wolfram Functions Site"}, {}], 
           XMLElement[
           "link", {
            "url" -> "http://mathworld.wolfram.com/NaturalLogarithm.html", 
             "text" -> "Definition", "title" -> "MathWorld"}, {}]}]}]}], 
     XMLElement["expressiontypes", {"count" -> "2"}, {"\n   ", 
       XMLElement["expressiontype", {"name" -> "Default"}, {}], "\n   ", 
       XMLElement["expressiontype", {"name" -> "Default"}, {}], "\n  "}], 
     XMLElement["states", {"count" -> "2"}, {
       XMLElement[
       "state", {
        "name" -> "Approximate form", "input" -> 
         "IndefiniteIntegral__Approximate form"}, {}], 
       XMLElement[
       "state", {
        "name" -> "Hide steps", "input" -> 
         "IndefiniteIntegral__Hide steps"}, {}]}]}], Typeset`pod2$$ = 
   XMLElement[
   "pod", {"title" -> "Plots of the integral", "scanner" -> "Integral", "id" -> 
     "Plot", "position" -> "200", "error" -> "false", "numsubpods" -> "2"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement[
       "minput", {}, {
        "Plot[(2 Sqrt[3] ArcTan[(1 + 2 x)/Sqrt[3]] - 2 Log[1 - x] + Log[1 + x \
+ x^2])/6, {x, -2.1, 2.1}]"}], 
       XMLElement["cell", {"compressed" -> True, "string" -> False}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             FormBox[
              StyleBox[
               
               DynamicModuleBox[{
                CalculateUtilities`GraphicsUtilities`Private`max2246$$ = 0.5, 
                 CalculateUtilities`GraphicsUtilities`Private`min2245$$ = \
-0.5, CalculateUtilities`GraphicsUtilities`Private`more$$ = False, 
                 Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
                 Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, 
                 Typeset`animvar$$ = 1, Typeset`name$$ = "\"untitled\"", 
                 Typeset`specs$$ = {{
                    Hold[
                    CalculateUtilities`GraphicsUtilities`Private`more$$], {
                    False, True}}, {{
                    Hold[
                    CalculateUtilities`GraphicsUtilities`Private`min2245$$], \
-0.5, "min"}, -1, 1}, {{
                    Hold[
                    CalculateUtilities`GraphicsUtilities`Private`max2246$$], 
                    0.5, "max"}, -1, 1}, {
                    Hold[
                    Style[
                    Overlay[{
                    Dynamic[
                    RawBoxes[
                    FEPrivate`FrontEndResource[
                    "WABitmaps", "PodInfoBackground"]]], 
                    Pane[
                    Column[{
                    Grid[{{
                    Manipulate`Place[1], 
                    Manipulate`Place[2]}}]}], 
                    ImageMargins -> {{20, 30}, {10, 10}}]}, {1, 2}, 2, 
                    Alignment -> {Left, Top}]]], 
                    Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = 
                 Automatic, Typeset`update$$ = 0, Typeset`initDone$$ = False, 
                 Typeset`skipInitDone$$ = False, 
                 CalculateUtilities`GraphicsUtilities`Private`more$2629624$$ = 
                 False, CalculateUtilities`GraphicsUtilities`Private`min2245$\
2629629$$ = 0, CalculateUtilities`GraphicsUtilities`Private`max2246$2629630$$ = 
                 0}, 
                DynamicBox[
                 Manipulate`ManipulateBoxes[
                 2, TraditionalForm, 
                  "Variables" :> {
                   CalculateUtilities`GraphicsUtilities`Private`max2246$$ = 
                    0.5, CalculateUtilities`GraphicsUtilities`Private`min2245$\
$ = -0.5, CalculateUtilities`GraphicsUtilities`Private`more$$ = False}, 
                  "ControllerVariables" :> {
                    Hold[
                    CalculateUtilities`GraphicsUtilities`Private`more$$, 
                    CalculateUtilities`GraphicsUtilities`Private`more$2629624$\
$, False], 
                    Hold[
                    CalculateUtilities`GraphicsUtilities`Private`min2245$$, 
                    CalculateUtilities`GraphicsUtilities`Private`min2245$\
2629629$$, 0], 
                    Hold[
                    CalculateUtilities`GraphicsUtilities`Private`max2246$$, 
                    CalculateUtilities`GraphicsUtilities`Private`max2246$\
2629630$$, 0]}, "OtherVariables" :> {
                   Typeset`show$$, Typeset`bookmarkList$$, 
                    Typeset`bookmarkMode$$, Typeset`animator$$, 
                    Typeset`animvar$$, Typeset`name$$, Typeset`specs$$, 
                    Typeset`size$$, Typeset`update$$, Typeset`initDone$$, 
                    Typeset`skipInitDone$$}, "Body" :> Quiet[
                    Function[Null, 
                    Labeled[
                    CalculateUtilities`GraphicsUtilities`Private`post$2629601[
                    Plot[{
                    Re[
                    Rational[
                    1, 6] ((2 3^Rational[1, 2]) 
                    ArcTan[3^Rational[-1, 2] (1 + 2 $CellContext`x)] - 2 
                    Log[1 - $CellContext`x] + 
                    Log[1 + $CellContext`x + $CellContext`x^2])], 
                    Im[
                    Rational[
                    1, 6] ((2 3^Rational[1, 2]) 
                    ArcTan[3^Rational[-1, 2] (1 + 2 $CellContext`x)] - 2 
                    Log[1 - $CellContext`x] + 
                    Log[1 + $CellContext`x + $CellContext`x^2])]}, 
                    SlotSequence[2], PlotStyle -> {{
                    Directive[
                    RGBColor[0.24720000000000014`, 0.24, 0.6], 
                    AbsoluteThickness[1]]}, 
                    Directive[
                    RGBColor[1, 0.3, 0], 
                    AbsoluteThickness[1]]}]], 
                    Column[{
                    Row[{
                    Graphics[{
                    Directive[
                    RGBColor[0.24720000000000014`, 0.24, 0.6], 
                    AbsoluteThickness[1]], 
                    AbsoluteThickness[1], 
                    Line[{{0, 0}, {10, 0}}]}, ImageSize -> {20, 4}, 
                    BaselinePosition -> (Center -> Center)], 
                    Style[" real part", Smaller, 
                    GrayLevel[0.3]]}], 
                    Row[{
                    Graphics[{
                    Directive[
                    RGBColor[1, 0.3, 0], 
                    AbsoluteThickness[1]], 
                    AbsoluteThickness[1], 
                    Line[{{0, 0}, {10, 0}}]}, ImageSize -> {20, 4}, 
                    BaselinePosition -> (Center -> Center)], 
                    Style[" imaginary part", Smaller, 
                    GrayLevel[0.3]]}]}, Spacings -> 0], {{Right, Bottom}}], 
                    HoldAll][
                    Rational[
                    1, 6] ((2 3^Rational[1, 2]) 
                    ArcTan[3^Rational[-1, 2] (1 + 2 $CellContext`x)] - 2 
                    Log[1 - $CellContext`x] + 
                    Log[1 + $CellContext`x + $CellContext`x^2]), \
{$CellContext`x, 
                    If[
                    NumericQ[
                    CalculateUtilities`GraphicsUtilities`Private`min2245$$], 
                    (
                    Piecewise[{{
                    0. + 2.2207808513229135` Tan[1.5040801783846716` #], # < 
                    0}}, 0. + 
                    2.2207808513229135` Tan[1.5040801783846716` #]]& )[
                    CalculateUtilities`GraphicsUtilities`Private`min2245$$], \
-2.0773502691896257`], 
                    If[
                    And[
                    NumericQ[
                    CalculateUtilities`GraphicsUtilities`Private`min2245$$], 
                    NumericQ[
                    CalculateUtilities`GraphicsUtilities`Private`max2246$$]], 
                    (
                    Piecewise[{{
                    0. + 2.2207808513229135` Tan[1.5040801783846716` #], # < 
                    0}}, 0. + 
                    2.2207808513229135` Tan[1.5040801783846716` #]]& )[
                    If[CalculateUtilities`GraphicsUtilities`Private`min2245$$ == 
                    CalculateUtilities`GraphicsUtilities`Private`max2246$$, 
                    CalculateUtilities`GraphicsUtilities`Private`min2245$$ + 
                    0.004154700538379252, 
                    CalculateUtilities`GraphicsUtilities`Private`max2246$$]], 
                    2.0773502691896257`]}, 
                    LabelStyle -> {FontFamily -> "Bitstream Charter"}, 
                    WorkingPrecision -> MachinePrecision, 
                    PlotRange -> {Full, Automatic}, LabelStyle -> {}, Ticks -> 
                    Automatic, ImageSize -> Scaled[0.4], AxesLabel -> {
                    RawBoxes[
                    FormBox["x", TraditionalForm]], None}]], 
                  "Specifications" :> {{
                    CalculateUtilities`GraphicsUtilities`Private`more$$, {
                    False, True}, ControlType -> None}, {{
                    CalculateUtilities`GraphicsUtilities`Private`min2245$$, \
-0.5, "min"}, -1, 1, ImageSize -> Tiny, ControlPlacement -> 1}, {{
                    CalculateUtilities`GraphicsUtilities`Private`max2246$$, 
                    0.5, "max"}, -1, 1, ImageSize -> Tiny, ControlPlacement -> 
                    2}, 
                    Style[
                    Overlay[{
                    Dynamic[
                    RawBoxes[
                    FEPrivate`FrontEndResource[
                    "WABitmaps", "PodInfoBackground"]]], 
                    Pane[
                    Column[{
                    Grid[{{
                    Manipulate`Place[1], 
                    Manipulate`Place[2]}}]}], 
                    ImageMargins -> {{20, 30}, {10, 10}}]}, {1, 2}, 2, 
                    Alignment -> {Left, Top}]]}, 
                  "Options" :> {
                   ControlPlacement -> Bottom, 
                    FrameMargins -> {{0, 0}, {0, 10}}, Paneled -> False, 
                    AppearanceElements -> {}, 
                    LabelStyle -> {
                    "DialogStyle", FontColor -> GrayLevel[0.25]}}, 
                  "DefaultOptions" :> {}], SingleEvaluation -> True], 
                Initialization :> ({
                   ReleaseHold[
                    Hold[
                    CalculateUtilities`GraphicsUtilities`Private`WACleanTicks[
                    Pattern[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, 
                    Blank[]]] := 
                    Module[{
                    CalculateUtilities`GraphicsUtilities`Private`res, 
                    CalculateUtilities`GraphicsUtilities`Private`unitformat}, 
                    CalculateUtilities`GraphicsUtilities`Private`res = 
                    ReplaceAll[
                    ReplaceAll[
                    Part[
                    DeleteCases[
                    Replace[
                    ReplaceAll[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, 
                    Alternatives[
                    Style, $CellContext`UnitNumberForm, NumberForm] -> (#& )],
                     Pattern[CalculateUtilities`GraphicsUtilities`Private`t, {
                    PatternTest[
                    BlankSequence[], NumberQ]}] :> 
                    Thread[{CalculateUtilities`GraphicsUtilities`Private`t, 
                    CalculateUtilities`GraphicsUtilities`Private`t}]], {
                    Blank[], "", 
                    BlankNullSequence[]}], All, 
                    Span[1, 2]], Superscript[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`b, 
                    Blank[Integer]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`p, 
                    Blank[Integer]]] :> 
                    CalculateUtilities`GraphicsUtilities`Private`b^
                    CalculateUtilities`GraphicsUtilities`Private`p], Row[{
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`a, 
                    BlankSequence[]]}, "\[Times]"] :> 
                    Times[CalculateUtilities`GraphicsUtilities`Private`a]]; If[
                    MatchQ[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`res, All, 2], 
                    Condition[
                    Pattern[
                    CalculateUtilities`GraphicsUtilities`Private`quants, {
                    Alternatives[
                    BlankSequence[$CellContext`ShortQuantity], 
                    BlankSequence[Quantity]]}], Length[
                    Union[
                    
                    Map[$CellContext`UnitObjectPart, 
                    CalculateUtilities`GraphicsUtilities`Private`quants]]] == 
                    1]], CalculateUtilities`GraphicsUtilities`Private`\
unitformat = $CellContext`ToCDFQuantityFunction[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`res, 1, 2]]; 
                    CalculateUtilities`GraphicsUtilities`Private`unitformat -> 
                    Thread[{
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`res, All, 1], 
                    $CellContext`QuantityPart[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`res, All, 2], 
                    $CellContext`UnitObjectPart[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`res, 1, 
                    2]]]}], 
                    CalculateUtilities`GraphicsUtilities`Private`res]]; 
                    Options[
                    CalculateUtilities`GraphicsUtilities`Private`post$2629601]\
 = {"ReturnInteractiveTypes" -> False, "Nearest" -> Automatic}; 
                    CalculateUtilities`GraphicsUtilities`Private`post$2629601[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`g, 
                    Blank[Graphics]], 
                    OptionsPattern[]] := Check[
                    
                    Module[{
                    CalculateUtilities`GraphicsUtilities`Private`lines, 
                    CalculateUtilities`GraphicsUtilities`Private`pts, 
                    CalculateUtilities`GraphicsUtilities`Private`gg, 
                    CalculateUtilities`GraphicsUtilities`Private`type, 
                    CalculateUtilities`GraphicsUtilities`Private`b, 
                    CalculateUtilities`GraphicsUtilities`Private`l, 
                    CalculateUtilities`GraphicsUtilities`Private`t, 
                    CalculateUtilities`GraphicsUtilities`Private`r, 
                    CalculateUtilities`GraphicsUtilities`Private`oldepilog, 
                    CalculateUtilities`GraphicsUtilities`Private`range, 
                    CalculateUtilities`GraphicsUtilities`Private`gridlines, 
                    CalculateUtilities`GraphicsUtilities`Private`oldgridlines,
                     CalculateUtilities`GraphicsUtilities`Private`\
neareststyle = OptionValue["Nearest"]}, 
                    CalculateUtilities`GraphicsUtilities`Private`oldepilog = 
                    Replace[
                    ReplaceAll[Epilog, 
                    Options[CalculateUtilities`GraphicsUtilities`Private`g]], 
                    Epilog -> Sequence[]]; Switch[
                    ReplaceAll[{Frame, Axes}, 
                    Options[
                    CalculateUtilities`GraphicsUtilities`Private`g]], {True, 
                    Blank[]}, 
                    CalculateUtilities`GraphicsUtilities`Private`type = 
                    Frame; {CalculateUtilities`GraphicsUtilities`Private`b, 
                    CalculateUtilities`GraphicsUtilities`Private`l, 
                    CalculateUtilities`GraphicsUtilities`Private`t, 
                    CalculateUtilities`GraphicsUtilities`Private`r} = 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Frame, 
                    ReplaceAll[FrameTicks, 
                    Options[
                    CalculateUtilities`GraphicsUtilities`Private`g]]], {
                    Blank[], True}, 
                    CalculateUtilities`GraphicsUtilities`Private`type = 
                    Axes; {CalculateUtilities`GraphicsUtilities`Private`b, 
                    CalculateUtilities`GraphicsUtilities`Private`l} = 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Axes, 
                    ReplaceAll[Ticks, 
                    Options[CalculateUtilities`GraphicsUtilities`Private`g]]], 
                    Blank[], 
                    CalculateUtilities`GraphicsUtilities`Private`type = None]; 
                    If[
                    And[
                    CalculateUtilities`GraphicsUtilities`Private`type === 
                    Frame, 
                    Or[
                    Not[
                    Or[
                    CalculateUtilities`GraphicsUtilities`Private`t === None, 
                    CalculateUtilities`GraphicsUtilities`Private`b === 
                    CalculateUtilities`GraphicsUtilities`Private`t]], 
                    Not[
                    Or[
                    CalculateUtilities`GraphicsUtilities`Private`r === None, 
                    CalculateUtilities`GraphicsUtilities`Private`l === 
                    CalculateUtilities`GraphicsUtilities`Private`r]]]], 
                    CalculateUtilities`GraphicsUtilities`Private`type = None]; 
                    If[
                    TrueQ[
                    OptionValue["ReturnInteractiveTypes"]], 
                    Which[
                    Or[
                    CalculateUtilities`GraphicsUtilities`Private`type === 
                    None, CalculateUtilities`GraphicsUtilities`Private`b === 
                    None, CalculateUtilities`GraphicsUtilities`Private`l === 
                    None], {}, 
                    FreeQ[CalculateUtilities`GraphicsUtilities`Private`g, 
                    Alternatives[Line, Point]], {}, True, {
                    "Tooltips", "Coordinates"}], If[
                    FreeQ[CalculateUtilities`GraphicsUtilities`Private`g, 
                    Alternatives[Line, Point]], 
                    Return[CalculateUtilities`GraphicsUtilities`Private`g]]; 
                    CalculateUtilities`GraphicsUtilities`Private`gg = 
                    Normal[CalculateUtilities`GraphicsUtilities`Private`g]; 
                    CalculateUtilities`GraphicsUtilities`Private`pts = 
                    Partition[
                    Flatten[
                    Cases[
                    Part[CalculateUtilities`GraphicsUtilities`Private`gg, 1], 
                    Point[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`a, 
                    Blank[]]] :> 
                    CalculateUtilities`GraphicsUtilities`Private`a, 
                    Infinity]], 2]; 
                    If[Length[
                    CalculateUtilities`GraphicsUtilities`Private`pts] < 2, 
                    CalculateUtilities`GraphicsUtilities`Private`lines = Cases[
                    Part[CalculateUtilities`GraphicsUtilities`Private`gg, 1], 
                    Blank[Line], Infinity]; 
                    If[CalculateUtilities`GraphicsUtilities`Private`lines === \
{}, 
                    Return[CalculateUtilities`GraphicsUtilities`Private`g]]; 
                    CalculateUtilities`GraphicsUtilities`Private`pts = Flatten[
                    Cases[
                    CalculateUtilities`GraphicsUtilities`Private`lines, Line[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`a, 
                    Blank[]]] :> 
                    CalculateUtilities`GraphicsUtilities`Private`a, Infinity],
                     1]; 
                    If[CalculateUtilities`GraphicsUtilities`Private`\
neareststyle === Automatic, If[
                    CalculateUtilities`GraphicsUtilities`Private`orderedLines[
                    CalculateUtilities`GraphicsUtilities`Private`lines], 
                    CalculateUtilities`GraphicsUtilities`Private`neareststyle = 
                    "1D", CalculateUtilities`GraphicsUtilities`Private`\
neareststyle = "2D"]; Null], 
                    If[
                    CalculateUtilities`GraphicsUtilities`Private`neareststyle === 
                    Automatic, 
                    CalculateUtilities`GraphicsUtilities`Private`neareststyle = 
                    "2D"]]; 
                    CalculateUtilities`GraphicsUtilities`Private`range = 
                    Replace[
                    ReplaceAll[PlotRange, 
                    Options[CalculateUtilities`GraphicsUtilities`Private`g]], 
                    Except[{{
                    PatternTest[
                    Blank[], NumberQ], 
                    PatternTest[
                    Blank[], NumberQ]}, {
                    PatternTest[
                    Blank[], NumberQ], 
                    PatternTest[
                    Blank[], NumberQ]}}] :> {
                    Through[
                    {Min, Max}[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`pts, All, 
                    1]]], 
                    Through[
                    {Min, Max}[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`pts, All, 
                    2]]]}]; CalculateUtilities`GraphicsUtilities`Private`b = 
                    CalculateUtilities`GraphicsUtilities`Private`\
RefineCoordinateFunction[CalculateUtilities`GraphicsUtilities`Private`b, 
                    First[CalculateUtilities`GraphicsUtilities`Private`range], 
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`pts, All, 
                    1]]; CalculateUtilities`GraphicsUtilities`Private`l = 
                    CalculateUtilities`GraphicsUtilities`Private`\
RefineCoordinateFunction[CalculateUtilities`GraphicsUtilities`Private`l, 
                    Last[CalculateUtilities`GraphicsUtilities`Private`range], 
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`pts, All, 
                    2]]; CalculateUtilities`GraphicsUtilities`Private`\
oldgridlines = ReplaceAll[GridLines, 
                    Options[CalculateUtilities`GraphicsUtilities`Private`g]]; 
                    CalculateUtilities`GraphicsUtilities`Private`gridlines = 
                    With[{CalculateUtilities`GraphicsUtilities`Private`gray = 
                    GrayLevel[0.7]}, 
                    Replace[
                    CalculateUtilities`GraphicsUtilities`Private`oldgridlines,\
 {Pattern[CalculateUtilities`GraphicsUtilities`Private`a, {
                    Blank[List], 
                    Blank[List]}] :> Dynamic[
                    Join[CalculateUtilities`GraphicsUtilities`Private`a, 
                    Replace[
                    MousePosition[{"Graphics", Graphics}, None], {
                    None -> {{}, {}}, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`x, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`y, 
                    Blank[]]} :> {{{
                    CalculateUtilities`GraphicsUtilities`Private`x, 
                    CalculateUtilities`GraphicsUtilities`Private`gray}}, {{
                    CalculateUtilities`GraphicsUtilities`Private`y, 
                    CalculateUtilities`GraphicsUtilities`Private`gray}}}}], 
                    2]], {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`a, 
                    Blank[List]], Automatic} :> 
                    With[{CalculateUtilities`GraphicsUtilities`Private`\
divisions = {CalculateUtilities`GraphicsUtilities`Private`a, 
                    FindDivisions[
                    Last[CalculateUtilities`GraphicsUtilities`Private`range], 
                    7]}}, 
                    Dynamic[
                    Join[
                    CalculateUtilities`GraphicsUtilities`Private`divisions, 
                    Replace[
                    MousePosition[{"Graphics", Graphics}, None], {
                    None -> {{}, {}}, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`x, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`y, 
                    Blank[]]} :> {{{
                    CalculateUtilities`GraphicsUtilities`Private`x, 
                    CalculateUtilities`GraphicsUtilities`Private`gray}}, {{
                    CalculateUtilities`GraphicsUtilities`Private`y, 
                    CalculateUtilities`GraphicsUtilities`Private`gray}}}}], 
                    2]]], Blank[] -> Dynamic[
                    
                    Map[{{#, 
                    CalculateUtilities`GraphicsUtilities`Private`gray}}& , 
                    MousePosition[{"Graphics", Graphics}, None]]]}]]; If[
                    Or[
                    CalculateUtilities`GraphicsUtilities`Private`type === 
                    None, CalculateUtilities`GraphicsUtilities`Private`b === 
                    None, CalculateUtilities`GraphicsUtilities`Private`l === 
                    None], 
                    Show[
                    CalculateUtilities`GraphicsUtilities`Private`g, GridLines -> 
                    CalculateUtilities`GraphicsUtilities`Private`gridlines, 
                    If[
                    MatchQ[
                    CalculateUtilities`GraphicsUtilities`Private`oldgridlines, 
                    Alternatives[None, GridLines]], 
                    Method -> {"GridLinesInFront" -> True}, 
                    Apply[Sequence, {}]]], 
                    
                    With[{CalculateUtilities`GraphicsUtilities`Private`nf = 
                    If[CalculateUtilities`GraphicsUtilities`Private`\
neareststyle === "1D", 
                    
                    With[{CalculateUtilities`GraphicsUtilities`Private`n = 
                    Nearest[Part[
                    CalculateUtilities`GraphicsUtilities`Private`pts, All, 1] -> 
                    CalculateUtilities`GraphicsUtilities`Private`pts]}, 
                    CalculateUtilities`GraphicsUtilities`Private`n[
                    Part[#, 1]]& ], 
                    
                    With[{CalculateUtilities`GraphicsUtilities`Private`n = 
                    Nearest[Transpose[
                    Transpose[
                    CalculateUtilities`GraphicsUtilities`Private`pts]/Abs[
                    Apply[Subtract, 
                    CalculateUtilities`GraphicsUtilities`Private`range, {
                    1}]]] -> 
                    CalculateUtilities`GraphicsUtilities`Private`pts], 
                    CalculateUtilities`GraphicsUtilities`Private`scale = Abs[
                    Apply[
                    Subtract, 
                    CalculateUtilities`GraphicsUtilities`Private`range, {
                    1}]]}, CalculateUtilities`GraphicsUtilities`Private`n[#/
                    CalculateUtilities`GraphicsUtilities`Private`scale]& ]], 
                    CalculateUtilities`GraphicsUtilities`Private`left = 
                    CalculateUtilities`GraphicsUtilities`Private`l, 
                    CalculateUtilities`GraphicsUtilities`Private`bottom = 
                    CalculateUtilities`GraphicsUtilities`Private`b}, 
                    Show[
                    CalculateUtilities`GraphicsUtilities`Private`g, GridLines -> 
                    CalculateUtilities`GraphicsUtilities`Private`gridlines, 
                    If[
                    MatchQ[
                    CalculateUtilities`GraphicsUtilities`Private`oldgridlines, 
                    Alternatives[None, GridLines]], 
                    Method -> {"GridLinesInFront" -> True}, 
                    Apply[Sequence, {}]], 
                    Epilog -> {
                    CalculateUtilities`GraphicsUtilities`Private`oldepilog, 
                    Dynamic[
                    
                    DynamicModule[{
                    CalculateUtilities`GraphicsUtilities`Private`pt = 
                    CalculateUtilities`GraphicsUtilities`Private`nf[
                    MousePosition[{"Graphics", Graphics}, {0, 0}]], 
                    CalculateUtilities`GraphicsUtilities`Private`scaled = 
                    MousePosition[{"GraphicsScaled", Graphics}, None]}, 
                    If[
                    CalculateUtilities`GraphicsUtilities`Private`scaled === 
                    None, {}, {
                    Text[
                    Style[
                    Row[{
                    CalculateUtilities`GraphicsUtilities`Private`bottom[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`pt, 1, 1]], 
                    CalculateUtilities`GraphicsUtilities`Private`left[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`pt, 1, 2]]}, 
                    ","], 12], 
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`pt, 1], {
                    1.5 Sign[Part[
                    CalculateUtilities`GraphicsUtilities`Private`scaled, 1] - 
                    0.5], 0}, Background -> White], 
                    AbsolutePointSize[7], 
                    Point[CalculateUtilities`GraphicsUtilities`Private`pt], 
                    White, 
                    AbsolutePointSize[5], 
                    Point[
                    CalculateUtilities`GraphicsUtilities`Private`pt]}]]]}]]]]]\
, CalculateUtilities`GraphicsUtilities`Private`g]; 
                    CalculateUtilities`GraphicsUtilities`Private`post$2629601[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`g, 
                    Blank[]], 
                    BlankNullSequence[]] := 
                    CalculateUtilities`GraphicsUtilities`Private`g; 
                    CalculateUtilities`GraphicsUtilities`Private`orderedLines[{
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`l, 
                    BlankSequence[Line]]}] := 
                    Module[{
                    CalculateUtilities`GraphicsUtilities`Private`ordered, 
                    CalculateUtilities`GraphicsUtilities`Private`intervals}, 
                    CalculateUtilities`GraphicsUtilities`Private`ordered = 
                    Apply[And, 
                    Map[OrderedQ[
                    Part[#, 1, All, 1]]& , 
                    Hold[CalculateUtilities`GraphicsUtilities`Private`l]]]; If[
                    Not[
                    TrueQ[
                    CalculateUtilities`GraphicsUtilities`Private`ordered]], 
                    Return[False]]; 
                    CalculateUtilities`GraphicsUtilities`Private`intervals = 
                    Part[{CalculateUtilities`GraphicsUtilities`Private`l}, 
                    All, 1, {1, -1}, 1]; Length[
                    Apply[
                    Interval, 
                    CalculateUtilities`GraphicsUtilities`Private`intervals]] === 
                    Length[CalculateUtilities`GraphicsUtilities`Private`\
intervals]]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Frame, 
                    Alternatives[Automatic, FrameTicks]] = {
                    Identity, Identity, Identity, Identity}; 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Frame, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`b, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`l, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`t, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`r, 
                    Blank[]]}] := 
                    Map[CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction, {CalculateUtilities`GraphicsUtilities`Private`b, 
                    CalculateUtilities`GraphicsUtilities`Private`l, 
                    CalculateUtilities`GraphicsUtilities`Private`t, 
                    CalculateUtilities`GraphicsUtilities`Private`r}]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Frame, {{
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`l, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`r, 
                    Blank[]]}, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`b, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`t, 
                    Blank[]]}}] := 
                    Map[CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction, {CalculateUtilities`GraphicsUtilities`Private`b, 
                    CalculateUtilities`GraphicsUtilities`Private`l, 
                    CalculateUtilities`GraphicsUtilities`Private`t, 
                    CalculateUtilities`GraphicsUtilities`Private`r}]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Frame, 
                    Blank[]] = {None, None, None, None}; 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Axes, 
                    Alternatives[Automatic, Ticks]] = {Identity, Identity}; 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Axes, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`h, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`v, 
                    Blank[]]}] := 
                    Map[CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction, {CalculateUtilities`GraphicsUtilities`Private`h, 
                    CalculateUtilities`GraphicsUtilities`Private`v}]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Axes, 
                    Blank[]] = {None, None}; 
                    CalculateUtilities`GraphicsUtilities`Private`CDFCleanTicks[
                    Pattern[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, 
                    Blank[]]] := ReplaceAll[
                    ReplaceAll[
                    Part[
                    DeleteCases[
                    ReplaceAll[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, 
                    Alternatives[Style, NumberForm] -> (#& )], {
                    Blank[], "", 
                    BlankNullSequence[]}], All, 
                    Span[1, 2]], Superscript[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`b, 
                    Blank[Integer]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`p, 
                    Blank[Integer]]] :> 
                    CalculateUtilities`GraphicsUtilities`Private`b^
                    CalculateUtilities`GraphicsUtilities`Private`p], Row[{
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`a, 
                    BlankSequence[]]}, "\[Times]"] :> 
                    Times[CalculateUtilities`GraphicsUtilities`Private`a]]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction[
                    Pattern[
                    CalculateUtilities`GraphicsUtilities`Private`ticks$, 
                    Blank[]]] := 
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[
                    CalculateUtilities`GraphicsUtilities`Private`WACleanTicks[
                    CalculateUtilities`GraphicsUtilities`Private`ticks$]]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction[None] = None; 
                    CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction[False] = None; 
                    CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction[True] = None; 
                    CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction[Automatic] = Identity; 
                    CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction[All] = Identity; 
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[Pattern[CalculateUtilities`GraphicsUtilities`Private`func, 
                    Blank[]] -> 
                    Pattern[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, 
                    Blank[]]] := Replace[
                    
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[CalculateUtilities`GraphicsUtilities`Private`ticks], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`f, 
                    Except[None]] :> 
                    Composition[
                    CalculateUtilities`GraphicsUtilities`Private`func, 
                    CalculateUtilities`GraphicsUtilities`Private`f]]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[{}] = None; 
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[
                    Pattern[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, {
                    Repeated[{
                    Blank[Integer], 
                    Blank[String]}]}]] := Which[
                    Quiet[
                    MatchQ[
                    Apply[SameQ, 
                    Map[Part[
                    DateList[#], 
                    Span[2, All]]& , 
                    CalculateUtilities`GraphicsUtilities`Private`ticks, {
                    2}], {1}], {
                    Repeated[True]}]], DateString, 
                    Apply[And, 
                    StringMatchQ[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, All, 
                    2], NumberString]], 
                    
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[
                    Transpose[{
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, All, 
                    1], 
                    ToExpression[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, All, 
                    2]]}]], True, None]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[
                    Pattern[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, {
                    Repeated[{
                    PatternTest[
                    Blank[], NumericQ], 
                    PatternTest[
                    Blank[], NumericQ]}]}]] := Which[
                    MatchQ[
                    Apply[
                    Equal, CalculateUtilities`GraphicsUtilities`Private`ticks,\
 {1}], {
                    Repeated[True]}], Identity, 
                    MatchQ[
                    
                    Apply[# == Log[#2]& , 
                    CalculateUtilities`GraphicsUtilities`Private`ticks, {1}], {
                    Repeated[True]}], Exp, 
                    TrueQ[
                    Quiet[
                    Apply[Equal, 
                    Apply[Divide, Transpose[
                    Rest[CalculateUtilities`GraphicsUtilities`Private`ticks]] - 
                    Part[CalculateUtilities`GraphicsUtilities`Private`ticks, 
                    1]]]]], 
                    
                    With[{CalculateUtilities`GraphicsUtilities`Private`slope = 
                    Apply[Divide, 
                    Apply[Subtract, 
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, {-1, 
                    1}]]]}, 
                    SetPrecision[(# - Part[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, 1, 
                    1])/CalculateUtilities`GraphicsUtilities`Private`slope + 
                    Part[CalculateUtilities`GraphicsUtilities`Private`ticks, 
                    1, 2], 3]& ], True, None]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[
                    Blank[]] = None; 
                    CalculateUtilities`GraphicsUtilities`Private`\
RefineCoordinateFunction[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`type, 
                    Blank[]], 
                    BlankNullSequence[]] := 
                    CalculateUtilities`GraphicsUtilities`Private`type; 
                    CalculateUtilities`GraphicsUtilities`Private`\
RefineCoordinateFunction[Identity, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`min, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`max, 
                    Blank[]]}, 
                    Blank[]] := 
                    With[{CalculateUtilities`GraphicsUtilities`Private`nf = 
                    CalculateUtilities`GraphicsUtilities`Private`numberForm, 
                    CalculateUtilities`GraphicsUtilities`Private`acc = 
                    Floor[Max[
                    Ceiling[
                    FullSimplify[Log[10, 
                    Max[
                    
                    Abs[{CalculateUtilities`GraphicsUtilities`Private`min, 
                    CalculateUtilities`GraphicsUtilities`Private`max}]]] - 
                    Log[10, (CalculateUtilities`GraphicsUtilities`Private`max - 
                    CalculateUtilities`GraphicsUtilities`Private`min)/100]]], 
                    3] - RealExponent[
                    Max[
                    
                    Abs[{CalculateUtilities`GraphicsUtilities`Private`min, 
                    CalculateUtilities`GraphicsUtilities`Private`max}]]]]}, 
                    CalculateUtilities`GraphicsUtilities`Private`nf[#, 
                    CalculateUtilities`GraphicsUtilities`Private`acc]& ]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
RefineCoordinateFunction[Exp, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`min, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`max, 
                    Blank[]]}, 
                    Blank[]] := 
                    With[{CalculateUtilities`GraphicsUtilities`Private`prec = 
                    Max[
                    Ceiling[
                    FullSimplify[Log[10, 
                    Max[
                    
                    Abs[{CalculateUtilities`GraphicsUtilities`Private`min, 
                    CalculateUtilities`GraphicsUtilities`Private`max}]]] - 
                    Log[10, (CalculateUtilities`GraphicsUtilities`Private`max - 
                    CalculateUtilities`GraphicsUtilities`Private`min)/100]]], 
                    3]}, Quiet[
                    RawBoxes[
                    ToBoxes[
                    NumberForm[
                    Exp[#], 
                    CalculateUtilities`GraphicsUtilities`Private`prec]]]]& ]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
RefineCoordinateFunction[DateString, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`min, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`max, 
                    Blank[]]}, 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`pts, 
                    Blank[]]] := 
                    Module[{
                    CalculateUtilities`GraphicsUtilities`Private`dates, 
                    CalculateUtilities`GraphicsUtilities`Private`spec}, 
                    CalculateUtilities`GraphicsUtilities`Private`dates = 
                    Map[DateList, 
                    CalculateUtilities`GraphicsUtilities`Private`pts]; 
                    CalculateUtilities`GraphicsUtilities`Private`spec = Switch[
                    Map[Length, 
                    Map[Union, 
                    Transpose[
                    CalculateUtilities`GraphicsUtilities`Private`dates]]], {
                    Blank[], 1, 1, 
                    BlankSequence[]}, {"Year"}, {
                    Blank[], 
                    Blank[], 1, 
                    BlankSequence[]}, {"MonthNameShort", " ", "Year"}, 
                    Blank[], {
                    "DayShort", " ", "MonthNameShort", " ", "Year"}]; 
                    If[(CalculateUtilities`GraphicsUtilities`Private`max - 
                    CalculateUtilities`GraphicsUtilities`Private`min)/
                    31536000 > 25, 
                    CalculateUtilities`GraphicsUtilities`Private`spec = {
                    "Year"}]; 
                    With[{CalculateUtilities`GraphicsUtilities`Private`s = 
                    CalculateUtilities`GraphicsUtilities`Private`spec}, 
                    DateString[#, 
                    CalculateUtilities`GraphicsUtilities`Private`s]& ]]; 
                    CalculateUtilities`GraphicsUtilities`Private`numberForm = 
                    Function[{
                    CalculateUtilities`GraphicsUtilities`Private`a, 
                    CalculateUtilities`GraphicsUtilities`Private`acc}, 
                    Quiet[
                    RawBoxes[
                    ToBoxes[
                    NumberForm[CalculateUtilities`GraphicsUtilities`Private`a, 
                    Max[1, 
                    Ceiling[
                    RealExponent[
                    CalculateUtilities`GraphicsUtilities`Private`a] + 
                    CalculateUtilities`GraphicsUtilities`Private`acc]], 
                    ExponentFunction -> (Null& ), 
                    NumberFormat -> (StringReplace[#, StringExpression[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`s, 
                    BlankSequence[]], ".", EndOfString] -> 
                    CalculateUtilities`GraphicsUtilities`Private`s]& )]]]]]]], 
                   ReleaseHold[
                    Uncompress[
                    "6:eJztVm1v0zAQbikw3t/+\
ARKfkdahSXxAgnVsTBpQkvK9t8RJLFw72M42+PPgs5ukWbtKMR2gKf1wqi/\
N47vnnrve8xMRJP1er6duGvNBsDjZwtMzY0ZilouCx+/Pc0mUooInN/\
DZPWNCovcJgx8kdr7bxhwIOQPtzm/wfWBRwUCTr5oyqilR00MJeUYjVXvGkp6an0yZiIDRn+\
TFcHf4end7x8FgLGPQmkiudtpC5pkERZIeAt0yZo8B/+aOT8vjp4KxkHwvCI+\
Iemy8EwmxgREcGObjfev1ZuoBJqaBxyDjK6fJynPU9gKlJeXphMxyfONysrbbAoNMlePmYcnNOgW58\
O/gAxHamJzHJm3PlkC/MK4ZfRdl9c+5G+\
D5bVt4Kc5WE4f5vWPIG2h6StQynS9b18kxUnWtjX7O1VXNl40GefmUqf+\
XjqnSy2EM24ZBZiemxqu1twz/qi28yLHr5+J+\
ZMxn5ygBVw2HSnAfRVyweRTNlAdOou3TVblxOIz7Fd8hOn0qWOEEJs6yX2x/\
PKnA600hxNpNNyAdXs+AgOTEuGLL7T5NqR5lICEywPPr+\
mWTTUQdised7WtPeUzNAHOErFue0BwlC3UHHWVf/qi4lVwuNBnyfsQ1SYlcK/\
q7WB9pyOXxRHhGEuIFTb16c1glNQbpLftBCRLmwClC0l/mY7+5h4uVQKoOJapLOhYHtjTn/\
kn0ywIfE57qrLlje44u77bFbAJxVqsuoEmyOG02x3S/yXTjhuZA9yXBtyT+\
A73bFLpN4a9uCkt7cLcmdGtCtyZ0a0K3Jvy/a4KNGP+VfgPYo7iG"]]}; 
                 Typeset`initDone$$ = True), DynamicModuleValues :> {}, 
                Deinitialization :> None, 
                UntrackedVariables :> {Typeset`size$$}, 
                SynchronousInitialization -> True, 
                UnsavedVariables :> {Typeset`initDone$$}, 
                UndoTrackedVariables :> {
                 Typeset`show$$, Typeset`bookmarkMode$$}], "Manipulate", 
               Deployed -> True, StripOnInput -> False], TraditionalForm], 
             Manipulate`InterpretManipulate[1]], TraditionalForm]], 
          "Output", {
          Background -> None, 
           GraphicsBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics"}, 
             DefaultAxesStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsAxes"], DefaultFrameStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsFrame"], DefaultFrameTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsFrameTicks"], 
             DefaultTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsTicks"]}, 
           Graphics3DBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics3D"}}}, 
          NumberPoint -> ".", CellSize -> {550, Automatic}, 
          AutoStyleOptions -> {"HighlightFormattingErrors" -> False}, 
          RenderingOptions -> {
           "3DRenderingMethod" -> "BSPTreeOrDepthBuffer"}]}], 
       XMLElement["dataformats", {}, {"minput"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement[
       "minput", {}, {
        "Plot[(2 Sqrt[3] ArcTan[(1 + 2 x)/Sqrt[3]] - 2 Log[1 - x] + Log[1 + x \
+ x^2])/6, {x, -12., 12.}]"}], 
       XMLElement["cell", {"compressed" -> True, "string" -> False}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             FormBox[
              StyleBox[
               
               DynamicModuleBox[{
                CalculateUtilities`GraphicsUtilities`Private`max2248$$ = 0.5, 
                 CalculateUtilities`GraphicsUtilities`Private`min2247$$ = \
-0.5, CalculateUtilities`GraphicsUtilities`Private`more$$ = False, 
                 Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
                 Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, 
                 Typeset`animvar$$ = 1, Typeset`name$$ = "\"untitled\"", 
                 Typeset`specs$$ = {{
                    Hold[
                    CalculateUtilities`GraphicsUtilities`Private`more$$], {
                    False, True}}, {{
                    Hold[
                    CalculateUtilities`GraphicsUtilities`Private`min2247$$], \
-0.5, "min"}, -1, 1}, {{
                    Hold[
                    CalculateUtilities`GraphicsUtilities`Private`max2248$$], 
                    0.5, "max"}, -1, 1}, {
                    Hold[
                    Style[
                    Overlay[{
                    Dynamic[
                    RawBoxes[
                    FEPrivate`FrontEndResource[
                    "WABitmaps", "PodInfoBackground"]]], 
                    Pane[
                    Column[{
                    Grid[{{
                    Manipulate`Place[1], 
                    Manipulate`Place[2]}}]}], 
                    ImageMargins -> {{20, 30}, {10, 10}}]}, {1, 2}, 2, 
                    Alignment -> {Left, Top}]]], 
                    Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = 
                 Automatic, Typeset`update$$ = 0, Typeset`initDone$$ = False, 
                 Typeset`skipInitDone$$ = False, 
                 CalculateUtilities`GraphicsUtilities`Private`more$2629721$$ = 
                 False, CalculateUtilities`GraphicsUtilities`Private`min2247$\
2629722$$ = 0, CalculateUtilities`GraphicsUtilities`Private`max2248$2629723$$ = 
                 0}, 
                DynamicBox[
                 Manipulate`ManipulateBoxes[
                 2, TraditionalForm, 
                  "Variables" :> {
                   CalculateUtilities`GraphicsUtilities`Private`max2248$$ = 
                    0.5, CalculateUtilities`GraphicsUtilities`Private`min2247$\
$ = -0.5, CalculateUtilities`GraphicsUtilities`Private`more$$ = False}, 
                  "ControllerVariables" :> {
                    Hold[
                    CalculateUtilities`GraphicsUtilities`Private`more$$, 
                    CalculateUtilities`GraphicsUtilities`Private`more$2629721$\
$, False], 
                    Hold[
                    CalculateUtilities`GraphicsUtilities`Private`min2247$$, 
                    CalculateUtilities`GraphicsUtilities`Private`min2247$\
2629722$$, 0], 
                    Hold[
                    CalculateUtilities`GraphicsUtilities`Private`max2248$$, 
                    CalculateUtilities`GraphicsUtilities`Private`max2248$\
2629723$$, 0]}, "OtherVariables" :> {
                   Typeset`show$$, Typeset`bookmarkList$$, 
                    Typeset`bookmarkMode$$, Typeset`animator$$, 
                    Typeset`animvar$$, Typeset`name$$, Typeset`specs$$, 
                    Typeset`size$$, Typeset`update$$, Typeset`initDone$$, 
                    Typeset`skipInitDone$$}, "Body" :> Quiet[
                    Function[Null, 
                    Labeled[
                    CalculateUtilities`GraphicsUtilities`Private`post$2629700[
                    Plot[{
                    Re[
                    Rational[
                    1, 6] ((2 3^Rational[1, 2]) 
                    ArcTan[3^Rational[-1, 2] (1 + 2 $CellContext`x)] - 2 
                    Log[1 - $CellContext`x] + 
                    Log[1 + $CellContext`x + $CellContext`x^2])], 
                    Im[
                    Rational[
                    1, 6] ((2 3^Rational[1, 2]) 
                    ArcTan[3^Rational[-1, 2] (1 + 2 $CellContext`x)] - 2 
                    Log[1 - $CellContext`x] + 
                    Log[1 + $CellContext`x + $CellContext`x^2])]}, 
                    SlotSequence[2], PlotStyle -> {{
                    Directive[
                    RGBColor[0.24720000000000014`, 0.24, 0.6], 
                    AbsoluteThickness[1]]}, 
                    Directive[
                    RGBColor[1, 0.3, 0], 
                    AbsoluteThickness[1]]}]], 
                    Column[{
                    Row[{
                    Graphics[{
                    Directive[
                    RGBColor[0.24720000000000014`, 0.24, 0.6], 
                    AbsoluteThickness[1]], 
                    AbsoluteThickness[1], 
                    Line[{{0, 0}, {10, 0}}]}, ImageSize -> {20, 4}, 
                    BaselinePosition -> (Center -> Center)], 
                    Style[" real part", Smaller, 
                    GrayLevel[0.3]]}], 
                    Row[{
                    Graphics[{
                    Directive[
                    RGBColor[1, 0.3, 0], 
                    AbsoluteThickness[1]], 
                    AbsoluteThickness[1], 
                    Line[{{0, 0}, {10, 0}}]}, ImageSize -> {20, 4}, 
                    BaselinePosition -> (Center -> Center)], 
                    Style[" imaginary part", Smaller, 
                    GrayLevel[0.3]]}]}, Spacings -> 0], {{Right, Bottom}}], 
                    HoldAll][
                    Rational[
                    1, 6] ((2 3^Rational[1, 2]) 
                    ArcTan[3^Rational[-1, 2] (1 + 2 $CellContext`x)] - 2 
                    Log[1 - $CellContext`x] + 
                    Log[1 + $CellContext`x + $CellContext`x^2]), \
{$CellContext`x, 
                    If[
                    NumericQ[
                    CalculateUtilities`GraphicsUtilities`Private`min2247$$], 
                    (
                    Piecewise[{{
                    0. + 13.324685107937482` Tan[1.5040801783846716` #], # < 
                    0}}, 0. + 
                    13.324685107937482` Tan[1.5040801783846716` #]]& )[
                    CalculateUtilities`GraphicsUtilities`Private`min2247$$], \
-12.464101615137755`], 
                    If[
                    And[
                    NumericQ[
                    CalculateUtilities`GraphicsUtilities`Private`min2247$$], 
                    NumericQ[
                    CalculateUtilities`GraphicsUtilities`Private`max2248$$]], 
                    (
                    Piecewise[{{
                    0. + 13.324685107937482` Tan[1.5040801783846716` #], # < 
                    0}}, 0. + 
                    13.324685107937482` Tan[1.5040801783846716` #]]& )[
                    If[
                    CalculateUtilities`GraphicsUtilities`Private`min2247$$ == 
                    CalculateUtilities`GraphicsUtilities`Private`max2248$$, 
                    CalculateUtilities`GraphicsUtilities`Private`min2247$$ + 
                    0.02492820323027551, 
                    CalculateUtilities`GraphicsUtilities`Private`max2248$$]], 
                    12.464101615137755`]}, 
                    LabelStyle -> {FontFamily -> "Bitstream Charter"}, 
                    WorkingPrecision -> MachinePrecision, 
                    PlotRange -> {Full, Automatic}, LabelStyle -> {}, Ticks -> 
                    Automatic, ImageSize -> Scaled[0.4], AxesLabel -> {
                    RawBoxes[
                    FormBox["x", TraditionalForm]], None}]], 
                  "Specifications" :> {{
                    CalculateUtilities`GraphicsUtilities`Private`more$$, {
                    False, True}, ControlType -> None}, {{
                    CalculateUtilities`GraphicsUtilities`Private`min2247$$, \
-0.5, "min"}, -1, 1, ImageSize -> Tiny, ControlPlacement -> 1}, {{
                    CalculateUtilities`GraphicsUtilities`Private`max2248$$, 
                    0.5, "max"}, -1, 1, ImageSize -> Tiny, ControlPlacement -> 
                    2}, 
                    Style[
                    Overlay[{
                    Dynamic[
                    RawBoxes[
                    FEPrivate`FrontEndResource[
                    "WABitmaps", "PodInfoBackground"]]], 
                    Pane[
                    Column[{
                    Grid[{{
                    Manipulate`Place[1], 
                    Manipulate`Place[2]}}]}], 
                    ImageMargins -> {{20, 30}, {10, 10}}]}, {1, 2}, 2, 
                    Alignment -> {Left, Top}]]}, 
                  "Options" :> {
                   ControlPlacement -> Bottom, 
                    FrameMargins -> {{0, 0}, {0, 10}}, Paneled -> False, 
                    AppearanceElements -> {}, 
                    LabelStyle -> {
                    "DialogStyle", FontColor -> GrayLevel[0.25]}}, 
                  "DefaultOptions" :> {}], SingleEvaluation -> True], 
                Initialization :> ({
                   ReleaseHold[
                    Hold[
                    CalculateUtilities`GraphicsUtilities`Private`WACleanTicks[
                    Pattern[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, 
                    Blank[]]] := 
                    Module[{
                    CalculateUtilities`GraphicsUtilities`Private`res, 
                    CalculateUtilities`GraphicsUtilities`Private`unitformat}, 
                    CalculateUtilities`GraphicsUtilities`Private`res = 
                    ReplaceAll[
                    ReplaceAll[
                    Part[
                    DeleteCases[
                    Replace[
                    ReplaceAll[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, 
                    Alternatives[
                    Style, $CellContext`UnitNumberForm, NumberForm] -> (#& )],
                     Pattern[CalculateUtilities`GraphicsUtilities`Private`t, {
                    PatternTest[
                    BlankSequence[], NumberQ]}] :> 
                    Thread[{CalculateUtilities`GraphicsUtilities`Private`t, 
                    CalculateUtilities`GraphicsUtilities`Private`t}]], {
                    Blank[], "", 
                    BlankNullSequence[]}], All, 
                    Span[1, 2]], Superscript[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`b, 
                    Blank[Integer]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`p, 
                    Blank[Integer]]] :> 
                    CalculateUtilities`GraphicsUtilities`Private`b^
                    CalculateUtilities`GraphicsUtilities`Private`p], Row[{
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`a, 
                    BlankSequence[]]}, "\[Times]"] :> 
                    Times[CalculateUtilities`GraphicsUtilities`Private`a]]; If[
                    MatchQ[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`res, All, 2], 
                    Condition[
                    Pattern[
                    CalculateUtilities`GraphicsUtilities`Private`quants, {
                    Alternatives[
                    BlankSequence[$CellContext`ShortQuantity], 
                    BlankSequence[Quantity]]}], Length[
                    Union[
                    
                    Map[$CellContext`UnitObjectPart, 
                    CalculateUtilities`GraphicsUtilities`Private`quants]]] == 
                    1]], CalculateUtilities`GraphicsUtilities`Private`\
unitformat = $CellContext`ToCDFQuantityFunction[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`res, 1, 2]]; 
                    CalculateUtilities`GraphicsUtilities`Private`unitformat -> 
                    Thread[{
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`res, All, 1], 
                    $CellContext`QuantityPart[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`res, All, 2], 
                    $CellContext`UnitObjectPart[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`res, 1, 
                    2]]]}], 
                    CalculateUtilities`GraphicsUtilities`Private`res]]; 
                    Options[
                    CalculateUtilities`GraphicsUtilities`Private`post$2629700]\
 = {"ReturnInteractiveTypes" -> False, "Nearest" -> Automatic}; 
                    CalculateUtilities`GraphicsUtilities`Private`post$2629700[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`g, 
                    Blank[Graphics]], 
                    OptionsPattern[]] := Check[
                    
                    Module[{
                    CalculateUtilities`GraphicsUtilities`Private`lines, 
                    CalculateUtilities`GraphicsUtilities`Private`pts, 
                    CalculateUtilities`GraphicsUtilities`Private`gg, 
                    CalculateUtilities`GraphicsUtilities`Private`type, 
                    CalculateUtilities`GraphicsUtilities`Private`b, 
                    CalculateUtilities`GraphicsUtilities`Private`l, 
                    CalculateUtilities`GraphicsUtilities`Private`t, 
                    CalculateUtilities`GraphicsUtilities`Private`r, 
                    CalculateUtilities`GraphicsUtilities`Private`oldepilog, 
                    CalculateUtilities`GraphicsUtilities`Private`range, 
                    CalculateUtilities`GraphicsUtilities`Private`gridlines, 
                    CalculateUtilities`GraphicsUtilities`Private`oldgridlines,
                     CalculateUtilities`GraphicsUtilities`Private`\
neareststyle = OptionValue["Nearest"]}, 
                    CalculateUtilities`GraphicsUtilities`Private`oldepilog = 
                    Replace[
                    ReplaceAll[Epilog, 
                    Options[CalculateUtilities`GraphicsUtilities`Private`g]], 
                    Epilog -> Sequence[]]; Switch[
                    ReplaceAll[{Frame, Axes}, 
                    Options[
                    CalculateUtilities`GraphicsUtilities`Private`g]], {True, 
                    Blank[]}, 
                    CalculateUtilities`GraphicsUtilities`Private`type = 
                    Frame; {CalculateUtilities`GraphicsUtilities`Private`b, 
                    CalculateUtilities`GraphicsUtilities`Private`l, 
                    CalculateUtilities`GraphicsUtilities`Private`t, 
                    CalculateUtilities`GraphicsUtilities`Private`r} = 
                    
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Frame, 
                    ReplaceAll[FrameTicks, 
                    Options[
                    CalculateUtilities`GraphicsUtilities`Private`g]]], {
                    Blank[], True}, 
                    CalculateUtilities`GraphicsUtilities`Private`type = 
                    Axes; {CalculateUtilities`GraphicsUtilities`Private`b, 
                    CalculateUtilities`GraphicsUtilities`Private`l} = 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Axes, 
                    ReplaceAll[Ticks, 
                    Options[CalculateUtilities`GraphicsUtilities`Private`g]]], 
                    Blank[], 
                    CalculateUtilities`GraphicsUtilities`Private`type = None]; 
                    If[
                    And[
                    CalculateUtilities`GraphicsUtilities`Private`type === 
                    Frame, 
                    Or[
                    Not[
                    Or[
                    CalculateUtilities`GraphicsUtilities`Private`t === None, 
                    CalculateUtilities`GraphicsUtilities`Private`b === 
                    CalculateUtilities`GraphicsUtilities`Private`t]], 
                    Not[
                    Or[
                    CalculateUtilities`GraphicsUtilities`Private`r === None, 
                    CalculateUtilities`GraphicsUtilities`Private`l === 
                    CalculateUtilities`GraphicsUtilities`Private`r]]]], 
                    CalculateUtilities`GraphicsUtilities`Private`type = None]; 
                    If[
                    TrueQ[
                    OptionValue["ReturnInteractiveTypes"]], 
                    Which[
                    Or[
                    CalculateUtilities`GraphicsUtilities`Private`type === 
                    None, CalculateUtilities`GraphicsUtilities`Private`b === 
                    None, CalculateUtilities`GraphicsUtilities`Private`l === 
                    None], {}, 
                    FreeQ[CalculateUtilities`GraphicsUtilities`Private`g, 
                    Alternatives[Line, Point]], {}, True, {
                    "Tooltips", "Coordinates"}], If[
                    FreeQ[CalculateUtilities`GraphicsUtilities`Private`g, 
                    Alternatives[Line, Point]], 
                    Return[CalculateUtilities`GraphicsUtilities`Private`g]]; 
                    CalculateUtilities`GraphicsUtilities`Private`gg = 
                    Normal[CalculateUtilities`GraphicsUtilities`Private`g]; 
                    CalculateUtilities`GraphicsUtilities`Private`pts = 
                    Partition[
                    Flatten[
                    Cases[
                    Part[CalculateUtilities`GraphicsUtilities`Private`gg, 1], 
                    Point[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`a, 
                    Blank[]]] :> 
                    CalculateUtilities`GraphicsUtilities`Private`a, 
                    Infinity]], 2]; 
                    If[Length[
                    CalculateUtilities`GraphicsUtilities`Private`pts] < 2, 
                    CalculateUtilities`GraphicsUtilities`Private`lines = Cases[
                    Part[CalculateUtilities`GraphicsUtilities`Private`gg, 1], 
                    Blank[Line], Infinity]; 
                    If[CalculateUtilities`GraphicsUtilities`Private`lines === \
{}, 
                    Return[CalculateUtilities`GraphicsUtilities`Private`g]]; 
                    CalculateUtilities`GraphicsUtilities`Private`pts = Flatten[
                    Cases[
                    CalculateUtilities`GraphicsUtilities`Private`lines, Line[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`a, 
                    Blank[]]] :> 
                    CalculateUtilities`GraphicsUtilities`Private`a, Infinity],
                     1]; If[
                    CalculateUtilities`GraphicsUtilities`Private`neareststyle === 
                    Automatic, If[
                    CalculateUtilities`GraphicsUtilities`Private`orderedLines[
                    CalculateUtilities`GraphicsUtilities`Private`lines], 
                    CalculateUtilities`GraphicsUtilities`Private`neareststyle = 
                    "1D", CalculateUtilities`GraphicsUtilities`Private`\
neareststyle = "2D"]; Null], 
                    If[
                    CalculateUtilities`GraphicsUtilities`Private`neareststyle === 
                    Automatic, 
                    CalculateUtilities`GraphicsUtilities`Private`neareststyle = 
                    "2D"]]; 
                    CalculateUtilities`GraphicsUtilities`Private`range = 
                    Replace[
                    ReplaceAll[PlotRange, 
                    Options[CalculateUtilities`GraphicsUtilities`Private`g]], 
                    Except[{{
                    PatternTest[
                    Blank[], NumberQ], 
                    PatternTest[
                    Blank[], NumberQ]}, {
                    PatternTest[
                    Blank[], NumberQ], 
                    PatternTest[
                    Blank[], NumberQ]}}] :> {
                    Through[
                    {Min, Max}[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`pts, All, 
                    1]]], 
                    Through[
                    {Min, Max}[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`pts, All, 
                    2]]]}]; CalculateUtilities`GraphicsUtilities`Private`b = 
                    CalculateUtilities`GraphicsUtilities`Private`\
RefineCoordinateFunction[CalculateUtilities`GraphicsUtilities`Private`b, 
                    First[CalculateUtilities`GraphicsUtilities`Private`range], 
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`pts, All, 
                    1]]; CalculateUtilities`GraphicsUtilities`Private`l = 
                    CalculateUtilities`GraphicsUtilities`Private`\
RefineCoordinateFunction[CalculateUtilities`GraphicsUtilities`Private`l, 
                    Last[CalculateUtilities`GraphicsUtilities`Private`range], 
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`pts, All, 
                    2]]; CalculateUtilities`GraphicsUtilities`Private`\
oldgridlines = ReplaceAll[GridLines, 
                    Options[CalculateUtilities`GraphicsUtilities`Private`g]]; 
                    CalculateUtilities`GraphicsUtilities`Private`gridlines = 
                    With[{CalculateUtilities`GraphicsUtilities`Private`gray = 
                    GrayLevel[0.7]}, 
                    Replace[
                    CalculateUtilities`GraphicsUtilities`Private`oldgridlines,\
 {Pattern[CalculateUtilities`GraphicsUtilities`Private`a, {
                    Blank[List], 
                    Blank[List]}] :> Dynamic[
                    Join[CalculateUtilities`GraphicsUtilities`Private`a, 
                    Replace[
                    MousePosition[{"Graphics", Graphics}, None], {
                    None -> {{}, {}}, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`x, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`y, 
                    Blank[]]} :> {{{
                    CalculateUtilities`GraphicsUtilities`Private`x, 
                    CalculateUtilities`GraphicsUtilities`Private`gray}}, {{
                    CalculateUtilities`GraphicsUtilities`Private`y, 
                    CalculateUtilities`GraphicsUtilities`Private`gray}}}}], 
                    2]], {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`a, 
                    Blank[List]], Automatic} :> 
                    With[{CalculateUtilities`GraphicsUtilities`Private`\
divisions = {CalculateUtilities`GraphicsUtilities`Private`a, 
                    FindDivisions[
                    Last[CalculateUtilities`GraphicsUtilities`Private`range], 
                    7]}}, 
                    Dynamic[
                    Join[
                    CalculateUtilities`GraphicsUtilities`Private`divisions, 
                    Replace[
                    MousePosition[{"Graphics", Graphics}, None], {
                    None -> {{}, {}}, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`x, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`y, 
                    Blank[]]} :> {{{
                    CalculateUtilities`GraphicsUtilities`Private`x, 
                    CalculateUtilities`GraphicsUtilities`Private`gray}}, {{
                    CalculateUtilities`GraphicsUtilities`Private`y, 
                    CalculateUtilities`GraphicsUtilities`Private`gray}}}}], 
                    2]]], Blank[] -> Dynamic[
                    
                    Map[{{#, 
                    CalculateUtilities`GraphicsUtilities`Private`gray}}& , 
                    MousePosition[{"Graphics", Graphics}, None]]]}]]; If[
                    Or[CalculateUtilities`GraphicsUtilities`Private`type === 
                    None, CalculateUtilities`GraphicsUtilities`Private`b === 
                    None, CalculateUtilities`GraphicsUtilities`Private`l === 
                    None], 
                    Show[
                    CalculateUtilities`GraphicsUtilities`Private`g, GridLines -> 
                    CalculateUtilities`GraphicsUtilities`Private`gridlines, 
                    If[
                    MatchQ[
                    CalculateUtilities`GraphicsUtilities`Private`oldgridlines, 
                    Alternatives[None, GridLines]], 
                    Method -> {"GridLinesInFront" -> True}, 
                    Apply[Sequence, {}]]], 
                    
                    With[{CalculateUtilities`GraphicsUtilities`Private`nf = 
                    If[CalculateUtilities`GraphicsUtilities`Private`\
neareststyle === "1D", 
                    
                    With[{CalculateUtilities`GraphicsUtilities`Private`n = 
                    Nearest[Part[
                    CalculateUtilities`GraphicsUtilities`Private`pts, All, 1] -> 
                    CalculateUtilities`GraphicsUtilities`Private`pts]}, 
                    CalculateUtilities`GraphicsUtilities`Private`n[
                    Part[#, 1]]& ], 
                    
                    With[{CalculateUtilities`GraphicsUtilities`Private`n = 
                    Nearest[Transpose[
                    Transpose[
                    CalculateUtilities`GraphicsUtilities`Private`pts]/Abs[
                    Apply[
                    Subtract, 
                    CalculateUtilities`GraphicsUtilities`Private`range, {
                    1}]]] -> 
                    CalculateUtilities`GraphicsUtilities`Private`pts], 
                    CalculateUtilities`GraphicsUtilities`Private`scale = Abs[
                    Apply[
                    Subtract, 
                    CalculateUtilities`GraphicsUtilities`Private`range, {
                    1}]]}, CalculateUtilities`GraphicsUtilities`Private`n[#/
                    CalculateUtilities`GraphicsUtilities`Private`scale]& ]], 
                    CalculateUtilities`GraphicsUtilities`Private`left = 
                    CalculateUtilities`GraphicsUtilities`Private`l, 
                    CalculateUtilities`GraphicsUtilities`Private`bottom = 
                    CalculateUtilities`GraphicsUtilities`Private`b}, 
                    Show[
                    CalculateUtilities`GraphicsUtilities`Private`g, GridLines -> 
                    CalculateUtilities`GraphicsUtilities`Private`gridlines, 
                    If[
                    MatchQ[
                    CalculateUtilities`GraphicsUtilities`Private`oldgridlines, 
                    Alternatives[None, GridLines]], 
                    Method -> {"GridLinesInFront" -> True}, 
                    Apply[Sequence, {}]], 
                    Epilog -> {
                    CalculateUtilities`GraphicsUtilities`Private`oldepilog, 
                    Dynamic[
                    
                    DynamicModule[{
                    CalculateUtilities`GraphicsUtilities`Private`pt = 
                    CalculateUtilities`GraphicsUtilities`Private`nf[
                    MousePosition[{"Graphics", Graphics}, {0, 0}]], 
                    CalculateUtilities`GraphicsUtilities`Private`scaled = 
                    MousePosition[{"GraphicsScaled", Graphics}, None]}, 
                    If[
                    CalculateUtilities`GraphicsUtilities`Private`scaled === 
                    None, {}, {
                    Text[
                    Style[
                    Row[{
                    CalculateUtilities`GraphicsUtilities`Private`bottom[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`pt, 1, 1]], 
                    CalculateUtilities`GraphicsUtilities`Private`left[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`pt, 1, 2]]}, 
                    ","], 12], 
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`pt, 1], {
                    1.5 Sign[Part[
                    CalculateUtilities`GraphicsUtilities`Private`scaled, 1] - 
                    0.5], 0}, Background -> White], 
                    AbsolutePointSize[7], 
                    Point[CalculateUtilities`GraphicsUtilities`Private`pt], 
                    White, 
                    AbsolutePointSize[5], 
                    Point[
                    CalculateUtilities`GraphicsUtilities`Private`pt]}]]]}]]]]]\
, CalculateUtilities`GraphicsUtilities`Private`g]; 
                    CalculateUtilities`GraphicsUtilities`Private`post$2629700[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`g, 
                    Blank[]], 
                    BlankNullSequence[]] := 
                    CalculateUtilities`GraphicsUtilities`Private`g; 
                    CalculateUtilities`GraphicsUtilities`Private`orderedLines[{
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`l, 
                    BlankSequence[Line]]}] := 
                    Module[{
                    CalculateUtilities`GraphicsUtilities`Private`ordered, 
                    CalculateUtilities`GraphicsUtilities`Private`intervals}, 
                    CalculateUtilities`GraphicsUtilities`Private`ordered = 
                    Apply[And, 
                    Map[OrderedQ[
                    Part[#, 1, All, 1]]& , 
                    Hold[CalculateUtilities`GraphicsUtilities`Private`l]]]; If[
                    Not[
                    TrueQ[
                    CalculateUtilities`GraphicsUtilities`Private`ordered]], 
                    Return[False]]; 
                    CalculateUtilities`GraphicsUtilities`Private`intervals = 
                    Part[{CalculateUtilities`GraphicsUtilities`Private`l}, 
                    All, 1, {1, -1}, 1]; Length[
                    Apply[
                    Interval, 
                    CalculateUtilities`GraphicsUtilities`Private`intervals]] === 
                    Length[CalculateUtilities`GraphicsUtilities`Private`\
intervals]]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Frame, 
                    Alternatives[Automatic, FrameTicks]] = {
                    Identity, Identity, Identity, Identity}; 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Frame, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`b, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`l, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`t, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`r, 
                    Blank[]]}] := 
                    Map[CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction, {CalculateUtilities`GraphicsUtilities`Private`b, 
                    CalculateUtilities`GraphicsUtilities`Private`l, 
                    CalculateUtilities`GraphicsUtilities`Private`t, 
                    CalculateUtilities`GraphicsUtilities`Private`r}]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Frame, {{
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`l, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`r, 
                    Blank[]]}, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`b, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`t, 
                    Blank[]]}}] := 
                    Map[CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction, {CalculateUtilities`GraphicsUtilities`Private`b, 
                    CalculateUtilities`GraphicsUtilities`Private`l, 
                    CalculateUtilities`GraphicsUtilities`Private`t, 
                    CalculateUtilities`GraphicsUtilities`Private`r}]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Frame, 
                    Blank[]] = {None, None, None, None}; 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Axes, 
                    Alternatives[Automatic, Ticks]] = {Identity, Identity}; 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Axes, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`h, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`v, 
                    Blank[]]}] := 
                    Map[CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction, {CalculateUtilities`GraphicsUtilities`Private`h, 
                    CalculateUtilities`GraphicsUtilities`Private`v}]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
ScaleCoordinatesToTicks[Axes, 
                    Blank[]] = {None, None}; 
                    CalculateUtilities`GraphicsUtilities`Private`CDFCleanTicks[
                    Pattern[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, 
                    Blank[]]] := ReplaceAll[
                    ReplaceAll[
                    Part[
                    DeleteCases[
                    ReplaceAll[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, 
                    Alternatives[Style, NumberForm] -> (#& )], {
                    Blank[], "", 
                    BlankNullSequence[]}], All, 
                    Span[1, 2]], Superscript[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`b, 
                    Blank[Integer]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`p, 
                    Blank[Integer]]] :> 
                    CalculateUtilities`GraphicsUtilities`Private`b^
                    CalculateUtilities`GraphicsUtilities`Private`p], Row[{
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`a, 
                    BlankSequence[]]}, "\[Times]"] :> 
                    Times[CalculateUtilities`GraphicsUtilities`Private`a]]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction[
                    Pattern[
                    CalculateUtilities`GraphicsUtilities`Private`ticks$, 
                    Blank[]]] := 
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[
                    CalculateUtilities`GraphicsUtilities`Private`WACleanTicks[
                    CalculateUtilities`GraphicsUtilities`Private`ticks$]]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction[None] = None; 
                    CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction[False] = None; 
                    CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction[True] = None; 
                    CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction[Automatic] = Identity; 
                    CalculateUtilities`GraphicsUtilities`Private`\
TicksToFunction[All] = Identity; 
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[Pattern[CalculateUtilities`GraphicsUtilities`Private`func, 
                    Blank[]] -> 
                    Pattern[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, 
                    Blank[]]] := Replace[
                    
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[CalculateUtilities`GraphicsUtilities`Private`ticks], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`f, 
                    Except[None]] :> 
                    Composition[
                    CalculateUtilities`GraphicsUtilities`Private`func, 
                    CalculateUtilities`GraphicsUtilities`Private`f]]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[{}] = None; 
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[
                    Pattern[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, {
                    Repeated[{
                    Blank[Integer], 
                    Blank[String]}]}]] := Which[
                    Quiet[
                    MatchQ[
                    Apply[SameQ, 
                    Map[Part[
                    DateList[#], 
                    Span[2, All]]& , 
                    CalculateUtilities`GraphicsUtilities`Private`ticks, {
                    2}], {1}], {
                    Repeated[True]}]], DateString, 
                    Apply[And, 
                    StringMatchQ[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, All, 
                    2], NumberString]], 
                    
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[
                    Transpose[{
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, All, 
                    1], 
                    ToExpression[
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, All, 
                    2]]}]], True, None]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[
                    Pattern[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, {
                    Repeated[{
                    PatternTest[
                    Blank[], NumericQ], 
                    PatternTest[
                    Blank[], NumericQ]}]}]] := Which[
                    MatchQ[
                    Apply[
                    Equal, CalculateUtilities`GraphicsUtilities`Private`ticks,\
 {1}], {
                    Repeated[True]}], Identity, 
                    MatchQ[
                    
                    Apply[# == Log[#2]& , 
                    CalculateUtilities`GraphicsUtilities`Private`ticks, {1}], {
                    Repeated[True]}], Exp, 
                    TrueQ[
                    Quiet[
                    Apply[Equal, 
                    Apply[Divide, Transpose[
                    Rest[CalculateUtilities`GraphicsUtilities`Private`ticks]] - 
                    Part[CalculateUtilities`GraphicsUtilities`Private`ticks, 
                    1]]]]], 
                    
                    With[{CalculateUtilities`GraphicsUtilities`Private`slope = 
                    Apply[Divide, 
                    Apply[Subtract, 
                    Part[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, {-1, 
                    1}]]]}, 
                    SetPrecision[(# - Part[
                    CalculateUtilities`GraphicsUtilities`Private`ticks, 1, 
                    1])/CalculateUtilities`GraphicsUtilities`Private`slope + 
                    Part[CalculateUtilities`GraphicsUtilities`Private`ticks, 
                    1, 2], 3]& ], True, None]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
iTicksToFunction[
                    Blank[]] = None; 
                    CalculateUtilities`GraphicsUtilities`Private`\
RefineCoordinateFunction[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`type, 
                    Blank[]], 
                    BlankNullSequence[]] := 
                    CalculateUtilities`GraphicsUtilities`Private`type; 
                    CalculateUtilities`GraphicsUtilities`Private`\
RefineCoordinateFunction[Identity, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`min, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`max, 
                    Blank[]]}, 
                    Blank[]] := 
                    With[{CalculateUtilities`GraphicsUtilities`Private`nf = 
                    CalculateUtilities`GraphicsUtilities`Private`numberForm, 
                    CalculateUtilities`GraphicsUtilities`Private`acc = 
                    Floor[Max[
                    Ceiling[
                    FullSimplify[Log[10, 
                    Max[
                    
                    Abs[{CalculateUtilities`GraphicsUtilities`Private`min, 
                    CalculateUtilities`GraphicsUtilities`Private`max}]]] - 
                    Log[10, (CalculateUtilities`GraphicsUtilities`Private`max - 
                    CalculateUtilities`GraphicsUtilities`Private`min)/100]]], 
                    3] - RealExponent[
                    Max[
                    
                    Abs[{CalculateUtilities`GraphicsUtilities`Private`min, 
                    CalculateUtilities`GraphicsUtilities`Private`max}]]]]}, 
                    CalculateUtilities`GraphicsUtilities`Private`nf[#, 
                    CalculateUtilities`GraphicsUtilities`Private`acc]& ]; 
                    CalculateUtilities`GraphicsUtilities`Private`\
RefineCoordinateFunction[Exp, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`min, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`max, 
                    Blank[]]}, 
                    Blank[]] := 
                    With[{CalculateUtilities`GraphicsUtilities`Private`prec = 
                    Max[
                    Ceiling[
                    FullSimplify[Log[10, 
                    Max[
                    
                    Abs[{CalculateUtilities`GraphicsUtilities`Private`min, 
                    CalculateUtilities`GraphicsUtilities`Private`max}]]] - 
                    Log[10, (CalculateUtilities`GraphicsUtilities`Private`max - 
                    CalculateUtilities`GraphicsUtilities`Private`min)/100]]], 
                    3]}, Quiet[
                    RawBoxes[
                    ToBoxes[
                    NumberForm[
                    Exp[#], 
                    CalculateUtilities`GraphicsUtilities`Private`prec]]]]& ]; 
                    
                    CalculateUtilities`GraphicsUtilities`Private`\
RefineCoordinateFunction[DateString, {
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`min, 
                    Blank[]], 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`max, 
                    Blank[]]}, 
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`pts, 
                    Blank[]]] := 
                    Module[{
                    CalculateUtilities`GraphicsUtilities`Private`dates, 
                    CalculateUtilities`GraphicsUtilities`Private`spec}, 
                    CalculateUtilities`GraphicsUtilities`Private`dates = 
                    Map[DateList, 
                    CalculateUtilities`GraphicsUtilities`Private`pts]; 
                    CalculateUtilities`GraphicsUtilities`Private`spec = Switch[
                    Map[Length, 
                    Map[Union, 
                    Transpose[
                    CalculateUtilities`GraphicsUtilities`Private`dates]]], {
                    Blank[], 1, 1, 
                    BlankSequence[]}, {"Year"}, {
                    Blank[], 
                    Blank[], 1, 
                    BlankSequence[]}, {"MonthNameShort", " ", "Year"}, 
                    Blank[], {
                    "DayShort", " ", "MonthNameShort", " ", "Year"}]; 
                    If[(CalculateUtilities`GraphicsUtilities`Private`max - 
                    CalculateUtilities`GraphicsUtilities`Private`min)/
                    31536000 > 25, 
                    CalculateUtilities`GraphicsUtilities`Private`spec = {
                    "Year"}]; 
                    With[{CalculateUtilities`GraphicsUtilities`Private`s = 
                    CalculateUtilities`GraphicsUtilities`Private`spec}, 
                    DateString[#, 
                    CalculateUtilities`GraphicsUtilities`Private`s]& ]]; 
                    CalculateUtilities`GraphicsUtilities`Private`numberForm = 
                    Function[{
                    CalculateUtilities`GraphicsUtilities`Private`a, 
                    CalculateUtilities`GraphicsUtilities`Private`acc}, 
                    Quiet[
                    RawBoxes[
                    ToBoxes[
                    NumberForm[CalculateUtilities`GraphicsUtilities`Private`a, 
                    Max[1, 
                    Ceiling[
                    RealExponent[
                    CalculateUtilities`GraphicsUtilities`Private`a] + 
                    CalculateUtilities`GraphicsUtilities`Private`acc]], 
                    ExponentFunction -> (Null& ), 
                    NumberFormat -> (StringReplace[#, StringExpression[
                    Pattern[CalculateUtilities`GraphicsUtilities`Private`s, 
                    BlankSequence[]], ".", EndOfString] -> 
                    CalculateUtilities`GraphicsUtilities`Private`s]& )]]]]]]], 
                   ReleaseHold[
                    Uncompress[
                    "6:eJztVt9v0zAQbikwfjP4D5B4RqwgEA9Igw7GpAElKe/\
1kkti4drBdrbBPw8+u0matasU0wGa0odTfWk+33333fUeHYkg6fd6PXXVmA+\
CxckWnh4aMxKzXBQ8fneaS1CKCp5cwWe3jAlB7wEjPyB2vuvGvBdyRrQ7v8b3CYsKRjR81ZRRTUFN9\
yXJMxqp2jOW9Nj8ZMpERBj9CY+HL4avXu48dTAYy5hoDZKrZ20h80wSBUkPga4Z85YR/\
s0dH5THTwVjIXwvgEeg7hvvRJLYwAhOGObjfevlZuoOJqYJj4mML5wmK89R2wuUlpSnE5jl+\
Mb5ZO20BSYyVY6buyU36xTkwr+BD0RoY3Iem7Q9WwL9wrhk9J2V1T/\
nboDn3bbwUpysJg7ze8OQN6LpMahlOp+0rpNjpOpaG/2cq4uaLxsN8vwpU/\
8vHVKll8MYtg0DZkemxqu1twz/vC28yLHr5+K+\
Z8xn5ygBVw2HSnAfRVyweRTNlAdOou3TVblxOIzbFd8hOn0qWOEEJs6yX2x/\
bFfg9aYQYu2mG5AOr2dAADkYV2y53aMp1aOMSBIZ4Pl1/\
bLJJqIOxePO9rWnPKZmgDlC1i1PaA6ShboTHWVf/\
qi4lVzONBnyfsA1pCDXiv4m1kcacnk8EZ6RhHhBU6/eHFZJjYn0lv2gBAlzwilC0l/mY7+\
5h4uVQKr2JapLOhYHtjSn/kn0ywIfAk911tyxPUeXd9tiNoE4qVUX0CRZnDabY7rfZLpxQ3Og+\
5LgWxL/gd5tCt2m8Fc3haU9uFsTujWhWxO6NaFbE/7fNcFGjP9KvwHlHrh2"]]}; 
                 Typeset`initDone$$ = True), DynamicModuleValues :> {}, 
                Deinitialization :> None, 
                UntrackedVariables :> {Typeset`size$$}, 
                SynchronousInitialization -> True, 
                UnsavedVariables :> {Typeset`initDone$$}, 
                UndoTrackedVariables :> {
                 Typeset`show$$, Typeset`bookmarkMode$$}], "Manipulate", 
               Deployed -> True, StripOnInput -> False], TraditionalForm], 
             Manipulate`InterpretManipulate[1]], TraditionalForm]], 
          "Output", {
          Background -> None, 
           GraphicsBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics"}, 
             DefaultAxesStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsAxes"], DefaultFrameStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsFrame"], DefaultFrameTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsFrameTicks"], 
             DefaultTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsTicks"]}, 
           Graphics3DBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics3D"}}}, 
          NumberPoint -> ".", CellSize -> {550, Automatic}, 
          AutoStyleOptions -> {"HighlightFormattingErrors" -> False}, 
          RenderingOptions -> {
           "3DRenderingMethod" -> "BSPTreeOrDepthBuffer"}]}], 
       XMLElement["dataformats", {}, {"minput"}]}], 
     XMLElement["expressiontypes", {"count" -> "2"}, {"\n  ", 
       XMLElement["expressiontype", {"name" -> "Default"}, {}], "\n  ", 
       XMLElement["expressiontype", {"name" -> "Default"}, {}], "\n "}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "statelist", {
        "count" -> "2", "value" -> "Complex-valued plots", "delimiters" -> 
         ""}, {
         XMLElement[
         "state", {
          "name" -> "Complex-valued plots", "input" -> 
           "Plot__Complex-valued plots"}, {}], 
         XMLElement[
         "state", {
          "name" -> "Real-valued plots", "input" -> 
           "Plot__Real-valued plots"}, {}]}]}]}], Typeset`pod3$$ = XMLElement[
   "pod", {"title" -> "Alternate forms of the integral", "scanner" -> 
     "Integral", "id" -> "AlternateFormOfTheIntegral", "position" -> "300", 
     "error" -> "false", "numsubpods" -> "2"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement[
       "minput", {}, {
        "Apart[(2 Sqrt[3] ArcTan[(1 + 2 x)/Sqrt[3]] - 2 Log[1 - x] + Log[1 + \
x + x^2])/6]"}], 
       XMLElement[
       "moutput", {}, {
        "ArcTan[(1 + 2 x)/Sqrt[3]]/Sqrt[3] + (-2 Log[1 - x] + Log[1 + x + \
x^2])/6"}], 
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             StyleBox[
              RowBox[{
                StyleBox[
                 RowBox[{
                   RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"log", "(", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}], ")"}], 
                    "-", 
                    RowBox[{"2", " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"1", "-", "x"}], ")"}]}]}], ")"}]}], "+", 
                   FractionBox[
                    RowBox[{
                    SuperscriptBox["tan", 
                    RowBox[{"-", "1"}]], "(", 
                    FractionBox[
                    RowBox[{
                    RowBox[{"2", " ", "x"}], "+", "1"}], 
                    SqrtBox["3"]], ")"}], 
                    SqrtBox["3"]]}], {
                  GrayLevel[0], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                  LineIndent -> 0}], "+", 
                StyleBox[
                "\"constant\"", {
                 Magnification -> 0.9 Inherited, FontFamily -> "Roboto", 
                  FontSize -> Inherited, 
                  LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                  0}]}], {
               GrayLevel[0.6], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
               LineIndent -> 0}], Identity], TraditionalForm]], "Output", {
          Background -> None, 
           GraphicsBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics"}, 
             DefaultAxesStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsAxes"], DefaultFrameStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsFrame"], DefaultFrameTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsFrameTicks"], 
             DefaultTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsTicks"]}, 
           Graphics3DBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics3D"}}}, 
          NumberPoint -> ".", CellSize -> {550, Automatic}, 
          AutoStyleOptions -> {"HighlightFormattingErrors" -> False}, 
          RenderingOptions -> {
           "3DRenderingMethod" -> "BSPTreeOrDepthBuffer"}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,minput,moutput,computabledata,formatteddata"}]}], 
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement[
       "minput", {}, {
        "TrigToExp[(2 Sqrt[3] ArcTan[(1 + 2 x)/Sqrt[3]] - 2 Log[1 - x] + \
Log[1 + x + x^2])/6]"}], 
       XMLElement[
       "moutput", {}, {
        "-Log[1 - x]/3 + Log[1 + x + x^2]/6 + (I/2 Log[1 - (I (1 + 2 \
x))/Sqrt[3]])/Sqrt[3] - (I/2 Log[1 + (I (1 + 2 x))/Sqrt[3]])/Sqrt[3]"}], 
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             StyleBox[
              RowBox[{
                StyleBox[
                 RowBox[{
                   RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"log", "(", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}], ")"}]}], 
                   "-", 
                   RowBox[{
                    RowBox[{
                    FractionBox["1", "3"]}], " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"1", "-", "x"}], ")"}]}], "+", 
                   FractionBox[
                    RowBox[{"\[ImaginaryI]", " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"1", "-", 
                    FractionBox[
                    RowBox[{"\[ImaginaryI]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"2", " ", "x"}], "+", "1"}], ")"}]}], 
                    SqrtBox["3"]]}], ")"}]}], 
                    RowBox[{"2", " ", 
                    SqrtBox["3"]}]], "-", 
                   FractionBox[
                    RowBox[{"\[ImaginaryI]", " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"1", "+", 
                    FractionBox[
                    RowBox[{"\[ImaginaryI]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"2", " ", "x"}], "+", "1"}], ")"}]}], 
                    SqrtBox["3"]]}], ")"}]}], 
                    RowBox[{"2", " ", 
                    SqrtBox["3"]}]]}], {
                  GrayLevel[0], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                  LineIndent -> 0}], "+", 
                StyleBox[
                "\"constant\"", {
                 Magnification -> 0.9 Inherited, FontFamily -> "Roboto", 
                  FontSize -> Inherited, 
                  LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                  0}]}], {
               GrayLevel[0.6], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
               LineIndent -> 0}], Identity], TraditionalForm]], "Output", {
          Background -> None, 
           GraphicsBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics"}, 
             DefaultAxesStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsAxes"], DefaultFrameStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsFrame"], DefaultFrameTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsFrameTicks"], 
             DefaultTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsTicks"]}, 
           Graphics3DBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics3D"}}}, 
          NumberPoint -> ".", CellSize -> {550, Automatic}, 
          AutoStyleOptions -> {"HighlightFormattingErrors" -> False}, 
          RenderingOptions -> {
           "3DRenderingMethod" -> "BSPTreeOrDepthBuffer"}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,minput,moutput,computabledata,formatteddata"}]}], 
     XMLElement["expressiontypes", {"count" -> "2"}, {"\n   ", 
       XMLElement["expressiontype", {"name" -> "Default"}, {}], "\n   ", 
       XMLElement["expressiontype", {"name" -> "Default"}, {}], "\n  "}]}], 
   Typeset`pod4$$ = XMLElement[
   "pod", {"title" -> "Expanded form of the integral", "scanner" -> 
     "Integral", "id" -> "ExpandedFormOfTheIntegral", "position" -> "400", 
     "error" -> "false", "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement[
       "minput", {}, {
        "Expand[(2 Sqrt[3] ArcTan[(1 + 2 x)/Sqrt[3]] - 2 Log[1 - x] + Log[1 + \
x + x^2])/6]"}], 
       XMLElement[
       "moutput", {}, {
        "ArcTan[(1 + 2 x)/Sqrt[3]]/Sqrt[3] - Log[1 - x]/3 + Log[1 + x + \
x^2]/6"}], 
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             StyleBox[
              RowBox[{
                StyleBox[
                 RowBox[{
                   RowBox[{
                    FractionBox["1", "6"], " ", 
                    RowBox[{"log", "(", 
                    RowBox[{
                    SuperscriptBox["x", "2"], "+", "x", "+", "1"}], ")"}]}], 
                   "-", 
                   RowBox[{
                    FractionBox["1", "3"], " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"1", "-", "x"}], ")"}]}], "+", 
                   FractionBox[
                    RowBox[{
                    SuperscriptBox["tan", 
                    RowBox[{"-", "1"}]], "(", 
                    FractionBox[
                    RowBox[{
                    RowBox[{"2", " ", "x"}], "+", "1"}], 
                    SqrtBox["3"]], ")"}], 
                    SqrtBox["3"]]}], {
                  GrayLevel[0], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
                  LineIndent -> 0}], "+", 
                StyleBox[
                "\"constant\"", {
                 Magnification -> 0.9 Inherited, FontFamily -> "Roboto", 
                  FontSize -> Inherited, 
                  LinebreakAdjustments -> {1, 100, 1, 0, 100}, LineIndent -> 
                  0}]}], {
               GrayLevel[0.6], LinebreakAdjustments -> {1, 100, 1, 0, 100}, 
               LineIndent -> 0}], Identity], TraditionalForm]], "Output", {
          Background -> None, 
           GraphicsBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics"}, 
             DefaultAxesStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsAxes"], DefaultFrameStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsFrame"], DefaultFrameTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsFrameTicks"], 
             DefaultTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsTicks"]}, 
           Graphics3DBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics3D"}}}, 
          NumberPoint -> ".", CellSize -> {550, Automatic}, 
          AutoStyleOptions -> {"HighlightFormattingErrors" -> False}, 
          RenderingOptions -> {
           "3DRenderingMethod" -> "BSPTreeOrDepthBuffer"}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,minput,moutput,computabledata,formatteddata"}]}], 
     XMLElement["expressiontypes", {"count" -> "1"}, {"\n   ", 
       XMLElement["expressiontype", {"name" -> "Default"}, {}], "\n  "}], 
     XMLElement["states", {"count" -> "1"}, {
       XMLElement[
       "state", {
        "name" -> "Step-by-step solution", "input" -> 
         "ExpandedFormOfTheIntegral__Step-by-step solution", "stepbystep" -> 
         "true", "buttonstyle" -> "StepByStepSolution"}, {}]}]}], 
   Typeset`pod5$$ = XMLElement[
   "pod", {
    "title" -> "Series expansion of the integral at x = 0", "scanner" -> 
     "Series", "id" -> "SeriesExpansionOfTheIntegralAtx=0.", "position" -> 
     "500", "error" -> "false", "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement[
       "minput", {}, {
        "Series[(2 Sqrt[3] ArcTan[(1 + 2 x)/Sqrt[3]] - 2 Log[1 - x] + Log[1 + \
x + x^2])/6, {x, 0, 4}]"}], 
       XMLElement[
       "moutput", {}, {"Pi/(6 Sqrt[3]) + x + x^4/4 + x^7/7 + O[x]^9"}], 
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             GridBox[{{
                TemplateBox[{
                  RowBox[{
                    FractionBox["\[Pi]", 
                    RowBox[{"6", " ", 
                    SqrtBox["3"]}]], "+", "x", "+", 
                    FractionBox[
                    SuperscriptBox["x", "4"], "4"], "+", 
                    FractionBox[
                    SuperscriptBox["x", "7"], "7"], "+", 
                    InterpretationBox[
                    RowBox[{"O", "(", 
                    SuperscriptBox["x", "9"], ")"}], 
                    SeriesData[$CellContext`x, 0, {}, 0, 9, 1], Editable -> 
                    False]}], 
                  RowBox[{"SeriesData", "[", 
                    RowBox[{"x", ",", "0", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    FractionBox["\[Pi]", 
                    RowBox[{"6", " ", 
                    SqrtBox["3"]}]], ",", "1", ",", "0", ",", "0", ",", 
                    FractionBox["1", "4"], ",", "0", ",", "0", ",", 
                    FractionBox["1", "7"]}], "}"}], ",", "0", ",", "9", ",", 
                    "1"}], "]"}]}, "SeriesData", DisplayFunction -> (#& ), 
                 InterpretationFunction -> (#2& ), SyntaxForm -> Plus]}, {
                StyleBox[
                 
                 RowBox[{
                  "\"(\"", "\[NoBreak]", "\"Taylor series\"", "\[NoBreak]", 
                   "\")\""}], {FontFamily -> "Roboto", FontSize -> 10, 
                  GrayLevel[0.5], LinebreakAdjustments -> {1, 100, 1, 0, 100},
                   LineIndent -> 0}]}}, 
              GridBoxAlignment -> {"Columns" -> {{Left}}}, 
              AllowScriptLevelChange -> False, DefaultBaseStyle -> "Column", 
              GridBoxItemSize -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
             "Column"], TraditionalForm]], "Output", {
          Background -> None, 
           GraphicsBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics"}, 
             DefaultAxesStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsAxes"], DefaultFrameStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsFrame"], DefaultFrameTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsFrameTicks"], 
             DefaultTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsTicks"]}, 
           Graphics3DBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics3D"}}}, 
          NumberPoint -> ".", CellSize -> {550, Automatic}, 
          AutoStyleOptions -> {"HighlightFormattingErrors" -> False}, 
          RenderingOptions -> {
           "3DRenderingMethod" -> "BSPTreeOrDepthBuffer"}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,minput,moutput,computabledata,formatteddata,formuladata"}]}\
], 
     XMLElement["expressiontypes", {"count" -> "1"}, {"\n   ", 
       XMLElement["expressiontype", {"name" -> "Default"}, {}], "\n  "}], 
     XMLElement["infos", {"count" -> "1"}, {
       XMLElement["info", {}, {
         XMLElement[
         "link", {
          "url" -> "http://mathworld.wolfram.com/Big-ONotation.html", "text" -> 
           "Big\[Hyphen]O notation"}, {}]}]}]}], Typeset`pod6$$ = XMLElement[
   "pod", {"title" -> "Series expansion of the integral at x = 1", "scanner" -> 
     "Series", "id" -> "SeriesExpansionOfTheIntegralAtx=1.", "position" -> 
     "600", "error" -> "false", "numsubpods" -> "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement[
       "minput", {}, {
        "Series[(2 Sqrt[3] ArcTan[(1 + 2 x)/Sqrt[3]] - 2 Log[1 - x] + Log[1 + \
x + x^2])/6, {x, 1, 4}]"}], 
       XMLElement[
       "moutput", {}, {
        "(2 Sqrt[3] Pi + Log[27] - 6 Log[1 - x])/18 + \"(\"-1 + x\")\"/3 - \
(-1 + x)^2/9 + (-1 + x)^3/27 + O[-1 + x]^4"}], 
       XMLElement["cell", {"compressed" -> False, "string" -> True}, {
         Cell[
          BoxData[
           FormBox[
            TagBox[
             GridBox[{{
                TemplateBox[{
                  RowBox[{
                    RowBox[{
                    FractionBox["1", "18"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{
                    RowBox[{"6"}], " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"1", "-", "x"}], ")"}]}]}], "+", 
                    RowBox[{"2", " ", 
                    SqrtBox["3"], " ", "\[Pi]"}], "+", 
                    RowBox[{"log", "(", "27", ")"}]}], ")"}]}], "+", 
                    FractionBox[
                    RowBox[{"x", "-", "1"}], "3"], "-", 
                    RowBox[{
                    FractionBox["1", "9"], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"x", "-", "1"}], ")"}], "2"]}], "+", 
                    RowBox[{
                    FractionBox["1", "27"], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"x", "-", "1"}], ")"}], "3"]}], "+", 
                    InterpretationBox[
                    RowBox[{"O", "(", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"x", "-", "1"}], ")"}], "4"], ")"}], 
                    SeriesData[$CellContext`x, 1, {}, 0, 4, 1], Editable -> 
                    False]}], 
                  RowBox[{"SeriesData", "[", 
                    RowBox[{"x", ",", "1", ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "18"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"2", " ", 
                    SqrtBox["3"], " ", "\[Pi]"}], "+", 
                    RowBox[{"Log", "[", "27", "]"}], "-", 
                    RowBox[{"6", " ", 
                    RowBox[{"Log", "[", 
                    RowBox[{"1", "-", "x"}], "]"}]}]}], ")"}]}], ",", 
                    FractionBox["1", "3"], ",", 
                    RowBox[{"-", 
                    FractionBox["1", "9"]}], ",", 
                    FractionBox["1", "27"]}], "}"}], ",", "0", ",", "4", ",", 
                    "1"}], "]"}]}, "SeriesData", DisplayFunction -> (#& ), 
                 InterpretationFunction -> (#2& ), SyntaxForm -> Plus]}, {
                StyleBox[
                 
                 RowBox[{
                  "\"(\"", "\[NoBreak]", "\"generalized Puiseux series\"", 
                   "\[NoBreak]", "\")\""}], {
                 FontFamily -> "Roboto", FontSize -> 10, 
                  GrayLevel[0.5], LinebreakAdjustments -> {1, 100, 1, 0, 100},
                   LineIndent -> 0}]}}, 
              GridBoxAlignment -> {"Columns" -> {{Left}}}, 
              AllowScriptLevelChange -> False, DefaultBaseStyle -> "Column", 
              GridBoxItemSize -> {
               "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}], 
             "Column"], TraditionalForm]], "Output", {
          Background -> None, 
           GraphicsBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics"}, 
             DefaultAxesStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsAxes"], DefaultFrameStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsFrame"], DefaultFrameTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsFrameTicks"], 
             DefaultTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsTicks"]}, 
           Graphics3DBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics3D"}}}, 
          NumberPoint -> ".", CellSize -> {550, Automatic}, 
          AutoStyleOptions -> {"HighlightFormattingErrors" -> False}, 
          RenderingOptions -> {
           "3DRenderingMethod" -> "BSPTreeOrDepthBuffer"}]}], 
       XMLElement[
       "dataformats", {}, {
        "plaintext,minput,moutput,computabledata,formatteddata,formuladata"}]}\
], 
     XMLElement["expressiontypes", {"count" -> "1"}, {"\n   ", 
       XMLElement["expressiontype", {"name" -> "Default"}, {}], "\n  "}], 
     XMLElement["infos", {"count" -> "1"}, {
       XMLElement["info", {}, {
         XMLElement[
         "link", {
          "url" -> "http://mathworld.wolfram.com/Big-ONotation.html", "text" -> 
           "Big\[Hyphen]O notation"}, {}]}]}]}], Typeset`pod7$$ = XMLElement[
   "pod", {"title" -> "Series expansion of the integral at x = -(-1)^(1/3)", 
     "scanner" -> "Series", "id" -> 
     "SeriesExpansionOfTheIntegralAtx=-0.5000000000000001 - \
0.8660254037844386*I", "position" -> "700", "error" -> "false", "numsubpods" -> 
     "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement[
       "minput", {}, {
        "Series[(2 Sqrt[3] ArcTan[(1 + 2 x)/Sqrt[3]] - 2 Log[1 - x] + Log[1 + \
x + x^2])/6, {x, -(-1)^(1/3), 4}]"}], 
       XMLElement[
       "moutput", {}, {
        "(-(Sqrt[3] Pi Floor[3/4 - Arg[(-1)^(1/3) + x]/(2 Pi)]) + ((Sqrt[3] \
Pi - I Sqrt[3] Log[3] + Log[16] - 4 Log[3 + I Sqrt[3]] + (2 I) Sqrt[3] \
Log[(-1)^(1/3) + x] + 2 Log[-I Sqrt[3] ((-1)^(1/3) + x)])/4 + \"(\"(-1)^(1/3) \
+ x\")\" - (4 ((-1)^(1/3) + x)^2)/(-3 I + Sqrt[3])^2 - I/18 (-I + Sqrt[3]) \
((-1)^(1/3) + x)^3 + O[(-1)^(1/3) + x]^4))/3"}], 
       XMLElement["cell", {"compressed" -> True, "string" -> False}, {
         Cell[
          BoxData[
           FormBox[
            RowBox[{
              FractionBox["1", "3"], " ", 
              RowBox[{"(", 
                RowBox[{
                  RowBox[{"-", 
                    RowBox[{
                    SqrtBox["3"], " ", "\[Pi]", " ", 
                    TemplateBox[{
                    RowBox[{
                    FractionBox["3", "4"], "-", 
                    FractionBox[
                    RowBox[{"arg", "(", 
                    RowBox[{"x", "+", 
                    RadicalBox[
                    RowBox[{"-", "1"}], "3"]}], ")"}], 
                    RowBox[{"2", " ", "\[Pi]"}]]}]}, "Floor"]}]}], "+", 
                  RowBox[{"(", 
                    TemplateBox[{
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"2", " ", "\[ImaginaryI]", " ", 
                    SqrtBox["3"], " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"x", "+", 
                    RadicalBox[
                    RowBox[{"-", "1"}], "3"]}], ")"}]}], "+", 
                    RowBox[{"2", " ", 
                    RowBox[{"log", "(", 
                    RowBox[{
                    RowBox[{"-", "\[ImaginaryI]"}], " ", 
                    SqrtBox["3"], " ", 
                    RowBox[{"(", 
                    RowBox[{"x", "+", 
                    RadicalBox[
                    RowBox[{"-", "1"}], "3"]}], ")"}]}], ")"}]}], "-", 
                    RowBox[{"4", " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"3", "+", 
                    RowBox[{"\[ImaginaryI]", " ", 
                    SqrtBox["3"]}]}], ")"}]}], "+", 
                    RowBox[{"log", "(", "16", ")"}], "-", 
                    RowBox[{"\[ImaginaryI]", " ", 
                    SqrtBox["3"], " ", 
                    RowBox[{"log", "(", "3", ")"}]}], "+", 
                    RowBox[{
                    SqrtBox["3"], " ", "\[Pi]"}]}], ")"}]}], "+", 
                    RowBox[{"(", 
                    RowBox[{"x", "+", 
                    RadicalBox[
                    RowBox[{"-", "1"}], "3"]}], ")"}], "-", 
                    FractionBox[
                    RowBox[{"4", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"x", "+", 
                    RadicalBox[
                    RowBox[{"-", "1"}], "3"]}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    TagBox[
                    RowBox[{
                    RowBox[{"-", "3"}], " ", "\[ImaginaryI]"}], HoldForm], 
                    "+", 
                    SqrtBox["3"]}], ")"}], "2"]], "-", 
                    RowBox[{
                    FractionBox["1", "18"], " ", "\[ImaginaryI]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    TagBox[
                    RowBox[{"-", "\[ImaginaryI]"}], HoldForm], "+", 
                    SqrtBox["3"]}], ")"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"x", "+", 
                    RadicalBox[
                    RowBox[{"-", "1"}], "3"]}], ")"}], "3"]}], "+", 
                    InterpretationBox[
                    RowBox[{"O", "(", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"x", "+", 
                    RadicalBox[
                    RowBox[{"-", "1"}], "3"]}], ")"}], "4"], ")"}], 
                    
                    SeriesData[$CellContext`x, -(-1)^Rational[1, 3], {}, 0, 4,
                     1], Editable -> False]}], 
                    RowBox[{"SeriesData", "[", 
                    RowBox[{"x", ",", 
                    RowBox[{"-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], 
                    RowBox[{"1", "/", "3"}]]}], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    SqrtBox["3"], " ", "\[Pi]"}], "-", 
                    RowBox[{"\[ImaginaryI]", " ", 
                    SqrtBox["3"], " ", 
                    RowBox[{"Log", "[", "3", "]"}]}], "+", 
                    RowBox[{"Log", "[", "16", "]"}], "-", 
                    RowBox[{"4", " ", 
                    RowBox[{"Log", "[", 
                    RowBox[{"3", "+", 
                    RowBox[{"\[ImaginaryI]", " ", 
                    SqrtBox["3"]}]}], "]"}]}], "+", 
                    RowBox[{"2", " ", "\[ImaginaryI]", " ", 
                    SqrtBox["3"], " ", 
                    RowBox[{"Log", "[", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], 
                    RowBox[{"1", "/", "3"}]], "+", "x"}], "]"}]}], "+", 
                    RowBox[{"2", " ", 
                    RowBox[{"Log", "[", 
                    RowBox[{
                    RowBox[{"-", "\[ImaginaryI]"}], " ", 
                    SqrtBox["3"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], 
                    RowBox[{"1", "/", "3"}]], "+", "x"}], ")"}]}], "]"}]}]}], 
                    ")"}]}], ",", "1", ",", 
                    RowBox[{"-", 
                    FractionBox["4", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "3"}], " ", "\[ImaginaryI]"}], "+", 
                    SqrtBox["3"]}], ")"}], "2"]]}], ",", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["1", "18"]}], " ", "\[ImaginaryI]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "\[ImaginaryI]"}], "+", 
                    SqrtBox["3"]}], ")"}]}]}], "}"}], ",", "0", ",", "4", ",",
                     "1"}], "]"}]}, "SeriesData", DisplayFunction -> (#& ), 
                    InterpretationFunction -> (#2& ), SyntaxForm -> Plus], 
                    ")"}]}], ")"}]}], TraditionalForm]], "Output", {
          Background -> None, 
           GraphicsBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics"}, 
             DefaultAxesStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsAxes"], DefaultFrameStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsFrame"], DefaultFrameTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsFrameTicks"], 
             DefaultTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsTicks"]}, 
           Graphics3DBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics3D"}}}, 
          NumberPoint -> ".", CellSize -> {550, Automatic}, 
          AutoStyleOptions -> {"HighlightFormattingErrors" -> False}, 
          RenderingOptions -> {
           "3DRenderingMethod" -> "BSPTreeOrDepthBuffer"}]}], 
       XMLElement["dataformats", {}, {"plaintext,minput,moutput"}]}], 
     XMLElement["expressiontypes", {"count" -> "1"}, {"\n   ", 
       XMLElement["expressiontype", {"name" -> "Default"}, {}], "\n  "}], 
     XMLElement["infos", {"count" -> "3"}, {
       XMLElement["info", {"text" -> "arg(z) is the complex argument"}, {
         XMLElement[
         "link", {
          "url" -> "http://reference.wolfram.com/language/ref/Arg.html", 
           "text" -> "Documentation", "title" -> "Mathematica"}, {}], 
         XMLElement[
         "link", {
          "url" -> "http://functions.wolfram.com/ComplexComponents/Arg", 
           "text" -> "Properties", "title" -> "Wolfram Functions Site"}, {}], 
         XMLElement[
         "link", {
          "url" -> "http://mathworld.wolfram.com/ComplexArgument.html", 
           "text" -> "Definition", "title" -> "MathWorld"}, {}]}], 
       XMLElement["info", {"text" -> "floor(x) is the floor function"}, {
         XMLElement[
         "link", {
          "url" -> "http://reference.wolfram.com/language/ref/Floor.html", 
           "text" -> "Documentation", "title" -> "Mathematica"}, {}], 
         XMLElement[
         "link", {
          "url" -> "http://functions.wolfram.com/IntegerFunctions/Floor", 
           "text" -> "Properties", "title" -> "Wolfram Functions Site"}, {}], 
         XMLElement[
         "link", {
          "url" -> "http://mathworld.wolfram.com/FloorFunction.html", "text" -> 
           "Definition", "title" -> "MathWorld"}, {}]}], 
       XMLElement["info", {}, {
         XMLElement[
         "link", {
          "url" -> "http://mathworld.wolfram.com/Big-ONotation.html", "text" -> 
           "Big\[Hyphen]O notation"}, {}]}]}]}], Typeset`pod8$$ = XMLElement[
   "pod", {"title" -> "Series expansion of the integral at x = (-1)^(2/3)", 
     "scanner" -> "Series", "id" -> 
     "SeriesExpansionOfTheIntegralAtx=-0.4999999999999998 + \
0.8660254037844387*I", "position" -> "800", "error" -> "false", "numsubpods" -> 
     "1"}, {
     XMLElement["subpod", {"title" -> ""}, {
       XMLElement[
       "minput", {}, {
        "Series[(2 Sqrt[3] ArcTan[(1 + 2 x)/Sqrt[3]] - 2 Log[1 - x] + Log[1 + \
x + x^2])/6, {x, (-1)^(2/3), 4}]"}], 
       XMLElement[
       "moutput", {}, {
        "(Sqrt[3] Pi Floor[(Pi - 2 Arg[-(-1)^(2/3) + x])/(4 Pi)] + ((Sqrt[3] \
Pi + I Sqrt[3] Log[3] + Log[4] - 4 Log[3 - I Sqrt[3]] - (2 I) Sqrt[3] \
Log[-(-1)^(2/3) + x] + 2 Log[3 + I Sqrt[3] + (2 I) Sqrt[3] x])/4 + \
\"(\"-(-1)^(2/3) + x\")\" - (4 (-(-1)^(2/3) + x)^2)/(3 I + Sqrt[3])^2 + I/18 \
(I + Sqrt[3]) (-(-1)^(2/3) + x)^3 + O[-(-1)^(2/3) + x]^4))/3"}], 
       XMLElement["cell", {"compressed" -> True, "string" -> False}, {
         Cell[
          BoxData[
           FormBox[
            RowBox[{
              FractionBox["1", "3"], " ", 
              RowBox[{"(", 
                RowBox[{
                  RowBox[{
                    SqrtBox["3"], " ", "\[Pi]", " ", 
                    TemplateBox[{
                    FractionBox[
                    RowBox[{"\[Pi]", "-", 
                    RowBox[{"2", " ", 
                    RowBox[{"arg", "(", 
                    RowBox[{"x", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], 
                    RowBox[{"2", "/", "3"}]]}], ")"}]}]}], 
                    RowBox[{"4", " ", "\[Pi]"}]]}, "Floor"]}], "+", 
                  RowBox[{"(", 
                    TemplateBox[{
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "2"}], " ", "\[ImaginaryI]", " ", 
                    SqrtBox["3"], " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"x", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], 
                    RowBox[{"2", "/", "3"}]]}], ")"}]}], "+", 
                    RowBox[{"2", " ", 
                    RowBox[{"log", "(", 
                    RowBox[{
                    RowBox[{"2", " ", "\[ImaginaryI]", " ", 
                    SqrtBox["3"], " ", "x"}], "+", 
                    RowBox[{"\[ImaginaryI]", " ", 
                    SqrtBox["3"]}], "+", "3"}], ")"}]}], "-", 
                    RowBox[{"4", " ", 
                    RowBox[{"log", "(", 
                    RowBox[{"3", "-", 
                    RowBox[{"\[ImaginaryI]", " ", 
                    SqrtBox["3"]}]}], ")"}]}], "+", 
                    RowBox[{"log", "(", "4", ")"}], "+", 
                    RowBox[{"\[ImaginaryI]", " ", 
                    SqrtBox["3"], " ", 
                    RowBox[{"log", "(", "3", ")"}]}], "+", 
                    RowBox[{
                    SqrtBox["3"], " ", "\[Pi]"}]}], ")"}]}], "+", 
                    RowBox[{"(", 
                    RowBox[{"x", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], 
                    RowBox[{"2", "/", "3"}]]}], ")"}], "-", 
                    FractionBox[
                    RowBox[{"4", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"x", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], 
                    RowBox[{"2", "/", "3"}]]}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    TagBox[
                    RowBox[{"3", " ", "\[ImaginaryI]"}], HoldForm], "+", 
                    SqrtBox["3"]}], ")"}], "2"]], "+", 
                    RowBox[{
                    FractionBox["1", "18"], " ", "\[ImaginaryI]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    TagBox["\[ImaginaryI]", HoldForm], "+", 
                    SqrtBox["3"]}], ")"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"x", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], 
                    RowBox[{"2", "/", "3"}]]}], ")"}], "3"]}], "+", 
                    InterpretationBox[
                    RowBox[{"O", "(", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"x", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], 
                    RowBox[{"2", "/", "3"}]]}], ")"}], "4"], ")"}], 
                    
                    SeriesData[$CellContext`x, (-1)^Rational[2, 3], {}, 0, 4, 
                    1], Editable -> False]}], 
                    RowBox[{"SeriesData", "[", 
                    RowBox[{"x", ",", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], 
                    RowBox[{"2", "/", "3"}]], ",", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", "4"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    SqrtBox["3"], " ", "\[Pi]"}], "+", 
                    RowBox[{"\[ImaginaryI]", " ", 
                    SqrtBox["3"], " ", 
                    RowBox[{"Log", "[", "3", "]"}]}], "+", 
                    RowBox[{"Log", "[", "4", "]"}], "-", 
                    RowBox[{"4", " ", 
                    RowBox[{"Log", "[", 
                    RowBox[{"3", "-", 
                    RowBox[{"\[ImaginaryI]", " ", 
                    SqrtBox["3"]}]}], "]"}]}], "-", 
                    RowBox[{"2", " ", "\[ImaginaryI]", " ", 
                    SqrtBox["3"], " ", 
                    RowBox[{"Log", "[", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"-", "1"}], ")"}], 
                    RowBox[{"2", "/", "3"}]]}], "+", "x"}], "]"}]}], "+", 
                    RowBox[{"2", " ", 
                    RowBox[{"Log", "[", 
                    RowBox[{"3", "+", 
                    RowBox[{"\[ImaginaryI]", " ", 
                    SqrtBox["3"]}], "+", 
                    RowBox[{"2", " ", "\[ImaginaryI]", " ", 
                    SqrtBox["3"], " ", "x"}]}], "]"}]}]}], ")"}]}], ",", "1", 
                    ",", 
                    RowBox[{"-", 
                    FractionBox["4", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"3", " ", "\[ImaginaryI]"}], "+", 
                    SqrtBox["3"]}], ")"}], "2"]]}], ",", 
                    RowBox[{
                    FractionBox["1", "18"], " ", "\[ImaginaryI]", " ", 
                    RowBox[{"(", 
                    RowBox[{"\[ImaginaryI]", "+", 
                    SqrtBox["3"]}], ")"}]}]}], "}"}], ",", "0", ",", "4", ",",
                     "1"}], "]"}]}, "SeriesData", DisplayFunction -> (#& ), 
                    InterpretationFunction -> (#2& ), SyntaxForm -> Plus], 
                    ")"}]}], ")"}]}], TraditionalForm]], "Output", {
          Background -> None, 
           GraphicsBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics"}, 
             DefaultAxesStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsAxes"], DefaultFrameStyle -> Directive[
               GrayLevel[0, 0.35], FontColor -> GrayLevel[0.25], FontOpacity -> 
               1, "GraphicsFrame"], DefaultFrameTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsFrameTicks"], 
             DefaultTicksStyle -> 
             Directive[
              FontFamily -> "Times", FontSize -> 10, "GraphicsTicks"]}, 
           Graphics3DBoxOptions -> {
            DefaultBaseStyle -> {FontFamily -> "Times", "Graphics3D"}}}, 
          NumberPoint -> ".", CellSize -> {550, Automatic}, 
          AutoStyleOptions -> {"HighlightFormattingErrors" -> False}, 
          RenderingOptions -> {
           "3DRenderingMethod" -> "BSPTreeOrDepthBuffer"}]}], 
       XMLElement["dataformats", {}, {"plaintext,minput,moutput"}]}], 
     XMLElement["expressiontypes", {"count" -> "1"}, {"\n   ", 
       XMLElement["expressiontype", {"name" -> "Default"}, {}], "\n  "}], 
     XMLElement["infos", {"count" -> "1"}, {
       XMLElement["info", {}, {
         XMLElement[
         "link", {
          "url" -> "http://mathworld.wolfram.com/Big-ONotation.html", "text" -> 
           "Big\[Hyphen]O notation"}, {}]}]}]}], Typeset`pod9$$, 
   Typeset`pod10$$, Typeset`pod11$$, Typeset`pod12$$, Typeset`pod13$$, 
   Typeset`pod14$$, Typeset`pod15$$, Typeset`pod16$$, Typeset`pod17$$, 
   Typeset`pod18$$, Typeset`pod19$$, Typeset`pod20$$, Typeset`pod21$$, 
   Typeset`pod22$$, Typeset`pod23$$, Typeset`pod24$$, Typeset`pod25$$, 
   Typeset`pod26$$, Typeset`pod27$$, Typeset`pod28$$, Typeset`pod29$$, 
   Typeset`pod30$$, Typeset`pod31$$, Typeset`pod32$$, Typeset`pod33$$, 
   Typeset`pod34$$, Typeset`aux1$$ = {True, False, {False, False}, True}, 
   Typeset`aux2$$ = {True, False, {False, False}, True}, Typeset`aux3$$ = {
   True, False, {False, False}, True}, Typeset`aux4$$ = {
   True, False, {False}, True}, Typeset`aux5$$ = {True, False, {False}, True},
    Typeset`aux6$$ = {True, False, {False}, True}, Typeset`aux7$$ = {
   True, False, {False}, True}, Typeset`aux8$$ = {True, False, {False}, True},
    Typeset`aux9$$ = {True, False, {False}, True}, Typeset`aux10$$ = {
   True, False, {False}, True}, Typeset`aux11$$ = {
   True, False, {False}, True}, Typeset`aux12$$ = {
   True, False, {False}, True}, Typeset`aux13$$ = {
   True, False, {False}, True}, Typeset`aux14$$ = {
   True, False, {False}, True}, Typeset`aux15$$ = {
   True, False, {False}, True}, Typeset`aux16$$ = {
   True, False, {False}, True}, Typeset`aux17$$ = {
   True, False, {False}, True}, Typeset`aux18$$ = {
   True, False, {False}, True}, Typeset`aux19$$ = {
   True, False, {False}, True}, Typeset`aux20$$ = {
   True, False, {False}, True}, Typeset`aux21$$ = {
   True, False, {False}, True}, Typeset`aux22$$ = {
   True, False, {False}, True}, Typeset`aux23$$ = {
   True, False, {False}, True}, Typeset`aux24$$ = {
   True, False, {False}, True}, Typeset`aux25$$ = {
   True, False, {False}, True}, Typeset`aux26$$ = {
   True, False, {False}, True}, Typeset`aux27$$ = {
   True, False, {False}, True}, Typeset`aux28$$ = {
   True, False, {False}, True}, Typeset`aux29$$ = {
   True, False, {False}, True}, Typeset`aux30$$ = {
   True, False, {False}, True}, Typeset`aux31$$ = {
   True, False, {False}, True}, Typeset`aux32$$ = {
   True, False, {False}, True}, Typeset`aux33$$ = {
   True, False, {False}, True}, Typeset`aux34$$ = {
   True, False, {False}, True}, Typeset`asyncpods$$ = {}, 
   Typeset`nonpods$$ = {}, Typeset`initdone$$ = 
   FrontEnd`SuppressEvaluationHash[True], 
   Typeset`queryinfo$$ = {{
    "success" -> "true", "error" -> 
     "false", {"http://www.w3.org/XML/1998/namespace", "space"} -> "preserve",
      "numpods" -> "4", "datatypes" -> "", "timedout" -> 
     "Integral,Series,Plot,Plotter,Simplification,Sequence,Sum", 
     "timedoutpods" -> "", "timing" -> "3.607", "parsetiming" -> "0.231", 
     "parsetimedout" -> "false", "recalculate" -> 
     "https://www6b3.wolframalpha.com/api/v1/recalc.jsp?id=\
MSPa26111c9h8e7ce9b1fe5400005dcifgcd50d586926249686130609588165", "id" -> 
     "MSP26121c9h8e7ce9b1fe5400006665ae67d01419hg", "host" -> 
     "https://www6b3.wolframalpha.com", "server" -> "7", "related" -> 
     "https://www6b3.wolframalpha.com/api/v1/relatedQueries.jsp?id=\
MSPa26131c9h8e7ce9b1fe54000030iaa5c827ah0b4i6249686130609588165", "version" -> 
     "2.6", "inputstring" -> "Integrate 1/(1-x^3)"}, {
    "success" -> "true", "error" -> 
     "false", {"http://www.w3.org/XML/1998/namespace", "space"} -> "preserve",
      "numpods" -> "4", "datatypes" -> "", "timedout" -> 
     "Integral,Series,Plot,Plotter,Simplification,Sequence,Sum", 
     "timedoutpods" -> "", "timing" -> "5.347", "parsetimedout" -> "false", 
     "recalculate" -> "", "id" -> "", "parseidserver" -> "12", "host" -> 
     "https://www6b3.wolframalpha.com", "server" -> "12", "related" -> "", 
     "version" -> "2.6", "inputstring" -> "Integrate 1/(1-x^3)"}}, 
   Typeset`sessioninfo$$ = {
   "TimeZone" -> 8., 
    "Date" -> {2023, 4, 10, 14, 11, 47.3031859`9.427465252701657}, "Line" -> 
    3, "SessionID" -> 31447366811883202259}, Typeset`showpods$$ = {1, 2, 3, 4,
    5, 6, 7, 8}, Typeset`failedpods$$ = {9, 10, 11, 12, 13, 14, 15, 16, 17, 
   18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34}, 
   Typeset`chosen$$ = {
   "IndefiniteIntegral", "Indefinite integral", 1, 1, "Input", 
    "Integrate[1/(1 - x^3), x]"}, Typeset`open$$ = False, Typeset`newq$$ = 
   "Integrate 1/(1-x^3)"}, 
   DynamicBox[ToBoxes[
     AlphaIntegration`FormatAlphaResults[
      Dynamic[{
       2, {Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$, Typeset`pod4$$, 
         Typeset`pod5$$, Typeset`pod6$$, Typeset`pod7$$, Typeset`pod8$$, 
         Typeset`pod9$$, Typeset`pod10$$, Typeset`pod11$$, Typeset`pod12$$, 
         Typeset`pod13$$, Typeset`pod14$$, Typeset`pod15$$, Typeset`pod16$$, 
         Typeset`pod17$$, Typeset`pod18$$, Typeset`pod19$$, Typeset`pod20$$, 
         Typeset`pod21$$, Typeset`pod22$$, Typeset`pod23$$, Typeset`pod24$$, 
         Typeset`pod25$$, Typeset`pod26$$, Typeset`pod27$$, Typeset`pod28$$, 
         Typeset`pod29$$, Typeset`pod30$$, Typeset`pod31$$, Typeset`pod32$$, 
         Typeset`pod33$$, Typeset`pod34$$}, {
        Typeset`aux1$$, Typeset`aux2$$, Typeset`aux3$$, Typeset`aux4$$, 
         Typeset`aux5$$, Typeset`aux6$$, Typeset`aux7$$, Typeset`aux8$$, 
         Typeset`aux9$$, Typeset`aux10$$, Typeset`aux11$$, Typeset`aux12$$, 
         Typeset`aux13$$, Typeset`aux14$$, Typeset`aux15$$, Typeset`aux16$$, 
         Typeset`aux17$$, Typeset`aux18$$, Typeset`aux19$$, Typeset`aux20$$, 
         Typeset`aux21$$, Typeset`aux22$$, Typeset`aux23$$, Typeset`aux24$$, 
         Typeset`aux25$$, Typeset`aux26$$, Typeset`aux27$$, Typeset`aux28$$, 
         Typeset`aux29$$, Typeset`aux30$$, Typeset`aux31$$, Typeset`aux32$$, 
         Typeset`aux33$$, Typeset`aux34$$}, Typeset`chosen$$, Typeset`open$$, 
        Typeset`elements$$, Typeset`q$$, Typeset`opts$$, Typeset`nonpods$$, 
        Typeset`queryinfo$$, Typeset`sessioninfo$$, Typeset`showpods$$, 
        Typeset`failedpods$$, Typeset`newq$$}]], StandardForm],
    ImageSizeCache->{210.09765625, {55., 18.}},
    TrackedSymbols:>{Typeset`showpods$$, Typeset`failedpods$$}],
   DynamicModuleValues:>{},
   Initialization:>If[
     And[
      Not[Typeset`initdone$$ === True], 
      Not[Typeset`initdone$$ === FrontEnd`SuppressEvaluationHash[True]]], 
     Null; AlphaIntegration`DoAsyncInitialization[
       Hold[{
        2, {Typeset`pod1$$, Typeset`pod2$$, Typeset`pod3$$, Typeset`pod4$$, 
          Typeset`pod5$$, Typeset`pod6$$, Typeset`pod7$$, Typeset`pod8$$, 
          Typeset`pod9$$, Typeset`pod10$$, Typeset`pod11$$, Typeset`pod12$$, 
          Typeset`pod13$$, Typeset`pod14$$, Typeset`pod15$$, Typeset`pod16$$, 
          Typeset`pod17$$, Typeset`pod18$$, Typeset`pod19$$, Typeset`pod20$$, 
          Typeset`pod21$$, Typeset`pod22$$, Typeset`pod23$$, Typeset`pod24$$, 
          Typeset`pod25$$, Typeset`pod26$$, Typeset`pod27$$, Typeset`pod28$$, 
          Typeset`pod29$$, Typeset`pod30$$, Typeset`pod31$$, Typeset`pod32$$, 
          Typeset`pod33$$, Typeset`pod34$$}, {
         Typeset`aux1$$, Typeset`aux2$$, Typeset`aux3$$, Typeset`aux4$$, 
          Typeset`aux5$$, Typeset`aux6$$, Typeset`aux7$$, Typeset`aux8$$, 
          Typeset`aux9$$, Typeset`aux10$$, Typeset`aux11$$, Typeset`aux12$$, 
          Typeset`aux13$$, Typeset`aux14$$, Typeset`aux15$$, Typeset`aux16$$, 
          Typeset`aux17$$, Typeset`aux18$$, Typeset`aux19$$, Typeset`aux20$$, 
          Typeset`aux21$$, Typeset`aux22$$, Typeset`aux23$$, Typeset`aux24$$, 
          Typeset`aux25$$, Typeset`aux26$$, Typeset`aux27$$, Typeset`aux28$$, 
          Typeset`aux29$$, Typeset`aux30$$, Typeset`aux31$$, Typeset`aux32$$, 
          Typeset`aux33$$, Typeset`aux34$$}, Typeset`chosen$$, Typeset`open$$,
          Typeset`elements$$, Typeset`q$$, Typeset`opts$$, Typeset`nonpods$$, 
         Typeset`queryinfo$$, Typeset`sessioninfo$$, Typeset`showpods$$, 
         Typeset`failedpods$$, Typeset`newq$$, 
         "https://www6b3.wolframalpha.com/api/v1/recalc.jsp?id=\
MSPa26111c9h8e7ce9b1fe5400005dcifgcd50d586926249686130609588165", 
         Typeset`asyncpods$$}]]; Typeset`asyncpods$$ = {}; 
     Typeset`initdone$$ = FrontEnd`SuppressEvaluationHash[True]],
   SynchronousInitialization->False],
  BaseStyle->{Deployed -> True},
  DeleteWithContents->True,
  Editable->False,
  SelectWithContents->True]], "WolframAlphaShortInput",ExpressionUUID->\
"3d2332de-5a2f-43da-a991-0a607ad1a496"]
},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"13.0 for Microsoft Windows (64-bit) (2021\:5e7412\:67082\
\:65e5)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"88601438-94e3-471f-a489-3c865a25e1ee"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1488, 33, 200631, 4056, 29, "WolframAlphaShortInput",ExpressionUUID->"3d2332de-5a2f-43da-a991-0a607ad1a496"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 4vT8fi0dpUiFZCwAJg6@WJt6 *)
