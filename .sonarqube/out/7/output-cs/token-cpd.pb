¢
üC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Log\Attribute\AopController.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Log# &
.& '
	Attribute' 0
{ 
public 

class 
AopController 
{ 
public 
string 
ControllerName $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
ControllerMethod &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
ActionArguments %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
}		 óñ
®C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Log\Attribute\AopControllerAttribute.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Log# &
.& '
	Attribute' 0
{ 
public 

class "
AopControllerAttribute '
:( )!
ActionFilterAttribute* ?
{ 
private 
bool 
UseAopObjectTrace &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public "
AopControllerAttribute %
(% &
bool& *
useAop+ 1
)1 2
{ 	
UseAopObjectTrace 
= 
useAop  &
;& '
} 	
public "
AopControllerAttribute %
(% &
)& '
{ 	
} 	
public 
override 
void 
OnActionExecuting .
(. /"
ActionExecutingContext/ E
contextF M
)M N
{ 	
try 
{ 
var 
controllerValues $
=% &#
GetControllerProperties' >
(> ?
(? @
	Microsoft@ I
.I J

AspNetCoreJ T
.T U
MvcU X
.X Y
ControllersY d
.d e&
ControllerActionDescriptore 
)	 Ä
context
Ä á
.
á à
ActionDescriptor
à ò
,
ò ô
context
ö °
.
° ¢
ActionArguments
¢ ±
)
± ≤
;
≤ ≥
LogEvent 
( 
$str ,
,, -
$". 0
$str0 <
{< =
controllerValues= M
.M N
ControllerNameN \
}\ ]
$str] h
{h i
controllerValuesi y
.y z
ControllerMethod	z ä
}
ä ã
$str
ã û
{
û ü
controllerValues
ü Ø
.
Ø ∞
ActionArguments
∞ ø
}
ø ¿
"
¿ ¡
)
¡ ¬
;
¬ √
base   
.   
OnActionExecuting   &
(  & '
context  ' .
)  . /
;  / 0
}!! 
catch"" 
("" 
	Exception"" 
ex"" 
)""  
{## 
Devon4NetLogger$$ 
.$$  
Error$$  %
($$% &
ex$$& (
)$$( )
;$$) *
throw%% 
;%% 
}&& 
}'' 	
public)) 
override)) 
void)) 
OnActionExecuted)) -
())- .!
ActionExecutedContext)). C
context))D K
)))K L
{** 	
try++ 
{,, 
if-- 
(-- 
context-- 
.-- 
Result-- "
!=--" $
null--$ (
)--( )
LogEvent--* 2
(--2 3
$str--3 E
,--E F
context--G N
.--N O
Result--O U
as--V X
	Microsoft--Y b
.--b c

AspNetCore--c m
.--m n
Mvc--n q
.--q r
ObjectResult--r ~
)--~ 
;	-- Ä
base.. 
... 
OnActionExecuted.. %
(..% &
context..& -
)..- .
;... /
}// 
catch00 
(00 
	Exception00 
ex00 
)00  
{11 
Devon4NetLogger22 
.22  
Error22  %
(22% &
ex22& (
)22( )
;22) *
throw33 
;33 
}44 
}55 	
public77 
override77 
void77 
OnResultExecuting77 .
(77. /"
ResultExecutingContext77/ E
context77F M
)77M N
{88 	
try99 
{:: 
base;; 
.;; 
OnResultExecuting;; &
(;;& '
context;;' .
);;. /
;;;/ 0
}<< 
catch== 
(== 
	Exception== 
ex== 
)==  
{>> 
Devon4NetLogger?? 
.??  
Error??  %
(??% &
ex??& (
)??( )
;??) *
throw@@ 
;@@ 
}AA 
}BB 	
publicDD 
overrideDD 
voidDD 
OnResultExecutedDD -
(DD- .!
ResultExecutedContextDD. C
contextDDD K
)DDK L
{EE 	
tryFF 
{GG 
ifHH 
(HH 
contextHH 
.HH 
ResultHH "
!=HH# %
nullHH& *
)HH* +
LogEventHH, 4
(HH4 5
$strHH5 G
,HHG H
contextHHI P
.HHP Q
ResultHHQ W
asHHX Z
	MicrosoftHH[ d
.HHd e

AspNetCoreHHe o
.HHo p
MvcHHp s
.HHs t
ObjectResult	HHt Ä
)
HHÄ Å
;
HHÅ Ç
baseII 
.II 
OnResultExecutedII %
(II% &
contextII& -
)II- .
;II. /
}JJ 
catchKK 
(KK 
	ExceptionKK 
exKK 
)KK  
{LL 
Devon4NetLoggerMM 
.MM  
ErrorMM  %
(MM% &
exMM& (
)MM( )
;MM) *
throwNN 
;NN 
}OO 
}PP 	
publicRR 
overrideRR 
TaskRR "
OnActionExecutionAsyncRR 3
(RR3 4"
ActionExecutingContextRR4 J
contextRRK R
,RRR S#
ActionExecutionDelegateRRT k
nextRRl p
)RRp q
{SS 	
tryTT 
{UU 
varVV 
controllerValuesVV $
=VV% &#
GetControllerPropertiesVV' >
(VV> ?
(VV? @
	MicrosoftVV@ I
.VVI J

AspNetCoreVVJ T
.VVT U
MvcVVU X
.VVX Y
ControllersVVY d
.VVd e&
ControllerActionDescriptorVVe 
)	VV Ä
context
VVÄ á
.
VVá à
ActionDescriptor
VVà ò
,
VVò ô
context
VVö °
.
VV° ¢
ActionArguments
VV¢ ±
)
VV± ≤
;
VV≤ ≥
LogEventWW 
(WW 
$strWW 1
,WW1 2
$"WW3 5
$strWW5 A
{WWA B
controllerValuesWWB R
.WWR S
ControllerNameWWS a
}WWa b
$strWWb m
{WWm n
controllerValuesWWn ~
.WW~ 
ControllerMethod	WW è
}
WWè ê
$str
WWê £
{
WW£ §
controllerValues
WW§ ¥
.
WW¥ µ
ActionArguments
WWµ ƒ
}
WWƒ ≈
"
WW≈ ∆
)
WW∆ «
;
WW« »
returnYY 
baseYY 
.YY "
OnActionExecutionAsyncYY 2
(YY2 3
contextYY3 :
,YY: ;
nextYY< @
)YY@ A
;YYA B
}ZZ 
catch[[ 
([[ 
	Exception[[ 
ex[[ 
)[[  
{\\ 
Devon4NetLogger]] 
.]]  
Error]]  %
(]]% &
ex]]& (
)]]( )
;]]) *
throw^^ 
;^^ 
}__ 
}`` 	
publicbb 
overridebb 
Taskbb "
OnResultExecutionAsyncbb 3
(bb3 4"
ResultExecutingContextbb4 J
contextbbK R
,bbR S#
ResultExecutionDelegatebbT k
nextbbl p
)bbp q
{cc 	
trydd 
{ee 
ifff 
(ff 
contextff 
.ff 
Resultff "
!=ff# %
nullff& *
)ff* +
LogEventff, 4
(ff4 5
$strff5 M
,ffM N
contextffO V
.ffV W
ResultffW ]
asff^ `
	Microsoftffa j
.ffj k

AspNetCoreffk u
.ffu v
Mvcffv y
.ffy z
ObjectResult	ffz Ü
)
ffÜ á
;
ffá à
returngg 
basegg 
.gg "
OnResultExecutionAsyncgg 2
(gg2 3
contextgg3 :
,gg: ;
nextgg< @
)gg@ A
;ggA B
}hh 
catchii 
(ii 
	Exceptionii 
exii 
)ii  
{jj 
Devon4NetLoggerkk 
.kk  
Errorkk  %
(kk% &
exkk& (
)kk( )
;kk) *
throwll 
;ll 
}mm 
}nn 	
privatepp 
voidpp 
LogEventpp 
(pp 
stringpp $
methodpp% +
,pp+ ,
	Microsoftpp- 6
.pp6 7

AspNetCorepp7 A
.ppA B
MvcppB E
.ppE F
ObjectResultppF R
resultppS Y
)ppY Z
{qq 	
Devon4NetLoggerrr 
.rr 
Informationrr '
(rr' (
$"rr( *
$strrr* 6
{rr6 7
methodrr7 =
}rr= >
$strrr> @
{rr@ A
resultrrA G
.rrG H

StatusCoderrH R
}rrR S
$strrrS ]
{rr] ^
GetValuerr^ f
(rrf g
resultrrg m
.rrm n
Valuerrn s
)rrs t
}rrt u
"rru v
)rrv w
;rrw x
}ss 	
privateuu 
voiduu 
LogEventuu 
(uu 
stringuu $
methoduu% +
,uu+ ,
stringuu- 3
resultuu4 :
)uu: ;
{vv 	
Devon4NetLoggerww 
.ww 
Informationww '
(ww' (
$"ww( *
$strww* 6
{ww6 7
methodww7 =
}ww= >
$strww> @
{ww@ A
resultwwA G
}wwG H
"wwH I
)wwI J
;wwJ K
}xx 	
privatezz 
stringzz 
GetValuezz 
(zz  
objectzz  &
toPrintzz' .
)zz. /
{{{ 	
var|| 
result|| 
=|| 
string|| 
.||  
Empty||  %
;||% &
try}} 
{~~ 
result 
= 
JsonSerializer '
.' (
	Serialize( 1
(1 2
toPrint2 9
)9 :
;: ;
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ 
	Exception
ÅÅ 
ex
ÅÅ 
)
ÅÅ  
{
ÇÇ 
Devon4NetLogger
ÉÉ 
.
ÉÉ  
Error
ÉÉ  %
(
ÉÉ% &
$"
ÉÉ& (
$str
ÉÉ( s
{
ÉÉs t
ex
ÉÉt v
.
ÉÉv w
Message
ÉÉw ~
}
ÉÉ~ 
$strÉÉ Ç
{ÉÉÇ É
exÉÉÉ Ö
.ÉÉÖ Ü
InnerExceptionÉÉÜ î
}ÉÉî ï
$strÉÉï ñ
"ÉÉñ ó
)ÉÉó ò
;ÉÉò ô
}
ÑÑ 
return
ÜÜ 
result
ÜÜ 
;
ÜÜ 
}
áá 	
private
ää 
string
ää 
PrettyPrint
ää "
(
ää" #
object
ää# )
toPrint
ää* 1
,
ää1 2
string
ää3 9
	paramName
ää: C
=
ääD E
$str
ääF H
,
ääH I
string
ääJ P
	separator
ääQ Z
=
ää[ \
$str
ää] a
,
ääa b
string
ääc i
prefix
ääj p
=
ääq r
$str
ääs u
)
ääu v
{
ãã 	
var
åå 
sb
åå 
=
åå 
new
åå 
StringBuilder
åå &
(
åå& '
string
åå' -
.
åå- .
IsNullOrEmpty
åå. ;
(
åå; <
	paramName
åå< E
)
ååE F
?
ååG H
string
ååI O
.
ååO P
Empty
ååP U
:
ååV W
prefix
ååX ^
+
åå_ `
	paramName
ååa j
+
ååk l
$str
ååm q
)
ååq r
;
åår s
if
çç 
(
çç 
toPrint
çç 
==
çç 
null
çç 
)
çç  
{
éé 
sb
èè 
.
èè 
AppendFormat
èè 
(
èè  
$str
èè  &
)
èè& '
;
èè' (
return
êê 
sb
êê 
.
êê 
ToString
êê "
(
êê" #
)
êê# $
;
êê$ %
}
ëë 
var
ìì 
flags
ìì 
=
ìì 
BindingFlags
ìì $
.
ìì$ %
Instance
ìì% -
|
ìì. /
BindingFlags
ìì0 <
.
ìì< =
Public
ìì= C
|
ììD E
BindingFlags
ììF R
.
ììR S
FlattenHierarchy
ììS c
|
ììd e
BindingFlags
ììf r
.
ììr s
	NonPublic
ììs |
;
ìì| }
var
îî 

properties
îî 
=
îî 
toPrint
îî $
.
îî$ %
GetType
îî% ,
(
îî, -
)
îî- .
.
îî. /
GetProperties
îî/ <
(
îî< =
flags
îî= B
)
îîB C
;
îîC D
if
óó 
(
óó 
!
óó 

properties
óó 
.
óó 
Any
óó 
(
óó  
)
óó  !
||
óó" $
IsBasic
óó% ,
(
óó, -
toPrint
óó- 4
)
óó4 5
)
óó5 6
{
òò 
sb
ôô 
.
ôô 
AppendFormat
ôô 
(
ôô  
prefix
ôô  &
+
ôô' (
toPrint
ôô) 0
+
ôô1 2
	separator
ôô3 <
)
ôô< =
;
ôô= >
}
öö 
else
õõ 
if
õõ 
(
õõ 
IsEnumerable
õõ !
(
õõ! "
toPrint
õõ" )
)
õõ) *
)
õõ* +
{
úú 
var
ùù 
valueToPrint
ùù  
=
ùù! "
	separator
ùù# ,
;
ùù, -
var
ûû 
values
ûû 
=
ûû 
(
ûû 
IEnumerable
ûû )
)
ûû) *
toPrint
ûû* 1
;
ûû1 2
valueToPrint
üü 
=
üü 
values
üü %
.
üü% &
Cast
üü& *
<
üü* +
object
üü+ 1
>
üü1 2
(
üü2 3
)
üü3 4
.
üü4 5
	Aggregate
üü5 >
(
üü> ?
valueToPrint
üü? K
,
üüK L
(
üüM N
current
üüN U
,
üüU V
o
üüW X
)
üüX Y
=>
üüZ \
current
üü] d
+
üüe f
(
üüg h
PrettyPrint
üüh s
(
üüs t
o
üüt u
,
üüu v
	separatorüüw Ä
:üüÄ Å
$strüüÇ Ü
,üüÜ á
prefixüüà é
:üüé è
prefixüüê ñ
+üüó ò
$strüüô õ
)üüõ ú
)üüú ù
)üüù û
;üüû ü
sb
†† 
.
†† 
AppendFormat
†† 
(
††  
valueToPrint
††  ,
)
††, -
;
††- .
}
°° 
else
¢¢ 
{
££ 
foreach
§§ 
(
§§ 
PropertyInfo
§§ %
info
§§& *
in
§§+ -

properties
§§. 8
.
§§8 9
Where
§§9 >
(
§§> ?
info
§§? C
=>
§§D F
info
§§G K
.
§§K L
PropertyType
§§L X
.
§§X Y
	Namespace
§§Y b
!=
§§c e
null
§§f j
&&
§§k m
(
§§n o
info
§§o s
.
§§s t
Name
§§t x
!=
§§y {
$str§§| Ü
)§§ø ¿
)§§¿ ¡
)§§¡ ¬
{
•• 
sb
¶¶ 
.
¶¶ 
AppendFormat
¶¶ #
(
¶¶# $
$str
¶¶$ 3
,
¶¶3 4
prefix
¶¶5 ;
,
¶¶; <
PrettyPrint
¶¶= H
(
¶¶H I
info
¶¶I M
.
¶¶M N
GetValue
¶¶N V
(
¶¶V W
toPrint
¶¶W ^
,
¶¶^ _
null
¶¶` d
)
¶¶d e
,
¶¶e f
info
¶¶g k
.
¶¶k l
Name
¶¶l p
,
¶¶p q
prefix
¶¶r x
=
¶¶y z
prefix¶¶{ Å
+¶¶Ç É
$str¶¶Ñ Ü
)¶¶Ü á
,¶¶á à
	separator¶¶â í
)¶¶í ì
;¶¶ì î
}
ßß 
}
®® 
return
™™ 
sb
™™ 
.
™™ 
ToString
™™ 
(
™™ 
)
™™  
;
™™  !
}
´´ 	
private
≠≠ 
bool
≠≠ 
IsBasic
≠≠ 
(
≠≠ 
object
≠≠ #
toPrint
≠≠$ +
)
≠≠+ ,
{
ÆÆ 	
return
∞∞ 
toPrint
∞∞ 
.
∞∞ 
GetType
∞∞ "
(
∞∞" #
)
∞∞# $
.
∞∞$ %
IsPrimitive
∞∞% 0
||
∞∞1 3
toPrint
∞∞4 ;
is
∞∞< >
DateTime
∞∞? G
||
∞∞H J
toPrint
∞∞K R
is
∞∞S U
string
∞∞V \
;
∞∞\ ]
}
±± 	
private
≥≥ 
bool
≥≥ 
IsEnumerable
≥≥ !
(
≥≥! "
Object
≥≥" (
obj
≥≥) ,
)
≥≥, -
{
¥¥ 	
return
µµ 
obj
µµ 
.
µµ 
GetType
µµ 
(
µµ 
)
µµ  
.
µµ  !
IsGenericType
µµ! .
&&
µµ/ 1
obj
µµ2 5
.
µµ5 6
GetType
µµ6 =
(
µµ= >
)
µµ> ?
.
µµ? @
GetInterfaces
µµ@ M
(
µµM N
)
µµN O
.
µµO P
Any
µµP S
(
µµS T
iface
µµT Y
=>
µµZ \
iface
µµ] b
.
µµb c&
GetGenericTypeDefinition
µµc {
(
µµ{ |
)
µµ| }
==µµ~ Ä
typeofµµÅ á
(µµá à
IEnumerableµµà ì
<µµì î
>µµî ï
)µµï ñ
)µµñ ó
;µµó ò
}
∂∂ 	
private
ππ 
AopController
ππ %
GetControllerProperties
ππ 5
(
ππ5 6
	Microsoft
ππ6 ?
.
ππ? @

AspNetCore
ππ@ J
.
ππJ K
Mvc
ππK N
.
ππN O
Controllers
ππO Z
.
ππZ [(
ControllerActionDescriptor
ππ[ u
actionDescriptorππv Ü
,ππÜ á
IDictionaryππà ì
<ππì î
stringππî ö
,ππö õ
objectππú ¢
>ππ¢ £
actionArgumentsππ§ ≥
)ππ≥ ¥
{
∫∫ 	
return
ªª 
new
ªª 
AopController
ªª $
{
ªª% &
ControllerName
ºº 
=
ºº  
actionDescriptor
ºº! 1
.
ºº1 2
ControllerName
ºº2 @
,
ºº@ A
ControllerMethod
ΩΩ  
=
ΩΩ! "
actionDescriptor
ΩΩ# 3
.
ΩΩ3 4

MethodInfo
ΩΩ4 >
.
ΩΩ> ?
Name
ΩΩ? C
,
ΩΩC D
ActionArguments
ææ 
=
ææ  !
UseAopObjectTrace
ææ" 3
?
ææ4 5
PrettyPrint
ææ6 A
(
ææA B
actionArguments
ææB Q
)
ææQ R
:
ææS T
$str
ææU q
}
øø 
;
øø 
}
¿¿ 	
}
¬¬ 
}√√ ÿ
≠C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Log\Attribute\AopExceptionFilterAttribute.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Log# &
.& '
	Attribute' 0
{ 
public 

class '
AopExceptionFilterAttribute ,
:- .$
ExceptionFilterAttribute/ G
{ 
public 
override 
void 
OnException (
(( )
ExceptionContext) 9
context: A
)A B
{		 	
	Devon4Net

 
.

 
Infrastructure

 $
.

$ %
Log

% (
.

( )
Devon4NetLogger

) 8
.

8 9
Error

9 >
(

> ?
context

? F
.

F G
	Exception

G P
)

P Q
;

Q R
base 
. 
OnException 
( 
context $
)$ %
;% &
} 	
public 
override 
Task 
OnExceptionAsync -
(- .
ExceptionContext. >
context? F
)F G
{ 	
	Devon4Net 
. 
Infrastructure $
.$ %
Log% (
.( )
Devon4NetLogger) 8
.8 9
Error9 >
(> ?
context? F
.F G
	ExceptionG P
)P Q
;Q R
return 
base 
. 
OnExceptionAsync (
(( )
context) 0
)0 1
;1 2
} 	
} 
} éj
òC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Log\LogConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Configuration' 4
{ 
public 

static 
class 
LogConfiguration (
{ 
private 
const 
string 
DefaultLogFile +
=, -
$str. ;
;; <
private 
const 
string 
DefaultSqliteFile .
=/ 0
$str1 H
;H I
private 
static 
LoggerConfiguration *
LoggerConfiguration+ >
{? @
getA D
;D E
setF I
;I J
}K L
public 
static 
void 
SetupLog #
(# $
this$ (
IServiceCollection) ;
services< D
,D E
refF I
IConfigurationJ X
configurationY f
)f g
{ 	
var 

logOptions 
= 
services %
.% &
GetTypedOptions& 5
<5 6

LogOptions6 @
>@ A
(A B
configurationB O
,O P
$strQ V
)V W
;W X
if 
( 

logOptions 
== 
null "
)" #
return$ *
;* +
using 
var 
serviceProvider %
=& '
services( 0
.0 1 
BuildServiceProvider1 E
(E F
)F G
;G H
ConfigureLog 
( 

logOptions #
)# $
;$ %
if 
( 

logOptions 
. 
UseAOPTrace &
)& '
{   
SetupLogAop!! 
(!! 
ref!! 
services!!  (
,!!( )

logOptions!!* 4
)!!4 5
;!!5 6
}"" 
if$$ 
($$ 

logOptions$$ 
.$$ 

UseGraylog$$ %
&&$$& (

logOptions$$) 3
.$$3 4
GrayLog$$4 ;
!=$$< >
null$$? C
)$$C D
{%% 
SetupGraylog&& 
(&& 

logOptions&& '
.&&' (
GrayLog&&( /
)&&/ 0
;&&0 1
}'' 
serviceProvider)) 
.)) 

GetService)) &
<))& '
ILoggerFactory))' 5
>))5 6
())6 7
)))7 8
.))8 9

AddSerilog))9 C
())C D
)))D E
;))E F
}** 	
private,, 
static,, 
void,, 
SetupLogAop,, '
(,,' (
ref,,( +
IServiceCollection,,, >
services,,? G
,,,G H

LogOptions,,I S

logOptions,,T ^
),,^ _
{-- 	
services.. 
... 
AddTransient.. !
<..! ""
AopControllerAttribute.." 8
>..8 9
(..9 :
)..: ;
;..; <
services// 
.// 
AddTransient// !
<//! "'
AopExceptionFilterAttribute//" =
>//= >
(//> ?
)//? @
;//@ A
services11 
.11 
AddMvc11 
(11 
options11 #
=>11$ &
{22 
options33 
.33 
Filters33 
.33  
Add33  #
(33# $
new33$ '"
AopControllerAttribute33( >
(33> ?

logOptions33? I
.33I J
UseAOPTrace33J U
)33U V
)33V W
;33W X
}44 
)44 
;44 
services66 
.66 
AddMvc66 
(66 
options66 #
=>66$ &
{77 
options88 
.88 
Filters88 
.88  
Add88  #
(88# $
new88$ ''
AopExceptionFilterAttribute88( C
(88C D
)88D E
)88E F
;88F G
}99 
)99 
;99 
}:: 	
public<< 
static<< 
void<< 
ConfigureLog<< '
(<<' (

LogOptions<<( 2

logOptions<<3 =
)<<= >
{== 	
LoggerConfiguration>> 
=>>  !
new>>" %
LoggerConfiguration>>& 9
(>>9 :
)>>: ;
.>>; <
Enrich>>< B
.>>B C
FromLogContext>>C Q
(>>Q R
)>>R S
.>>S T
WriteTo>>T [
.>>[ \
Console>>\ c
(>>c d
)>>d e
;>>e f
if@@ 
(@@ 

logOptions@@ 
.@@ 

UseLogFile@@ %
)@@% &
{AA 
varBB 
logFileBB 
=BB 

logOptionsBB (
.BB( )
LogFileBB) 0
!=BB1 3
nullBB4 8
?BB9 :
stringBB; A
.BBA B
FormatBBB H
(BBH I

logOptionsBBI S
.BBS T
LogFileBBT [
,BB[ \
DateTimeBB] e
.BBe f
TodayBBf k
.BBk l
ToShortDateStringBBl }
(BB} ~
)BB~ 
.	BB Ä
Replace
BBÄ á
(
BBá à
$str
BBà ã
,
BBã å
string
BBç ì
.
BBì î
Empty
BBî ô
)
BBô ö
)
BBö õ
:
BBú ù
DefaultLogFile
BBû ¨
;
BB¨ ≠
LoggerConfigurationCC #
=CC$ %
LoggerConfigurationCC& 9
.CC9 :
WriteToCC: A
.CCA B
FileCCB F
(CCF G
GetValidPathCCG S
(CCS T
logFileCCT [
,CC[ \
DefaultLogFileCC] k
)CCk l
)CCl m
;CCm n
}DD 
ifFF 
(FF 
!FF 
stringFF 
.FF 
IsNullOrEmptyFF %
(FF% &

logOptionsFF& 0
.FF0 1
SeqLogServerHostFF1 A
)FFA B
)FFB C
{GG 
LoggerConfigurationHH #
=HH$ %
LoggerConfigurationHH& 9
.HH9 :
WriteToHH: A
.HHA B
SeqHHB E
(HHE F

logOptionsHHF P
.HHP Q
SeqLogServerHostHHQ a
)HHa b
;HHb c
}II 
ifKK 
(KK 

logOptionsKK 
.KK 
UseSQLiteDbKK &
&&KK' )
!KK* +
stringKK+ 1
.KK1 2
IsNullOrEmptyKK2 ?
(KK? @

logOptionsKK@ J
.KKJ K
SqliteDatabaseKKK Y
)KKY Z
)KKZ [
{LL 
LoggerConfigurationMM #
=MM$ %
LoggerConfigurationMM& 9
.MM9 :
WriteToMM: A
.MMA B
SQLiteMMB H
(MMH I
GetValidPathMMI U
(MMU V

logOptionsMMV `
.MM` a
SqliteDatabaseMMa o
,MMo p
DefaultSqliteFile	MMq Ç
)
MMÇ É
)
MMÉ Ñ
;
MMÑ Ö
}NN 
SetLogLevelPP 
(PP 

logOptionsPP "
.PP" #
LogLevelPP# +
,PP+ ,
LoggerConfigurationPP- @
)PP@ A
;PPA B
LogRR 
.RR 
LoggerRR 
=RR 
LoggerConfigurationRR ,
.RR, -
CreateLoggerRR- 9
(RR9 :
)RR: ;
;RR; <
}SS 	
privateUU 
staticUU 
voidUU 
SetupGraylogUU (
(UU( )
GraylogOptionsUU) 7
graylogOptionsUU8 F
)UUF G
{VV 	
ifWW 
(WW 
graylogOptionsWW 
==WW !
nullWW" &
)WW& '
returnWW( .
;WW. /
varXX 
graylogConfigXX 
=XX 
newXX  #$
GraylogSinkConfigurationXX$ <
{YY  
GraylogTransportTypeZZ $
=ZZ% &-
!GetGraylogTransportTypeFromStringZZ' H
(ZZH I
graylogOptionsZZI W
.ZZW X
GrayLogProtocolZZX g
)ZZg h
,ZZh i
Host[[ 
=[[ 
graylogOptions[[ %
.[[% &
GrayLogHost[[& 1
,[[1 2
Port\\ 
=\\ 
graylogOptions\\ %
.\\% &
GrayLogPort\\& 1
,\\1 2
UseSecureConnection]] #
=]]$ %
graylogOptions]]& 4
.]]4 5
UseSecureConnection]]5 H
,]]H I
UseAsyncLogging^^ 
=^^  !
graylogOptions^^" 0
.^^0 1
UseAsyncLogging^^1 @
,^^@ A

RetryCount__ 
=__ 
graylogOptions__ +
.__+ ,

RetryCount__, 6
,__6 7
RetryIntervalMs`` 
=``  !
graylogOptions``" 0
.``0 1
RetryIntervalMs``1 @
,``@ A
MaxUdpMessageSizeaa !
=aa" #
graylogOptionsaa$ 2
.aa2 3
MaxUdpMessageSizeaa3 D
}bb 
;bb 
LoggerConfigurationdd 
=dd  !
LoggerConfigurationdd" 5
.dd5 6
WriteTodd6 =
.dd= >
Graylogdd> E
(ddE F
graylogConfigddF S
)ddS T
;ddT U
}ee 	
privategg 
staticgg  
GraylogTransportTypegg +-
!GetGraylogTransportTypeFromStringgg, M
(ggM N
stringggN T
transportTypeggU b
)ggb c
{hh 	
returnii 
transportTypeii  
.ii  !
ToLowerii! (
(ii( )
)ii) *
switchii+ 1
{jj 
$strkk 
=>kk  
GraylogTransportTypekk -
.kk- .
Tcpkk. 1
,kk1 2
$strll 
=>ll  
GraylogTransportTypell -
.ll- .
Udpll. 1
,ll1 2
$strmm 
=>mm  
GraylogTransportTypemm .
.mm. /
Httpmm/ 3
,mm3 4
_nn 
=>nn  
GraylogTransportTypenn )
.nn) *
Udpnn* -
}oo 
;oo 
}pp 	
privaterr 
staticrr 
stringrr 
GetValidPathrr *
(rr* +
stringrr+ 1
	inputPathrr2 ;
,rr; <
stringrr= C
optionalFileNamerrD T
)rrT U
{ss 	
iftt 
(tt 
stringtt 
.tt 
IsNullOrEmptytt $
(tt$ %
	inputPathtt% .
)tt. /
||tt0 2
stringtt3 9
.tt9 :
IsNullOrEmptytt: G
(ttG H
PathttH L
.ttL M
GetFileNamettM X
(ttX Y
	inputPathttY b
)ttb c
)ttc d
)ttd e
{uu 
returnvv 
Pathvv 
.vv 
Combinevv #
(vv# $
FileOperationsvv$ 2
.vv2 3
GetApplicationPathvv3 E
(vvE F
)vvF G
,vvG H
optionalFileNamevvI Y
)vvY Z
;vvZ [
}ww 
returnyy 
Pathyy 
.yy 
GetFullPathyy #
(yy# $
	inputPathyy$ -
)yy- .
;yy. /
}zz 	
private|| 
static|| 
void|| 
SetLogLevel|| '
(||' (
string||( .
logEventLevel||/ <
,||< =
LoggerConfiguration||> Q
loggerConfiguration||R e
)||e f
{}} 	
if~~ 
(~~ 
string~~ 
.~~ 
IsNullOrEmpty~~ $
(~~$ %
logEventLevel~~% 2
)~~2 3
)~~3 4
return~~5 ;
;~~; <
switch 
( 
logEventLevel !
.! "
ToLower" )
() *
)* +
)+ ,
{
ÄÄ 
case
ÅÅ 
$str
ÅÅ 
:
ÅÅ !
loggerConfiguration
ÇÇ '
.
ÇÇ' (
MinimumLevel
ÇÇ( 4
.
ÇÇ4 5
Warning
ÇÇ5 <
(
ÇÇ< =
)
ÇÇ= >
;
ÇÇ> ?
return
ÉÉ 
;
ÉÉ 
case
ÑÑ 
$str
ÑÑ 
:
ÑÑ !
loggerConfiguration
ÖÖ '
.
ÖÖ' (
MinimumLevel
ÖÖ( 4
.
ÖÖ4 5
Verbose
ÖÖ5 <
(
ÖÖ< =
)
ÖÖ= >
;
ÖÖ> ?
return
ÜÜ 
;
ÜÜ 
case
áá 
$str
áá 
:
áá !
loggerConfiguration
àà '
.
àà' (
MinimumLevel
àà( 4
.
àà4 5
Fatal
àà5 :
(
àà: ;
)
àà; <
;
àà< =
return
ââ 
;
ââ 
case
ää 
$str
ää 
:
ää !
loggerConfiguration
ãã '
.
ãã' (
MinimumLevel
ãã( 4
.
ãã4 5
Error
ãã5 :
(
ãã: ;
)
ãã; <
;
ãã< =
return
åå 
;
åå 
case
çç 
$str
çç "
:
çç" #!
loggerConfiguration
éé '
.
éé' (
MinimumLevel
éé( 4
.
éé4 5
Information
éé5 @
(
éé@ A
)
ééA B
;
ééB C
return
èè 
;
èè 
default
êê 
:
êê !
loggerConfiguration
ëë '
.
ëë' (
MinimumLevel
ëë( 4
.
ëë4 5
Debug
ëë5 :
(
ëë: ;
)
ëë; <
;
ëë< =
return
íí 
;
íí 
}
ìì 
}
îî 	
}
ïï 
}ññ Â+
üC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Log\Logging\Devon4NetLogger.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Log# &
{ 
public 

static 
class 
Devon4NetLogger '
{ 
public		 
static		 
void		 
Debug		  
(		  !
	Exception		! *
	exception		+ 4
)		4 5
{

 	
Serilog 
. 
Log 
. 
Debug 
( 
GetExceptionMessage 1
(1 2
ref2 5
	exception6 ?
)? @
)@ A
;A B
} 	
public 
static 
void 
Information &
(& '
	Exception' 0
	exception1 :
): ;
{ 	
Serilog 
. 
Log 
. 
Information #
(# $
GetExceptionMessage$ 7
(7 8
ref8 ;
	exception< E
)E F
)F G
;G H
} 	
public 
static 
void 
Error  
(  !
	Exception! *
	exception+ 4
)4 5
{ 	
Serilog 
. 
Log 
. 
Error 
( 
GetExceptionMessage 1
(1 2
ref2 5
	exception6 ?
)? @
)@ A
;A B
} 	
public 
static 
void 
Fatal  
(  !
	Exception! *
	exception+ 4
)4 5
{ 	
Serilog 
. 
Log 
. 
Fatal 
( 
GetExceptionMessage 1
(1 2
ref2 5
	exception6 ?
)? @
)@ A
;A B
} 	
public 
static 
void 
Debug  
(  !
string! '
message( /
)/ 0
{ 	
Serilog   
.   
Log   
.   
Debug   
(   
message   %
)  % &
;  & '
Console!! 
.!! 
	WriteLine!! 
(!! 
message!! %
)!!% &
;!!& '
}"" 	
public$$ 
static$$ 
void$$ 
Information$$ &
($$& '
string$$' -
message$$. 5
)$$5 6
{%% 	
Serilog&& 
.&& 
Log&& 
.&& 
Information&& #
(&&# $
message&&$ +
)&&+ ,
;&&, -
Console'' 
.'' 
	WriteLine'' 
('' 
message'' %
)''% &
;''& '
}(( 	
public** 
static** 
void** 
Error**  
(**  !
string**! '
message**( /
)**/ 0
{++ 	
Serilog,, 
.,, 
Log,, 
.,, 
Error,, 
(,, 
message,, %
),,% &
;,,& '
Console-- 
.-- 
	WriteLine-- 
(-- 
message-- %
)--% &
;--& '
}.. 	
public00 
static00 
void00 
Fatal00  
(00  !
string00! '
message00( /
)00/ 0
{11 	
Serilog22 
.22 
Log22 
.22 
Fatal22 
(22 
message22 %
)22% &
;22& '
Console33 
.33 
	WriteLine33 
(33 
message33 %
)33% &
;33& '
}44 	
private77 
static77 
string77 
GetExceptionMessage77 1
(771 2
ref772 5
	Exception776 ?
	exception77@ I
)77I J
{88 	
var99 
message99 
=99 
!99 
string99 !
.99! "
IsNullOrEmpty99" /
(99/ 0
	exception990 9
.999 :
Message99: A
)99A B
?99C D
	exception99E N
.99N O
Message99O V
:99W X
$str99Y o
;99o p
var:: 
innerException:: 
=::  
	exception::! *
.::* +
InnerException::+ 9
!=::: <
null::= A
&&::B D
	exception::E N
.::N O
InnerException::O ]
.::] ^
Message::^ e
!=::f h
null::i m
?::n o
	exception::p y
.::y z
InnerException	::z à
.
::à â
Message
::â ê
:
::ë í
$str
::ì ª
;
::ª º
var;; 
fullMessage;; 
=;; 
$";;  
$str;;  0
{;;0 1
	exception;;1 :
.;;: ;
GetType;;; B
(;;B C
);;C D
.;;D E
Name;;E I
};;I J
$str;;J V
{;;V W
message;;W ^
};;^ _
$str;;_ r
{;;r s
innerException	;;s Å
}
;;Å Ç
"
;;Ç É
;
;;É Ñ
Console<< 
.<< 
	WriteLine<< 
(<< 
fullMessage<< )
)<<) *
;<<* +
return== 
fullMessage== 
;== 
}>> 	
}@@ 
}AA „
®C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Log\Middleware\LogHandlingMiddleware.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Log# &
.& '

Middleware' 1
{ 
public		 

class		 *
LogExceptionHandlingMiddleware		 /
{

 
private 
readonly 
RequestDelegate (
next) -
;- .
public *
LogExceptionHandlingMiddleware -
(- .
RequestDelegate. =
next> B
)B C
{ 	
this 
. 
next 
= 
next 
; 
} 	
public 
async 
Task 
Invoke  
(  !
HttpContext! ,
context- 4
)M N
{ 	
try 
{ 
await 
next 
( 
context "
)" #
;# $
} 
catch 
( 
	Exception 
ex 
)  
{ 
await  
HandleExceptionAsync *
(* +
context+ 2
,2 3
ex4 6
)6 7
;7 8
} 
} 	
private 
static 
Task  
HandleExceptionAsync 0
(0 1
HttpContext1 <
context= D
,D E
	ExceptionF O
	exceptionP Y
)Y Z
{ 	
var   
code   
=   
HttpStatusCode   %
.  % &
InternalServerError  & 9
;  9 :
	Devon4Net%% 
.%% 
Infrastructure%% $
.%%$ %
Log%%% (
.%%( )
Devon4NetLogger%%) 8
.%%8 9
Error%%9 >
(%%> ?
	exception%%? H
)%%H I
;%%I J
var&& 
result&& 
=&& 
JsonConvert&& $
.&&$ %
SerializeObject&&% 4
(&&4 5
new&&5 8
{&&9 :
error&&; @
=&&A B
	exception&&C L
.&&L M
Message&&M T
}&&U V
)&&V W
;&&W X
context'' 
.'' 
Response'' 
.'' 
ContentType'' (
='') *
$str''+ =
;''= >
context(( 
.(( 
Response(( 
.(( 

StatusCode(( '
=((( )
(((* +
int((+ .
)((. /
code((/ 3
;((3 4
return)) 
context)) 
.)) 
Response)) #
.))# $

WriteAsync))$ .
()). /
result))/ 5
)))5 6
;))6 7
}** 	
}++ 
},, 