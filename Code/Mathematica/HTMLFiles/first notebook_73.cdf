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
NotebookDataLength[      6670,        158]
NotebookOptionsPosition[      7078,        150]
NotebookOutlinePosition[      7574,        171]
CellTagsIndexPosition[      7531,        168]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`dif$$ = 5, $CellContext`sr$$ = 2029, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`dif$$], 0, "difficulty"}, 0, 5, 1}, {{
       Hold[$CellContext`sr$$], 123, "random seed"}, 0, 12345, 1}}, 
    Typeset`size$$ = {490., {242.13403328722342`, 247.86596671277658`}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    True, $CellContext`dif$1989489$$ = 0, $CellContext`sr$1989490$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`dif$$ = 0, $CellContext`sr$$ = 123}, 
      "ControllerVariables" :> {
        Hold[$CellContext`dif$$, $CellContext`dif$1989489$$, 0], 
        Hold[$CellContext`sr$$, $CellContext`sr$1989490$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> (SeedRandom[$CellContext`sr$$]; 
       DynamicModule[{$CellContext`f1, $CellContext`f2, $CellContext`f3, \
$CellContext`f4, $CellContext`genPuzzle, $CellContext`mo, $CellContext`m, \
$CellContext`patt, $CellContext`p, $CellContext`u, $CellContext`i, \
$CellContext`j}, $CellContext`f1[
            Pattern[$CellContext`n, 
             Blank[]]] := FromDigits[
            Part[
             IntegerDigits[$CellContext`n], {4, 1, 3, 5, 2, 6, 7, 8, 
             9}]]; $CellContext`f2[
            Pattern[$CellContext`n, 
             Blank[]]] := FromDigits[
            Part[
             IntegerDigits[$CellContext`n], {1, 5, 2, 4, 6, 3, 7, 8, 
             9}]]; $CellContext`f3[
            Pattern[$CellContext`n, 
             Blank[]]] := FromDigits[
            Part[
             IntegerDigits[$CellContext`n], {1, 2, 3, 7, 4, 6, 8, 5, 
             9}]]; $CellContext`f4[
            Pattern[$CellContext`n, 
             Blank[]]] := FromDigits[
            Part[
             IntegerDigits[$CellContext`n], {1, 2, 3, 4, 8, 5, 7, 9, 
             6}]]; $CellContext`genPuzzle[0] := 
          123456789; $CellContext`genPuzzle[
            Pattern[$CellContext`diff, 
             Blank[]]] := Module[{$CellContext`v = {}}, Do[
              AppendTo[$CellContext`v, 
               RandomInteger[{1, 4}]], {$CellContext`diff}]; 
            Fold[Part[{$CellContext`f1, $CellContext`f2, $CellContext`f3, \
$CellContext`f4}, #2][#]& , 123456789, $CellContext`v]]; $CellContext`mo[
            Pattern[$CellContext`pr, 
             Blank[]], 
            Pattern[$CellContext`i, 
             Blank[]]] := Module[{$CellContext`h}, $CellContext`h = FromDigits[
               Flatten[$CellContext`pr]]; Partition[
              IntegerDigits[
               Switch[$CellContext`i, 1, 
                $CellContext`f2[$CellContext`h], 2, 
                $CellContext`f4[$CellContext`h], 3, 
                $CellContext`f1[$CellContext`h], 4, 
                $CellContext`f3[$CellContext`h]]], 3]]; $CellContext`patt = {
            Partition[
             IntegerDigits[
              $CellContext`genPuzzle[$CellContext`dif$$]], 
             3]}; $CellContext`m = Transpose[
            Reverse[
             Last[$CellContext`patt]]]; ClickPane[
           Dynamic[
            Framed[
             Graphics[{
               EdgeForm[Thick], 
               Rectangle[{-0.1, -0.1}, {3.1, 3.1}], 
               EdgeForm[Thin], 
               Table[{
                 ColorData[5][$CellContext`i + 3 ($CellContext`j - 1)], 
                 
                 Rectangle[{$CellContext`i - 1, $CellContext`j - 
                   1}, {$CellContext`i, $CellContext`j}], 
                 Style[
                  Text[
                   
                   Part[$CellContext`m, $CellContext`i, $CellContext`j], \
{$CellContext`i - 0.5, $CellContext`j - 0.5}], White, 40, Bold], 
                 Map[{Red, 
                   Disk[#, 0.1], White, 
                   Disk[#, 0.05]}& , {{1, 1}, {1, 2}, {2, 1}, {2, 
                  2}}]}, {$CellContext`i, 3}, {$CellContext`j, 3}]}, 
              ImageSize -> {480, 480}]]], ($CellContext`p = #; $CellContext`u = 
            If[Norm[$CellContext`p - {1, 2}] < 0.1, 1, 
              If[Norm[$CellContext`p - {2, 2}] < 0.1, 2, 
               If[Norm[$CellContext`p - {1, 1}] < 0.1, 3, 
                If[Norm[$CellContext`p - {2, 1}] < 0.1, 4, 0]]]]; 
           If[$CellContext`u > 
             0, $CellContext`m = $CellContext`mo[$CellContext`m, \
$CellContext`u]])& ]]), 
      "Specifications" :> {{{$CellContext`dif$$, 0, "difficulty"}, 0, 5, 1, 
         ControlType -> Setter}, {{$CellContext`sr$$, 123, "random seed"}, 0, 
         12345, 1, Appearance -> "Labeled"}}, "Options" :> {}, 
      "DefaultOptions" :> {ControllerLinking -> True}],
     ImageSizeCache->{179., {36.13403328722343, 41.86596671277657}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellGroupingRules->{"GroupTogetherGrouping", 56.},
 CellID->17321633,ExpressionUUID->"4e7c9cc1-03c5-4454-946d-48fcf45ca7fd"]
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
ExpressionUUID->"1f8d8e97-a0ce-42ae-8ba9-3a7978db09d6"
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
Cell[1488, 33, 5586, 115, 32, "Output",ExpressionUUID->"4e7c9cc1-03c5-4454-946d-48fcf45ca7fd",
 CellGroupingRules->{"GroupTogetherGrouping", 56.},
 CellID->17321633]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature ivDgOq8LV0tDHDgA1pYidfOf *)
