(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 10.2' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    250910,       5642]
NotebookOptionsPosition[    248910,       5605]
NotebookOutlinePosition[    249282,       5622]
CellTagsIndexPosition[    249239,       5619]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{"Clear", "[", "\"\<`*\>\"", "]"}]], "Input",
 CellLabel->"In[1]:=",ExpressionUUID->"c5918342-8414-4201-aac9-1ce5286cedab"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Itot", "=", 
   StyleBox["0.01",
    FontColor->RGBColor[1, 0, 0]]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"S", "=", "0"}], ";"}], 
  RowBox[{"(*", 
   RowBox[{"spin", "-", "orbit"}], "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SS", "=", "0"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"SM3", "=", "0"}], ";"}], 
  RowBox[{"(*", 
   RowBox[{"spin", "-", 
    RowBox[{"orbit", " ", "from", " ", "M3"}]}], 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SSM3", "=", "0"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"m", "=", "1"}], ";"}], 
  RowBox[{"(*", "Kozai", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"mm", "=", "1"}], ";"}], 
  RowBox[{"(*", " ", 
   RowBox[{"turn", " ", "on", " ", "oct", " ", "Kozai"}], " ", 
   "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"l", "=", "1"}], ";"}], 
  RowBox[{"(*", "GR", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ll", "=", "0"}], ";"}], 
  RowBox[{"(*", "GW", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"lll", "=", "1"}], ";"}], 
  RowBox[{"(*", 
   RowBox[{"GR", " ", "OUT"}], "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"n", "=", "1"}], ";"}], 
  RowBox[{"(*", 
   RowBox[{"ROUT", " ", "Quad"}], "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"nn", "=", "1"}], ";"}], 
  RowBox[{"(*", 
   RowBox[{"ROUT", " ", "Oct"}], "*)"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"k", "=", "39.4751488"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"c", "=", 
   RowBox[{"6.32397263", "*", 
    SuperscriptBox["10", "4"]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"M3", "=", "1"}], ";"}], "\n"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"E10", "=", 
   StyleBox["0.9",
    FontColor->RGBColor[1, 0, 0]]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"E20", "=", 
   StyleBox["0.001",
    FontColor->RGBColor[1, 0, 0]]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"M1", "=", "41.666666666666664`"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"M2", "=", "8.333333333333334`"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"AOUTS", "=", "0.4416148492869101`"}], ";"}]}], "Input",
 CellChangeTimes->{{3.8480888426612883`*^9, 3.8480888702416396`*^9}, 
   3.8480894178010902`*^9, {3.8480904122687807`*^9, 3.848090413101405*^9}, 
   3.8482532445878835`*^9, 3.8482587787346706`*^9, {3.8483067047887754`*^9, 
   3.848306707539653*^9}, {3.8483100327101197`*^9, 3.8483100341602693`*^9}, {
   3.8486594753244348`*^9, 3.848659478171703*^9}, 3.8486845800319977`*^9, 
   3.84869276907572*^9, {3.849022459205388*^9, 3.8490224593528137`*^9}, {
   3.8508393193417883`*^9, 3.850839345074188*^9}, {3.8508395495506077`*^9, 
   3.8508395498809547`*^9}, {3.850850751519429*^9, 3.8508507534565787`*^9}, {
   3.851007624083172*^9, 3.8510076275196*^9}, {3.851095250105377*^9, 
   3.851095251837558*^9}, {3.85118243900809*^9, 3.851182439179093*^9}, 
   3.8515280206169753`*^9, {3.851528054629572*^9, 3.851528109740607*^9}, {
   3.851884808911943*^9, 3.851884809164652*^9}, 3.8518850192750807`*^9, {
   3.853171276659219*^9, 3.8531712776785355`*^9}, 3.8531713438111906`*^9, {
   3.8531716300850983`*^9, 3.8531716669471765`*^9}, {3.8547222581531305`*^9, 
   3.8547222868466034`*^9}, 3.854725934893343*^9, 3.8591310225558834`*^9},
 CellLabel->"In[27]:=",ExpressionUUID->"30b96147-4a57-4b1e-b32d-5f775e5f623d"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"num", "=", "500"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"AINGRS", "=", 
   RowBox[{"Range", "[", 
    RowBox[{"0.077106", ",", "0.0065209", ",", 
     RowBox[{"-", 
      FractionBox[
       RowBox[{"0.077106", "-", "0.0065209"}], "num"]}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Length", "[", "%", "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"E2MAXS", "=", 
   RowBox[{"ConstantArray", "[", 
    RowBox[{"0", ",", 
     RowBox[{"Length", "[", "AINGRS", "]"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"I2MAXS", "=", 
   RowBox[{"ConstantArray", "[", 
    RowBox[{"0", ",", 
     RowBox[{"Length", "[", "AINGRS", "]"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"I2MINS", "=", 
   RowBox[{"ConstantArray", "[", 
    RowBox[{"0", ",", 
     RowBox[{"Length", "[", "AINGRS", "]"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"AINSS", "=", 
   RowBox[{"ConstantArray", "[", 
    RowBox[{"0", ",", 
     RowBox[{"Length", "[", "AINGRS", "]"}]}], "]"}]}], ";"}]}], "Input",
 CellChangeTimes->{{3.848088746848467*^9, 3.8480888197232823`*^9}, {
   3.848089171629095*^9, 3.8480891823843203`*^9}, {3.8480896197156715`*^9, 
   3.8480896236196775`*^9}, {3.848089778746256*^9, 3.848089783243229*^9}, {
   3.848090020206149*^9, 3.848090023555857*^9}, 3.848091406905101*^9, {
   3.8481338727862816`*^9, 3.8481338779730434`*^9}, {3.8482477781022835`*^9, 
   3.8482477864998727`*^9}, {3.8483098141709595`*^9, 3.848309863836421*^9}, 
   3.848310024769478*^9, {3.848310193976885*^9, 3.848310194477295*^9}, 
   3.848314483420454*^9, {3.8483149311639357`*^9, 3.848314940226494*^9}, {
   3.848315016404388*^9, 3.8483150449620004`*^9}, {3.848643379097411*^9, 
   3.8486433901678524`*^9}, {3.848659748426429*^9, 3.8486597768616705`*^9}, {
   3.849022576483471*^9, 3.849022596865632*^9}, {3.850886262467516*^9, 
   3.85088628900705*^9}, {3.8508943224614735`*^9, 3.85089433844493*^9}, {
   3.850993677170287*^9, 3.850993688445709*^9}, {3.8510078302481747`*^9, 
   3.851007844174605*^9}, {3.8510956738464465`*^9, 3.8510956791480045`*^9}, {
   3.851528125346262*^9, 3.851528142882607*^9}, {3.851529968741754*^9, 
   3.8515299784627714`*^9}, {3.8520627013607345`*^9, 3.852062701552215*^9}, {
   3.853171574204883*^9, 3.8531715908823256`*^9}, {3.853171636137622*^9, 
   3.8531716482161617`*^9}, 3.8531717112599735`*^9, {3.853172431170518*^9, 
   3.8531724349010167`*^9}, {3.8531728623103275`*^9, 
   3.8531728703209915`*^9}, {3.8547223037563677`*^9, 3.8547223127199793`*^9}, 
   3.8547223698241563`*^9, {3.8547224965823402`*^9, 3.854722502801918*^9}, 
   3.854723337935231*^9, 3.854725993856305*^9, {3.854726035164892*^9, 
   3.854726035768794*^9}, 3.854726104179614*^9, {3.854729330112932*^9, 
   3.8547293315243845`*^9}, 3.8591310285095673`*^9, 3.8591310882349625`*^9, 
   3.859133282000755*^9},
 CellLabel->"In[47]:=",ExpressionUUID->"7903f550-bea2-4059-9de1-84948346a95e"],

Cell[BoxData["501"], "Output",
 CellChangeTimes->{{3.848088807251113*^9, 3.8480888208322315`*^9}, 
   3.8480891834306602`*^9, 3.848089713839082*^9, 3.84808978442739*^9, {
   3.8480898334372206`*^9, 3.8480898593257747`*^9}, 3.8480898984347014`*^9, 
   3.848090118265009*^9, 3.8480901709563017`*^9, 3.8480905289004526`*^9, 
   3.848091464134848*^9, 3.8481338788995085`*^9, 3.848247413274748*^9, {
   3.848247787599516*^9, 3.848247794408575*^9}, 3.8482491986455975`*^9, 
   3.8482492526306267`*^9, 3.848253285420122*^9, 3.848258784294162*^9, 
   3.848306862349105*^9, 3.8483100429567375`*^9, 3.848310206459716*^9, 
   3.848314493774654*^9, 3.8483149893489513`*^9, {3.8483150234325943`*^9, 
   3.8483150458573914`*^9}, 3.848592576190576*^9, 3.8486433927015915`*^9, {
   3.848659767314495*^9, 3.8486597778212514`*^9}, 3.8486741031922803`*^9, 
   3.848680039181525*^9, 3.848684780773145*^9, 3.8486930028095703`*^9, {
   3.8490225986574006`*^9, 3.849022350592559*^9}, 3.8508394701320047`*^9, 
   3.8508395655858307`*^9, 3.850850873981982*^9, {3.8508862668782578`*^9, 
   3.850886290297479*^9}, {3.850894328999855*^9, 3.8508943395749316`*^9}, 
   3.8509023227513437`*^9, 3.8509029810862107`*^9, 3.850903211092078*^9, 
   3.8509936907614*^9, 3.850993833334922*^9, 3.8509941624511156`*^9, 
   3.8509943013066425`*^9, 3.8509944584162464`*^9, 3.85099491383328*^9, 
   3.851007750603002*^9, 3.8510078458985023`*^9, 3.8510225174719954`*^9, {
   3.8510956803018*^9, 3.851095262505961*^9}, 3.851143381846003*^9, {
   3.851182679699884*^9, 3.8511823523793716`*^9}, 3.8515281440501127`*^9, {
   3.8515299765163937`*^9, 3.851529979321889*^9}, 3.8515300841768007`*^9, 
   3.851534877470971*^9, 3.851884224324833*^9, 3.8519348026099043`*^9, 
   3.8531716712642174`*^9, 3.8531717122355423`*^9, 3.8531723988173623`*^9, 
   3.8531724426072083`*^9, 3.8531728752208753`*^9, 3.853176156931341*^9, 
   3.8547223137217426`*^9, 3.8547223713820777`*^9, 3.8547224648561506`*^9, 
   3.854722607265005*^9, 3.8547233430317445`*^9, 3.854726037131525*^9, {
   3.854726087610871*^9, 3.8547261083475995`*^9}, 3.8591313364257135`*^9, 
   3.859133282925271*^9, 3.8623007133315716`*^9},
 CellLabel->"Out[49]=",ExpressionUUID->"b01b951d-88b3-4ba3-ae89-620da24d8df9"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Monitor", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"For", "[", 
     RowBox[{
      RowBox[{"ii", "=", "1"}], ",", 
      RowBox[{"ii", "\[LessEqual]", " ", 
       RowBox[{"Length", "[", "AINGRS", "]"}]}], ",", 
      RowBox[{"ii", "++"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"Clear", "[", "INTain", "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"INTain", "=", 
        RowBox[{"AINGRS", "[", 
         RowBox[{"[", "ii", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"a2", "=", 
        StyleBox["AOUTS",
         FontColor->RGBColor[1, 0, 0]]}], ";", "\[IndentingNewLine]", 
       RowBox[{"T", "=", "10"}], ";", "\[IndentingNewLine]", 
       RowBox[{"S1", "=", 
        RowBox[{"S", " ", 
         FractionBox[
          RowBox[{"k", " ", 
           SuperscriptBox["M1", "2"]}], "c"]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"S2", "=", 
        RowBox[{"SS", "  ", 
         FractionBox[
          RowBox[{"k", " ", 
           SuperscriptBox["M2", "2"]}], "c"]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"N1", "=", 
        SqrtBox[
         FractionBox[
          RowBox[{"k", 
           RowBox[{"(", 
            RowBox[{"M1", "+", "M2"}], ")"}]}], 
          SuperscriptBox["INTain", "3"]]]}], ";", "\[IndentingNewLine]", 
       RowBox[{"\[Mu]", "=", 
        FractionBox[
         RowBox[{"M1", " ", "M2"}], 
         RowBox[{"M1", "+", "M2"}]]}], ";", "\[IndentingNewLine]", 
       RowBox[{"\[Mu]2", "=", 
        FractionBox[
         RowBox[{
          RowBox[{"(", 
           RowBox[{"M1", "+", "M2"}], ")"}], "M3"}], 
         RowBox[{"M1", "+", "M2", "+", "M3"}]]}], ";", "\[IndentingNewLine]", 
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
            RowBox[{"M3", "+", " ", "M1", "+", " ", "M2"}], ")"}], "a2", 
           " "}]]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"Clear", "[", "I1", "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"Clear", "[", "I2", "]"}], ";", "\[IndentingNewLine]", 
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
             RowBox[{"Itot", " ", "Degree"}], "]"}]}]}], ")"}]}]}], ";", 
       "\[IndentingNewLine]", 
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
                  RowBox[{"90", "-", "i1"}], ")"}], "Degree"}], "]"}]}], "+", 
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
             RowBox[{"i1", "+", "i2"}], "==", "Itot"}]}], ",", 
           RowBox[{"{", 
            RowBox[{"i1", ",", "i2"}], "}"}]}], "]"}], "[", 
         RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"I1", "=", 
        RowBox[{"Abs", "[", 
         RowBox[{"i1", "/.", 
          RowBox[{"S4", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"Clear", "[", "i1", "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"I2", "=", 
        RowBox[{"Abs", "[", 
         RowBox[{"i2", "/.", 
          RowBox[{"S4", "[", 
           RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"Clear", "[", "i2", "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"Clear", "[", "S4", "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{
        "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
          "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
          "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
          "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**"}], 
        "*******)"}], "\n", 
       RowBox[{"\[Omega]1", "=", "\[InvisibleSpace]", "0"}], 
       RowBox[{"(*", 
        RowBox[{"RandomReal", "[", 
         RowBox[{"{", 
          RowBox[{"0", ",", "360"}], "}"}], "]"}], "*)"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"\[Omega]2", "=", "0"}], 
       RowBox[{"(*", 
        RowBox[{"RandomReal", "[", 
         RowBox[{"{", 
          RowBox[{"0", ",", "360"}], "}"}], "]"}], "*)"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"\[CapitalOmega]", "=", "0"}], 
       RowBox[{"(*", 
        RowBox[{"RandomReal", "[", 
         RowBox[{"{", 
          RowBox[{"0", ",", "360"}], "}"}], "]"}], "*)"}], ";", "\n", 
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
          RowBox[{"\[CapitalOmega]", " ", "Degree"}], "]"}]}]}], ";", "\n", 
       RowBox[{"L1y00", "=", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"Sin", "[", 
           RowBox[{"I1", " ", "Degree"}], "]"}]}], " ", 
         RowBox[{"Cos", "[", 
          RowBox[{"\[CapitalOmega]", " ", "Degree"}], "]"}]}]}], ";", "\n", 
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
           RowBox[{"\[CapitalOmega]", " ", "Degree"}], "]"}]}]}]}], ";", "\n", 
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
           RowBox[{"\[CapitalOmega]", " ", "Degree"}], "]"}]}]}]}], ";", "\n", 
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
            RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", "Degree"}], 
          "]"}]}]}], ";", "\n", 
       RowBox[{"L2y00", "=", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"Sin", "[", 
           RowBox[{"I2", " ", "Degree"}], "]"}]}], " ", 
         RowBox[{"Cos", "[", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", "Degree"}], 
          "]"}]}]}], ";", "\n", 
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
             RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", "Degree"}], 
           "]"}]}], "-", 
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{"\[Omega]2", " ", "Degree"}], "]"}], " ", 
          RowBox[{"Cos", "[", 
           RowBox[{"I2", " ", "Degree"}], "]"}], " ", 
          RowBox[{"Sin", "[", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", "Degree"}], 
           "]"}]}]}]}], ";", "\n", 
       RowBox[{"e2y00", "=", 
        RowBox[{
         RowBox[{
          RowBox[{"Cos", "[", 
           RowBox[{"\[Omega]2", " ", "Degree"}], "]"}], " ", 
          RowBox[{"Sin", "[", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", "Degree"}], 
           "]"}]}], "+", 
         RowBox[{
          RowBox[{"Sin", "[", 
           RowBox[{"\[Omega]2", " ", "Degree"}], "]"}], " ", 
          RowBox[{"Cos", "[", 
           RowBox[{"I2", " ", "Degree"}], "]"}], " ", 
          RowBox[{"Cos", "[", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"\[CapitalOmega]", "-", "180"}], ")"}], " ", "Degree"}], 
           "]"}]}]}]}], ";", "\n", 
       RowBox[{"e2z00", "=", 
        RowBox[{
         RowBox[{"Sin", "[", 
          RowBox[{"\[Omega]2", " ", "Degree"}], "]"}], " ", 
         RowBox[{"Sin", "[", 
          RowBox[{"I2", " ", "Degree"}], "]"}]}]}], ";", "\n", 
       RowBox[{"(*", 
        RowBox[{
        "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
          "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
          "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
          "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**"}], 
        "*******)"}], "\[IndentingNewLine]", 
       RowBox[{"L1x0", "=", 
        RowBox[{"J1", 
         SqrtBox[
          RowBox[{"1", "-", 
           SuperscriptBox["E10", "2"]}]], 
         RowBox[{"(", "L1x00", ")"}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"L1y0", "=", 
        RowBox[{"J1", 
         SqrtBox[
          RowBox[{"1", "-", 
           SuperscriptBox["E10", "2"]}]], 
         RowBox[{"(", "L1y00", ")"}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"L1z0", "=", 
        RowBox[{"J1", 
         SqrtBox[
          RowBox[{"1", "-", 
           SuperscriptBox["E10", "2"]}]], 
         RowBox[{"(", "L1z00", ")"}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"e1x0", "=", 
        RowBox[{"E10", 
         RowBox[{"(", "e1x00", ")"}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"e1y0", "=", 
        RowBox[{"E10", 
         RowBox[{"(", "e1y00", ")"}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"e1z0", "=", 
        RowBox[{"E10", 
         RowBox[{"(", "e1z00", ")"}]}]}], ";", "\[IndentingNewLine]", 
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
               RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", "Degree"}],
              "]"}]}], "-", 
           RowBox[{
            RowBox[{"Sin", "[", 
             RowBox[{"SL1", " ", "Degree"}], "]"}], 
            RowBox[{"Sin", "[", 
             RowBox[{"\[Phi]", " ", "Degree"}], "]"}], 
            RowBox[{"Sin", "[", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", "Degree"}],
              "]"}]}], "+", 
           RowBox[{
            RowBox[{"Cos", "[", 
             RowBox[{"SL1", " ", "Degree"}], "]"}], 
            RowBox[{"Sin", "[", 
             RowBox[{"I1", " ", "Degree"}], "]"}], 
            RowBox[{"Cos", "[", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", "Degree"}],
              "]"}]}]}], ")"}]}]}], " ", ";", "\[IndentingNewLine]", 
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
               RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", "Degree"}],
              "]"}]}], "+", 
           RowBox[{
            RowBox[{"Sin", "[", 
             RowBox[{"SL1", " ", "Degree"}], "]"}], 
            RowBox[{"Sin", "[", 
             RowBox[{"\[Phi]", " ", "Degree"}], "]"}], 
            RowBox[{"Cos", "[", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", "Degree"}],
              "]"}]}], "+", 
           RowBox[{
            RowBox[{"Cos", "[", 
             RowBox[{"SL1", " ", "Degree"}], "]"}], 
            RowBox[{"Sin", "[", 
             RowBox[{"I1", " ", "Degree"}], "]"}], 
            RowBox[{"Sin", "[", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", "Degree"}],
              "]"}]}]}], ")"}]}]}], ";", "\[IndentingNewLine]", 
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
               RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", "Degree"}],
              "]"}]}], "-", 
           RowBox[{
            RowBox[{"Sin", "[", 
             RowBox[{"SL2", " ", "Degree"}], "]"}], " ", 
            RowBox[{"Sin", "[", 
             RowBox[{"\[Phi]", " ", "Degree"}], "]"}], " ", 
            RowBox[{"Sin", "[", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", "Degree"}],
              "]"}]}], "+", 
           RowBox[{
            RowBox[{"Cos", "[", 
             RowBox[{"SL2", " ", "Degree"}], "]"}], " ", 
            RowBox[{"Sin", "[", 
             RowBox[{"I1", " ", "Degree"}], "]"}], " ", 
            RowBox[{"Cos", "[", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", "Degree"}],
              "]"}]}]}], ")"}]}]}], ";", "\n", 
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
               RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", "Degree"}],
              "]"}]}], "+", 
           RowBox[{
            RowBox[{"Sin", "[", 
             RowBox[{"SL2", " ", "Degree"}], "]"}], " ", 
            RowBox[{"Sin", "[", 
             RowBox[{"\[Phi]", " ", "Degree"}], "]"}], " ", 
            RowBox[{"Cos", "[", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", "Degree"}],
              "]"}]}], "+", 
           RowBox[{
            RowBox[{"Cos", "[", 
             RowBox[{"SL2", " ", "Degree"}], "]"}], " ", 
            RowBox[{"Sin", "[", 
             RowBox[{"I1", " ", "Degree"}], "]"}], " ", 
            RowBox[{"Sin", "[", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"\[CapitalOmega]", "-", "90"}], ")"}], " ", "Degree"}],
              "]"}]}]}], ")"}]}]}], ";", "\n", 
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
             RowBox[{"I1", " ", "Degree"}], "]"}]}]}], ")"}]}]}], ";", "\n", 
       RowBox[{"Clear", "[", "x", "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"Meananomaly", "=", "Pi"}], 
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
             RowBox[{"Sin", "[", "x", "]"}]}]}], "\[Equal]", "Meananomaly"}], 
          ",", 
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
         RowBox[{"180", "/", "Pi"}]}]}], ";", "\[IndentingNewLine]", 
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
              RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}]}], ")"}]}], 
         "+", 
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
             RowBox[{"\[Degree]", " ", "Trueanomaly"}], "]"}]}], ")"}], " ", 
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
              RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}]}], ")"}]}], 
         "+", 
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
             RowBox[{"\[Degree]", " ", "Trueanomaly"}], "]"}]}], ")"}], " ", 
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
             RowBox[{"\[Degree]", " ", "Trueanomaly"}], "]"}]}], ")"}], " ", 
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
                 RowBox[{"\[Degree]", " ", "\[Omega]2"}], "]"}]}]}], ")"}]}], 
            "+", 
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
         RowBox[{"L1x", "[", "t", "]"}], "LIN"]}], ";", "\[IndentingNewLine]", 
       RowBox[{"liny", "=", 
        FractionBox[
         RowBox[{"L1y", "[", "t", "]"}], "LIN"]}], ";", "\[IndentingNewLine]", 
       RowBox[{"linz", "=", 
        FractionBox[
         RowBox[{"L1z", "[", "t", "]"}], "LIN"]}], ";", "\[IndentingNewLine]", 
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
          SuperscriptBox["AIN", "3"]]]}], ";", "\[IndentingNewLine]", 
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
         FractionBox["AIN", "ROUT"]}]}], ";", "\[IndentingNewLine]", 
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
           SuperscriptBox["ROUT", "3"]}]]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"\[CapitalOmega]S1L", "=", "0"}], ";", "\[IndentingNewLine]", 
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
           SuperscriptBox["ROUT", "3"]}]]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"\[CapitalOmega]S2L", "=", "0"}], ";", "\[IndentingNewLine]", 
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
               RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}]}], ")"}]}]}], ";", 
       "\[IndentingNewLine]", 
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
               RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}]}], ")"}]}]}], ";", 
       "\[IndentingNewLine]", 
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
               RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}]}]}], ")"}]}]}], ";", 
       "\[IndentingNewLine]", 
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
              RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], "2"]}]}]}], ";", 
       "\[IndentingNewLine]", 
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
              RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], "2"]}]}]}], ";", 
       "\[IndentingNewLine]", 
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
              RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], "2"]}]}]}], ";", 
       "\[IndentingNewLine]", 
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
              RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], "2"]}]}]}], ";", 
       "\[IndentingNewLine]", 
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
              RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], "2"]}]}]}], ";", 
       "\[IndentingNewLine]", 
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
              RowBox[{"e1z", "[", "t", "]"}]}]}], ")"}], "2"]}]}]}], ";", 
       "\[IndentingNewLine]", 
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
           FractionBox[
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
             RowBox[{"R2x", "[", "t", "]"}]}], 
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
                RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}]]], "+", 
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
           FractionBox[
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
             RowBox[{"R2y", "[", "t", "]"}]}], 
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
                RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}]]], "+", 
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
           FractionBox[
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
             RowBox[{"R2z", "[", "t", "]"}]}], 
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
                RowBox[{"R2z", "[", "t", "]"}], "]"}], "2"]}]]], "+", 
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
              RowBox[{"R2x", "'"}], "[", "0", "]"}], "\[Equal]", "R2Vx0"}], 
            ",", 
            RowBox[{
             RowBox[{
              RowBox[{"R2y", "'"}], "[", "0", "]"}], "\[Equal]", "R2Vy0"}], 
            ",", 
            RowBox[{
             RowBox[{
              RowBox[{"R2z", "'"}], "[", "0", "]"}], "\[Equal]", "R2Vz0"}], 
            ",", 
            RowBox[{
             RowBox[{"R2x", "[", "0", "]"}], "\[Equal]", "R2x0"}], ",", 
            RowBox[{
             RowBox[{"R2y", "[", "0", "]"}], "\[Equal]", "R2y0"}], ",", 
            RowBox[{
             RowBox[{"R2z", "[", "0", "]"}], "\[Equal]", "R2z0"}]}], "}"}], 
          ",", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
           "S1x", ",", "S1y", ",", "S1z", ",", "S2x", ",", "S2y", ",", "S2z", 
            ",", "L1x", ",", "L1y", ",", "L1z", ",", "e1x", ",", "e1y", ",", 
            "e1z", ",", "R2x", ",", "R2y", ",", "R2z"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"t", ",", "0", ",", "T"}], "}"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{"Method", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"\"\<ExplicitRungeKutta\>\"", ",", 
             RowBox[{"\"\<StiffnessTest\>\"", "\[Rule]", "False"}]}], "}"}]}],
           ",", 
          RowBox[{"AccuracyGoal", "\[Rule]", "12"}], ",", 
          RowBox[{"PrecisionGoal", "\[Rule]", "12"}], ",", 
          RowBox[{"MaxSteps", "\[Rule]", 
           SuperscriptBox["10", "10"]}]}], "\[IndentingNewLine]", 
         RowBox[{"(*", "       ", 
          RowBox[{"\"\<StiffnessSwitching\>\"", "      ", 
           RowBox[{"{", 
            RowBox[{"\"\<ExplicitRungeKutta\>\"", ",", 
             RowBox[{"\"\<StiffnessTest\>\"", "\[Rule]", "False"}]}], "}"}], "     ",
            "\"\<Automatic\>\""}], " ", "*)"}], "\[IndentingNewLine]", 
         "]"}]}], ";", "\[IndentingNewLine]", 
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
         RowBox[{"R", ",", "V"}], "]"}]}], ";", "\[IndentingNewLine]", 
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
             RowBox[{"0", "<", "t", "<", "T"}]}], "}"}], ",", "t"}], "]"}], 
         "[", 
         RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
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
             RowBox[{"0", "<", "t", "<", "T"}]}], "}"}], ",", "t"}], "]"}], 
         "[", 
         RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
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
             RowBox[{"0", "<", "t", "<", "T"}]}], "}"}], ",", "t"}], "]"}], 
         "[", 
         RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"E2MAX", "<", "1"}], ",", 
         RowBox[{"(", "\[IndentingNewLine]", 
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
             RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
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
             RowBox[{"[", "1", "]"}], "]"}]}], ";", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"E2MAXS", "[", 
             RowBox[{"[", "ii", "]"}], "]"}], "=", "E2MAX"}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"I2MAXS", "[", 
             RowBox[{"[", "ii", "]"}], "]"}], "=", "I2MAX"}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"I2MINS", "[", 
             RowBox[{"[", "ii", "]"}], "]"}], "=", "I2MIN"}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"AINSS", "[", 
             RowBox[{"[", "ii", "]"}], "]"}], "=", "INTain"}], ";"}], 
          "\[IndentingNewLine]", ")"}], ",", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"E2MAXS", "[", 
             RowBox[{"[", "ii", "]"}], "]"}], "=", "0"}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"I2MAXS", "[", 
             RowBox[{"[", "ii", "]"}], "]"}], "=", "0"}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"I2MINS", "[", 
             RowBox[{"[", "ii", "]"}], "]"}], "=", "0"}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"AINSS", "[", 
             RowBox[{"[", "ii", "]"}], "]"}], "=", "0"}], ";"}], ")"}]}], 
        "]"}], ";", "\[IndentingNewLine]", 
       RowBox[{"Clear", "[", "s3", "]"}], ";"}]}], "\[IndentingNewLine]", 
     "]"}], ",", "\[IndentingNewLine]", 
    RowBox[{"ProgressIndicator", "[", 
     RowBox[{"ii", ",", 
      RowBox[{"{", 
       RowBox[{"1", ",", 
        RowBox[{"Length", "[", "AINGRS", "]"}]}], "}"}]}], "]"}]}], "]"}], 
  ";"}], "\[IndentingNewLine]", "E2MAXS", "\[IndentingNewLine]", "I2MAXS", "\n\
", "I2MINS", "\[IndentingNewLine]", "AINSS"}], "Input",
 CellChangeTimes->{{3.730919540297617*^9, 3.73091956733292*^9}, {
   3.730920299285676*^9, 3.7309203041621313`*^9}, {3.730921010865445*^9, 
   3.730921012169817*^9}, {3.730921442392869*^9, 3.7309214434848146`*^9}, 
   3.730921504279651*^9, 3.7309220735395284`*^9, 3.7309222783751855`*^9, {
   3.730922336500083*^9, 3.7309223427934065`*^9}, {3.731283458918268*^9, 
   3.7312835091237564`*^9}, {3.7312854965713863`*^9, 3.731285535529467*^9}, {
   3.7312873268955*^9, 3.7312873271089487`*^9}, {3.7312877042133784`*^9, 
   3.731287733791811*^9}, {3.7312886902943845`*^9, 3.731288691669405*^9}, {
   3.7312888565139647`*^9, 3.731288857740425*^9}, 3.7312889128113623`*^9, 
   3.731289026041583*^9, 3.7312890773758836`*^9, {3.7312891207013535`*^9, 
   3.7312891216498604`*^9}, {3.7312891625583973`*^9, 
   3.7312891705008326`*^9}, {3.731289249516818*^9, 3.731289250637751*^9}, {
   3.7312896350237436`*^9, 3.7312896356376467`*^9}, 3.73128975760985*^9, 
   3.7312898191591606`*^9, 3.7312898740625076`*^9, 3.7313330327562895`*^9, 
   3.731333414708063*^9, {3.7313353286233845`*^9, 3.731335334574794*^9}, 
   3.7313354134679794`*^9, {3.7313355031293163`*^9, 3.73133550701468*^9}, 
   3.731335743136194*^9, {3.7313360053998528`*^9, 3.731336006721573*^9}, {
   3.731336687703663*^9, 3.7313366920733385`*^9}, 3.731337115438098*^9, 
   3.731337639161769*^9, {3.731338831520872*^9, 3.7313388332115026`*^9}, 
   3.7313393410196953`*^9, {3.731348356056839*^9, 3.7313483574908667`*^9}, {
   3.7313484095269227`*^9, 3.731348420749171*^9}, {3.7313484674850755`*^9, 
   3.7313484832768955`*^9}, {3.7313485235174446`*^9, 3.7313485444747534`*^9}, 
   3.7313489291068373`*^9, {3.7313496557921915`*^9, 3.7313496568049583`*^9}, 
   3.731350479362316*^9, {3.7313513985321226`*^9, 3.7313513994062786`*^9}, {
   3.731351588795046*^9, 3.7313515900297236`*^9}, {3.7313517039735136`*^9, 
   3.7313517049392157`*^9}, {3.731353444926763*^9, 3.731353446020417*^9}, {
   3.7313534831160297`*^9, 3.7313534853572893`*^9}, {3.7313535713321266`*^9, 
   3.7313535724666767`*^9}, {3.731357125329708*^9, 3.731357126185391*^9}, {
   3.7313577522661495`*^9, 3.731357754926256*^9}, {3.7313640160395775`*^9, 
   3.731364016977123*^9}, {3.7313641834147205`*^9, 3.7313642005057583`*^9}, {
   3.731364350442999*^9, 3.731364354821037*^9}, {3.731364953080168*^9, 
   3.731364954062563*^9}, {3.731366707936535*^9, 3.731366711413103*^9}, {
   3.731370603172821*^9, 3.731370625264617*^9}, {3.731370884616568*^9, 
   3.731370890161191*^9}, {3.7313709813100357`*^9, 3.731370982177431*^9}, {
   3.7313710178969555`*^9, 3.7313710191852703`*^9}, {3.731371069704525*^9, 
   3.7313710706789713`*^9}, {3.7313712079104815`*^9, 3.731371218118161*^9}, {
   3.731376060631663*^9, 3.731376062038039*^9}, {3.7315145193437605`*^9, 
   3.7315145417776194`*^9}, {3.7315163988246994`*^9, 
   3.7315163998957233`*^9}, {3.731518629470045*^9, 3.7315186304402523`*^9}, {
   3.731520783558638*^9, 3.731520797391256*^9}, {3.7315208849394317`*^9, 
   3.7315208857324553`*^9}, {3.731520923581689*^9, 3.7315209242413883`*^9}, {
   3.731521180692996*^9, 3.7315211836145797`*^9}, {3.7315212854893813`*^9, 
   3.731521314553795*^9}, 3.7315214103843994`*^9, {3.7315224782940474`*^9, 
   3.731522507399158*^9}, 3.731522944070283*^9, 3.731534303890961*^9, {
   3.7315343953441577`*^9, 3.731534426466281*^9}, {3.7315345919889946`*^9, 
   3.731534612515993*^9}, 3.7315349309520173`*^9, {3.740796621907957*^9, 
   3.7407966699231524`*^9}, {3.7413919741924105`*^9, 3.741391980040366*^9}, {
   3.7413920481836658`*^9, 3.741392049582038*^9}, {3.741393869288148*^9, 
   3.7413939256320534`*^9}, {3.7413939646248837`*^9, 
   3.7413939650341163`*^9}, {3.7413944522309694`*^9, 
   3.7413944748145456`*^9}, {3.7433116102083693`*^9, 
   3.7433117113221226`*^9}, {3.7433120256321006`*^9, 
   3.7433120260111446`*^9}, {3.746588019506496*^9, 3.7465880327465744`*^9}, {
   3.7465882972938366`*^9, 3.7465883030585537`*^9}, {3.746588421609343*^9, 
   3.7465884407296705`*^9}, 3.746588512407879*^9, {3.7465888023784337`*^9, 
   3.7465888168805685`*^9}, 3.746589890189087*^9, {3.746590401376117*^9, 
   3.746590401903804*^9}, 3.7473780729015913`*^9, {3.7473783637528987`*^9, 
   3.7473783673366137`*^9}, 3.7473784062071357`*^9, 3.7473785186284885`*^9, 
   3.747381970380987*^9, {3.74738200777416*^9, 3.7473820135172563`*^9}, {
   3.7473820593894024`*^9, 3.7473820610781956`*^9}, 3.747382274728069*^9, {
   3.7473826849229217`*^9, 3.7473826853958077`*^9}, {3.7473836689770956`*^9, 
   3.7473836730744042`*^9}, 3.747384274804799*^9, 3.7473846053900347`*^9, 
   3.74738473550648*^9, 3.7473847903629465`*^9, {3.747396496443994*^9, 
   3.7473964974205146`*^9}, {3.747477722793727*^9, 3.7474777232419767`*^9}, {
   3.7474818288335323`*^9, 3.747481829544423*^9}, 3.7558927724801416`*^9, {
   3.7558928853084106`*^9, 3.755892886101514*^9}, {3.8479696137708673`*^9, 
   3.8479696920682597`*^9}, 3.847984745345791*^9, {3.8479884145472155`*^9, 
   3.847988415306284*^9}, 3.8479885551305246`*^9, {3.8479903109505014`*^9, 
   3.8479903506422524`*^9}, 3.84799083190891*^9, {3.8479932698942246`*^9, 
   3.847993310282301*^9}, {3.8479941967636137`*^9, 3.8479942008464603`*^9}, {
   3.8479943386081343`*^9, 3.8479943510264435`*^9}, {3.8479992422335215`*^9, 
   3.8479992895914907`*^9}, {3.848076108023423*^9, 3.848076112756789*^9}, 
   3.8480762167343597`*^9, 3.848076324674492*^9, 3.848076544267226*^9, 
   3.848076624711708*^9, 3.84807668889974*^9, 3.848077018964794*^9, 
   3.8480770953301954`*^9, {3.8480771766060276`*^9, 3.848077177454973*^9}, 
   3.8480773152848444`*^9, {3.848082382927698*^9, 3.848082441793088*^9}, {
   3.8480825522628517`*^9, 3.84808257861193*^9}, {3.8480888326586833`*^9, 
   3.848088867274748*^9}, {3.8480889038440084`*^9, 3.848088908354001*^9}, {
   3.848089422784298*^9, 3.848089423098102*^9}, {3.8480899101418357`*^9, 
   3.8480899643776007`*^9}, {3.8480900896208897`*^9, 
   3.8480901078053274`*^9}, {3.848090144360556*^9, 3.8480901637951794`*^9}, {
   3.8480904203756227`*^9, 3.8480904466682625`*^9}, {3.8480906083502007`*^9, 
   3.8480906181218476`*^9}, {3.8481336625480223`*^9, 
   3.8481336651258774`*^9}, {3.848133751413398*^9, 3.8481337542208323`*^9}, {
   3.8482492347900195`*^9, 3.848249240147829*^9}, {3.8482492822573757`*^9, 
   3.848249282721597*^9}, 3.8483087464059296`*^9, {3.848309323414653*^9, 
   3.8483093265212965`*^9}, 3.848310055113425*^9, 3.848311510345742*^9, {
   3.8483115690581956`*^9, 3.8483115750677433`*^9}, {3.8483116211224904`*^9, 
   3.848311631307521*^9}, 3.848314477912848*^9, {3.848314566217895*^9, 
   3.8483145670775394`*^9}, 3.8485925628280344`*^9, {3.8486599274986143`*^9, 
   3.848659928384469*^9}, 3.8486741142939067`*^9, 3.848684787201689*^9, 
   3.849022619496849*^9, {3.850902821205042*^9, 3.850902837723956*^9}, 
   3.8509029878712854`*^9, 3.85090321916955*^9, {3.8509937704193363`*^9, 
   3.850993809341392*^9}, {3.850993965648897*^9, 3.850993999914025*^9}, {
   3.850994038174735*^9, 3.8509941407523427`*^9}, {3.8509942607491646`*^9, 
   3.850994290319981*^9}, {3.8509944620549603`*^9, 3.850994466789509*^9}, 
   3.851095826882345*^9, {3.851143359376603*^9, 3.851143359782032*^9}, {
   3.851182483740631*^9, 3.8511825279852037`*^9}, 3.85118302820939*^9, {
   3.8515278529381886`*^9, 3.851527875353493*^9}, {3.851528157245708*^9, 
   3.851528157688083*^9}, 3.8519344932614317`*^9, 3.8520525408087683`*^9, 
   3.852062734334738*^9, 3.8531713561424866`*^9, 3.853171659946348*^9, {
   3.853171695462159*^9, 3.853171738037642*^9}, 3.8531728657630763`*^9, 
   3.853176162369136*^9, 3.8547223221008253`*^9, {3.8547223941277943`*^9, 
   3.854722458142065*^9}, {3.854722566981518*^9, 3.8547225977632027`*^9}, 
   3.8591312309027076`*^9},
 CellLabel->"In[63]:=",ExpressionUUID->"e563fd85-53bf-4f36-ab60-59aa6097cfae"],

Cell[BoxData[
 TemplateBox[{
  "Solve","ifun",
   "\"Inverse functions are being used by \
\\!\\(\\*RowBox[{\\\"Solve\\\"}]\\), so some solutions may not be found; use \
Reduce for complete solution information.\"",2,63,5,20328737816784139571,"3"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{
  3.8547224672205963`*^9, 3.8547226095648375`*^9, 3.85472334565857*^9, {
   3.854726090717066*^9, 3.8547261106507535`*^9}, 3.859131338820693*^9, 
   3.8591332853332853`*^9},
 CellLabel->
  "\:6b63\:5728\:8ba1\:7b97In[63]:=",ExpressionUUID->"5ff12710-8c86-4b24-912d-\
2c3b3fc4f255"],

Cell[BoxData[
 TemplateBox[{
  "Solve","ifun",
   "\"Inverse functions are being used by \
\\!\\(\\*RowBox[{\\\"Solve\\\"}]\\), so some solutions may not be found; use \
Reduce for complete solution information.\"",2,63,6,20328737816784139571,"3"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{
  3.8547224672205963`*^9, 3.8547226095648375`*^9, 3.85472334565857*^9, {
   3.854726090717066*^9, 3.8547261106507535`*^9}, 3.859131338820693*^9, 
   3.8591332956012936`*^9},
 CellLabel->
  "\:6b63\:5728\:8ba1\:7b97In[63]:=",ExpressionUUID->"d5390251-da91-49e1-bb2b-\
b0b7291d9c97"],

Cell[BoxData[
 TemplateBox[{
  "Solve","ifun",
   "\"Inverse functions are being used by \
\\!\\(\\*RowBox[{\\\"Solve\\\"}]\\), so some solutions may not be found; use \
Reduce for complete solution information.\"",2,63,7,20328737816784139571,"3"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{
  3.8547224672205963`*^9, 3.8547226095648375`*^9, 3.85472334565857*^9, {
   3.854726090717066*^9, 3.8547261106507535`*^9}, 3.859131338820693*^9, 
   3.859133306361808*^9},
 CellLabel->
  "\:6b63\:5728\:8ba1\:7b97In[63]:=",ExpressionUUID->"cfa36b6c-abbe-4f97-9034-\
12bc9fb0e7d6"],

Cell[BoxData[
 TemplateBox[{
  "General","stop",
   "\"Further output of \\!\\(\\*StyleBox[RowBox[{\\\"Solve\\\", \\\"::\\\", \
\\\"ifun\\\"}], \\\"MessageName\\\"]\\) will be suppressed during this \
calculation.\"",2,63,8,20328737816784139571,"3"},
  "MessageTemplate"]], "Message", "MSG",
 CellChangeTimes->{
  3.8547224672205963`*^9, 3.8547226095648375`*^9, 3.85472334565857*^9, {
   3.854726090717066*^9, 3.8547261106507535`*^9}, 3.859131338820693*^9, 
   3.8591333065417876`*^9},
 CellLabel->
  "\:6b63\:5728\:8ba1\:7b97In[63]:=",ExpressionUUID->"0bb5db71-df0b-4e06-8cd3-\
c01330fd6b45"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "0.3156737169010061`", ",", "0.3134165715523041`", ",", 
   "0.31519306947999526`", ",", "0.31517106129765443`", ",", 
   "0.314409322695464`", ",", "0.314967575875006`", ",", 
   "0.3149344354122682`", ",", "0.31400509040324887`", ",", 
   "0.3147694089757071`", ",", "0.3137992827991659`", ",", 
   "0.31463357606435316`", ",", "0.3144607554015778`", ",", 
   "0.30895141679627725`", ",", "0.3144562558424484`", ",", 
   "0.3144431493439488`", ",", "0.3130668727374227`", ",", 
   "0.3133283188127767`", ",", "0.3143087669894765`", ",", 
   "0.3143475974601178`", ",", "0.3141067971724973`", ",", 
   "0.31418916765639227`", ",", "0.3099012153080132`", ",", 
   "0.3143448237161485`", ",", "0.30765113078835016`", ",", 
   "0.3144938794194214`", ",", "0.3138060808051534`", ",", 
   "0.3144085353261315`", ",", "0.31253001686428356`", ",", 
   "0.31347771594527646`", ",", "0.3146998432133667`", ",", 
   "0.3147608976990948`", ",", "0.31392113161943913`", ",", 
   "0.3149097312656594`", ",", "0.311796471489994`", ",", 
   "0.3124879489368967`", ",", "0.3154343714970124`", ",", 
   "0.31574051092011285`", ",", "0.31600322863019537`", ",", 
   "0.3158773462702812`", ",", "0.31546965746018985`", ",", 
   "0.3166829593519225`", ",", "0.31616746292325626`", ",", 
   "0.31714707074940207`", ",", "0.31481285914063145`", ",", 
   "0.3146242128289543`", ",", "0.3178675331793054`", ",", 
   "0.3183235208949438`", ",", "0.318642359264438`", ",", 
   "0.31767194690024025`", ",", "0.3193231979966996`", ",", 
   "0.3196621882148509`", ",", "0.31966411713813203`", ",", 
   "0.3198419941082092`", ",", "0.32065905065918887`", ",", 
   "0.3209183856594497`", ",", "0.32132532632799654`", ",", 
   "0.32211344697826366`", ",", "0.32246470408344025`", ",", 
   "0.32233508420121704`", ",", "0.3237003120507307`", ",", 
   "0.32399388453679295`", ",", "0.32472779269347485`", ",", 
   "0.32536213812323217`", ",", "0.3259042769768762`", ",", 
   "0.3265654865801688`", ",", "0.3271240410443666`", ",", 
   "0.3273009810639258`", ",", "0.32854808960121235`", ",", 
   "0.3288134899673393`", ",", "0.32998761229583784`", ",", 
   "0.3306671357990084`", ",", "0.33150774276790573`", ",", 
   "0.3322827744348414`", ",", "0.3329705765686371`", ",", 
   "0.3339885583798334`", ",", "0.3348429743421436`", ",", 
   "0.33577539115351734`", ",", "0.3364618238261479`", ",", 
   "0.33023612336297226`", ",", "0.33530627431999377`", ",", 
   "0.33445109495228853`", ",", "0.33642576986647127`", ",", 
   "0.3411651334763218`", ",", "0.3429274300587536`", ",", 
   "0.3437734820118365`", ",", "0.34468157422836604`", ",", 
   "0.3455366733957714`", ",", "0.3474445987201048`", ",", 
   "0.3489964066024545`", ",", "0.35030872712515704`", ",", 
   "0.3514055650291899`", ",", "0.3525162626693523`", ",", 
   "0.3535674971874457`", ",", "0.3559977946952069`", ",", 
   "0.34434028736538486`", ",", "0.33980701810281005`", ",", 
   "0.35933075750127197`", ",", "0.36204161636654647`", ",", 
   "0.3640323153109106`", ",", "0.365772912134224`", ",", 
   "0.3674224036844457`", ",", "0.368128540259438`", ",", 
   "0.36974051143573317`", ",", "0.37308799317092806`", ",", 
   "0.37020857771177407`", ",", "0.36809828319835874`", ",", 
   "0.37920313608668405`", ",", "0.3708091886292262`", ",", 
   "0.37472090472139236`", ",", "0.37854741902622346`", ",", 
   "0.3881726606859609`", ",", "0.3906180457669098`", ",", 
   "0.38859971081193617`", ",", "0.39420164094460064`", ",", 
   "0.39778791819983106`", ",", "0.4006553088522992`", ",", 
   "0.40306706646198004`", ",", "0.4059609455979705`", ",", 
   "0.408828307096298`", ",", "0.41169964992527447`", ",", 
   "0.41458657563964213`", ",", "0.4173635802343569`", ",", 
   "0.4200284600612322`", ",", "0.42257887952110906`", ",", 
   "0.425012666374097`", ",", "0.4273275783907746`", ",", 
   "0.42952121084063305`", ",", "0.4315915609409878`", ",", 
   "0.43353612386207413`", ",", "0.43535299660709614`", ",", 
   "0.43703971438767353`", ",", "0.43787239607988127`", ",", 
   "0.4391957481668133`", ",", "0.4404193792864198`", ",", 
   "0.441505403114801`", ",", "0.44245179491225406`", ",", 
   "0.4432572206820887`", ",", "0.4439195835963576`", ",", 
   "0.44443739864300547`", ",", "0.444808816218972`", ",", 
   "0.4450326749011608`", ",", "0.4451075960874001`", ",", 
   "0.4436441838427571`", ",", "0.44336963614424035`", ",", 
   "0.444426264321325`", ",", "0.44389430285525316`", ",", 
   "0.44320793462572`", ",", "0.44236717704746853`", ",", 
   "0.44137181147203697`", ",", "0.44022123504470206`", ",", 
   "0.43891602666854057`", ",", "0.43745516833440296`", ",", 
   "0.43584014204034677`", ",", "0.4340706507028423`", ",", 
   "0.4321475314518297`", ",", "0.43007202071454226`", ",", 
   "0.4278448058067428`", ",", "0.4254674409596635`", ",", 
   "0.4210398237706146`", ",", "0.42026678358951153`", ",", 
   "0.4174473045151869`", ",", "0.41448429455515245`", ",", 
   "0.41137994207111683`", ",", "0.40813628044750516`", ",", 
   "0.4047558155424932`", ",", "0.4012412743530531`", ",", 
   "0.3975956322096496`", ",", "0.388085144137115`", ",", 
   "0.38992175745343066`", ",", "0.3858998168731299`", ",", 
   "0.381758933914155`", ",", "0.37750236375177637`", ",", 
   "0.3731335027212123`", ",", "0.3686559729815696`", ",", 
   "0.36407332550490207`", ",", "0.3598742898666846`", ",", 
   "0.3557080684405221`", ",", "0.35143632071056463`", ",", 
   "0.34706137610361676`", ",", "0.34258551817880223`", ",", 
   "0.3380115574977658`", ",", "0.33334199968542394`", ",", 
   "0.32857919358892507`", ",", "0.3237263514979701`", ",", 
   "0.3187860680004897`", ",", "0.3137610643513336`", ",", 
   "0.3072982803213341`", ",", "0.30346945196989`", ",", 
   "0.2969343973859087`", ",", "0.2916444767416868`", ",", 
   "0.2862868966998673`", ",", "0.280865041751934`", ",", 
   "0.27538264052140937`", ",", "0.26984280056344534`", ",", 
   "0.264249423248057`", ",", "0.2586061234041223`", ",", 
   "0.2529169880285462`", ",", "0.24718573431626115`", ",", 
   "0.24141640605031028`", ",", "0.23561339101725415`", ",", 
   "0.22978063714676444`", ",", "0.2239226292805813`", ",", 
   "0.21804361059085486`", ",", "0.21214820694316353`", ",", 
   "0.20624096959820368`", ",", "0.20032617060138463`", ",", 
   "0.19440874453327042`", ",", "0.1884933600305682`", ",", 
   "0.18258451039299722`", ",", "0.1764465067308859`", ",", 
   "0.17061458159281223`", ",", "0.16465550632678486`", ",", 
   "0.15891627425310126`", ",", "0.1533054806549968`", ",", 
   "0.1475357749471011`", ",", "0.14188782883871479`", ",", 
   "0.1366244251864688`", ",", "0.13189660403734166`", ",", 
   "0.12682598296188613`", ",", "0.12267856583644128`", ",", 
   "0.11891232392203127`", ",", "0.11486741793191806`", ",", 
   "0.11115282849247451`", ",", "0.10697849600984098`", ",", 
   "0.10441240254568569`", ",", "0.10111789642603193`", ",", 
   "0.09809045424476245`", ",", "0.09515374486842129`", ",", 
   "0.09233200943859993`", ",", "0.08926925197541366`", ",", 
   "0.08668307997984027`", ",", "0.084497686035774`", ",", 
   "0.082026604441869`", ",", "0.07969998739871201`", ",", 
   "0.0774816330219371`", ",", "0.0753403954508751`", ",", 
   "0.07324194934766363`", ",", "0.07124695095637464`", ",", 
   "0.0691903912275745`", ",", "0.06741774676242568`", ",", 
   "0.0655075518879761`", ",", "0.06383363809589115`", ",", 
   "0.062126841126799504`", ",", "0.060448700586683474`", ",", 
   "0.05882575549481739`", ",", "0.05728963191291848`", ",", 
   "0.055815834893566285`", ",", "0.054324112228570864`", ",", 
   "0.052846305126681516`", ",", "0.05138051223702453`", ",", 
   "0.04992713749731558`", ",", "0.04848659209697231`", ",", 
   "0.04756803089817319`", ",", "0.045863411665891245`", ",", 
   "0.04526217565119014`", ",", "0.04403973878037683`", ",", 
   "0.04290154149276899`", ",", "0.04182862219404207`", ",", 
   "0.040805731379261176`", ",", "0.03979091950957521`", ",", 
   "0.03878441517325436`", ",", "0.03780360961150106`", ",", 
   "0.036851260042458`", ",", "0.03590711863334111`", ",", 
   "0.034923896915531265`", ",", "0.034137450735823326`", ",", 
   "0.03327960789125188`", ",", "0.032324816671673674`", ",", 
   "0.03160150681690575`", ",", "0.03057729861330876`", ",", 
   "0.029717375336994454`", ",", "0.029040350049105698`", ",", 
   "0.028045058792903487`", ",", "0.0277951025596956`", ",", 
   "0.027152162319851143`", ",", "0.026433468768010004`", ",", 
   "0.025726068718093947`", ",", "0.02485117765435527`", ",", 
   "0.02385535937788495`", ",", "0.02288160758589337`", ",", 
   "0.02262526223416626`", ",", "0.022140186327070113`", ",", 
   "0.02157385451129503`", ",", "0.021487574423248994`", ",", 
   "0.020856698775475642`", ",", "0.02049686600399248`", ",", 
   "0.01984514551905792`", ",", "0.019460620769207605`", ",", 
   "0.018860729804428367`", ",", "0.018373441649413267`", ",", 
   "0.017660199667533728`", ",", "0.01747479387351453`", ",", 
   "0.017084499476742496`", ",", "0.016549690228091364`", ",", 
   "0.016223677897114357`", ",", "0.01578355752289266`", ",", 
   "0.015395920177688285`", ",", "0.01493487298175234`", ",", 
   "0.01457607046881018`", ",", "0.014187426920017378`", ",", 
   "0.01384401518101885`", ",", "0.013372977965775561`", ",", 
   "0.013122694673959562`", ",", "0.012566167884303495`", ",", 
   "0.012414775033179993`", ",", "0.01209249781349409`", ",", 
   "0.011602908905456283`", ",", "0.011449642733462946`", ",", 
   "0.010477560645353183`", ",", "0.010487082774610837`", ",", 
   "0.010365199221943002`", ",", "0.01019034497992895`", ",", 
   "0.009968002680816915`", ",", "0.0096982862458056`", ",", 
   "0.009341229491948912`", ",", "0.00915500542047532`", ",", 
   "0.008912931433479364`", ",", "0.008613944714705927`", ",", 
   "0.008418700655518918`", ",", "0.007894579849054117`", ",", 
   "0.007932009387068777`", ",", "0.007713041850837511`", ",", 
   "0.007486946332197341`", ",", "0.007239918217503989`", ",", 
   "0.006957731313006198`", ",", "0.006904339949378497`", ",", 
   "0.006835639800640403`", ",", "0.006798303100538448`", ",", 
   "0.006715328178636505`", ",", "0.006687546192713334`", ",", 
   "0.006633549837028224`", ",", "0.006589210600172765`", ",", 
   "0.006537558079202481`", ",", "0.0064861536371154695`", ",", 
   "0.00643499719409182`", ",", "0.006384088672236352`", ",", 
   "0.006328511159014744`", ",", "0.006283015072021632`", ",", 
   "0.0062328498377129`", ",", "0.006182932210567742`", ",", 
   "0.006123480219295554`", ",", "0.006084710671425919`", ",", 
   "0.006034664204763385`", ",", "0.005985736242424086`", ",", 
   "0.005937055508345874`", ",", "0.005888621928414391`", ",", 
   "0.005831314001067141`", ",", "0.005792495936236442`", ",", 
   "0.005744803378389697`", ",", "0.005686494454801878`", ",", 
   "0.005650158778561145`", ",", "0.005603206594135169`", ",", 
   "0.00555650105964358`", ",", "0.0055100421058896735`", ",", 
   "0.005463829663012077`", ",", "0.0054178636626188`", ",", 
   "0.005372144036854099`", ",", "0.005326670717734189`", ",", 
   "0.0052814436374769005`", ",", "0.005236462731174895`", ",", 
   "0.0051917279313282464`", ",", "0.005147239174331895`", ",", 
   "0.005102996393460416`", ",", "0.00505899952492171`", ",", 
   "0.005017119789178846`", ",", "0.0049717432706994046`", ",", 
   "0.00492848375897247`", ",", "0.004885469906480624`", ",", 
   "0.0048450291998756116`", ",", "0.004800178935997414`", ",", 
   "0.004757901695507077`", ",", "0.004715869871796828`", ",", 
   "0.004674083402784829`", ",", "0.004632542231578425`", ",", 
   "0.004591246298347139`", ",", "0.004550195545587274`", ",", 
   "0.004498122089728815`", ",", "0.004468829345594622`", ",", 
   "0.004428513786637145`", ",", "0.004388443176120367`", ",", 
   "0.004348617461642046`", ",", "0.004275139469654171`", ",", 
   "0.004269700493560677`", ",", "0.004233400283434307`", ",", 
   "0.004191762440645136`", ",", "0.004153160370577189`", ",", 
   "0.00411480286422974`", ",", "0.004076689871597652`", ",", 
   "0.004038821336686845`", ",", "0.004001197206469041`", ",", 
   "0.003963817427134495`", ",", "0.003926681948379522`", ",", 
   "0.003889790714783166`", ",", "0.00381115519079864`", ",", 
   "0.0037836072439162175`", ",", "0.0037805819663205`", ",", 
   "0.0037488428230828567`", ",", "0.0037024386734714576`", ",", 
   "0.0036375137342370355`", ",", "0.0036383865538668785`", ",", 
   "0.003603447392562838`", ",", "0.0035687520010956072`", ",", 
   "0.0035343003250764542`", ",", "0.0035000923095637303`", ",", 
   "0.0034661278991072893`", ",", "0.0034340054008841383`", ",", 
   "0.0033870164074486374`", ",", "0.0033656957351011737`", ",", 
   "0.0033327051751360897`", ",", "0.003289382313717227`", ",", 
   "0.0032712721991070295`", ",", "0.0032323121712710973`", ",", 
   "0.0032031754601171284`", ",", "0.003171400840356983`", ",", 
   "0.003118153432237428`", ",", "0.003108580494833216`", ",", 
   "0.0030642111316024597`", ",", "0.00304262260708999`", ",", 
   "0.0030161710947146044`", ",", "0.0029858532730015217`", ",", 
   "0.0029493812950720155`", ",", "0.0029239930897904374`", ",", 
   "0.0029036363817892975`", ",", "0.002867006164228811`", ",", 
   "0.0028365197739237185`", ",", "0.0028138904808163783`", ",", 
   "0.0027770155208175352`", ",", "0.0027520327246032547`", ",", 
   "0.0027279735550530793`", ",", "0.0026514190982466113`", ",", 
   "0.0026555120759612447`", ",", "0.0026409248667957357`", ",", 
   "0.002615501511552223`", ",", "0.0025868173814661303`", ",", 
   "0.0025601245863507327`", ",", "0.00253997442167198`", ",", 
   "0.002507459775995811`", ",", "0.0024814872611279193`", ",", 
   "0.0024675122793338645`", ",", "0.002443049917170603`", ",", 
   "0.00240500581581529`", ",", "0.002379989585483773`", ",", 
   "0.0023677710064428227`", ",", "0.002265965723079598`", ",", 
   "0.0023129122184730525`", ",", "0.002268707744816308`", ",", 
   "0.0022696458551248327`", ",", "0.002234874541200801`", ",", 
   "0.002187823915783744`", ",", "0.002191515352230942`", ",", 
   "0.0021842487494815313`", ",", "0.002142836264204277`", ",", 
   "0.002133278373221113`", ",", "0.00210272080467692`", ",", 
   "0.002076240527873506`", ",", "0.0020755876170202195`", ",", 
   "0.002029366675147878`", ",", "0.001955744330194717`", ",", 
   "0.0020164332030574547`", ",", "0.001996967873920544`", ",", 
   "0.00196253294026177`", ",", "0.0018995269223823618`", ",", 
   "0.0019399770333071557`", ",", "0.0018650014340654752`", ",", 
   "0.0019002621704299451`", ",", "0.0018759225154017717`", ",", 
   "0.0018648272258137688`", ",", "0.0018399167655977296`", ",", 
   "0.0017799382477321959`", ",", "0.0017726982471827795`", ",", 
   "0.0017540293050475133`", ",", "0.0017866758101750075`", ",", 
   "0.0017347313174572417`", ",", "0.0017356622505125322`", ",", 
   "0.0017371221762522663`", ",", "0.0016280421308423989`", ",", 
   "0.0016892426758212651`", ",", "0.0016343293273155782`", ",", 
   "0.0016925998672832475`", ",", "0.0016582938846617231`", ",", 
   "0.001669319253593475`", ",", "0.0016623234321491971`", ",", 
   "0.0016332463196722282`", ",", "0.0016415581144762794`", ",", 
   "0.0016219101698407208`", ",", "0.0016421379760680889`", ",", 
   "0.0016351990720681003`", ",", "0.001626504204079917`", ",", 
   "0.001620934969143398`", ",", "0.0016677744145548793`", ",", 
   "0.0017122871549188217`", ",", "0.001770540254752479`", ",", 
   "0.001884304962989282`", ",", "0.002094272980834278`", ",", 
   "0.0033382759503291348`", ",", "0.0019305194910158177`", ",", 
   "0.0012522458895546915`", ",", "0.0012478493744935344`", ",", 
   "0.001243737678522776`", ",", "0.0012400455547749692`", ",", 
   "0.001233292275895303`"}], "}"}]], "Output",
 CellChangeTimes->{3.854722488555436*^9, 3.8547228406890345`*^9, 
  3.854725495098921*^9, 3.854726097175305*^9, 3.8547271707726107`*^9, 
  3.859132533172101*^9, 3.8591383018424873`*^9},
 CellLabel->"Out[64]=",ExpressionUUID->"4020060b-d830-4419-9491-c446a653dd1e"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "0.01003505308253662`", ",", "0.010034874535946484`", ",", 
   "0.010034696422024926`", ",", "0.010034518813437181`", ",", 
   "0.010034341819175294`", ",", "0.010034165402949399`", ",", 
   "0.010033989383174922`", ",", "0.010033814014138265`", ",", 
   "0.010033639041603582`", ",", "0.010033464610891272`", ",", 
   "0.010033290831006214`", ",", "0.01003311741137288`", ",", 
   "0.01003294449731713`", ",", "0.010032772306829625`", ",", 
   "0.010032600476667214`", ",", "0.010032429224820378`", ",", 
   "0.0100322584423309`", ",", "0.010032088201882538`", ",", 
   "0.010031918467172381`", ",", "0.010031749201894976`", ",", 
   "0.010031580515069284`", ",", "0.010031412406724493`", ",", 
   "0.010031244731557884`", ",", "0.01003107759859184`", ",", 
   "0.010030910898850996`", ",", "0.010030744741361232`", ",", 
   "0.010030579089814128`", ",", "0.01003041401690668`", ",", 
   "0.010030249413657783`", ",", "0.010030085352764864`", ",", 
   "0.01002992176157905`", ",", "0.010029758603784989`", ",", 
   "0.010029595988420605`", ",", "0.01002943387917277`", ",", 
   "0.010029272276066025`", ",", "0.010029111360828239`", ",", 
   "0.010028950733738655`", ",", "0.010028790721887691`", ",", 
   "0.010028631034565444`", ",", "0.010028472071560381`", ",", 
   "0.010028313505814814`", ",", "0.010028155373691732`", ",", 
   "0.010027997784245795`", ",", "0.010027840701157304`", ",", 
   "0.010027684197141756`", ",", "0.010027528163187015`", ",", 
   "0.010027372562968045`", ",", "0.01002721725111486`", ",", 
   "0.010027062736514332`", ",", "0.010026908692065363`", ",", 
   "0.010026755190488054`", ",", "0.01002660208640825`", ",", 
   "0.010026449379844154`", ",", "0.010026297252568334`", ",", 
   "0.010026130618752868`", ",", "0.010025994554227004`", ",", 
   "0.010025843874150907`", ",", "0.010025693628047009`", ",", 
   "0.010025543961349257`", ",", "0.010025394874083606`", ",", 
   "0.01002524603908369`", ",", "0.010025097783557807`", ",", 
   "0.010024950143887433`", ",", "0.010024802792893094`", ",", 
   "0.010024655257948697`", ",", "0.010024509684130677`", ",", 
   "0.010024363962767072`", ",", "0.010024218602869304`", ",", 
   "0.010024073604453098`", ",", "0.010023929258409878`", ",", 
   "0.010023785419327873`", ",", "0.010023641941786876`", ",", 
   "0.010023499007607548`", ",", "0.01002335654409005`", ",", 
   "0.010023264658046847`", ",", "0.010023072956395599`", ",", 
   "0.010022931832256542`", ",", "0.01002279125158435`", ",", 
   "0.010022651141673689`", ",", "0.01002588975093014`", ",", 
   "0.010026878777071382`", ",", "0.010022233600342352`", ",", 
   "0.010022095373674076`", ",", "0.010021957581498772`", ",", 
   "0.010021820332935718`", ",", "0.01002168340980156`", ",", 
   "0.010031034070897112`", ",", "0.010031707057702934`", ",", 
   "0.010032444882461097`", ",", "0.010033270742961713`", ",", 
   "0.010029757368281544`", ",", "0.01003232230900104`", ",", 
   "0.010034902901676824`", ",", "0.010037501857509767`", ",", 
   "0.01004012166699696`", ",", "0.010042763511430653`", ",", 
   "0.01004542780880579`", ",", "0.010045256485381541`", ",", 
   "0.010047628956916587`", ",", "0.010050223388845564`", ",", 
   "0.010053042110859809`", ",", "0.010059057923451404`", ",", 
   "0.010061829146088492`", ",", "0.010062840681319782`", ",", 
   "0.010073657500743308`", ",", "0.010070449381466184`", ",", 
   "0.010074552336611281`", ",", "0.010078838335500835`", ",", 
   "0.010085364400780948`", ",", "0.010091120803424572`", ",", 
   "0.010097047187341598`", ",", "0.01010312092333348`", ",", 
   "0.010084199787055265`", ",", "0.010115605545642819`", ",", 
   "0.010121958692605501`", ",", "0.010128342975517833`", ",", 
   "0.010134723092858228`", ",", "0.010141063184933099`", ",", 
   "0.010147323243108889`", ",", "0.010153461704802882`", ",", 
   "0.010159434915997`", ",", "0.010165197561598473`", ",", 
   "0.01017070115684822`", ",", "0.010175895513508114`", ",", 
   "0.010179674954196407`", ",", "0.010187179971000122`", ",", 
   "0.010189104759998296`", ",", "0.010201080222089327`", ",", 
   "0.01019832818351123`", ",", "0.010197581702998313`", ",", 
   "0.010199082792717952`", ",", "0.010197151809499896`", ",", 
   "0.010226598435068245`", ",", "0.01021901034329164`", ",", 
   "0.01024553569994555`", ",", "0.010250994100893168`", ",", 
   "0.010255587655058912`", ",", "0.010259249208869548`", ",", 
   "0.010234597095459088`", ",", "0.01027761294488543`", ",", 
   "0.010282727030709891`", ",", "0.010264492104586883`", ",", 
   "0.010265684371527311`", ",", "0.01026565742455752`", ",", 
   "0.010264348440919195`", ",", "0.010261693390261131`", ",", 
   "0.01025763014960311`", ",", "0.010315880876069617`", ",", 
   "0.010330578790016335`", ",", "0.010334225799776924`", ",", 
   "0.010319717085060772`", ",", "0.01033746720729806`", ",", 
   "0.01026943264841573`", ",", "0.010226578548542573`", ",", 
   "0.010226990740557447`", ",", "0.010226721245981068`", ",", 
   "0.010225737933257963`", ",", "0.010224009012416423`", ",", 
   "0.010195191003674123`", ",", "0.010189256566932422`", ",", 
   "0.01018245172064119`", ",", "0.01017474434265895`", ",", 
   "0.010166102337166763`", ",", "0.010156493498085544`", ",", 
   "0.010145884688132496`", ",", "0.010134242593436777`", ",", 
   "0.010121533653141156`", ",", "0.010107724095226105`", ",", 
   "0.01011321568525724`", ",", "0.01011307167454476`", ",", 
   "0.010112530823207967`", ",", "0.01009560334563908`", ",", 
   "0.01009547619594942`", ",", "0.010094918985606627`", ",", 
   "0.010093909762335698`", ",", "0.010092425784012206`", ",", 
   "0.010090443688413506`", ",", "0.010087939734391569`", ",", 
   "0.01008488978949038`", ",", "0.010081268774384321`", ",", 
   "0.010077051226217727`", ",", "0.010072211427892655`", ",", 
   "0.010066722667867112`", ",", "0.01026563988591204`", ",", 
   "0.010313773376055576`", ",", "0.010285114923815815`", ",", 
   "0.010293448500835554`", ",", "0.010332959681118994`", ",", 
   "0.010326647864903532`", ",", "0.010321753280687209`", ",", 
   "0.010314055826185473`", ",", "0.010307223508699441`", ",", 
   "0.010301654410907702`", ",", "0.010289918516752676`", ",", 
   "0.01022672694813504`", ",", "0.010280060276280386`", ",", 
   "0.010269150851972619`", ",", "0.010234761474733452`", ",", 
   "0.010257214534090278`", ",", "0.01024784587204779`", ",", 
   "0.010242236731013548`", ",", "0.01023320539232989`", ",", 
   "0.010220649106688948`", ",", "0.01020446535778814`", ",", 
   "0.010184551038583843`", ",", "0.010193261321267487`", ",", 
   "0.010133116615758516`", ",", "0.010188091594680987`", ",", 
   "0.010180249256785743`", ",", "0.010172500870535249`", ",", 
   "0.010158148912892542`", ",", "0.010129040945426373`", ",", 
   "0.01012913385092454`", ",", "0.010124741784733618`", ",", 
   "0.010115697349528604`", ",", "0.010101833776440696`", ",", 
   "0.0100829863857352`", ",", "0.01005899295838602`", ",", 
   "0.010029695919962391`", ",", "0.010104115627846123`", ",", 
   "0.010007147387959934`", ",", "0.010007066170046843`", ",", 
   "0.010006985388526958`", ",", "0.010006904934146871`", ",", 
   "0.010006824806914477`", ",", "0.010006744970415728`", ",", 
   "0.01000666553392417`", ",", "0.010006586461026843`", ",", 
   "0.010006507715309596`", ",", "0.010006429333203212`", ",", 
   "0.010006351169022881`", ",", "0.010006273441315442`", ",", 
   "0.01000619607724326`", ",", "0.010006119003966401`", ",", 
   "0.01000604225791605`", ",", "0.010005965839099734`", ",", 
   "0.010005889783949971`", ",", "0.010005814019624465`", ",", 
   "0.01000573865540653`", ",", "0.010005663582027681`", ",", 
   "0.010005588835920577`", ",", "0.01000551438066617`", ",", 
   "0.010005440361977572`", ",", "0.01001540712173907`", ",", 
   "0.010012811094091417`", ",", "0.010009504095716716`", ",", 
   "0.010006723554312277`", ",", "0.010007824311802516`", ",", 
   "0.010027159531048678`", ",", "0.01002904631080102`", ",", 
   "0.010021903431455549`", ",", "0.010018084697333318`", ",", 
   "0.01001627252096253`", ",", "0.010004646630114534`", ",", 
   "0.010004576357276055`", ",", "0.010004506411814478`", ",", 
   "0.010006259746024202`", ",", "0.010013456114879369`", ",", 
   "0.010004298394036383`", ",", "0.01000422975814974`", ",", 
   "0.010004161231086143`", ",", "0.010004093213594996`", ",", 
   "0.010004025450664046`", ",", "0.010003957905866414`", ",", 
   "0.010003890724935708`", ",", "0.010003823835014181`", ",", 
   "0.01000375727254045`", ",", "0.01000369085535593`", ",", 
   "0.01000362480206311`", ",", "0.010003559185536205`", ",", 
   "0.010003493787181362`", ",", "0.010003428825606734`", ",", 
   "0.010008052322162715`", ",", "0.010008046896006212`", ",", 
   "0.01000452007307587`", ",", "0.010003171270489624`", ",", 
   "0.010003105578117415`", ",", "0.010003043492417362`", ",", 
   "0.010002979110888316`", ",", "0.01000291625925056`", ",", 
   "0.010002853662270416`", ",", "0.010002791392825255`", ",", 
   "0.010002729523794253`", ",", "0.010002667800127586`", ",", 
   "0.010002606440449792`", ",", "0.010002545262581585`", ",", 
   "0.010002486416333856`", ",", "0.010002425857171322`", ",", 
   "0.010002365516269256`", ",", "0.010002305502945815`", ",", 
   "0.010002245671453743`", ",", "0.010002186167550331`", ",", 
   "0.010002126918363977`", ",", "0.010002067851021337`", ",", 
   "0.01000200918416054`", ",", "0.01000195069915245`", ",", 
   "0.01000189250531899`", ",", "0.010004369105994004`", ",", 
   "0.010001776808996263`", ",", "0.01000171937939541`", ",", 
   "0.010001662204547703`", ",", "0.010001605248016894`", ",", 
   "0.010001548619129191`", ",", "0.010004333403986166`", ",", 
   "0.010001436016334206`", ",", "0.010001378766983704`", ",", 
   "0.010004024794891502`", ",", "0.010001268895415352`", ",", 
   "0.010001213685863175`", ",", "0.010001158694659725`", ",", 
   "0.010001103921808599`", ",", "0.010001049440198686`", ",", 
   "0.010000995140506208`", ",", "0.01000094105917717`", ",", 
   "0.01000088730554483`", ",", "0.010000833770284174`", ",", 
   "0.01000078038051145`", ",", "0.010003994009965465`", ",", 
   "0.010000674365435254`", ",", "0.010000621667251472`", ",", 
   "0.01000215362791148`", ",", "0.010000516962498021`", ",", 
   "0.010000464955935593`", ",", "0.01000041313132754`", ",", 
   "0.010000357844160562`", ",", "0.010000310173767242`", ",", 
   "0.010000258639921298`", ",", "0.010000204700392153`", ",", 
   "0.010000154040704567`", ",", "0.010002090224503699`", ",", 
   "0.010000056365186817`", ",", "0.010000003736639205`", ",", 
   "0.009999956283237625`", ",", "0.009999906387674663`", ",", 
   "0.010000000091992688`", ",", "0.010000000055546217`", ",", 
   "0.010002253323491568`", ",", "0.01000257124226996`", ",", 
   "0.010000982932145495`", ",", "0.010000000091992688`", ",", 
   "0.010000000091992688`", ",", "0.009999515196375654`", ",", 
   "0.010000000055546217`", ",", "0.009999419118355656`", ",", 
   "0.009999371443487112`", ",", "0.010000000091992688`", ",", 
   "0.01000000012843916`", ",", "0.010000000055546217`", ",", 
   "0.009999182053920265`", ",", "0.009999135179813188`", ",", 
   "0.01000000012843916`", ",", "0.010001526280876168`", ",", 
   "0.010001988158748407`", ",", "0.010001604045476278`", ",", 
   "0.010000000019099746`", ",", "0.010000000055546217`", ",", 
   "0.010000000055546217`", ",", "0.010000000055546217`", ",", 
   "0.010000000019099746`", ",", "0.01000000012843916`", ",", 
   "0.010000000091992688`", ",", "0.010000000055546217`", ",", 
   "0.01000146750151524`", ",", "0.010000000091992688`", ",", 
   "0.010000000055546217`", ",", "0.010000000091992688`", ",", 
   "0.009998359210100467`", ",", "0.010000000055546217`", ",", 
   "0.010000000055546217`", ",", "0.010000000019099746`", ",", 
   "0.009998181757983478`", ",", "0.010000000091992688`", ",", 
   "0.010000000091992688`", ",", "0.009999999982653274`", ",", 
   "0.009998005906681685`", ",", "0.010000000055546217`", ",", 
   "0.010000000055546217`", ",", "0.010000000055546217`", ",", 
   "0.00999783129173578`", ",", "0.009997787874477275`", ",", 
   "0.010000000019099746`", ",", "0.010000000055546217`", ",", 
   "0.009997657840300527`", ",", "0.009997614641019776`", ",", 
   "0.0100001571021606`", ",", "0.010000000091992688`", ",", 
   "0.010000000019099746`", ",", "0.010000000055546217`", ",", 
   "0.010000000019099746`", ",", "0.009997356024713046`", ",", 
   "0.009997313115778264`", ",", "0.010001171194343524`", ",", 
   "0.010000000091992688`", ",", "0.010000000055546217`", ",", 
   "0.009997141222999186`", ",", "0.010000000055546217`", ",", 
   "0.010000000055546217`", ",", "0.010000000091992688`", ",", 
   "0.010000410142839844`", ",", "0.010000000019099746`", ",", 
   "0.010000717223504445`", ",", "0.010000000019099746`", ",", 
   "0.010000000019099746`", ",", "0.009999973668265723`", ",", 
   "0.010000000091992688`", ",", "0.010000000055546217`", ",", 
   "0.010000000055546217`", ",", "0.009996580937746352`", ",", 
   "0.010000000091992688`", ",", "0.010000000055546217`", ",", 
   "0.010000536642556226`", ",", "0.01000043029689202`", ",", 
   "0.010000000091992688`", ",", "0.009999905257823386`", ",", 
   "0.01000000012843916`", ",", "0.009999627930143902`", ",", 
   "0.010000000091992688`", ",", "0.010000000055546217`", ",", 
   "0.010000000091992688`", ",", "0.010000580120769742`", ",", 
   "0.010000000055546217`", ",", "0.010000485510769043`", ",", 
   "0.009995918092283713`", ",", "0.009999344252672834`", ",", 
   "0.01000000012843916`", ",", "0.010000000055546217`", ",", 
   "0.010000000091992688`", ",", "0.010000000055546217`", ",", 
   "0.009999999763974438`", ",", "0.010000000055546217`", ",", 
   "0.010000000019099746`", ",", "0.01000000012843916`", ",", 
   "0.009999854122807775`", ",", "0.010000000091992688`", ",", 
   "0.010000082570018245`", ",", "0.010000000055546217`", ",", 
   "0.010000000055546217`", ",", "0.009995216295941805`", ",", 
   "0.010000000055546217`", ",", "0.010000000091992688`", ",", 
   "0.010000255250486478`", ",", "0.010000000164885635`", ",", 
   "0.010000267678408533`", ",", "0.010000000091992688`", ",", 
   "0.010000000091992688`", ",", "0.010000000055546217`", ",", 
   "0.010000000091992688`", ",", "0.010000035590793216`", ",", 
   "0.010000000091992688`", ",", "0.010000000055546217`", ",", 
   "0.010000000091992688`", ",", "0.010000000091992688`", ",", 
   "0.010000000055546217`", ",", "0.010000000055546217`", ",", 
   "0.010000000091992688`", ",", "0.010000000019099746`", ",", 
   "0.010000000091992688`", ",", "0.010000000091992688`", ",", 
   "0.010000000091992688`", ",", "0.01000000012843916`", ",", 
   "0.01000000012843916`", ",", "0.009996740444326125`", ",", 
   "0.010000000091992688`", ",", "0.010000000091992688`", ",", 
   "0.010000000055546217`", ",", "0.010000000055546217`", ",", 
   "0.010000000055546217`", ",", "0.009999892683663464`", ",", 
   "0.009999519242129384`", ",", "0.010000000055546217`", ",", 
   "0.010000000055546217`", ",", "0.010000000091992688`", ",", 
   "0.009999991126156607`", ",", "0.01000000012843916`", ",", 
   "0.009999795734537199`", ",", "0.010000000055546217`", ",", 
   "0.0099999993995097`", ",", "0.010000000164885635`", ",", 
   "0.010000000055546217`", ",", "0.009999401185633607`", ",", 
   "0.00999950947400047`", ",", "0.010000000055546217`", ",", 
   "0.010000000055546217`", ",", "0.010000000055546217`", ",", 
   "0.010000000055546217`", ",", "0.010000000091992688`", ",", 
   "0.010006236143457008`", ",", "0.010002114674945918`", ",", 
   "0.010001051808970507`", ",", "0.01000074029244014`", ",", 
   "0.010000000091992688`", ",", "0.010000165266038771`", ",", 
   "0.010000475889362901`", ",", "0.01000039403414687`", ",", 
   "0.010000291732407338`", ",", "0.010000000055546217`", ",", 
   "0.010000031472355675`", ",", "0.01000019897841152`", ",", 
   "0.010000001331172653`", ",", "0.010000011135267549`", ",", 
   "0.010000157430173693`"}], "}"}]], "Output",
 CellChangeTimes->{3.854722488555436*^9, 3.8547228406890345`*^9, 
  3.854725495098921*^9, 3.854726097175305*^9, 3.8547271707726107`*^9, 
  3.859132533172101*^9, 3.85913830187357*^9},
 CellLabel->"Out[65]=",ExpressionUUID->"a85d5458-6da0-41d1-878f-2183875cc304"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "0.003340374416263667`", ",", "0.0033282694313886843`", ",", 
   "0.0033334208670667367`", ",", "0.003371089537982305`", ",", 
   "0.00338594292771653`", ",", "0.0033700174091095673`", ",", 
   "0.0033533844351474463`", ",", "0.0033673520993446194`", ",", 
   "0.003383232530548623`", ",", "0.0033731889064393824`", ",", 
   "0.003392777232476049`", ",", "0.003397763507161764`", ",", 
   "0.0034149610740481363`", ",", "0.0034242382134517866`", ",", 
   "0.0034321395815634062`", ",", "0.003437555650853251`", ",", 
   "0.003441424953590507`", ",", "0.0034111746887545142`", ",", 
   "0.0034229349669933147`", ",", "0.003425317099061167`", ",", 
   "0.0034287280707330633`", ",", "0.0034359956782071925`", ",", 
   "0.0034469951882704786`", ",", "0.00346158974097399`", ",", 
   "0.00345543364337249`", ",", "0.0034804917033077003`", ",", 
   "0.003471805210789076`", ",", "0.0034818777683375164`", ",", 
   "0.003483845725729248`", ",", "0.0035318829529661826`", ",", 
   "0.0035380626107049326`", ",", "0.0035525564514985925`", ",", 
   "0.0035534018135577076`", ",", "0.0035428487342389833`", ",", 
   "0.003525378193065543`", ",", "0.003553949175918786`", ",", 
   "0.003559891712939838`", ",", "0.0035659560934971236`", ",", 
   "0.0035561152352267217`", ",", "0.0035634089074400234`", ",", 
   "0.003570800672387618`", ",", "0.003578288903626998`", ",", 
   "0.0035858717771496463`", ",", "0.00359354798387785`", ",", 
   "0.0036013157125541545`", ",", "0.0036091735643902583`", ",", 
   "0.003617119944424058`", ",", "0.0036251538683402316`", ",", 
   "0.00363327335102341`", ",", "0.003641477119547562`", ",", 
   "0.0036497640063927594`", ",", "0.0036581326496364936`", ",", 
   "0.003667320473207393`", ",", "0.0036744130492703917`", ",", 
   "0.0036816125401987186`", ",", "0.0036889176284107808`", ",", 
   "0.003696326899013003`", ",", "0.0037038393331693684`", ",", 
   "0.0037114532242333693`", ",", "0.003719167557111217`", ",", 
   "0.003740094884376097`", ",", "0.003748011658021722`", ",", 
   "0.0037732984869007736`", ",", "0.0037892049970766175`", ",", 
   "0.0037990409988450215`", ",", "0.0037786625935536835`", ",", 
   "0.0037875789291423197`", ",", "0.0037965732996079957`", ",", 
   "0.0037929209180483188`", ",", "0.0038015760288045643`", ",", 
   "0.0038103192803849244`", ",", "0.0038191498765804462`", ",", 
   "0.0038280672129307677`", ",", "0.0038370699248034146`", ",", 
   "0.0038682227411036786`", ",", "0.003877267857794895`", ",", 
   "0.0038864512551304805`", ",", "0.0038957667161921635`", ",", 
   "0.0039052070429457563`", ",", "0.003914765559867848`", ",", 
   "0.003924436388344679`", ",", "0.003934213141762399`", ",", 
   "0.003944089487944902`", ",", "0.003949644922386551`", ",", 
   "0.003960892433437499`", ",", "0.003969472264530124`", ",", 
   "0.003977886264078791`", ",", "0.003991544377621045`", ",", 
   "0.004001992363827518`", ",", "0.004012503160226092`", ",", 
   "0.004023076183924508`", ",", "0.004033711578081466`", ",", 
   "0.0040333443599457`", ",", "0.004042961063094615`", ",", 
   "0.004052688946163751`", ",", "0.004105411660482238`", ",", 
   "0.0041153514021623795`", ",", "0.0041254043102497105`", ",", 
   "0.004135569823863811`", ",", "0.004145847202597738`", ",", 
   "0.004156236844279053`", ",", "0.0041667380840745725`", ",", 
   "0.00417735121458257`", ",", "0.004188075646239226`", ",", 
   "0.004198911220620877`", ",", "0.004209857858697941`", ",", 
   "0.0042209160779205146`", ",", "0.004232085434218497`", ",", 
   "0.004243365737113142`", ",", "0.004254757560401364`", ",", 
   "0.004266260779599598`", ",", "0.004277875262854485`", ",", 
   "0.004289601465828885`", ",", "0.004255725242846669`", ",", 
   "0.004273032531119069`", ",", "0.004285234266012239`", ",", 
   "0.004297512117383485`", ",", "0.0043098676334111`", ",", 
   "0.004322300822645401`", ",", "0.004334812530149068`", ",", 
   "0.004347403000187262`", ",", "0.004360073389449807`", ",", 
   "0.0043728238367083975`", ",", "0.004385655388883846`", ",", 
   "0.004398568496213604`", ",", "0.004411564260083209`", ",", 
   "0.004424643352489387`", ",", "0.004437806432838001`", ",", 
   "0.004451054721184579`", ",", "0.004464388601887641`", ",", 
   "0.004477809589343536`", ",", "0.004491318038755397`", ",", 
   "0.004504915671350025`", ",", "0.004518602569248268`", ",", 
   "0.0045323808186465845`", ",", "0.004546250711327141`", ",", 
   "0.004560214048540894`", ",", "0.004574271727443046`", ",", 
   "0.004579260697640982`", ",", "0.004568273048241818`", ",", 
   "0.0045946421933276355`", ",", "0.004644227687613909`", ",", 
   "0.00466388481631794`", ",", "0.004684181007183625`", ",", 
   "0.0047051403689414`", ",", "0.004726788006562324`", ",", 
   "0.004703298916347503`", ",", "0.004772249649151968`", ",", 
   "0.004735486835725621`", ",", "0.004732678489314832`", ",", 
   "0.004755908221559519`", ",", "0.004770606382294711`", ",", 
   "0.004785574477403774`", ",", "0.0048008261524273435`", ",", 
   "0.004816374528854647`", ",", "0.0048181229158902016`", ",", 
   "0.00481127062331749`", ",", "0.004827656648199467`", ",", 
   "0.004893640554114123`", ",", "0.00485038178809664`", ",", 
   "0.0048661760530071116`", ",", "0.0048829397356300085`", ",", 
   "0.004905216039710008`", ",", "0.004917984844385319`", ",", 
   "0.004931707351408069`", ",", "0.004946487031068396`", ",", 
   "0.004962370403307628`", ",", "0.004979401948844712`", ",", 
   "0.004997628125403716`", ",", "0.005018153220784774`", ",", 
   "0.005032139482520993`", ",", "0.005047382496011713`", ",", 
   "0.005063934104608546`", ",", "0.0050818447066690265`", ",", 
   "0.005101164361899999`", ",", "0.005121942946656655`", ",", 
   "0.00514422895562194`", ",", "0.005168070448308802`", ",", 
   "0.005113705960852399`", ",", "0.005135608022853915`", ",", 
   "0.005183787008726099`", ",", "0.0052255853346728455`", ",", 
   "0.0051886429168217585`", ",", "0.005263613202203904`", ",", 
   "0.005293299525426151`", ",", "0.005245398934988111`", ",", 
   "0.005268276890490362`", ",", "0.005286797851587179`", ",", 
   "0.0053051215649032426`", ",", "0.005327299078711777`", ",", 
   "0.00540633365197075`", ",", "0.005419796599944626`", ",", 
   "0.005439515524543485`", ",", "0.0054614880491611565`", ",", 
   "0.0054310396547611476`", ",", "0.00545295062090326`", ",", 
   "0.005478533969843653`", ",", "0.00549639302596642`", ",", 
   "0.005518851165098061`", ",", "0.005575980456231613`", ",", 
   "0.005577978909117328`", ",", "0.0055866142792486756`", ",", 
   "0.005658051101212091`", ",", "0.005668928753054483`", ",", 
   "0.005691015487669945`", ",", "0.005716048166518455`", ",", 
   "0.005700823476869614`", ",", "0.005728400501176785`", ",", 
   "0.005747868228771409`", ",", "0.00577265311254714`", ",", 
   "0.005796849947112371`", ",", "0.00583350857766986`", ",", 
   "0.0058471958986976704`", ",", "0.005867008072454394`", ",", 
   "0.005893199730389389`", ",", "0.0059160851184161`", ",", 
   "0.005959805880149334`", ",", "0.005971515113068058`", ",", 
   "0.006013444237646191`", ",", "0.006022197707577882`", ",", 
   "0.006041419601788238`", ",", "0.006071666318282451`", ",", 
   "0.006093478934288222`", ",", "0.0061213593179388626`", ",", 
   "0.006146347257934844`", ",", "0.006167506175544813`", ",", 
   "0.006193079476816263`", ",", "0.006223184749244612`", ",", 
   "0.006253110870496713`", ",", "0.006286592774423472`", ",", 
   "0.006285189740718436`", ",", "0.006311671286613854`", ",", 
   "0.006335131629826353`", ",", "0.006362447698863261`", ",", 
   "0.006385394051234445`", ",", "0.006411243497393696`", ",", 
   "0.0064361798131902116`", ",", "0.00646031500928605`", ",", 
   "0.00649083008188227`", ",", "0.006509957881378031`", ",", 
   "0.006548245785152876`", ",", "0.006556338021084912`", ",", 
   "0.006585630715487232`", ",", "0.006610871560470416`", ",", 
   "0.0066367955903594`", ",", "0.006666270811739187`", ",", 
   "0.006683742441366415`", ",", "0.006715584277599271`", ",", 
   "0.006736946237228988`", ",", "0.006757901992497787`", ",", 
   "0.006781283514720504`", ",", "0.00680713616119467`", ",", 
   "0.006832964708496709`", ",", "0.006852485100918355`", ",", 
   "0.006889899267438215`", ",", "0.006914719511883447`", ",", 
   "0.006933381716725583`", ",", "0.006962122631533313`", ",", 
   "0.006984277248937778`", ",", "0.0070050120463289265`", ",", 
   "0.007028261600785895`", ",", "0.007054317763406229`", ",", 
   "0.007083221752232713`", ",", "0.0071150059135818185`", ",", 
   "0.007133897739763136`", ",", "0.007173060781003254`", ",", 
   "0.007183732691024058`", ",", "0.007203146787588931`", ",", 
   "0.00723271259710565`", ",", "0.0072835821118466745`", ",", 
   "0.007293612720961494`", ",", "0.0073057738718986555`", ",", 
   "0.007333393603165897`", ",", "0.007483310332147005`", ",", 
   "0.007393746772034449`", ",", "0.0074069252671709876`", ",", 
   "0.007431302861184286`", ",", "0.007453139339968719`", ",", 
   "0.007476717333465423`", ",", "0.0075023975071724916`", ",", 
   "0.007529876656685754`", ",", "0.007555189315449136`", ",", 
   "0.00758080876136455`", ",", "0.007607179584702466`", ",", 
   "0.007626047201911563`", ",", "0.0076537448463188254`", ",", 
   "0.007676419301817873`", ",", "0.007702151007270361`", ",", 
   "0.007725561427456901`", ",", "0.0077523668275424566`", ",", 
   "0.007774684660450221`", ",", "0.007798397140010285`", ",", 
   "0.007821987599653257`", ",", "0.007852251661184705`", ",", 
   "0.007870212968103146`", ",", "0.007894940981705097`", ",", 
   "0.007919471900621112`", ",", "0.007947620898908636`", ",", 
   "0.007969288366491563`", ",", "0.007991329453535043`", ",", 
   "0.008018619138757966`", ",", "0.008039234484437564`", ",", 
   "0.008062513465410884`", ",", "0.008085779290506462`", ",", 
   "0.008115845738878753`", ",", "0.008133756982435387`", ",", 
   "0.008156520269444639`", ",", "0.008178957119522656`", ",", 
   "0.008201793148138903`", ",", "0.00822845691917106`", ",", 
   "0.008248196029303153`", ",", "0.00827128396352324`", ",", 
   "0.008294379342995905`", ",", "0.008315898682648202`", ",", 
   "0.00833892421326928`", ",", "0.008363720909623888`", ",", 
   "0.00838365113969981`", ",", "0.00840538698565146`", ",", 
   "0.008428210289096443`", ",", "0.008451705512245075`", ",", 
   "0.00847093616613129`", ",", "0.008493244890079299`", ",", 
   "0.00851471116330252`", ",", "0.008538571761692293`", ",", 
   "0.008557571181137959`", ",", "0.008579557700457076`", ",", 
   "0.008600787153379736`", ",", "0.008622333991906527`", ",", 
   "0.00864048943147472`", ",", "0.008663522978717678`", ",", 
   "0.008684138327689364`", ",", "0.008702579950251966`", ",", 
   "0.008726022452709323`", ",", "0.008743054098852988`", ",", 
   "0.008762205109042975`", ",", "0.008782353068311754`", ",", 
   "0.00880111772115167`", ",", "0.008822493271280794`", ",", 
   "0.008840714023708236`", ",", "0.008861010959748275`", ",", 
   "0.008877668484011614`", ",", "0.008898080641752152`", ",", 
   "0.008915346603118011`", ",", "0.008935153613272288`", ",", 
   "0.008953857941267018`", ",", "0.008969820700479067`", ",", 
   "0.00898912292147573`", ",", "0.009005542266448225`", ",", 
   "0.009023012947658933`", ",", "0.00904159316505489`", ",", 
   "0.009057296999857556`", ",", "0.009076021149389803`", ",", 
   "0.009092908354470176`", ",", "0.009107854186175967`", ",", 
   "0.009126482598629642`", ",", "0.009140681571222112`", ",", 
   "0.009158541737893126`", ",", "0.009172569379255016`", ",", 
   "0.009188636612628327`", ",", "0.009204781321551782`", ",", 
   "0.009221763340654084`", ",", "0.009236055087192396`", ",", 
   "0.009249880426197805`", ",", "0.009267174587011645`", ",", 
   "0.00928318102058045`", ",", "0.00929621947031477`", ",", 
   "0.009308248893326864`", ",", "0.00933307226514978`", ",", 
   "0.009339537516062922`", ",", "0.009350430252382264`", ",", 
   "0.009369354210633575`", ",", "0.00939061761175348`", ",", 
   "0.009393367514222163`", ",", "0.009403599263250613`", ",", 
   "0.009419302831107002`", ",", "0.009428809139203574`", ",", 
   "0.009441723843534035`", ",", "0.009455335652493374`", ",", 
   "0.009467103571892356`", ",", "0.009477999670632281`", ",", 
   "0.009493032897215656`", ",", "0.009501406488673913`", ",", 
   "0.00951370786093494`", ",", "0.009524819649356791`", ",", 
   "0.00953599450938361`", ",", "0.009547394308830616`", ",", 
   "0.009557455483777889`", ",", "0.009568101735986812`", ",", 
   "0.009578108929379785`", ",", "0.009588727651174798`", ",", 
   "0.009598573078115232`", ",", "0.009607842418942138`", ",", 
   "0.009618700757132455`", ",", "0.009627012176570245`", ",", 
   "0.009637164764251386`", ",", "0.009645634390374415`", ",", 
   "0.009654550471715765`", ",", "0.009664482745573529`", ",", 
   "0.009673444035576424`", ",", "0.00968127478356189`", ",", 
   "0.009689774385594733`", ",", "0.009698555489922668`", ",", 
   "0.009705616245827248`", ",", "0.009713597145370331`", ",", 
   "0.009721116012579594`", ",", "0.009729011484691887`", ",", 
   "0.009736657959319817`", ",", "0.009743519338152288`", ",", 
   "0.009751085513653186`", ",", "0.009757927932885756`", ",", 
   "0.009765300663759725`", ",", "0.009772167069193805`", ",", 
   "0.009780813277841083`", ",", "0.009784854087884655`", ",", 
   "0.00979193178460133`", ",", "0.00979898487948377`", ",", 
   "0.009803237254388439`", ",", "0.009809397125908694`", ",", 
   "0.009815438358057975`", ",", "0.009820233833127476`", ",", 
   "0.009825759354710585`", ",", "0.00983118545737859`", ",", 
   "0.00983680801506526`", ",", "0.009841755688438036`", ",", 
   "0.009846471720081967`", ",", "0.009851453903914493`", ",", 
   "0.009856309657522358`", ",", "0.009861118187993262`", ",", 
   "0.009865981375834078`", ",", "0.009869849248409331`", ",", 
   "0.009874196454810748`", ",", "0.00987842409061667`", ",", 
   "0.009883067271574007`", ",", "0.009886565718527553`", ",", 
   "0.00989048170076957`", ",", "0.009894378636289712`", ",", 
   "0.009898054802706112`", ",", "0.009902191683496346`", ",", 
   "0.009905235221255516`", ",", "0.009909806259614141`", ",", 
   "0.009911743802612814`", ",", "0.009914964235092543`", ",", 
   "0.009919198745991458`", ",", "0.00992109661633727`", ",", 
   "0.009924747866705027`", ",", "0.009926958554546905`", ",", 
   "0.009930094444176375`", ",", "0.009932403421327982`", ",", 
   "0.009935589351921825`", ",", "0.009937551024999878`", ",", 
   "0.009940095795974583`", ",", "0.009942422942042641`", ",", 
   "0.009944670344824635`", ",", "0.009946979639209796`", ",", 
   "0.00994934656941998`", ",", "0.0099514697182665`", ",", 
   "0.009953264142795936`", ",", "0.00995594741233922`", ",", 
   "0.009957506596878352`", ",", "0.009959008886114652`", ",", 
   "0.009960669898658642`", ",", "0.009962964363637677`", ",", 
   "0.009963946504157955`", ",", "0.009965730051183695`", ",", 
   "0.009967299955055095`", ",", "0.009968530107102646`", ",", 
   "0.00997000558473215`", ",", "0.009971772550998695`", ",", 
   "0.009973120191450701`", ",", "0.009974143244499743`", ",", 
   "0.009975640945806783`", ",", "0.009976292242352976`", ",", 
   "0.009978133376422393`", ",", "0.009978861502501934`", ",", 
   "0.00997948004833704`", ",", "0.009982040966504544`", ",", 
   "0.009981775776004613`", ",", "0.009982661724978973`", ",", 
   "0.009983096108816626`", ",", "0.009984452989339285`", ",", 
   "0.009984648790711518`", ",", "0.009985561202212759`", ",", 
   "0.009985879433427377`", ",", "0.009986133383347648`", ",", 
   "0.009986004584317342`", ",", "0.009982418822498772`", ",", 
   "0.009989475263361164`", ",", "0.009990110590710205`", ",", 
   "0.009990721873636687`", ",", "0.00999130528634473`", ",", 
   "0.00999177267044691`", ",", "0.009992173429523582`", ",", 
   "0.009992590512667605`", ",", "0.009993021255384843`", ",", 
   "0.009993263644858454`", ",", "0.009993899132530267`", ",", 
   "0.009994326245066373`", ",", "0.009994562914150162`", ",", 
   "0.009994801546763148`", ",", "0.009994889902105912`", ",", 
   "0.009995016799869798`"}], "}"}]], "Output",
 CellChangeTimes->{3.854722488555436*^9, 3.8547228406890345`*^9, 
  3.854725495098921*^9, 3.854726097175305*^9, 3.8547271707726107`*^9, 
  3.859132533172101*^9, 3.859138301902653*^9},
 CellLabel->"Out[66]=",ExpressionUUID->"ef7c37b5-e63e-4120-b195-f46c3992a35c"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "0.077106`", ",", "0.0769648298`", ",", "0.0768236596`", ",", 
   "0.0766824894`", ",", "0.0765413192`", ",", "0.076400149`", ",", 
   "0.07625897879999999`", ",", "0.07611780859999999`", ",", 
   "0.07597663839999999`", ",", "0.07583546819999999`", ",", "0.075694298`", 
   ",", "0.0755531278`", ",", "0.0754119576`", ",", "0.0752707874`", ",", 
   "0.0751296172`", ",", "0.074988447`", ",", "0.0748472768`", ",", 
   "0.07470610659999999`", ",", "0.07456493639999999`", ",", 
   "0.07442376619999999`", ",", "0.07428259599999999`", ",", "0.0741414258`", 
   ",", "0.0740002556`", ",", "0.0738590854`", ",", "0.0737179152`", ",", 
   "0.073576745`", ",", "0.0734355748`", ",", "0.07329440459999999`", ",", 
   "0.07315323439999999`", ",", "0.07301206419999999`", ",", 
   "0.07287089399999999`", ",", "0.07272972379999999`", ",", "0.0725885536`", 
   ",", "0.0724473834`", ",", "0.0723062132`", ",", "0.072165043`", ",", 
   "0.0720238728`", ",", "0.07188270259999999`", ",", "0.07174153239999999`", 
   ",", "0.07160036219999999`", ",", "0.07145919199999999`", ",", 
   "0.07131802179999999`", ",", "0.0711768516`", ",", "0.0710356814`", ",", 
   "0.0708945112`", ",", "0.070753341`", ",", "0.0706121708`", ",", 
   "0.0704710006`", ",", "0.07032983039999999`", ",", "0.07018866019999999`", 
   ",", "0.07004748999999999`", ",", "0.06990631979999999`", ",", 
   "0.06976514959999999`", ",", "0.0696239794`", ",", "0.0694828092`", ",", 
   "0.069341639`", ",", "0.0692004688`", ",", "0.0690592986`", ",", 
   "0.0689181284`", ",", "0.06877695819999999`", ",", "0.06863578799999999`", 
   ",", "0.06849461779999999`", ",", "0.06835344759999999`", ",", 
   "0.0682122774`", ",", "0.0680711072`", ",", "0.067929937`", ",", 
   "0.0677887668`", ",", "0.0676475966`", ",", "0.0675064264`", ",", 
   "0.0673652562`", ",", "0.06722408599999999`", ",", "0.06708291579999999`", 
   ",", "0.06694174559999999`", ",", "0.06680057539999999`", ",", 
   "0.0666594052`", ",", "0.066518235`", ",", "0.0663770648`", ",", 
   "0.0662358946`", ",", "0.0660947244`", ",", "0.0659535542`", ",", 
   "0.065812384`", ",", "0.06567121379999999`", ",", "0.06553004359999999`", 
   ",", "0.06538887339999999`", ",", "0.06524770319999999`", ",", 
   "0.065106533`", ",", "0.0649653628`", ",", "0.0648241926`", ",", 
   "0.0646830224`", ",", "0.0645418522`", ",", "0.06440068199999999`", ",", 
   "0.0642595118`", ",", "0.06411834159999999`", ",", "0.06397717139999999`", 
   ",", "0.06383600119999999`", ",", "0.063694831`", ",", "0.0635536608`", 
   ",", "0.0634124906`", ",", "0.0632713204`", ",", "0.0631301502`", ",", 
   "0.06298898`", ",", "0.06284780979999999`", ",", "0.0627066396`", ",", 
   "0.06256546939999999`", ",", "0.06242429919999999`", ",", 
   "0.06228312899999999`", ",", "0.062141958799999994`", ",", 
   "0.062000788599999995`", ",", "0.0618596184`", ",", "0.0617184482`", ",", 
   "0.061577278`", ",", "0.061436107799999994`", ",", "0.061294937599999995`",
    ",", "0.061153767399999996`", ",", "0.06101259719999999`", ",", 
   "0.06087142699999999`", ",", "0.06073025679999999`", ",", 
   "0.060589086599999994`", ",", "0.060447916399999996`", ",", 
   "0.0603067462`", ",", "0.060165576`", ",", "0.0600244058`", ",", 
   "0.059883235599999994`", ",", "0.059742065399999995`", ",", 
   "0.0596008952`", ",", "0.05945972499999999`", ",", "0.05931855479999999`", 
   ",", "0.059177384599999994`", ",", "0.059036214399999995`", ",", 
   "0.058895044199999996`", ",", "0.058753874`", ",", "0.0586127038`", ",", 
   "0.05847153359999999`", ",", "0.058330363399999995`", ",", 
   "0.058189193199999996`", ",", "0.05804802299999999`", ",", 
   "0.05790685279999999`", ",", "0.05776568259999999`", ",", 
   "0.057624512399999994`", ",", "0.057483342199999996`", ",", "0.057342172`",
    ",", "0.0572010018`", ",", "0.0570598316`", ",", "0.056918661399999994`", 
   ",", "0.056777491199999995`", ",", "0.056636320999999996`", ",", 
   "0.05649515079999999`", ",", "0.05635398059999999`", ",", 
   "0.05621281039999999`", ",", "0.056071640199999995`", ",", 
   "0.055930469999999996`", ",", "0.0557892998`", ",", "0.0556481296`", ",", 
   "0.0555069594`", ",", "0.055365789199999994`", ",", 
   "0.055224618999999996`", ",", "0.0550834488`", ",", "0.05494227859999999`",
    ",", "0.05480110839999999`", ",", "0.054659938199999994`", ",", 
   "0.054518767999999995`", ",", "0.0543775978`", ",", "0.0542364276`", ",", 
   "0.0540952574`", ",", "0.053954087199999994`", ",", 
   "0.053812916999999995`", ",", "0.053671746799999996`", ",", 
   "0.05353057659999999`", ",", "0.05338940639999999`", ",", 
   "0.05324823619999999`", ",", "0.053107065999999994`", ",", 
   "0.052965895799999996`", ",", "0.0528247256`", ",", "0.0526835554`", ",", 
   "0.0525423852`", ",", "0.052401214999999994`", ",", 
   "0.052260044799999995`", ",", "0.0521188746`", ",", "0.05197770439999999`",
    ",", "0.05183653419999999`", ",", "0.051695363999999994`", ",", 
   "0.051554193799999995`", ",", "0.051413023599999996`", ",", 
   "0.0512718534`", ",", "0.0511306832`", ",", "0.050989513`", ",", 
   "0.050848342799999995`", ",", "0.050707172599999996`", ",", 
   "0.0505660024`", ",", "0.05042483219999999`", ",", "0.05028366199999999`", 
   ",", "0.050142491799999994`", ",", "0.050001321599999995`", ",", 
   "0.0498601514`", ",", "0.0497189812`", ",", "0.049577811`", ",", 
   "0.049436640799999994`", ",", "0.049295470599999995`", ",", 
   "0.049154300399999996`", ",", "0.04901313019999999`", ",", 
   "0.04887195999999999`", ",", "0.04873078979999999`", ",", 
   "0.048589619599999995`", ",", "0.048448449399999996`", ",", 
   "0.0483072792`", ",", "0.048166109`", ",", "0.0480249388`", ",", 
   "0.047883768599999994`", ",", "0.047742598399999996`", ",", 
   "0.0476014282`", ",", "0.04746025799999999`", ",", "0.04731908779999999`", 
   ",", "0.047177917599999994`", ",", "0.047036747399999995`", ",", 
   "0.046895577199999997`", ",", "0.046754407`", ",", "0.0466132368`", ",", 
   "0.0464720666`", ",", "0.046330896399999995`", ",", 
   "0.046189726199999996`", ",", "0.046048556`", ",", "0.04590738579999999`", 
   ",", "0.04576621559999999`", ",", "0.045625045399999994`", ",", 
   "0.045483875199999996`", ",", "0.045342705`", ",", "0.0452015348`", ",", 
   "0.04506036459999999`", ",", "0.044919194399999994`", ",", 
   "0.044778024199999995`", ",", "0.044636854`", ",", "0.0444956838`", ",", 
   "0.04435451359999999`", ",", "0.044213343399999994`", ",", 
   "0.044072173199999995`", ",", "0.043931002999999996`", ",", 
   "0.0437898328`", ",", "0.0436486626`", ",", "0.04350749239999999`", ",", 
   "0.043366322199999995`", ",", "0.043225151999999996`", ",", 
   "0.0430839818`", ",", "0.0429428116`", ",", "0.04280164139999999`", ",", 
   "0.042660471199999994`", ",", "0.042519300999999995`", ",", 
   "0.0423781308`", ",", "0.0422369606`", ",", "0.0420957904`", ",", 
   "0.041954620199999994`", ",", "0.041813449999999995`", ",", 
   "0.041672279799999996`", ",", "0.0415311096`", ",", "0.0413899394`", ",", 
   "0.04124876919999999`", ",", "0.041107598999999995`", ",", 
   "0.040966428799999996`", ",", "0.0408252586`", ",", "0.0406840884`", ",", 
   "0.04054291819999999`", ",", "0.040401747999999994`", ",", 
   "0.040260577799999996`", ",", "0.0401194076`", ",", "0.0399782374`", ",", 
   "0.03983706719999999`", ",", "0.039695896999999994`", ",", 
   "0.039554726799999995`", ",", "0.039413556599999996`", ",", 
   "0.0392723864`", ",", "0.0391312162`", ",", "0.038990045999999993`", ",", 
   "0.038848875799999995`", ",", "0.038707705599999996`", ",", 
   "0.0385665354`", ",", "0.0384253652`", ",", "0.03828419499999999`", ",", 
   "0.038143024799999994`", ",", "0.038001854599999996`", ",", 
   "0.0378606844`", ",", "0.0377195142`", ",", "0.037578344`", ",", 
   "0.037437173799999994`", ",", "0.037296003599999995`", ",", 
   "0.0371548334`", ",", "0.0370136632`", ",", "0.036872493`", ",", 
   "0.036731322799999994`", ",", "0.036590152599999995`", ",", 
   "0.036448982399999996`", ",", "0.0363078122`", ",", "0.036166642`", ",", 
   "0.03602547179999999`", ",", "0.035884301599999995`", ",", 
   "0.035743131399999996`", ",", "0.0356019612`", ",", "0.035460791`", ",", 
   "0.03531962079999999`", ",", "0.035178450599999994`", ",", 
   "0.035037280399999995`", ",", "0.0348961102`", ",", "0.03475494`", ",", 
   "0.0346137698`", ",", "0.034472599599999994`", ",", 
   "0.034331429399999995`", ",", "0.034190259199999996`", ",", "0.034049089`",
    ",", "0.0339079188`", ",", "0.03376674859999999`", ",", 
   "0.033625578399999995`", ",", "0.033484408199999996`", ",", "0.033343238`",
    ",", "0.0332020678`", ",", "0.0330608976`", ",", "0.032919727399999994`", 
   ",", "0.032778557199999996`", ",", "0.032637387`", ",", "0.0324962168`", 
   ",", "0.0323550466`", ",", "0.032213876399999994`", ",", 
   "0.032072706199999995`", ",", "0.031931535999999996`", ",", 
   "0.0317903658`", ",", "0.0316491956`", ",", "0.03150802539999999`", ",", 
   "0.031366855199999995`", ",", "0.031225684999999996`", ",", 
   "0.031084514799999997`", ",", "0.0309433446`", ",", 
   "0.030802174399999993`", ",", "0.030661004199999994`", ",", 
   "0.030519833999999996`", ",", "0.030378663799999997`", ",", 
   "0.0302374936`", ",", "0.0300963234`", ",", "0.029955153199999994`", ",", 
   "0.029813982999999995`", ",", "0.029672812799999997`", ",", 
   "0.029531642599999998`", ",", "0.0293904724`", ",", 
   "0.029249302199999994`", ",", "0.029108131999999995`", ",", 
   "0.028966961799999996`", ",", "0.028825791599999998`", ",", 
   "0.0286846214`", ",", "0.0285434512`", ",", "0.028402280999999995`", ",", 
   "0.028261110799999996`", ",", "0.028119940599999997`", ",", 
   "0.0279787704`", ",", "0.0278376002`", ",", "0.027696429999999994`", ",", 
   "0.027555259799999995`", ",", "0.027414089599999997`", ",", 
   "0.027272919399999998`", ",", "0.0271317492`", ",", 
   "0.026990578999999994`", ",", "0.026849408799999995`", ",", 
   "0.026708238599999996`", ",", "0.026567068399999998`", ",", 
   "0.0264258982`", ",", "0.026284727999999993`", ",", 
   "0.026143557799999995`", ",", "0.026002387599999996`", ",", 
   "0.025861217399999997`", ",", "0.0257200472`", ",", "0.025578877`", ",", 
   "0.025437706799999994`", ",", "0.025296536599999996`", ",", 
   "0.025155366399999997`", ",", "0.025014196199999998`", ",", "0.024873026`",
    ",", "0.024731855799999994`", ",", "0.024590685599999995`", ",", 
   "0.024449515399999996`", ",", "0.024308345199999998`", ",", "0.024167175`",
    ",", "0.0240260048`", ",", "0.023884834599999995`", ",", 
   "0.023743664399999996`", ",", "0.023602494199999997`", ",", "0.023461324`",
    ",", "0.0233201538`", ",", "0.023178983599999994`", ",", 
   "0.023037813399999996`", ",", "0.022896643199999997`", ",", "0.022755473`",
    ",", "0.0226143028`", ",", "0.022473132599999994`", ",", 
   "0.022331962399999995`", ",", "0.022190792199999997`", ",", 
   "0.022049621999999998`", ",", "0.0219084518`", ",", 
   "0.021767281599999994`", ",", "0.021626111399999995`", ",", 
   "0.021484941199999996`", ",", "0.021343770999999997`", ",", 
   "0.0212026008`", ",", "0.0210614306`", ",", "0.020920260399999994`", ",", 
   "0.020779090199999996`", ",", "0.020637919999999997`", ",", 
   "0.0204967498`", ",", "0.0203555796`", ",", "0.020214409399999994`", ",", 
   "0.020073239199999995`", ",", "0.019932068999999997`", ",", 
   "0.019790898799999998`", ",", "0.0196497286`", ",", "0.0195085584`", ",", 
   "0.019367388199999995`", ",", "0.019226217999999996`", ",", 
   "0.019085047799999998`", ",", "0.0189438776`", ",", "0.0188027074`", ",", 
   "0.018661537199999995`", ",", "0.018520366999999996`", ",", 
   "0.018379196799999997`", ",", "0.0182380266`", ",", "0.0180968564`", ",", 
   "0.017955686199999994`", ",", "0.017814515999999996`", ",", 
   "0.017673345799999997`", ",", "0.017532175599999998`", ",", 
   "0.0173910054`", ",", "0.017249835199999994`", ",", 
   "0.017108664999999995`", ",", "0.016967494799999996`", ",", 
   "0.016826324599999998`", ",", "0.0166851544`", ",", "0.0165439842`", ",", 
   "0.016402813999999995`", ",", "0.016261643799999996`", ",", 
   "0.016120473599999997`", ",", "0.0159793034`", ",", "0.0158381332`", ",", 
   "0.015696962999999994`", ",", "0.015555792799999996`", ",", 
   "0.015414622599999997`", ",", "0.015273452399999998`", ",", 
   "0.0151322822`", ",", "0.014991112000000001`", ",", 
   "0.014849941799999995`", ",", "0.014708771599999997`", ",", 
   "0.014567601399999991`", ",", "0.014426431199999992`", ",", 
   "0.014285260999999994`", ",", "0.014144090799999995`", ",", 
   "0.014002920599999996`", ",", "0.013861750399999997`", ",", 
   "0.013720580199999999`", ",", "0.01357941`", ",", "0.013438239800000001`", 
   ",", "0.013297069600000003`", ",", "0.013155899400000004`", ",", 
   "0.013014729199999991`", ",", "0.012873558999999993`", ",", 
   "0.012732388799999994`", ",", "0.012591218599999995`", ",", 
   "0.012450048399999997`", ",", "0.012308878199999998`", ",", "0.012167708`",
    ",", "0.0120265378`", ",", "0.011885367600000002`", ",", 
   "0.011744197400000003`", ",", "0.01160302719999999`", ",", 
   "0.011461856999999992`", ",", "0.011320686799999993`", ",", 
   "0.011179516599999995`", ",", "0.011038346399999996`", ",", 
   "0.010897176199999997`", ",", "0.010756005999999999`", ",", 
   "0.0106148358`", ",", "0.010473665600000001`", ",", 
   "0.010332495400000002`", ",", "0.010191325200000004`", ",", 
   "0.010050154999999991`", ",", "0.009908984799999992`", ",", 
   "0.009767814599999994`", ",", "0.009626644399999995`", ",", 
   "0.009485474199999996`", ",", "0.009344303999999998`", ",", 
   "0.009203133799999999`", ",", "0.0090619636`", ",", 
   "0.008920793400000002`", ",", "0.008779623200000003`", ",", 
   "0.008638453000000004`", ",", "0.008497282799999992`", ",", 
   "0.008356112599999993`", ",", "0.008214942399999994`", ",", 
   "0.008073772199999996`", ",", "0.007932601999999997`", ",", 
   "0.007791431799999998`", ",", "0.0076502615999999996`", ",", 
   "0.007509091400000001`", ",", "0.007367921200000002`", ",", 
   "0.0072267510000000035`", ",", "0.007085580800000005`", ",", 
   "0.006944410599999992`", ",", "0.0068032403999999935`", ",", 
   "0.006662070199999995`", ",", "0.0065209`"}], "}"}]], "Output",
 CellChangeTimes->{3.854722488555436*^9, 3.8547228406890345`*^9, 
  3.854725495098921*^9, 3.854726097175305*^9, 3.8547271707726107`*^9, 
  3.859132533172101*^9, 3.859138301931734*^9},
 CellLabel->"Out[67]=",ExpressionUUID->"a432fd82-7d5e-40ce-b214-dfa2f28f5983"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"NSolve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     FractionBox["1", 
      RowBox[{"365", " ", "24", " ", "3600"}]], 
     FractionBox[
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"1", "+", "E10"}], ")"}], "1.1954"], "\[Pi]"], 
     SqrtBox[
      FractionBox[
       RowBox[{"k", 
        RowBox[{"(", 
         RowBox[{"M1", "+", "M2"}], ")"}]}], 
       RowBox[{
        SuperscriptBox["Ain", "3"], 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "-", 
           SuperscriptBox["E10", "2"]}], ")"}], "3"]}]]]}], "\[Equal]", 
    "0.0002"}], ",", "Ain"}], "]"}]], "Input",
 CellChangeTimes->{{3.853180591912404*^9, 3.8531806173150015`*^9}, {
   3.8531808380550385`*^9, 3.8531808512982655`*^9}, 3.853180884563734*^9, {
   3.8531809432789197`*^9, 3.853180972413411*^9}, 3.853181017855278*^9, 
   3.854723193441128*^9, 3.854723241593048*^9},
 CellLabel->
  "In[108]:=",ExpressionUUID->"cbdb62f2-af62-494e-b747-84483d22975f"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"Ain", "\[Rule]", "0.15037237021533598`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"Ain", "\[Rule]", 
     RowBox[{
      RowBox[{"-", "0.07518618510766804`"}], "-", 
      RowBox[{"0.1302262926337596`", " ", "\[ImaginaryI]"}]}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"Ain", "\[Rule]", 
     RowBox[{
      RowBox[{"-", "0.07518618510766804`"}], "+", 
      RowBox[{"0.1302262926337596`", " ", "\[ImaginaryI]"}]}]}], "}"}]}], 
  "}"}]], "Output",
 CellChangeTimes->{{3.853180612166317*^9, 3.8531806189493093`*^9}, {
   3.853180839161007*^9, 3.8531808522187076`*^9}, 3.853180885611519*^9, {
   3.8531809452050114`*^9, 3.8531809733829527`*^9}, 3.853181019069497*^9, 
   3.854723194688533*^9, 3.8547232427466*^9},
 CellLabel->
  "Out[108]=",ExpressionUUID->"f91bb050-2108-436b-b76c-35f613be9bce"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{"I0", "=", "0"}], "*)"}]], "Input",
 CellChangeTimes->{{3.851974516495998*^9, 
  3.8519745206462345`*^9}},ExpressionUUID->"60353585-d1ea-4bfa-b3d2-\
3be89bb1a801"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"DATA", "=", 
   RowBox[{
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"E2MAXS", "[", 
         RowBox[{"[", "i", "]"}], "]"}], ",", 
        RowBox[{"AINSS", "[", 
         RowBox[{"[", "i", "]"}], "]"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", 
        RowBox[{"Length", "[", "AINSS", "]"}]}], "}"}]}], "]"}], "//", 
    "N"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
   "\"\<D:\\\\linux\\\\Fig1_e_a.txt\>\"", ",", "DATA", ",", "\"\<Table\>\"", 
    ",", 
    RowBox[{"\"\<FieldSeparators\>\"", "\[Rule]", "\"\< \>\""}]}], "]"}], 
  ";"}]}], "Input",
 CellChangeTimes->{{3.8994577075719466`*^9, 3.8994577440881243`*^9}},
 CellLabel->"In[5]:=",ExpressionUUID->"57780201-974b-48c3-a9a7-63d002900ebd"]
},
Evaluator->"3",
WindowSize->{1920, 976},
WindowMargins->{{-9, Automatic}, {Automatic, -9}},
FrontEndVersion->"12.0 for Microsoft Windows (64-bit) (2019\:5e744\:67088\
\:65e5)",
StyleDefinitions->"Default.nb"
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
Cell[558, 20, 145, 2, 45, "Input",ExpressionUUID->"c5918342-8414-4201-aac9-1ce5286cedab"],
Cell[706, 24, 3554, 93, 428, "Input",ExpressionUUID->"30b96147-4a57-4b1e-b32d-5f775e5f623d"],
Cell[CellGroupData[{
Cell[4285, 121, 2990, 60, 267, "Input",ExpressionUUID->"7903f550-bea2-4059-9de1-84948346a95e"],
Cell[7278, 183, 2223, 30, 32, "Output",ExpressionUUID->"b01b951d-88b3-4ba3-ae89-620da24d8df9"]
}, Open  ]],
Cell[CellGroupData[{
Cell[9538, 218, 170862, 4242, 6571, "Input",ExpressionUUID->"e563fd85-53bf-4f36-ab60-59aa6097cfae"],
Cell[180403, 4462, 591, 13, 24, "Message",ExpressionUUID->"5ff12710-8c86-4b24-912d-2c3b3fc4f255"],
Cell[180997, 4477, 591, 13, 24, "Message",ExpressionUUID->"d5390251-da91-49e1-bb2b-b0b7291d9c97"],
Cell[181591, 4492, 589, 13, 24, "Message",ExpressionUUID->"cfa36b6c-abbe-4f97-9034-12bc9fb0e7d6"],
Cell[182183, 4507, 593, 13, 24, "Message",ExpressionUUID->"0bb5db71-df0b-4e06-8cd3-c01330fd6b45"],
Cell[182779, 4522, 15985, 257, 451, "Output",ExpressionUUID->"4020060b-d830-4419-9491-c446a653dd1e"],
Cell[198767, 4781, 16256, 257, 413, "Output",ExpressionUUID->"a85d5458-6da0-41d1-878f-2183875cc304"],
Cell[215026, 5040, 16366, 257, 489, "Output",ExpressionUUID->"ef7c37b5-e63e-4120-b195-f46c3992a35c"],
Cell[231395, 5299, 14551, 214, 451, "Output",ExpressionUUID->"a432fd82-7d5e-40ce-b214-dfa2f28f5983"]
}, Open  ]],
Cell[CellGroupData[{
Cell[245983, 5518, 991, 28, 84, "Input",ExpressionUUID->"cbdb62f2-af62-494e-b747-84483d22975f"],
Cell[246977, 5548, 871, 21, 32, "Output",ExpressionUUID->"f91bb050-2108-436b-b76c-35f613be9bce"]
}, Open  ]],
Cell[247863, 5572, 203, 5, 28, "Input",ExpressionUUID->"60353585-d1ea-4bfa-b3d2-3be89bb1a801"],
Cell[248069, 5579, 837, 24, 82, "Input",ExpressionUUID->"57780201-974b-48c3-a9a7-63d002900ebd"]
}
]
*)

