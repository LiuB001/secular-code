(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 9.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       157,          7]
NotebookDataLength[    225552,       4977]
NotebookOptionsPosition[    224949,       4958]
NotebookOutlinePosition[    225407,       4977]
CellTagsIndexPosition[    225364,       4974]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{"Clear", "[", "\"\<`*\>\"", "]"}]], "Input",
 CellChangeTimes->{{3.8198299605782256`*^9, 3.8198299632217474`*^9}},
 CellLabel->"In[16]:=",ExpressionUUID->"d7bbecff-e250-4b6c-955c-39245c5f8a9f"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"k", "=", "39.4751488"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"c", "=", 
   RowBox[{"6.32397263", "*", 
    SuperscriptBox["10", "4"]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"M12", "=", "20"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"M3", "=", "1"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"E20", "=", 
   StyleBox["0.001",
    FontColor->RGBColor[1, 0, 0]]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"E10", "=", "0.9"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"NUM", "=", "20"}], ";"}], "\n", 
 RowBox[{
  RowBox[{"RASEs", "=", 
   RowBox[{"ConstantArray", "[", 
    RowBox[{"0", ",", "NUM"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"RASIs", "=", 
   RowBox[{"ConstantArray", "[", 
    RowBox[{"0", ",", "NUM"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"MSSs", "=", 
   RowBox[{"ConstantArray", "[", 
    RowBox[{"0", ",", "NUM"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"AINSSs", "=", 
   RowBox[{"ConstantArray", "[", 
    RowBox[{"0", ",", "NUM"}], "]"}]}], ";"}]}], "Input",
 CellChangeTimes->{{3.851525934707758*^9, 3.8515259366001463`*^9}, 
   3.8515260772877254`*^9, {3.8515261861794786`*^9, 3.8515261863673906`*^9}, {
   3.8515262189509215`*^9, 3.8515262285383296`*^9}, {3.8515264635212584`*^9, 
   3.851526509734562*^9}, 3.8515274858001237`*^9, 3.851527520946313*^9, {
   3.851528074092385*^9, 3.851528074611741*^9}, {3.851530070580948*^9, 
   3.8515300783332815`*^9}, {3.8516196061498976`*^9, 3.851619618195448*^9}, {
   3.8516198053031178`*^9, 3.8516198104289603`*^9}, {3.853226520129116*^9, 
   3.853226533496683*^9}, {3.853789112009728*^9, 3.853789112995337*^9}, 
   3.853846160691957*^9, 3.855607679841961*^9, {3.8556082895790052`*^9, 
   3.8556082975685425`*^9}, {3.855643771459425*^9, 3.855643772050106*^9}, 
   3.858458486876996*^9, 3.8584596226345115`*^9, 3.858968800015673*^9, 
   3.8589696334032636`*^9, {3.8592192504111223`*^9, 3.8592192507400246`*^9}, 
   3.8592199346424046`*^9, 3.859281817107519*^9, {3.8594575272694864`*^9, 
   3.8594575276158657`*^9}, 3.859643846372356*^9},
 CellLabel->"In[17]:=",ExpressionUUID->"3505ca3b-406e-44a3-b4eb-f5819e641ffe"],

Cell[BoxData[{
 RowBox[{"Monitor", "[", 
  RowBox[{
   RowBox[{"For", "[", 
    RowBox[{
     RowBox[{"jj", "=", "1"}], ",", 
     RowBox[{"jj", "\[LessEqual]", " ", "NUM"}], ",", 
     RowBox[{"jj", "++"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"AOUTS", "=", 
       RowBox[{"{", 
        RowBox[{
        "0.05401725800001826`", ",", "0.11236042453145904`", ",", 
         "0.15794742056167424`", ",", "0.19766566063925087`", ",", 
         "0.23371910141913227`", ",", "0.26717408151261574`", ",", 
         "0.2986492555344945`", ",", "0.3285438744031143`", ",", 
         "0.35713450807433034`", ",", "0.3846227206807176`", ",", 
         "0.4111611430685732`", ",", "0.4368688629962807`", ",", 
         "0.4618410594273031`", ",", "0.48615532200016437`", ",", 
         "0.5098759570965903`", ",", "0.5330570164191396`", ",", 
         "0.6422761164998206`", ",", "0.7428697128990142`", ",", 
         "0.837051974060968`", ",", "0.9261999803144801`", ",", 
         "1.0112438207831314`", ",", "1.0928489260714853`", ",", 
         "1.1715121149870011`", ",", "1.247616723241421`", ",", 
         "1.3214663697310536`", ",", "1.3933067209883165`", ",", 
         "1.4633401099716108`", ",", "1.5317356951085206`", ",", 
         "1.5986367248935331`", ",", "1.664165860896694`", ",", 
         "1.7284291610349911`"}], "}"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"AINBS", "=", 
       RowBox[{"{", 
        RowBox[{
        "0.007592526869979704`", ",", "0.01579309231833169`", ",", 
         "0.02220068324567846`", ",", "0.02778337692881957`", ",", 
         "0.032850955847327036`", ",", "0.037553301814134965`", ",", 
         "0.04197737133092386`", ",", "0.04617928208003521`", ",", 
         "0.050197908023217684`", ",", "0.0540615804965898`", ",", 
         "0.05779175289939108`", ",", "0.06140516390068562`", ",", 
         "0.06491519161080901`", ",", "0.06833274182981733`", ",", 
         "0.0716668532973512`", ",", "0.07492512338171925`", ",", 
         "0.090276679213696`", ",", "0.10441585643014248`", ",", 
         "0.11765387285347406`", ",", "0.1301842873533119`", ",", 
         "0.14213783086498522`", ",", "0.1536080346030043`", ",", 
         "0.1646647301412921`", ",", "0.17536179816167857`", ",", 
         "0.175876591138702`", ",", "0.175876591138702`", ",", 
         "0.175876591138702`", ",", "0.175876591138702`", ",", 
         "0.175876591138702`", ",", "0.175876591138702`", ",", 
         "0.175876591138702`"}], "}"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"AINLS", "=", 
       RowBox[{"{", 
        RowBox[{
        "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`", ",", "0.003611078428380584`", ",", 
         "0.003611078428380584`"}], "}"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"RASES", "=", 
       RowBox[{"ConstantArray", "[", 
        RowBox[{"0", ",", 
         RowBox[{"Length", "[", "AOUTS", "]"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"RASIS", "=", 
       RowBox[{"ConstantArray", "[", 
        RowBox[{"0", ",", 
         RowBox[{"Length", "[", "AOUTS", "]"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"MSSS", "=", 
       RowBox[{"ConstantArray", "[", 
        RowBox[{"0", ",", 
         RowBox[{"Length", "[", "AOUTS", "]"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"AINSSS", "=", 
       RowBox[{"ConstantArray", "[", 
        RowBox[{"0", ",", 
         RowBox[{"Length", "[", "AOUTS", "]"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"For", "[", 
       RowBox[{
        RowBox[{"ii", "=", "1"}], ",", 
        RowBox[{"ii", "\[LessEqual]", 
         RowBox[{"Length", "[", "AOUTS", "]"}]}], ",", 
        RowBox[{"ii", "++"}], ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"a2", "=", 
          RowBox[{"AOUTS", "[", 
           RowBox[{"[", "ii", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"AINB", "=", 
          RowBox[{"AINBS", "[", 
           RowBox[{"[", "ii", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"AINL", "=", 
          RowBox[{"AINLS", "[", 
           RowBox[{"[", "ii", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"num", "=", "100"}], ";", "\[IndentingNewLine]", 
         RowBox[{"AINGRS", "=", 
          RowBox[{"Range", "[", 
           RowBox[{"AINB", ",", "AINL", ",", 
            RowBox[{"-", 
             FractionBox[
              RowBox[{"AINB", "-", "AINL"}], "num"]}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"MS", "=", 
          RowBox[{"Range", "[", 
           RowBox[{"0.4", ",", "0.7", ",", "0.05"}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"MSS", "=", 
          RowBox[{"ConstantArray", "[", 
           RowBox[{"0", ",", 
            RowBox[{
             RowBox[{"Length", "[", "MS", "]"}], 
             RowBox[{"Length", "[", "AINGRS", "]"}]}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"AINSS", "=", 
          RowBox[{"ConstantArray", "[", 
           RowBox[{"0", ",", 
            RowBox[{
             RowBox[{"Length", "[", "MS", "]"}], 
             RowBox[{"Length", "[", "AINGRS", "]"}]}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"RASE", "=", 
          RowBox[{"ConstantArray", "[", 
           RowBox[{"0", ",", 
            RowBox[{
             RowBox[{"Length", "[", "MS", "]"}], 
             RowBox[{"Length", "[", "AINGRS", "]"}]}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"RASI", "=", 
          RowBox[{"ConstantArray", "[", 
           RowBox[{"0", ",", 
            RowBox[{
             RowBox[{"Length", "[", "MS", "]"}], 
             RowBox[{"Length", "[", "AINGRS", "]"}]}]}], "]"}]}], ";", "\n", 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{
                  RowBox[{
                   RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"**", "**"}], "**", "**", "**"}], "**", "**"}], "**",
                     "**", "**"}], "**", "**"}], "**", "**", "**"}], "**", 
                    "**"}], "**", "**", "**"}], "**", "**"}], "**", "**", 
                    "**"}], "**", "**"}], "**", "**", "**"}], "**", "**"}], "**",
                     "**", "**"}], "**", "**"}], "**", "**", "**"}], "**", 
                    "**"}], "**", "**", "**"}], "**", "**"}], "**", "**", 
                    "**"}], "**", "**"}], "**", "**", "**"}], "**", "**"}], "**",
                 "**", "**"}], "**", "**"}], "**", "**", "**"}], "**", "**"}],
             "**", "**", "**"}], "**", "**"}], "***********)"}], 
         "\[IndentingNewLine]", 
         RowBox[{"u", "=", "0"}], ";", "\[IndentingNewLine]", 
         RowBox[{"For", "[", 
          RowBox[{
           RowBox[{"i", "=", "1"}], ",", 
           RowBox[{"i", "\[LessEqual]", 
            RowBox[{"Length", "[", "MS", "]"}]}], ",", 
           RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"S3", "=", 
             RowBox[{"NSolve", "[", 
              RowBox[{
               RowBox[{
                RowBox[{
                 RowBox[{"m1", "+", "m2"}], "==", "M12"}], "&&", 
                RowBox[{
                 RowBox[{"m2", "/", "m1"}], "\[Equal]", 
                 RowBox[{"MS", "[", 
                  RowBox[{"[", "i", "]"}], "]"}]}]}], ",", 
               RowBox[{"{", 
                RowBox[{"m1", ",", "m2"}], "}"}]}], "]"}]}], ";", 
            "\[IndentingNewLine]", 
            RowBox[{"M1", "=", 
             StyleBox[
              RowBox[{"m1", "/.", 
               RowBox[{"S3", "[", 
                RowBox[{"[", "1", "]"}], "]"}]}],
              FontColor->RGBColor[1, 0, 0]]}], 
            StyleBox[";",
             FontColor->RGBColor[1, 0, 0]], 
            StyleBox["\[IndentingNewLine]",
             FontColor->RGBColor[1, 0, 0]], 
            StyleBox[
             RowBox[{"M2", "=", 
              RowBox[{"m2", "/.", 
               RowBox[{"S3", "[", 
                RowBox[{"[", "1", "]"}], "]"}]}]}],
             FontColor->RGBColor[1, 0, 0]], 
            StyleBox[";",
             FontColor->RGBColor[1, 0, 0]], 
            StyleBox["\[IndentingNewLine]",
             FontColor->RGBColor[1, 0, 0]], 
            StyleBox[
             RowBox[{"Clear", "[", "m1", "]"}],
             FontColor->RGBColor[1, 0, 0]], 
            StyleBox[";",
             FontColor->RGBColor[1, 0, 0]], 
            StyleBox["\[IndentingNewLine]",
             FontColor->RGBColor[1, 0, 0]], 
            StyleBox[
             RowBox[{"Clear", "[", "m2", "]"}],
             FontColor->RGBColor[1, 0, 0]], 
            StyleBox[";",
             FontColor->RGBColor[1, 0, 0]], 
            StyleBox["\[IndentingNewLine]",
             FontColor->RGBColor[1, 0, 0]], 
            StyleBox[
             RowBox[{"Clear", "[", "S3", "]"}],
             FontColor->RGBColor[1, 0, 0]], 
            StyleBox[";",
             FontColor->RGBColor[1, 0, 0]], "\[IndentingNewLine]", 
            RowBox[{"\[Mu]", "=", 
             FractionBox["M2", 
              RowBox[{"M1", "+", "M2"}]]}], ";", "\[IndentingNewLine]", 
            RowBox[{"\[Mu]in", "=", 
             FractionBox[
              RowBox[{"M1", " ", "M2"}], 
              RowBox[{"M1", "+", "M2"}]]}], ";", "\n", 
            RowBox[{"For", "[", 
             RowBox[{
              RowBox[{"j", "=", "1"}], ",", 
              RowBox[{"j", "\[LessEqual]", "  ", 
               RowBox[{"Length", "[", "AINGRS", "]"}]}], ",", 
              RowBox[{"j", "++"}], ",", "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"Ain", "=", 
                RowBox[{"AINGRS", "[", 
                 RowBox[{"[", "j", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
               RowBox[{"QIN", "=", 
                SuperscriptBox[
                 RowBox[{"(", 
                  FractionBox[
                   RowBox[{"Max", "[", 
                    RowBox[{"{", 
                    RowBox[{"M1", ",", "M2"}], "}"}], "]"}], 
                   RowBox[{"Min", "[", 
                    RowBox[{"{", 
                    RowBox[{"M1", ",", "M2"}], "}"}], "]"}]], ")"}], 
                 RowBox[{"1", "/", "3"}]]}], ";", "\[IndentingNewLine]", 
               RowBox[{"QOUT", "=", 
                SuperscriptBox[
                 RowBox[{"(", 
                  FractionBox[
                   RowBox[{"M1", "+", "M2"}], "M3"], ")"}], 
                 RowBox[{"1", "/", "3"}]]}], ";", "\[IndentingNewLine]", 
               RowBox[{"Clear", "[", "S7", "]"}], ";", "\[IndentingNewLine]", 
               RowBox[{"Clear", "[", "aout", "]"}], ";", 
               "\[IndentingNewLine]", 
               RowBox[{"S7", "=", 
                RowBox[{"Solve", "[", 
                 RowBox[{
                  RowBox[{
                   FractionBox[
                    RowBox[{"aout", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", "E20"}], ")"}]}], 
                    RowBox[{"Ain", 
                    RowBox[{"(", 
                    RowBox[{"1", "+", "E10"}], ")"}]}]], "\[Equal]", 
                   RowBox[{"3", 
                    RowBox[{"(", 
                    RowBox[{
                    FractionBox["3.7", "QOUT"], "-", 
                    FractionBox["2.2", 
                    RowBox[{"1", "+", "QOUT"}]], "+", 
                    RowBox[{
                    FractionBox["1.4", "QIN"], 
                    FractionBox[
                    RowBox[{"QOUT", "-", "1"}], 
                    RowBox[{"QOUT", "+", "1"}]]}]}], ")"}]}]}], ",", "aout", 
                  ",", "Reals"}], "]"}]}], ";", "\[IndentingNewLine]", 
               RowBox[{"SAOUT", "=", 
                RowBox[{"aout", "/.", 
                 RowBox[{"S7", "[", 
                  RowBox[{"[", "1", "]"}], "]"}]}]}], ";", 
               StyleBox["\[IndentingNewLine]",
                FontColor->RGBColor[1, 0, 0]], 
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{"a2", ">", "SAOUT"}], ",", "\[IndentingNewLine]", 
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"u", "++"}], ";", "\[IndentingNewLine]", 
                   RowBox[{"(*", 
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"**", "**"}], "**"}], "**"}], "**"}], "**"}], 
                    "**"}], "**"}], "**"}], "**"}], "**"}], "**"}], "**"}], 
                    "**"}], "**"}], "**"}], "**"}], "**"}], "**"}], "**"}], 
                    "**"}], "**"}], "******)"}], "\[IndentingNewLine]", 
                   RowBox[{"Itot", "=", 
                    StyleBox["0.01",
                    FontColor->RGBColor[1, 0, 0]]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"S", "=", "0"}], ";", 
                   RowBox[{"(*", 
                    RowBox[{"spin", "-", "orbit"}], "*)"}], 
                   "\[IndentingNewLine]", 
                   RowBox[{"SS", "=", "0"}], ";", "\[IndentingNewLine]", 
                   RowBox[{"SM3", "=", "0"}], ";", 
                   RowBox[{"(*", 
                    RowBox[{"spin", "-", 
                    RowBox[{"orbit", " ", "from", " ", "M3"}]}], "*)"}], 
                   "\[IndentingNewLine]", 
                   RowBox[{"SSM3", "=", "0"}], ";", "\[IndentingNewLine]", 
                   RowBox[{"m", "=", "1"}], ";", 
                   RowBox[{"(*", "Kozai", "*)"}], "\[IndentingNewLine]", 
                   RowBox[{"mm", "=", "1"}], ";", 
                   RowBox[{"(*", " ", 
                    RowBox[{"turn", " ", "on", " ", "oct", " ", "Kozai"}], 
                    " ", "*)"}], "\[IndentingNewLine]", 
                   RowBox[{"l", "=", "1"}], ";", 
                   RowBox[{"(*", "GR", "*)"}], "\[IndentingNewLine]", 
                   RowBox[{"ll", "=", "0"}], ";", 
                   RowBox[{"(*", "GW", "*)"}], "\[IndentingNewLine]", 
                   RowBox[{"lll", "=", "1"}], ";", 
                   RowBox[{"(*", 
                    RowBox[{"GR", " ", "OUT"}], "*)"}], "\[IndentingNewLine]", 
                   RowBox[{"n", "=", "1"}], ";", 
                   RowBox[{"(*", 
                    RowBox[{"ROUT", " ", "Quad"}], "*)"}], 
                   "\[IndentingNewLine]", 
                   RowBox[{"nn", "=", "1"}], ";", 
                   RowBox[{"(*", 
                    RowBox[{"ROUT", " ", "Oct"}], "*)"}], 
                   "\[IndentingNewLine]", "\[IndentingNewLine]", 
                   RowBox[{"INTain", "=", "Ain"}], ";", "\[IndentingNewLine]", 
                   RowBox[{"T", "=", "30"}], ";", "\[IndentingNewLine]", 
                   RowBox[{"S1", "=", 
                    RowBox[{"S", " ", 
                    FractionBox[
                    RowBox[{"k", " ", 
                    SuperscriptBox["M1", "2"]}], "c"]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"S2", "=", 
                    RowBox[{"SS", "  ", 
                    FractionBox[
                    RowBox[{"k", " ", 
                    SuperscriptBox["M2", "2"]}], "c"]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"N1", "=", 
                    SqrtBox[
                    FractionBox[
                    RowBox[{"k", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}]}], 
                    SuperscriptBox["INTain", "3"]]]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"\[Mu]", "=", 
                    FractionBox[
                    RowBox[{"M1", " ", "M2"}], 
                    RowBox[{"M1", "+", "M2"}]]}], ";", "\[IndentingNewLine]", 
                   RowBox[{"\[Mu]2", "=", 
                    FractionBox[
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], "M3"}], 
                    RowBox[{"M1", "+", "M2", "+", "M3"}]]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"J1", "=", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"M2", " ", "M1"}], 
                    RowBox[{"M2", "+", "M1"}]], 
                    SqrtBox[
                    RowBox[{"k", 
                    RowBox[{"(", 
                    RowBox[{"M2", "+", "M1"}], ")"}], "INTain"}]]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"J2", "=", 
                    RowBox[{
                    FractionBox[
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"M2", "+", "M1"}], ")"}], " ", "M3"}], 
                    RowBox[{"M3", "+", " ", "M1", "+", " ", "M2"}]], 
                    SqrtBox[
                    RowBox[{"k", 
                    RowBox[{"(", 
                    RowBox[{"M3", "+", " ", "M1", "+", " ", "M2"}], ")"}], 
                    "a2", " "}]]}]}], ";", "\[IndentingNewLine]", 
                   RowBox[{"Clear", "[", "I1", "]"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Clear", "[", "I2", "]"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"GTOT", "=", 
                    RowBox[{"\[Sqrt]", 
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"J1", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E10", "2"]}]]}], ")"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"J2", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E20", "2"]}]]}], ")"}], "2"], "+", 
                    RowBox[{"2", "J1", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E10", "2"]}]], "J2", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E20", "2"]}]], 
                    RowBox[{"Cos", "[", 
                    RowBox[{"Itot", " ", "Degree"}], "]"}]}]}], ")"}]}]}], 
                   ";", "\[IndentingNewLine]", 
                   RowBox[{"S4", "=", 
                    RowBox[{
                    RowBox[{"Solve", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"J1", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E10", "2"]}]], 
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"90", "-", "i1"}], ")"}], "Degree"}], "]"}]}], "==", 
                    RowBox[{"J2", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E20", "2"]}]], 
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"90", "-", "i2"}], ")"}], "Degree"}], "]"}]}]}], "&&", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"J1", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E10", "2"]}]], 
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"90", "-", "i1"}], ")"}], "Degree"}], "]"}]}], 
                    "+", 
                    RowBox[{"J2", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E20", "2"]}]], 
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"90", "-", "i2"}], ")"}], "Degree"}], "]"}]}]}], "==",
                     "GTOT"}], "&&", 
                    RowBox[{
                    RowBox[{"i1", "+", "i2"}], "\[Equal]", "Itot"}]}], ",", 
                    RowBox[{"{", 
                    RowBox[{"i1", ",", "i2"}], "}"}]}], "]"}], "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"I1", "=", 
                    RowBox[{"Abs", "[", 
                    RowBox[{"i1", "/.", 
                    RowBox[{"S4", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Clear", "[", "i1", "]"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"I2", "=", 
                    RowBox[{"Abs", "[", 
                    RowBox[{"i2", "/.", 
                    RowBox[{"S4", "[", 
                    RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Clear", "[", "i2", "]"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Clear", "[", "S4", "]"}], ";", "\n", 
                   RowBox[{"(*", 
                    RowBox[{
                    "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
                     "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
                     "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
                     "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
                     "**", "**", "**", "**", "**", "**", "**"}], "*******)"}],
                    "\[IndentingNewLine]", 
                   RowBox[{"\[Omega]1", "=", "\[InvisibleSpace]", 
                    RowBox[{"RandomReal", "[", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "360"}], "}"}], "]"}]}], 
                   RowBox[{"(*", 
                    RowBox[{"RandomReal", "[", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "360"}], "}"}], "]"}], "*)"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"\[Omega]2", "=", 
                    RowBox[{"RandomReal", "[", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "360"}], "}"}], "]"}]}], 
                   RowBox[{"(*", 
                    RowBox[{"RandomReal", "[", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "360"}], "}"}], "]"}], "*)"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"\[CapitalOmega]", "=", 
                    RowBox[{"RandomReal", "[", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "360"}], "}"}], "]"}]}], 
                   RowBox[{"(*", 
                    RowBox[{"RandomReal", "[", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "360"}], "}"}], "]"}], "*)"}], ";", 
                   "\n", 
                   RowBox[{"SL1", "=", "0"}], ";", "\[IndentingNewLine]", 
                   RowBox[{"SL2", "=", "0"}], ";", "\[IndentingNewLine]", 
                   RowBox[{"\[Phi]", "=", "0"}], 
                   RowBox[{"(*", 
                    RowBox[{"RandomReal", "[", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "360"}], "}"}], "]"}], "*)"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"L1x00", "=", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[CapitalOmega]", " ", "Degree"}], "]"}]}]}], 
                   ";", "\n", 
                   RowBox[{"L1y00", "=", 
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}]}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[CapitalOmega]", " ", "Degree"}], "]"}]}]}], 
                   ";", "\n", 
                   RowBox[{"L1z00", "=", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}]}], ";", "\n", 
                   RowBox[{"e1x00", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Omega]1", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[CapitalOmega]", " ", "Degree"}], "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Omega]1", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[CapitalOmega]", " ", "Degree"}], "]"}]}]}]}], 
                   ";", "\n", 
                   RowBox[{"e1y00", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Omega]1", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[CapitalOmega]", " ", "Degree"}], "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Omega]1", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[CapitalOmega]", " ", "Degree"}], "]"}]}]}]}], 
                   ";", "\n", 
                   RowBox[{"e1z00", "=", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Omega]1", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"L2x00", "=", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"I2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", 
                    "Degree"}], "]"}]}]}], ";", "\n", 
                   RowBox[{"L2y00", "=", 
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"I2", " ", "Degree"}], "]"}]}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", 
                    "Degree"}], "]"}]}]}], ";", "\n", 
                   RowBox[{"L2z00", "=", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"I2", " ", "Degree"}], "]"}]}], ";", "\n", 
                   RowBox[{"e2x00", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Omega]2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", 
                    "Degree"}], "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Omega]2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"I2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", 
                    "Degree"}], "]"}]}]}]}], ";", "\n", 
                   RowBox[{"e2y00", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Omega]2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", 
                    "Degree"}], "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Omega]2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"I2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", 
                    "Degree"}], "]"}]}]}]}], ";", "\n", 
                   RowBox[{"e2z00", "=", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Omega]2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"I2", " ", "Degree"}], "]"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"(*", 
                    RowBox[{
                    "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
                     "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
                     "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
                     "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
                     "**", "**", "**", "**", "**", "**", "**"}], "*******)"}],
                    "\n", 
                   RowBox[{"L1x0", "=", 
                    RowBox[{"J1", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E10", "2"]}]], 
                    RowBox[{"(", "L1x00", ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"L1y0", "=", 
                    RowBox[{"J1", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E10", "2"]}]], 
                    RowBox[{"(", "L1y00", ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"L1z0", "=", 
                    RowBox[{"J1", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E10", "2"]}]], 
                    RowBox[{"(", "L1z00", ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"e1x0", "=", 
                    RowBox[{"E10", 
                    RowBox[{"(", "e1x00", ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"e1y0", "=", 
                    RowBox[{"E10", 
                    RowBox[{"(", "e1y00", ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"e1z0", "=", 
                    RowBox[{"E10", 
                    RowBox[{"(", "e1z00", ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"S1x0", "=", 
                    RowBox[{"S", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"SL1", " ", "Degree"}], "]"}], 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Phi]", " ", "Degree"}], "]"}], 
                    RowBox[{"Cos", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}], 
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", 
                    "Degree"}], "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"SL1", " ", "Degree"}], "]"}], 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Phi]", " ", "Degree"}], "]"}], 
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", 
                    "Degree"}], "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"SL1", " ", "Degree"}], "]"}], 
                    RowBox[{"Sin", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}], 
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", 
                    "Degree"}], "]"}]}]}], ")"}]}]}], " ", ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"S1y0", "=", 
                    RowBox[{"S", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"SL1", " ", "Degree"}], "]"}], 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Phi]", " ", "Degree"}], "]"}], 
                    RowBox[{"Cos", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}], 
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", 
                    "Degree"}], "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"SL1", " ", "Degree"}], "]"}], 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Phi]", " ", "Degree"}], "]"}], 
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", 
                    "Degree"}], "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"SL1", " ", "Degree"}], "]"}], 
                    RowBox[{"Sin", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}], 
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", 
                    "Degree"}], "]"}]}]}], ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"S1z0", "=", 
                    RowBox[{"S", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"SL1", " ", "Degree"}], "]"}], 
                    RowBox[{"Cos", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"SL1", " ", "Degree"}], "]"}], 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Phi]", " ", "Degree"}], "]"}], 
                    RowBox[{"Sin", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}]}]}], ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"S2x0", "=", 
                    RowBox[{"SS", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"SL2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Phi]", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", 
                    "Degree"}], "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"SL2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Phi]", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", 
                    "Degree"}], "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"SL2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", 
                    "Degree"}], "]"}]}]}], ")"}]}]}], ";", "\n", 
                   RowBox[{"S2y0", "=", 
                    RowBox[{"SS", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"SL2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Phi]", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", 
                    "Degree"}], "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"SL2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Phi]", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", 
                    "Degree"}], "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"SL2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", 
                    "Degree"}], "]"}]}]}], ")"}]}]}], ";", "\n", 
                   RowBox[{"S2z0", "=", 
                    RowBox[{"SS", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"SL2", " ", "Degree"}], "]"}], 
                    RowBox[{"Cos", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"SL2", " ", "Degree"}], "]"}], 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Phi]", " ", "Degree"}], "]"}], 
                    RowBox[{"Sin", "[", 
                    RowBox[{"I1", " ", "Degree"}], "]"}]}]}], ")"}]}]}], ";", 
                   "\n", 
                   RowBox[{"Clear", "[", "x", "]"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Meananomaly", "=", 
                    RowBox[{"RandomReal", "[", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"2", "Pi"}]}], "}"}], "]"}]}], 
                   RowBox[{"(*", 
                    RowBox[{"RandomReal", "[", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", 
                    RowBox[{"2", "Pi"}]}], "}"}], "]"}], "*)"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"SF", "=", 
                    RowBox[{"FindRoot", "[", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"x", "-", 
                    RowBox[{"E20", " ", 
                    RowBox[{"Sin", "[", "x", "]"}]}]}], "\[Equal]", 
                    "Meananomaly"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"x", ",", "0"}], "}"}]}], "]"}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"Eanomaly", "=", 
                    RowBox[{"x", "/.", 
                    RowBox[{"SF", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}]}], 
                   RowBox[{"(*", "   ", 
                    RowBox[{"x", "/.", 
                    RowBox[{"SF", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], "    ", "*)"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"DisR", "=", 
                    RowBox[{"a2", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    RowBox[{"E20", " ", 
                    RowBox[{"Cos", "[", "Eanomaly", "]"}]}]}], ")"}]}]}], ";",
                    "\[IndentingNewLine]", 
                   RowBox[{"Trueanomaly", "=", 
                    RowBox[{
                    RowBox[{"ArcCos", "[", 
                    FractionBox[
                    RowBox[{
                    RowBox[{"Cos", "[", "Eanomaly", "]"}], "-", "E20"}], 
                    RowBox[{"1", "-", 
                    RowBox[{"E20", " ", 
                    RowBox[{"Cos", "[", "Eanomaly", "]"}]}]}]], "]"}], 
                    RowBox[{"180", "/", "Pi"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"R2x0", "=", 
                    RowBox[{"DisR", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[Omega]2", "+", "Trueanomaly"}], ")"}], " ", 
                    "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", 
                    "Degree"}], "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[Omega]2", "+", "Trueanomaly"}], ")"}], " ", 
                    "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"I2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", 
                    "Degree"}], "]"}]}]}], ")"}]}]}], ";", "\n", 
                   RowBox[{"R2y0", "=", 
                    RowBox[{"DisR", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[Omega]2", "+", "Trueanomaly"}], ")"}], " ", 
                    "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", 
                    "Degree"}], "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[Omega]2", "+", "Trueanomaly"}], ")"}], " ", 
                    "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"I2", " ", "Degree"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", 
                    "Degree"}], "]"}]}]}], ")"}]}]}], ";", "\n", 
                   RowBox[{"R2z0", "=", 
                    RowBox[{"DisR", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"\[Omega]2", "+", "Trueanomaly"}], ")"}], " ", 
                    "Degree"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"I2", " ", "Degree"}], "]"}]}], ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"R2Vx0", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    SqrtBox[
                    FractionBox[
                    RowBox[{"k", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2", "+", "M3"}], ")"}]}], 
                    RowBox[{"a2", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E20", "2"]}], ")"}]}]]]}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "Trueanomaly"}], "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "I2"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}]}], 
                    ")"}]}], "+", 
                    RowBox[{
                    SqrtBox[
                    FractionBox[
                    RowBox[{"k", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2", "+", "M3"}], ")"}]}], 
                    RowBox[{"a2", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E20", "2"]}], ")"}]}]]], " ", 
                    RowBox[{"(", 
                    RowBox[{"E20", "+", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "Trueanomaly"}], "]"}]}], ")"}],
                     " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}]}], " ", 
                    SuperscriptBox[
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "I2"}], "]"}], "2"], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "I2"}], "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "I2"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}]}], 
                    ")"}]}]}], ")"}]}]}]}], ";", "\[IndentingNewLine]", 
                   RowBox[{"R2Vy0", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    SqrtBox[
                    FractionBox[
                    RowBox[{"k", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2", "+", "M3"}], ")"}]}], 
                    RowBox[{"a2", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E20", "2"]}], ")"}]}]]]}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "Trueanomaly"}], "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "I2"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}]}], 
                    ")"}]}], "+", 
                    RowBox[{
                    SqrtBox[
                    FractionBox[
                    RowBox[{"k", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2", "+", "M3"}], ")"}]}], 
                    RowBox[{"a2", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E20", "2"]}], ")"}]}]]], " ", 
                    RowBox[{"(", 
                    RowBox[{"E20", "+", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "Trueanomaly"}], "]"}]}], ")"}],
                     " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox[
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "I2"}], "]"}], "2"]}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "I2"}], "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "I2"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}]}], 
                    ")"}]}]}], ")"}]}]}]}], ";", "\[IndentingNewLine]", 
                   RowBox[{"R2Vz0", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    SqrtBox[
                    FractionBox[
                    RowBox[{"k", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2", "+", "M3"}], ")"}]}], 
                    RowBox[{"a2", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E20", "2"]}], ")"}]}]]]}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "I2"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "Trueanomaly"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}], "+", 
                    RowBox[{
                    SqrtBox[
                    FractionBox[
                    RowBox[{"k", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2", "+", "M3"}], ")"}]}], 
                    RowBox[{"a2", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E20", "2"]}], ")"}]}]]], " ", 
                    RowBox[{"(", 
                    RowBox[{"E20", "+", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "Trueanomaly"}], "]"}]}], ")"}],
                     " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "I2"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "I2"}], "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}]}], 
                    ")"}]}], "+", 
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "I2"}], "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}], " ", 
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"Cos", "[", 
                    RowBox[{"\[Degree]", " ", "I2"}], "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", "180"}], "+", "\[CapitalOmega]"}], ")"}]}], 
                    "]"}], " ", 
                    RowBox[{"Sin", "[", 
                    RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}]}], 
                    ")"}]}]}], ")"}]}]}]}], ";", "\n", 
                   RowBox[{"LIN", "=", 
                    SqrtBox[
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"L1x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"L1y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"L1z", "[", "t", "]"}], "2"]}]]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"E1", "=", 
                    SqrtBox[
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"e1x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"e1y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"e1z", "[", "t", "]"}], "2"]}]]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"ROUT", "=", 
                    SqrtBox[
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}]]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"AIN", "=", 
                    FractionBox[
                    SuperscriptBox["LIN", "2"], 
                    RowBox[{
                    SuperscriptBox["\[Mu]", "2"], "k", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " "}]]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"linx", "=", 
                    FractionBox[
                    RowBox[{"L1x", "[", "t", "]"}], "LIN"]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"liny", "=", 
                    FractionBox[
                    RowBox[{"L1y", "[", "t", "]"}], "LIN"]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"linz", "=", 
                    FractionBox[
                    RowBox[{"L1z", "[", "t", "]"}], "LIN"]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"routx", "=", 
                    FractionBox[
                    RowBox[{"R2x", "[", "t", "]"}], "ROUT"]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"routy", "=", 
                    FractionBox[
                    RowBox[{"R2y", "[", "t", "]"}], "ROUT"]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"routz", "=", 
                    FractionBox[
                    RowBox[{"R2z", "[", "t", "]"}], "ROUT"]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"n1", "=", 
                    SqrtBox[
                    FractionBox[
                    RowBox[{"k", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}]}], 
                    SuperscriptBox["AIN", "3"]]]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"tL", "=", 
                    RowBox[{
                    FractionBox["1", "n1"], 
                    RowBox[{"(", 
                    FractionBox[
                    RowBox[{"M1", "+", "M2"}], "M3"], ")"}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    FractionBox["ROUT", "AIN"], ")"}], "3"]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"\[CapitalOmega]LK", "=", 
                    RowBox[{"m", 
                    FractionBox["1", "tL"]}]}], ";", "\[IndentingNewLine]", 
                   RowBox[{"\[Epsilon]oct", "=", 
                    RowBox[{"mm", 
                    FractionBox[
                    RowBox[{"M1", "-", "M2"}], 
                    RowBox[{"M1", "+", "M2"}]], 
                    FractionBox["AIN", "ROUT"]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"\[CapitalOmega]dS1", "=", 
                    RowBox[{"S", 
                    FractionBox[
                    RowBox[{"3", "k", " ", "n1", " ", 
                    RowBox[{"(", 
                    RowBox[{"M2", "+", 
                    RowBox[{"\[Mu]", "/", "3"}]}], ")"}]}], 
                    RowBox[{"2", 
                    SuperscriptBox["c", "2"], " ", "AIN", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}]}]]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"\[CapitalOmega]dS1M3", "=", 
                    RowBox[{"SM3", " ", "k", 
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    FractionBox[
                    RowBox[{"3", "M3"}], 
                    RowBox[{"2", "M1"}]]}], ")"}], 
                    FractionBox["\[Mu]2", 
                    RowBox[{
                    SuperscriptBox["c", "2"], 
                    SuperscriptBox["ROUT", "3"]}]]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"\[CapitalOmega]S1L", "=", "0"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"\[CapitalOmega]dS2", "=", 
                    RowBox[{"SS", 
                    FractionBox[
                    RowBox[{"3", "k", " ", "n1", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", 
                    RowBox[{"\[Mu]", "/", "3"}]}], ")"}]}], 
                    RowBox[{"2", 
                    SuperscriptBox["c", "2"], " ", "AIN", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}]}]]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"\[CapitalOmega]dS2M3", "=", 
                    RowBox[{"SSM3", " ", "k", 
                    RowBox[{"(", 
                    RowBox[{"2", "+", 
                    FractionBox[
                    RowBox[{"3", "M3"}], 
                    RowBox[{"2", "M2"}]]}], ")"}], 
                    FractionBox["\[Mu]2", 
                    RowBox[{
                    SuperscriptBox["c", "2"], 
                    SuperscriptBox["ROUT", "3"]}]]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"\[CapitalOmega]S2L", "=", "0"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"\[CapitalOmega]GR", "=", 
                    RowBox[{"l", 
                    FractionBox[
                    RowBox[{"3", " ", 
                    SuperscriptBox["k", "2"], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], "2"]}], 
                    RowBox[{
                    SuperscriptBox["AIN", "2"], " ", 
                    SuperscriptBox["c", "2"], " ", 
                    SqrtBox[
                    RowBox[{"AIN", " ", "k", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}]}]], 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " "}]]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"JGW", "=", 
                    RowBox[{
                    RowBox[{"-", "ll"}], 
                    FractionBox["32", "5"], 
                    FractionBox[
                    SuperscriptBox["k", 
                    RowBox[{"7", "/", "2"}]], 
                    SuperscriptBox["c", "5"]], 
                    FractionBox[
                    SuperscriptBox["\[Mu]", "2"], 
                    SuperscriptBox[
                    RowBox[{"(", "AIN", ")"}], 
                    RowBox[{"7", "/", "2"}]]], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], 
                    RowBox[{"5", "/", "2"}]], 
                    FractionBox[
                    RowBox[{"1", "+", 
                    RowBox[{
                    FractionBox["7", "8"], 
                    SuperscriptBox["E1", "2"]}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], "2"]]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"EGW", "=", 
                    RowBox[{
                    RowBox[{"-", "ll"}], 
                    FractionBox[
                    RowBox[{"304", " ", 
                    SuperscriptBox["k", "3"], "M1", " ", "M2", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}]}], 
                    RowBox[{"15", " ", 
                    SuperscriptBox["c", "5"], " ", 
                    SuperscriptBox["AIN", "4"], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]}]], 
                    RowBox[{"(", 
                    RowBox[{"1", "+", 
                    RowBox[{
                    FractionBox["121", "304"], 
                    SuperscriptBox["E1", "2"]}]}], ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"L1xQuad", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}]}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", "routy"}], "+", 
                    RowBox[{"liny", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}]}], "+", 
                    RowBox[{"5", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routz", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "-", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"L1yQuad", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}]}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", "routx"}], "-", 
                    RowBox[{"linx", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}]}], "+", 
                    RowBox[{"5", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "routz"}], " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routx", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"L1zQuad", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}]}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "liny"}], " ", "routx"}], "+", 
                    RowBox[{"linx", " ", "routy"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}]}], "+", 
                    RowBox[{"5", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routy", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "-", 
                    RowBox[{"routx", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"E1xQuad", "=", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "2"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "-", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routz", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "-", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"5", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", "routy"}], "+", 
                    RowBox[{"liny", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}]}], ")"}]}]}], 
                   ";", "\[IndentingNewLine]", 
                   RowBox[{"E1yQuad", "=", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "2"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "-", 
                    RowBox[{"linx", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "-", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "routz"}], " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routx", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"5", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", "routx"}], "-", 
                    RowBox[{"linx", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}]}], ")"}]}]}], 
                   ";", "\[IndentingNewLine]", 
                   RowBox[{"E1zQuad", "=", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "2"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "liny"}], " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"linx", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}]}], ")"}]}], "-", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routy", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "-", 
                    RowBox[{"routx", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"5", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "liny"}], " ", "routx"}], "+", 
                    RowBox[{"linx", " ", "routy"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}]}], ")"}]}]}], 
                   ";", "\[IndentingNewLine]", 
                   RowBox[{"L1xOct", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"(", 
                    RowBox[{"3", "-", 
                    RowBox[{"24", " ", 
                    SuperscriptBox["E1", "2"]}]}], ")"}]}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routz", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "-", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"15", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routz", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "-", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"30", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", "routy"}], "+", 
                    RowBox[{"liny", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "-", 
                    RowBox[{"105", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routz", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "-", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], "2"]}]}]}], 
                   ";", "\[IndentingNewLine]", 
                   RowBox[{"L1yOct", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"(", 
                    RowBox[{"3", "-", 
                    RowBox[{"24", " ", 
                    SuperscriptBox["E1", "2"]}]}], ")"}]}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "routz"}], " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routx", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"15", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "routz"}], " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routx", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"30", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", "routx"}], "-", 
                    RowBox[{"linx", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "-", 
                    RowBox[{"105", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "routz"}], " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routx", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], "2"]}]}]}], 
                   ";", "\[IndentingNewLine]", 
                   RowBox[{"L1zOct", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"(", 
                    RowBox[{"3", "-", 
                    RowBox[{"24", " ", 
                    SuperscriptBox["E1", "2"]}]}], ")"}]}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routy", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "-", 
                    RowBox[{"routx", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"15", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routy", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "-", 
                    RowBox[{"routx", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"30", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "liny"}], " ", "routx"}], "+", 
                    RowBox[{"linx", " ", "routy"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "-", 
                    RowBox[{"105", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routy", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "-", 
                    RowBox[{"routx", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}]}], ")"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], "2"]}]}]}], 
                   ";", "\[IndentingNewLine]", 
                   RowBox[{"E1xOct", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"(", 
                    RowBox[{"3", "-", 
                    RowBox[{"24", " ", 
                    SuperscriptBox["E1", "2"]}]}], ")"}]}], " ", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", "routy"}], "+", 
                    RowBox[{"liny", " ", "routz"}]}], ")"}]}], "+", 
                    RowBox[{"15", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], 
                    RowBox[{"3", "/", "2"}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", "routy"}], "+", 
                    RowBox[{"liny", " ", "routz"}]}], ")"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], "2"]}], "+", 
                    RowBox[{"48", " ", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"30", " ", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routz", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "-", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "-", 
                    RowBox[{"105", " ", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", "routy"}], "+", 
                    RowBox[{"liny", " ", "routz"}]}], ")"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], "2"]}]}]}], 
                   ";", "\[IndentingNewLine]", 
                   RowBox[{"E1yOct", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"(", 
                    RowBox[{"3", "-", 
                    RowBox[{"24", " ", 
                    SuperscriptBox["E1", "2"]}]}], ")"}]}], " ", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", "routx"}], "-", 
                    RowBox[{"linx", " ", "routz"}]}], ")"}]}], "+", 
                    RowBox[{"15", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], 
                    RowBox[{"3", "/", "2"}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", "routx"}], "-", 
                    RowBox[{"linx", " ", "routz"}]}], ")"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], "2"]}], "+", 
                    RowBox[{"48", " ", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "-", 
                    RowBox[{"linx", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"30", " ", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "routz"}], " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routx", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "-", 
                    RowBox[{"105", " ", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", "routx"}], "-", 
                    RowBox[{"linx", " ", "routz"}]}], ")"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], "2"]}]}]}], 
                   ";", "\[IndentingNewLine]", 
                   RowBox[{"E1zOct", "=", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"(", 
                    RowBox[{"3", "-", 
                    RowBox[{"24", " ", 
                    SuperscriptBox["E1", "2"]}]}], ")"}]}], " ", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "liny"}], " ", "routx"}], "+", 
                    RowBox[{"linx", " ", "routy"}]}], ")"}]}], "+", 
                    RowBox[{"15", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], 
                    RowBox[{"3", "/", "2"}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "liny"}], " ", "routx"}], "+", 
                    RowBox[{"linx", " ", "routy"}]}], ")"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], "2"]}], "+", 
                    RowBox[{"48", " ", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "liny"}], " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"linx", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"30", " ", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", "routx"}], "+", 
                    RowBox[{"liny", " ", "routy"}], "+", 
                    RowBox[{"linz", " ", "routz"}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routy", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "-", 
                    RowBox[{"routx", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "-", 
                    RowBox[{"105", " ", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "liny"}], " ", "routx"}], "+", 
                    RowBox[{"linx", " ", "routy"}]}], ")"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"routx", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"routy", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"routz", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], "2"]}]}]}], 
                   ";", "\[IndentingNewLine]", 
                   RowBox[{"R2xQuad", "=", 
                    RowBox[{"n", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox[
                    RowBox[{"15", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]]}], "+", 
                    FractionBox[
                    RowBox[{"75", " ", 
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{"3", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]], "-", 
                    FractionBox[
                    RowBox[{"18", " ", 
                    SuperscriptBox["E1", "2"], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{"6", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", "linx", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]], "-", 
                    FractionBox[
                    RowBox[{"30", " ", 
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]]}], ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"R2yQuad", "=", 
                    RowBox[{"n", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox[
                    RowBox[{"15", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]]}], "+", 
                    FractionBox[
                    RowBox[{"75", " ", 
                    RowBox[{"R2y", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{"3", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]], "-", 
                    FractionBox[
                    RowBox[{"18", " ", 
                    SuperscriptBox["E1", "2"], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{"6", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", "liny", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]], "-", 
                    FractionBox[
                    RowBox[{"30", " ", 
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]]}], ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"R2zQuad", "=", 
                    RowBox[{"n", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox[
                    RowBox[{"15", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]]}], "+", 
                    FractionBox[
                    RowBox[{"75", " ", 
                    RowBox[{"R2z", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{"3", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]], "-", 
                    FractionBox[
                    RowBox[{"18", " ", 
                    SuperscriptBox["E1", "2"], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{"6", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", "linz", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]], "-", 
                    FractionBox[
                    RowBox[{"30", " ", 
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]]}], ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"R2xOct", "=", 
                    RowBox[{"nn", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"105", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], ")"}], "/", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"9", "/", "2"}]]}], "-", 
                    FractionBox[
                    RowBox[{"245", " ", 
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "3"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"9", "/", "2"}]]], "-", 
                    FractionBox[
                    RowBox[{"15", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]], "-", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"5", " ", 
                    RowBox[{"(", 
                    RowBox[{"3", "-", 
                    RowBox[{"24", " ", 
                    SuperscriptBox["E1", "2"]}]}], ")"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], ")"}], "/", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]}], "-", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"30", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", "linx", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], ")"}], "/", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]}], "+", 
                    FractionBox[
                    RowBox[{"105", " ", 
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"3", "-", 
                    RowBox[{"24", " ", 
                    SuperscriptBox["E1", "2"]}]}], ")"}], " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]]}], ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"R2yOct", "=", 
                    RowBox[{"nn", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"105", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], ")"}], "/", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"9", "/", "2"}]]}], "-", 
                    FractionBox[
                    RowBox[{"245", " ", 
                    RowBox[{"R2y", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "3"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"9", "/", "2"}]]], "-", 
                    FractionBox[
                    RowBox[{"15", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]], "-", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"5", " ", 
                    RowBox[{"(", 
                    RowBox[{"3", "-", 
                    RowBox[{"24", " ", 
                    SuperscriptBox["E1", "2"]}]}], ")"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], ")"}], "/", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]}], "-", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"30", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", "liny", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], ")"}], "/", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]}], "+", 
                    FractionBox[
                    RowBox[{"105", " ", 
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"3", "-", 
                    RowBox[{"24", " ", 
                    SuperscriptBox["E1", "2"]}]}], ")"}], " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]]}], ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"R2zOct", "=", 
                    RowBox[{"nn", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"105", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], ")"}], "/", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"9", "/", "2"}]]}], "-", 
                    FractionBox[
                    RowBox[{"245", " ", 
                    RowBox[{"R2z", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "3"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"9", "/", "2"}]]], "-", 
                    FractionBox[
                    RowBox[{"15", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", 
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]], "-", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"5", " ", 
                    RowBox[{"(", 
                    RowBox[{"3", "-", 
                    RowBox[{"24", " ", 
                    SuperscriptBox["E1", "2"]}]}], ")"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], ")"}], "/", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]}], "-", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"30", " ", 
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}], ")"}], " ", "linz", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}]}], ")"}], "/", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]}], "+", 
                    FractionBox[
                    RowBox[{"105", " ", 
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}]}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"7", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"3", "-", 
                    RowBox[{"24", " ", 
                    SuperscriptBox["E1", "2"]}]}], ")"}], " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"R2x", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2y", "[", "t", "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"R2z", "[", "t", "]"}], "2"]}], ")"}], 
                    RowBox[{"5", "/", "2"}]]]}], ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"R2xGR", "=", 
                    RowBox[{"lll", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"4", " ", 
                    SuperscriptBox["k", "2"], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}], ")"}], 
                    RowBox[{"3", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{"5", " ", 
                    SuperscriptBox["k", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], " ", "M3"}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}], ")"}], 
                    RowBox[{"3", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{"k", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}], "]"}], "2"]}], 
                    "-", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}], "]"}], "2"], 
                    "-", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}], "]"}], "2"]}], 
                    ")"}]}], 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}]]}], ")"}], 
                    " ", 
                    RowBox[{"R2x", "[", "t", "]"}]}], ")"}], "/", 
                    RowBox[{"(", 
                    SqrtBox[
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}]], ")"}]}], 
                    "+", 
                    FractionBox[
                    RowBox[{"4", " ", "k", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2y", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2z", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}]}], ")"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}], ")"}], 
                    RowBox[{"3", "/", "2"}]]]}], ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"R2yGR", "=", 
                    RowBox[{"lll", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"4", " ", 
                    SuperscriptBox["k", "2"], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}], ")"}], 
                    RowBox[{"3", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{"5", " ", 
                    SuperscriptBox["k", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], " ", "M3"}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}], ")"}], 
                    RowBox[{"3", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{"k", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}], "]"}], "2"]}], 
                    "-", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}], "]"}], "2"], 
                    "-", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}], "]"}], "2"]}], 
                    ")"}]}], 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}]]}], ")"}], 
                    " ", 
                    RowBox[{"R2y", "[", "t", "]"}]}], ")"}], "/", 
                    RowBox[{"(", 
                    SqrtBox[
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}]], ")"}]}], 
                    "+", 
                    FractionBox[
                    RowBox[{"4", " ", "k", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2y", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2z", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}]}], ")"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}], ")"}], 
                    RowBox[{"3", "/", "2"}]]]}], ")"}]}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"R2zGR", "=", 
                    RowBox[{"lll", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"4", " ", 
                    SuperscriptBox["k", "2"], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], "2"]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}], ")"}], 
                    RowBox[{"3", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{"5", " ", 
                    SuperscriptBox["k", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], " ", "M3"}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}], ")"}], 
                    RowBox[{"3", "/", "2"}]]], "+", 
                    FractionBox[
                    RowBox[{"k", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}], "]"}], "2"]}], 
                    "-", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}], "]"}], "2"], 
                    "-", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}], "]"}], "2"]}], 
                    ")"}]}], 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}]]}], ")"}], 
                    " ", 
                    RowBox[{"R2z", "[", "t", "]"}]}], ")"}], "/", 
                    RowBox[{"(", 
                    SqrtBox[
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}]], ")"}]}], 
                    "+", 
                    FractionBox[
                    RowBox[{"4", " ", "k", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2"}], ")"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2y", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2z", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}]}], ")"}]}], 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2x", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2y", "[", "t", "]"}], "]"}], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"Abs", "[", 
                    RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}], ")"}], 
                    RowBox[{"3", "/", "2"}]]]}], ")"}]}]}], ";", "\n", 
                   RowBox[{"s3", "=", 
                    RowBox[{"NDSolve", "[", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{
                    RowBox[{"S1x", "'"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{"\[CapitalOmega]dS1", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", 
                    RowBox[{"S1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"S1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]dS1M3", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"R2y", "[", "t", "]"}], " ", 
                    RowBox[{"S1y", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2z", "[", "t", "]"}], " ", 
                    RowBox[{"S1z", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    RowBox[{"S1y", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    RowBox[{"S1z", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}]}], 
                    ")"}]}]}]}], ",", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"S1y", "'"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{"\[CapitalOmega]dS1", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", 
                    RowBox[{"S1x", "[", "t", "]"}]}], "-", 
                    RowBox[{"linx", " ", 
                    RowBox[{"S1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]dS1M3", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"R2y", "[", "t", "]"}]}], " ", 
                    RowBox[{"S1x", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    RowBox[{"S1x", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2z", "[", "t", "]"}], " ", 
                    RowBox[{"S1z", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"R2y", "[", "t", "]"}], " ", 
                    RowBox[{"S1z", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}]}], 
                    ")"}]}]}]}], ",", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"S1z", "'"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{"\[CapitalOmega]dS1", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "liny"}], " ", 
                    RowBox[{"S1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"linx", " ", 
                    RowBox[{"S1y", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]dS1M3", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"R2z", "[", "t", "]"}]}], " ", 
                    RowBox[{"S1x", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"R2z", "[", "t", "]"}], " ", 
                    RowBox[{"S1y", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    RowBox[{"S1x", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2y", "[", "t", "]"}], " ", 
                    RowBox[{"S1y", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}]}], 
                    ")"}]}]}]}], ",", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"S2x", "'"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{"\[CapitalOmega]dS2", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", 
                    RowBox[{"S2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"S2z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]dS2M3", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"R2y", "[", "t", "]"}], " ", 
                    RowBox[{"S2y", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2z", "[", "t", "]"}], " ", 
                    RowBox[{"S2z", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    RowBox[{"S2y", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    RowBox[{"S2z", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}]}], 
                    ")"}]}]}]}], ",", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"S2y", "'"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{"\[CapitalOmega]dS2", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", 
                    RowBox[{"S2x", "[", "t", "]"}]}], "-", 
                    RowBox[{"linx", " ", 
                    RowBox[{"S2z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]dS2M3", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"R2y", "[", "t", "]"}]}], " ", 
                    RowBox[{"S2x", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    RowBox[{"S2x", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2z", "[", "t", "]"}], " ", 
                    RowBox[{"S2z", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"R2y", "[", "t", "]"}], " ", 
                    RowBox[{"S2z", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}]}], 
                    ")"}]}]}]}], ",", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"S2z", "'"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{"\[CapitalOmega]dS2", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "liny"}], " ", 
                    RowBox[{"S2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"linx", " ", 
                    RowBox[{"S2y", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]dS2M3", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"R2z", "[", "t", "]"}]}], " ", 
                    RowBox[{"S2x", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2x", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"R2z", "[", "t", "]"}], " ", 
                    RowBox[{"S2y", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2y", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2x", "[", "t", "]"}], " ", 
                    RowBox[{"S2x", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"R2y", "[", "t", "]"}], " ", 
                    RowBox[{"S2y", "[", "t", "]"}], " ", 
                    RowBox[{
                    SuperscriptBox["R2z", "\[Prime]",
                    MultilineFunction->None], "[", "t", "]"}]}]}], 
                    ")"}]}]}]}], ",", "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"L1x", "'"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{
                    FractionBox[
                    RowBox[{"3", "\[CapitalOmega]LK", " ", "LIN"}], 
                    RowBox[{"2", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]]}]], 
                    RowBox[{"(", "L1xQuad", ")"}]}], "+", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"5", "\[CapitalOmega]LK", " ", "LIN"}], 
                    RowBox[{"16", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]]}]], "\[Epsilon]oct", 
                    RowBox[{"(", "L1xOct", ")"}]}], "+", 
                    RowBox[{"LIN", " ", "\[CapitalOmega]S1L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", 
                    RowBox[{"S1y", "[", "t", "]"}]}], "-", 
                    RowBox[{"liny", " ", 
                    RowBox[{"S1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"JGW", " ", "linx"}], "+", 
                    RowBox[{"LIN", " ", "\[CapitalOmega]S2L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", 
                    RowBox[{"S2y", "[", "t", "]"}]}], "-", 
                    RowBox[{"liny", " ", 
                    RowBox[{"S2z", "[", "t", "]"}]}]}], ")"}]}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"L1y", "'"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{
                    FractionBox[
                    RowBox[{"3", "\[CapitalOmega]LK", " ", "LIN"}], 
                    RowBox[{"2", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]]}]], 
                    RowBox[{"(", "L1yQuad", ")"}]}], "+", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"5", "\[CapitalOmega]LK", " ", "LIN"}], 
                    RowBox[{"16", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]]}]], "\[Epsilon]oct", 
                    RowBox[{"(", "L1yOct", ")"}]}], "+", 
                    RowBox[{"LIN", " ", "\[CapitalOmega]S1L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", 
                    RowBox[{"S1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"linx", " ", 
                    RowBox[{"S1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"JGW", " ", "liny"}], "+", 
                    RowBox[{"LIN", " ", "\[CapitalOmega]S2L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", 
                    RowBox[{"S2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"linx", " ", 
                    RowBox[{"S2z", "[", "t", "]"}]}]}], ")"}]}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"L1z", "'"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{
                    FractionBox[
                    RowBox[{"3", "\[CapitalOmega]LK", " ", "LIN"}], 
                    RowBox[{"2", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]]}]], 
                    RowBox[{"(", "L1zQuad", ")"}]}], "+", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"5", "\[CapitalOmega]LK", " ", "LIN"}], 
                    RowBox[{"16", 
                    SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["E1", "2"]}]]}]], "\[Epsilon]oct", 
                    RowBox[{"(", "L1zOct", ")"}]}], "+", 
                    RowBox[{"LIN", " ", "\[CapitalOmega]S1L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"liny", " ", 
                    RowBox[{"S1x", "[", "t", "]"}]}], "-", 
                    RowBox[{"linx", " ", 
                    RowBox[{"S1y", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"JGW", " ", "linz"}], "+", 
                    RowBox[{"LIN", " ", "\[CapitalOmega]S2L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"liny", " ", 
                    RowBox[{"S2x", "[", "t", "]"}]}], "-", 
                    RowBox[{"linx", " ", 
                    RowBox[{"S2y", "[", "t", "]"}]}]}], ")"}]}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1x", "'"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{
                    FractionBox[
                    RowBox[{"3", "\[CapitalOmega]LK", " "}], "2"], 
                    RowBox[{"(", "E1xQuad", ")"}]}], "+", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"5", "\[CapitalOmega]LK", " "}], "16"], 
                    "\[Epsilon]oct", 
                    RowBox[{"(", "E1xOct", ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]GR", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "-", 
                    RowBox[{"3", " ", "\[CapitalOmega]S1L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"S1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"S1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"S1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]S1L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"S1y", "[", "t", "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"S1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"EGW", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "-", 
                    RowBox[{"3", " ", "\[CapitalOmega]S2L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "linz"}], " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"S2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"S2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"S2z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]S2L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1z", "[", "t", "]"}], " ", 
                    RowBox[{"S2y", "[", "t", "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"S2z", "[", "t", "]"}]}]}], ")"}]}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1y", "'"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{
                    FractionBox[
                    RowBox[{"3", "\[CapitalOmega]LK", " "}], "2"], 
                    RowBox[{"(", "E1yQuad", ")"}]}], "+", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"5", "\[CapitalOmega]LK", " "}], "16"], 
                    "\[Epsilon]oct", 
                    RowBox[{"(", "E1yOct", ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]GR", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "-", 
                    RowBox[{"linx", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}], "-", 
                    RowBox[{"3", " ", "\[CapitalOmega]S1L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "-", 
                    RowBox[{"linx", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"S1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"S1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"S1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]S1L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"e1z", "[", "t", "]"}]}], " ", 
                    RowBox[{"S1x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"S1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"EGW", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}], "-", 
                    RowBox[{"3", " ", "\[CapitalOmega]S2L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linz", " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "-", 
                    RowBox[{"linx", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"S2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"S2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"S2z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]S2L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    RowBox[{"e1z", "[", "t", "]"}]}], " ", 
                    RowBox[{"S2x", "[", "t", "]"}]}], "+", 
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"S2z", "[", "t", "]"}]}]}], ")"}]}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1z", "'"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{
                    FractionBox[
                    RowBox[{"3", "\[CapitalOmega]LK", " "}], "2"], 
                    RowBox[{"(", "E1zQuad", ")"}]}], "+", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"5", "\[CapitalOmega]LK", " "}], "16"], 
                    "\[Epsilon]oct", 
                    RowBox[{"(", "E1zOct", ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]GR", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "liny"}], " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"linx", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]S1L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"S1x", "[", "t", "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"S1y", "[", "t", "]"}]}]}], ")"}]}], "-", 
                    RowBox[{"3", " ", "\[CapitalOmega]S1L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "liny"}], " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"linx", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"S1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"S1y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"S1z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"EGW", " ", 
                    RowBox[{"e1z", "[", "t", "]"}]}], "-", 
                    RowBox[{"3", " ", "\[CapitalOmega]S2L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "liny"}], " ", 
                    RowBox[{"e1x", "[", "t", "]"}]}], "+", 
                    RowBox[{"linx", " ", 
                    RowBox[{"e1y", "[", "t", "]"}]}]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"linx", " ", 
                    RowBox[{"S2x", "[", "t", "]"}]}], "+", 
                    RowBox[{"liny", " ", 
                    RowBox[{"S2y", "[", "t", "]"}]}], "+", 
                    RowBox[{"linz", " ", 
                    RowBox[{"S2z", "[", "t", "]"}]}]}], ")"}]}], "+", 
                    RowBox[{"\[CapitalOmega]S2L", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"e1y", "[", "t", "]"}], " ", 
                    RowBox[{"S2x", "[", "t", "]"}]}], "-", 
                    RowBox[{
                    RowBox[{"e1x", "[", "t", "]"}], " ", 
                    RowBox[{"S2y", "[", "t", "]"}]}]}], ")"}]}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"R2x", "''"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox[
                    RowBox[{"k", " ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2", "+", "M3"}], ")"}]}], 
                    SuperscriptBox["ROUT", "2"]]}], "routx"}], "-", 
                    RowBox[{
                    FractionBox["\[Mu]", "\[Mu]2"], 
                    FractionBox[
                    RowBox[{"k", " ", "M3", " ", 
                    SuperscriptBox["AIN", "2"]}], "4"], "R2xQuad"}], "-", 
                    RowBox[{
                    FractionBox["\[Mu]", "\[Mu]2"], 
                    FractionBox[
                    RowBox[{"5", "k", " ", "M3", " ", 
                    SuperscriptBox["AIN", "3"]}], "16"], 
                    FractionBox[
                    RowBox[{"M1", "-", "M2"}], 
                    RowBox[{"M1", "+", "M2"}]], "R2xOct"}], "+", 
                    RowBox[{
                    FractionBox["1", 
                    SuperscriptBox["c", "2"]], "R2xGR"}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"R2y", "''"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox[
                    RowBox[{"k", "  ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2", "+", "M3"}], ")"}]}], 
                    SuperscriptBox["ROUT", "2"]]}], "routy"}], "-", 
                    RowBox[{
                    FractionBox["\[Mu]", "\[Mu]2"], 
                    FractionBox[
                    RowBox[{"k", " ", "M3", " ", 
                    SuperscriptBox["AIN", "2"]}], "4"], "R2yQuad"}], "-", 
                    RowBox[{
                    FractionBox["\[Mu]", "\[Mu]2"], 
                    FractionBox[
                    RowBox[{"5", "k", " ", "M3", " ", 
                    SuperscriptBox["AIN", "3"]}], "16"], 
                    FractionBox[
                    RowBox[{"M1", "-", "M2"}], 
                    RowBox[{"M1", "+", "M2"}]], "R2yOct"}], "+", 
                    RowBox[{
                    FractionBox["1", 
                    SuperscriptBox["c", "2"]], "R2yGR"}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"R2z", "''"}], "[", "t", "]"}], "\[Equal]", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox[
                    RowBox[{"k", "  ", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2", "+", "M3"}], ")"}]}], 
                    SuperscriptBox["ROUT", "2"]]}], "routz"}], "-", 
                    RowBox[{
                    FractionBox["\[Mu]", "\[Mu]2"], 
                    FractionBox[
                    RowBox[{"k", " ", "M3", " ", 
                    SuperscriptBox["AIN", "2"]}], "4"], "R2zQuad"}], "-", 
                    RowBox[{
                    FractionBox["\[Mu]", "\[Mu]2"], 
                    FractionBox[
                    RowBox[{"5", "k", " ", "M3", " ", 
                    SuperscriptBox["AIN", "3"]}], "16"], 
                    FractionBox[
                    RowBox[{"M1", "-", "M2"}], 
                    RowBox[{"M1", "+", "M2"}]], "R2zOct"}], "+", 
                    RowBox[{
                    FractionBox["1", 
                    SuperscriptBox["c", "2"]], "R2zGR"}]}]}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{
                    RowBox[{"S1x", "[", "0", "]"}], "\[Equal]", "S1x0"}], ",", 
                    RowBox[{
                    RowBox[{"S1y", "[", "0", "]"}], "\[Equal]", "S1y0"}], ",", 
                    RowBox[{
                    RowBox[{"S1z", "[", "0", "]"}], "\[Equal]", "S1z0"}], ",", 
                    RowBox[{
                    RowBox[{"S2x", "[", "0", "]"}], "\[Equal]", "S2x0"}], ",", 
                    RowBox[{
                    RowBox[{"S2y", "[", "0", "]"}], "\[Equal]", "S2y0"}], ",", 
                    RowBox[{
                    RowBox[{"S2z", "[", "0", "]"}], "\[Equal]", "S2z0"}], ",", 
                    RowBox[{
                    RowBox[{"L1x", "[", "0", "]"}], "\[Equal]", "L1x0"}], ",", 
                    RowBox[{
                    RowBox[{"L1y", "[", "0", "]"}], "\[Equal]", "L1y0"}], ",", 
                    RowBox[{
                    RowBox[{"L1z", "[", "0", "]"}], "\[Equal]", "L1z0"}], ",", 
                    RowBox[{
                    RowBox[{"e1x", "[", "0", "]"}], "\[Equal]", "e1x0"}], ",", 
                    RowBox[{
                    RowBox[{"e1y", "[", "0", "]"}], "\[Equal]", "e1y0"}], ",", 
                    RowBox[{
                    RowBox[{"e1z", "[", "0", "]"}], "\[Equal]", "e1z0"}], ",", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"R2x", "'"}], "[", "0", "]"}], "\[Equal]", 
                    "R2Vx0"}], ",", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"R2y", "'"}], "[", "0", "]"}], "\[Equal]", 
                    "R2Vy0"}], ",", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"R2z", "'"}], "[", "0", "]"}], "\[Equal]", 
                    "R2Vz0"}], ",", 
                    RowBox[{
                    RowBox[{"R2x", "[", "0", "]"}], "\[Equal]", "R2x0"}], ",", 
                    RowBox[{
                    RowBox[{"R2y", "[", "0", "]"}], "\[Equal]", "R2y0"}], ",", 
                    RowBox[{
                    RowBox[{"R2z", "[", "0", "]"}], "\[Equal]", "R2z0"}]}], 
                    "}"}], ",", "\[IndentingNewLine]", 
                    RowBox[{"{", 
                    RowBox[{
                    "S1x", ",", "S1y", ",", "S1z", ",", "S2x", ",", "S2y", 
                    ",", "S2z", ",", "L1x", ",", "L1y", ",", "L1z", ",", 
                    "e1x", ",", "e1y", ",", "e1z", ",", "R2x", ",", "R2y", 
                    ",", "R2z"}], "}"}], ",", 
                    RowBox[{"{", 
                    RowBox[{"t", ",", "0", ",", "T"}], "}"}], ",", 
                    "\[IndentingNewLine]", 
                    RowBox[{"Method", "\[Rule]", 
                    RowBox[{"{", 
                    RowBox[{"\"\<ExplicitRungeKutta\>\"", ",", 
                    RowBox[{"\"\<StiffnessTest\>\"", "\[Rule]", "False"}]}], 
                    "}"}]}], ",", 
                    RowBox[{"AccuracyGoal", "\[Rule]", "12"}], ",", 
                    RowBox[{"PrecisionGoal", "\[Rule]", "12"}], ",", 
                    RowBox[{"MaxSteps", "\[Rule]", 
                    SuperscriptBox["10", "10"]}]}], "\[IndentingNewLine]", 
                    RowBox[{"(*", "       ", 
                    RowBox[{"\"\<StiffnessSwitching\>\"", "      ", 
                    RowBox[{"{", 
                    RowBox[{"\"\<ExplicitRungeKutta\>\"", ",", 
                    RowBox[{"\"\<StiffnessTest\>\"", "\[Rule]", "False"}]}], 
                    "}"}], "     ", "\"\<Automatic\>\""}], " ", "*)"}], 
                    "\[IndentingNewLine]", "]"}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"V", "=", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"R2x", "'"}], "[", "t", "]"}], ",", 
                    RowBox[{
                    RowBox[{"R2y", "'"}], "[", "t", "]"}], ",", 
                    RowBox[{
                    RowBox[{"R2z", "'"}], "[", "t", "]"}]}], "}"}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"R", "=", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"R2x", "[", "t", "]"}], ",", 
                    RowBox[{"R2y", "[", "t", "]"}], ",", 
                    RowBox[{"R2z", "[", "t", "]"}]}], "}"}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"L1", "=", 
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{"L1x", "[", "t", "]"}], ",", 
                    RowBox[{"L1y", "[", "t", "]"}], ",", 
                    RowBox[{"L1z", "[", "t", "]"}]}], "}"}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"NZ", "=", 
                    RowBox[{"{", 
                    RowBox[{"0", ",", "0", ",", "1"}], "}"}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"NOUT", "=", 
                    RowBox[{"Cross", "[", 
                    RowBox[{"R", ",", "V"}], "]"}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"E2MAX", "=", 
                    RowBox[{
                    RowBox[{"NMaximize", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"Norm", "[", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    FractionBox["1", 
                    RowBox[{"k", 
                    RowBox[{"(", 
                    RowBox[{"M1", "+", "M2", "+", "M3"}], ")"}]}]], 
                    RowBox[{"Cross", "[", 
                    RowBox[{"V", ",", 
                    RowBox[{"Cross", "[", 
                    RowBox[{"R", ",", "V"}], "]"}]}], "]"}]}], "-", 
                    FractionBox["R", 
                    RowBox[{"Norm", "[", "R", "]"}]]}], ")"}], "]"}], ")"}], "/.", 
                    RowBox[{"s3", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], ",", 
                    RowBox[{"0", "<", "t", "<", "T"}]}], "}"}], ",", "t"}], 
                    "]"}], "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"(*", 
                    RowBox[{
                    RowBox[{"I2MAX", "=", 
                    RowBox[{
                    RowBox[{"NMaximize", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"ArcCos", "[", 
                    FractionBox[
                    RowBox[{"L1", ".", "NOUT"}], 
                    RowBox[{
                    RowBox[{"Norm", "[", "L1", "]"}], 
                    RowBox[{"Norm", "[", "NOUT", "]"}]}]], " ", "]"}], ")"}], 
                    RowBox[{"180", "/", "Pi"}]}], ")"}], "/.", 
                    RowBox[{"s3", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], ",", 
                    RowBox[{"0", "<", "t", "<", "T"}]}], "}"}], ",", "t"}], 
                    "]"}], "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], ";", 
                    "\[IndentingNewLine]", 
                    RowBox[{"I2MIN", "=", 
                    RowBox[{
                    RowBox[{"NMinimize", "[", 
                    RowBox[{
                    RowBox[{"{", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"ArcCos", "[", 
                    FractionBox[
                    RowBox[{"L1", ".", "NOUT"}], 
                    RowBox[{
                    RowBox[{"Norm", "[", "L1", "]"}], 
                    RowBox[{"Norm", "[", "NOUT", "]"}]}]], " ", "]"}], ")"}], 
                    RowBox[{"180", "/", "Pi"}]}], ")"}], "/.", 
                    RowBox[{"s3", "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], ",", 
                    RowBox[{"0", "<", "t", "<", "T"}]}], "}"}], ",", "t"}], 
                    "]"}], "[", 
                    RowBox[{"[", "1", "]"}], "]"}]}], ";"}], "*)"}], 
                   "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"MSS", "[", 
                    RowBox[{"[", "u", "]"}], "]"}], "=", 
                    RowBox[{"M2", "/", "M1"}]}], ";", "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"AINSS", "[", 
                    RowBox[{"[", "u", "]"}], "]"}], "=", "Ain"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"RASE", "[", 
                    RowBox[{"[", "u", "]"}], "]"}], "=", "E2MAX"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{
                    RowBox[{"RASI", "[", 
                    RowBox[{"[", "u", "]"}], "]"}], "=", "0"}], 
                   RowBox[{"(*", 
                    RowBox[{"I2MAX", "-", "I2MIN"}], "*)"}], ";", 
                   "\[IndentingNewLine]", "\[IndentingNewLine]", 
                   RowBox[{"Clear", "[", "s3", "]"}], ";"}], 
                  "\[IndentingNewLine]", 
                  RowBox[{"(*", 
                   RowBox[{
                   "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
                     "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
                     "**", "**"}], "******)"}], "\[IndentingNewLine]", 
                  ")"}]}], "]"}], ";", "\[IndentingNewLine]", 
               RowBox[{"If", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{
                   FractionBox[
                    RowBox[{"RASE", "[", 
                    RowBox[{"[", "u", "]"}], "]"}], "E20"], "<", "10"}], "&&", 
                  RowBox[{
                   FractionBox[
                    RowBox[{"RASE", "[", 
                    RowBox[{"[", 
                    RowBox[{"u", "-", "1"}], "]"}], "]"}], "E20"], "<", 
                   "10"}]}], ",", 
                 RowBox[{"Break", "[", "]"}]}], "]"}], ";"}]}], 
             "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
            RowBox[{"Print", "[", 
             RowBox[{"MS", "[", 
              RowBox[{"[", "i", "]"}], "]"}], "]"}], ";", 
            "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"ListPlot", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"Table", "[", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"AINSS", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], ",", 
                    RowBox[{"RASE", "[", 
                    RowBox[{"[", "i", "]"}], "]"}]}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"i", ",", "1", ",", 
                    RowBox[{"Length", "[", "AINSS", "]"}]}], "}"}]}], "]"}], 
                "}"}], ",", 
               RowBox[{"InterpolationOrder", "\[Rule]", "1"}], ",", 
               RowBox[{"Frame", "\[Rule]", " ", "True"}], ",", 
               RowBox[{"FrameLabel", "\[Rule]", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{
                   "\"\<\!\(\*SubsuperscriptBox[\(\[CapitalDelta]e\), \(\
\[SixPointedStar]\), \(max\)]\)\>\"", ",", "\"\<\>\""}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{
                   "\"\<\!\(\*SubscriptBox[\(a\), \(in\)]\) [AU]\>\"", ",", 
                    "\"\<\>\""}], "}"}]}], "}"}]}], ",", 
               RowBox[{"LabelStyle", "\[Rule]", " ", 
                RowBox[{"Directive", "[", "25", "]"}]}], ",", 
               RowBox[{"ImageSize", "\[Rule]", "700"}], ",", 
               RowBox[{"PlotRange", "\[Rule]", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"AINL", ",", "AINB"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{
                    RowBox[{"-", "0.05"}], ",", "1.05"}], "}"}]}], "}"}]}], 
               ",", 
               RowBox[{"FrameStyle", "\[Rule]", 
                RowBox[{"Directive", "[", 
                 RowBox[{
                  RowBox[{"Thickness", "[", "0.005", "]"}], ",", "Black"}], 
                 "]"}]}], ",", 
               RowBox[{"AspectRatio", "\[Rule]", "0.4"}], ",", 
               RowBox[{"ImagePadding", "\[Rule]", 
                RowBox[{"{", 
                 RowBox[{
                  RowBox[{"{", 
                   RowBox[{"120", ",", "10"}], "}"}], ",", 
                  RowBox[{"{", 
                   RowBox[{"105", ",", "0"}], "}"}]}], "}"}]}], ",", 
               RowBox[{"PlotStyle", "\[Rule]", " ", 
                RowBox[{"Directive", "[", 
                 RowBox[{
                  RowBox[{"Thickness", "[", "0.002", "]"}], ",", "Black"}], 
                 "]"}]}]}], "]"}], "//", "Print"}], ";"}]}], 
          "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
         RowBox[{"MSS", "=", 
          RowBox[{"Select", "[", 
           RowBox[{"MSS", ",", 
            RowBox[{
             RowBox[{"#", ">", "0"}], "&"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"Length", "[", "%", "]"}], ";", "\[IndentingNewLine]", 
         RowBox[{"AINSS", "=", 
          RowBox[{"Select", "[", 
           RowBox[{"AINSS", ",", 
            RowBox[{
             RowBox[{"#", ">", "0"}], "&"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"Length", "[", "%", "]"}], ";", "\[IndentingNewLine]", 
         RowBox[{"RASE", "=", 
          RowBox[{"Select", "[", 
           RowBox[{"RASE", ",", 
            RowBox[{
             RowBox[{"#", ">", "0"}], "&"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"Length", "[", "%", "]"}], ";", "\[IndentingNewLine]", 
         RowBox[{"X1", "=", 
          RowBox[{"Select", "[", 
           RowBox[{"RASE", ",", 
            RowBox[{
             RowBox[{"#", ">", "1"}], "&"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"P1", "=", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Position", "[", 
              RowBox[{"RASE", ",", 
               RowBox[{"X1", "[", 
                RowBox[{"[", "i", "]"}], "]"}]}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", 
              RowBox[{"Length", "[", "X1", "]"}]}], "}"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"MSS1", "=", 
          RowBox[{"Extract", "[", 
           RowBox[{"MSS", ",", "P1"}], "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"AINSS1", "=", 
          RowBox[{"Extract", "[", 
           RowBox[{"AINSS", ",", "P1"}], "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"RASE", "=", 
          RowBox[{"ReplacePart", "[", 
           RowBox[{"RASE", ",", 
            RowBox[{"P1", "\[Rule]", " ", "0"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"RASI", "=", 
          RowBox[{"ReplacePart", "[", 
           RowBox[{"RASI", ",", 
            RowBox[{"P1", "\[Rule]", " ", "0"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"RASES", "[", 
           RowBox[{"[", "ii", "]"}], "]"}], "=", 
          RowBox[{"Max", "[", "RASE", "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"RASIS", "[", 
           RowBox[{"[", "ii", "]"}], "]"}], "=", 
          RowBox[{"Max", "[", "RASI", "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"MSSS", "[", 
           RowBox[{"[", "ii", "]"}], "]"}], "=", 
          RowBox[{"Extract", "[", 
           RowBox[{"MSS", ",", 
            RowBox[{
             RowBox[{"Position", "[", 
              RowBox[{"RASE", ",", 
               RowBox[{"Max", "[", "RASE", "]"}]}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"AINSSS", "[", 
           RowBox[{"[", "ii", "]"}], "]"}], "=", 
          RowBox[{"Extract", "[", 
           RowBox[{"AINSS", ",", 
            RowBox[{
             RowBox[{"Position", "[", 
              RowBox[{"RASE", ",", 
               RowBox[{"Max", "[", "RASE", "]"}]}], "]"}], "[", 
             RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], ";", 
         "\[IndentingNewLine]", 
         RowBox[{"Print", "[", 
          RowBox[{"Max", "[", "RASE", "]"}], "]"}], ";"}]}], 
       "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"Print", "[", "jj", "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"Print", "[", "RASES", "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"Print", "[", "RASIS", "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"Print", "[", "MSSS", "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"Print", "[", "AINSSS", "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"RASEs", "[", 
        RowBox[{"[", "jj", "]"}], "]"}], "=", "RASES"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"RASIs", "[", 
        RowBox[{"[", "jj", "]"}], "]"}], "=", "RASIS"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"MSSs", "[", 
        RowBox[{"[", "jj", "]"}], "]"}], "=", "MSSS"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"AINSSs", "[", 
        RowBox[{"[", "jj", "]"}], "]"}], "=", "AINSSS"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"POUTS", "=", 
       RowBox[{"Range", "[", 
        RowBox[{
         FractionBox["1", "365"], ",", 
         FractionBox["181", "365"], ",", 
         FractionBox["10", "365"]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"COLOR", "=", "Black"}], ";", "\[IndentingNewLine]", 
      RowBox[{"F1", "=", 
       RowBox[{"ListPlot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"POUTS", "[", 
               RowBox[{"[", "i", "]"}], "]"}], ",", 
              RowBox[{"RASES", "[", 
               RowBox[{"[", "i", "]"}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", 
              RowBox[{"Length", "[", "POUTS", "]"}]}], "}"}]}], "]"}], "}"}], 
         ",", 
         RowBox[{"InterpolationOrder", "\[Rule]", "1"}], ",", 
         RowBox[{"Frame", "\[Rule]", " ", "True"}], ",", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "\"\<\!\(\*SubsuperscriptBox[\(\[CapitalDelta]e\), \(out\), \
\(max\)]\)\>\"", ",", "\"\<\>\""}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
             "\"\<\!\(\*SubscriptBox[\(P\), \(out\)]\) [yr]\>\"", ",", 
              "\"\<\>\""}], "}"}]}], "}"}]}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", " ", 
          RowBox[{"Directive", "[", "35", "]"}]}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "900"}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0.0", ",", "0.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "0.05"}], ",", "1.05"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"FrameStyle", "\[Rule]", " ", 
          RowBox[{"Thickness", "[", "0.005", "]"}]}], ",", 
         RowBox[{"AspectRatio", "\[Rule]", " ", "0.5"}], ",", 
         RowBox[{"ImagePadding", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"120", ",", "30"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "5"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", " ", 
          RowBox[{"Directive", "[", 
           RowBox[{
            RowBox[{"Thickness", "[", "0.004", "]"}], ",", "COLOR"}], "]"}]}],
          ",", 
         RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"f1", "=", 
       RowBox[{"ListPlot", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
              RowBox[{"POUTS", "[", 
               RowBox[{"[", "i", "]"}], "]"}], ",", 
              RowBox[{"RASIS", "[", 
               RowBox[{"[", "i", "]"}], "]"}]}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", 
              RowBox[{"Length", "[", "POUTS", "]"}]}], "}"}]}], "]"}], "}"}], 
         ",", 
         RowBox[{"InterpolationOrder", "\[Rule]", "1"}], ",", 
         RowBox[{"Frame", "\[Rule]", " ", "True"}], ",", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "\"\<\!\(\*SubsuperscriptBox[\(\[CapitalDelta]I\), \(out\), \
\(max\)]\) [Deg]\>\"", ",", "\"\<\>\""}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
             "\"\<\!\(\*SubscriptBox[\(P\), \(out\)]\) [yr]\>\"", ",", 
              "\"\<\>\""}], "}"}]}], "}"}]}], ",", 
         RowBox[{"LabelStyle", "\[Rule]", " ", 
          RowBox[{"Directive", "[", "35", "]"}]}], ",", 
         RowBox[{"ImageSize", "\[Rule]", "900"}], ",", 
         RowBox[{"PlotRange", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"0.0", ",", "0.5"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"-", "5"}], ",", "189"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"FrameStyle", "\[Rule]", " ", 
          RowBox[{"Thickness", "[", "0.005", "]"}]}], ",", 
         RowBox[{"AspectRatio", "\[Rule]", " ", "0.5"}], ",", 
         RowBox[{"ImagePadding", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"120", ",", "30"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"90", ",", "5"}], "}"}]}], "}"}]}], ",", 
         RowBox[{"PlotStyle", "\[Rule]", " ", 
          RowBox[{"Directive", "[", 
           RowBox[{
            RowBox[{"Thickness", "[", "0.004", "]"}], ",", "COLOR"}], "]"}]}],
          ",", 
         RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Column", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"F1", ",", "f1"}], "}"}], ",", 
         RowBox[{"Spacings", "\[Rule]", "0.1"}]}], "]"}], "//", "Print"}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{
      "Print", "[", 
       "\"\<------------------------------------------------------------------\
------------------------------------------------------------------------------\
--------------------------------------------------------------\>\"", "]"}], 
      ";"}]}], "\[IndentingNewLine]", "]"}], ",", 
   RowBox[{"ProgressIndicator", "[", 
    RowBox[{"jj", ",", 
     RowBox[{"{", 
      RowBox[{"1", ",", "NUM"}], "}"}]}], "]"}]}], 
  "]"}], "\[IndentingNewLine]", "RASEs", "\[IndentingNewLine]", "MSSs", "\
\[IndentingNewLine]", "AINSSs"}], "Input",
 CellChangeTimes->{{3.8516227803736057`*^9, 3.851622852818785*^9}, {
   3.851622908642483*^9, 3.8516229228463564`*^9}, {3.8516246850994744`*^9, 
   3.8516246968851194`*^9}, 3.8516267947450275`*^9, 3.8516276194586983`*^9, {
   3.851629244100404*^9, 3.851629244380753*^9}, 3.8520630382287664`*^9, 
   3.853225883596836*^9, 3.853226547998642*^9, {3.8532268347775493`*^9, 
   3.8532268391520243`*^9}, {3.853228858415967*^9, 3.853228858660178*^9}, {
   3.853236741561073*^9, 3.853236741967639*^9}, 3.853238945546258*^9, {
   3.8537799418272147`*^9, 3.853779961422199*^9}, {3.853784136137225*^9, 
   3.8537841370928626`*^9}, {3.853789117398039*^9, 3.853789117966564*^9}, {
   3.8537891863914127`*^9, 3.8537892456298423`*^9}, {3.8537892806569796`*^9, 
   3.853789322168318*^9}, {3.853789374756096*^9, 3.85378941224474*^9}, 
   3.853789491431218*^9, {3.853789686926913*^9, 3.8537897467911825`*^9}, {
   3.8537903499216785`*^9, 3.8537903502595787`*^9}, 3.8538440511250696`*^9, 
   3.8538462269353495`*^9, {3.853947976222269*^9, 3.85394798625296*^9}, {
   3.853948661942253*^9, 3.853948662233526*^9}, 3.8539487420629725`*^9, {
   3.8541026796866655`*^9, 3.854102684557337*^9}, {3.855607741104512*^9, 
   3.855607769981879*^9}, {3.855608022333559*^9, 3.8556081506629467`*^9}, {
   3.8556081891961017`*^9, 3.855608190098347*^9}, {3.8556082605580287`*^9, 
   3.8556083371978493`*^9}, 3.8556083895890036`*^9, {3.855643742956069*^9, 
   3.85564375301003*^9}, {3.855643788367169*^9, 3.8556438192395782`*^9}, {
   3.8556439757099333`*^9, 3.855643976853686*^9}, {3.856609614796061*^9, 
   3.8566096178950033`*^9}, {3.856948757640862*^9, 3.856948757972495*^9}, {
   3.858454374894536*^9, 3.8584544978615036`*^9}, 3.858456037219816*^9, {
   3.8584567852369385`*^9, 3.858456792764091*^9}, {3.8584583297948475`*^9, 
   3.8584583320767097`*^9}, {3.8584588918704205`*^9, 3.858458899817704*^9}, 
   3.8584589832647157`*^9, 3.858459016843199*^9, {3.858459126306756*^9, 
   3.8584591354110546`*^9}, {3.8584591753974257`*^9, 
   3.8584591965972247`*^9}, {3.8584595739365835`*^9, 3.858459591219683*^9}, {
   3.8584601554141955`*^9, 3.8584601927045355`*^9}, {3.858461834581467*^9, 
   3.8584618401983166`*^9}, 3.8584898634155645`*^9, {3.8584899350660305`*^9, 
   3.8584899484763393`*^9}, 3.8584906573732924`*^9, {3.858493778151256*^9, 
   3.858493788059534*^9}, {3.8589684981503897`*^9, 3.8589684989793615`*^9}, 
   3.858968649763855*^9, 3.858968688485348*^9, 3.8589696411152344`*^9, {
   3.8589745173258505`*^9, 3.8589745178390713`*^9}, {3.8589753682556953`*^9, 
   3.8589753708657937`*^9}, {3.8590078685603004`*^9, 
   3.8590078689789104`*^9}, {3.8590635246790237`*^9, 
   3.8590635554713616`*^9}, {3.859063593159548*^9, 3.859063628933022*^9}, {
   3.8590638043909993`*^9, 3.859063804647733*^9}, {3.859090672104097*^9, 
   3.859090684093828*^9}, {3.85911588837803*^9, 3.85911591867562*^9}, {
   3.8591277419938593`*^9, 3.8591277498442726`*^9}, {3.8592168831766357`*^9, 
   3.8592169193036604`*^9}, {3.859217058288454*^9, 3.859217078224347*^9}, 
   3.859217858894506*^9, {3.85921805110621*^9, 3.859218051480598*^9}, 
   3.859218284067835*^9, {3.859218617817528*^9, 3.8592186472689643`*^9}, {
   3.8592187544523363`*^9, 3.8592188041173162`*^9}, {3.859219097090541*^9, 
   3.8592191101408677`*^9}, {3.859219255367448*^9, 3.859219262786705*^9}, 
   3.859219543079746*^9, 3.8592195940727005`*^9, {3.859219650570923*^9, 
   3.8592196776726103`*^9}, {3.8592198412408185`*^9, 
   3.8592198442573433`*^9}, {3.859219886228765*^9, 3.8592199419825134`*^9}, 
   3.859224018027441*^9, {3.8592675315880547`*^9, 3.8592675636974525`*^9}, 
   3.859268910552245*^9, 3.859274532023365*^9, {3.85945729156448*^9, 
   3.8594573001512327`*^9}, {3.8594574937782774`*^9, 
   3.8594575115443425`*^9}, {3.8594575588647327`*^9, 3.8594575592470493`*^9}, 
   3.85945770690993*^9},
 CellLabel->"In[28]:=",ExpressionUUID->"1a7a883b-e306-4ab2-9c27-63c41465d55b"]
},
Evaluator->"1",
WindowSize->{1920, 976},
WindowMargins->{{-9, Automatic}, {Automatic, -9}},
ShowSelection->True,
FrontEndVersion->"12.0 for Microsoft Windows (64-bit) (2019\:5e744\:67088\
\:65e5)",
StyleDefinitions->FrontEnd`FileName[{"Utility"}, "Notepad.nb", 
  CharacterEncoding -> "UTF-8"]
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
Cell[557, 20, 216, 3, 43, "Input",ExpressionUUID->"d7bbecff-e250-4b6c-955c-39245c5f8a9f"],
Cell[776, 25, 2238, 49, 275, "Input",ExpressionUUID->"3505ca3b-406e-44a3-b4eb-f5819e641ffe"],
Cell[3017, 76, 221928, 4880, 9030, "Input",ExpressionUUID->"1a7a883b-e306-4ab2-9c27-63c41465d55b"]
}
]
*)

