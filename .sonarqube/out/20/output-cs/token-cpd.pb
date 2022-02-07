®$
∏C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Middleware\Certificates\ClientCertificatesMiddleware.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #

Middleware# -
.- .
Certificates. :
{ 
public 

class (
ClientCertificatesMiddleware -
{ 
private 
readonly 
RequestDelegate (
next) -
;- .
private 
readonly 
ILogger  
<  !(
ClientCertificatesMiddleware! =
>= >
logger? E
;E F
public (
ClientCertificatesMiddleware +
(+ ,
RequestDelegate, ;
next< @
,@ A
ILoggerB I
<I J(
ClientCertificatesMiddlewareJ f
>f g
loggerh n
)n o
{ 	
this 
. 
next 
= 
next 
; 
this 
. 
logger 
= 
logger  
;  !
} 	
public 
async 
Task 
Invoke  
(  !
HttpContext! ,
context- 4
,4 5
IOptions7 ?
<? @
DevonfwOptions@ N
>N O
devonfwOptionsP ^
)^ _
{ 	
var 
options 
= 
devonfwOptions ,
., -
Value- 2
;2 3
if 
( 
options 
? 
. 
Kestrel  
?  !
.! "
ClientCertificate" 3
==4 6
null7 ;
); <
{ 
logger 
. 

LogWarning !
(! "
$str" J
)J K
;K L
context 
. 
Response  
.  !

StatusCode! +
=, -
$num. 1
;1 2
return 
; 
}   
if"" 
("" 
!"" 
options"" 
."" 
Kestrel""  
.""  !
ClientCertificate""! 2
.""2 3)
DisableClientCertificateCheck""3 P
)""P Q
{## 
var$$ 
clientCertificate$$ $
=$$% &
context$$' .
.$$. /

Connection$$/ 9
.$$9 :
ClientCertificate$$: K
;$$K L
if%% 
(%% 
clientCertificate%% %
==%%& (
null%%) -
)%%- .
{&& 
logger'' 
.'' 

LogWarning'' %
(''% &
$str''& D
)''D E
;''E F
context(( 
.(( 
Response(( $
.(($ %

StatusCode((% /
=((0 1
$num((2 5
;((5 6
})) 
else** 
if** 
(** 
!** 
options** !
.**! "
Kestrel**" )
.**) *
ClientCertificate*** ;
.**; <
ClientCertificates**< N
.**N O
	Whitelist**O X
.**X Y
Any**Y \
(**\ ]
s**] ^
=>**_ a
s**b c
.**c d
Equals**d j
(**j k
clientCertificate**k |
.**| }

Thumbprint	**} á
,
**á à
StringComparison
**â ô
.
**ô ö(
InvariantCultureIgnoreCase
**ö ¥
)
**¥ µ
)
**µ ∂
)
**∂ ∑
{++ 
logger,, 
.,, 

LogWarning,, %
(,,% &
$",,& (
$str,,( ;
{,,; <
clientCertificate,,< M
.,,M N

Thumbprint,,N X
},,X Y
$str,,Y j
",,j k
),,k l
;,,l m
context-- 
.-- 
Response-- $
.--$ %

StatusCode--% /
=--0 1
$num--2 5
;--5 6
}.. 
else// 
{00 
await11 
next11 
(11 
context11 &
)11& '
.11' (
ConfigureAwait11( 6
(116 7
false117 <
)11< =
;11= >
}22 
}33 
else44 
{55 
await66 
next66 
(66 
context66 "
)66" #
.66# $
ConfigureAwait66$ 2
(662 3
false663 8
)668 9
;669 :
}77 
}88 	
}99 
}:: ÅH
¥C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Middleware\Exception\ExceptionHandlingMiddleware.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #

Middleware# -
.- .
	Exception. 7
{ 
public 

class '
ExceptionHandlingMiddleware ,
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
public '
ExceptionHandlingMiddleware *
(* +
RequestDelegate+ :
next; ?
)? @
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
Invoke  
(  !
HttpContext! ,
context- 4
,4 5
IOptionsMonitor6 E
<E F
KillSwitchOptionsF W
>W X

killSwitchY c
)c d
{ 	
if 
( 
context 
== 
null 
)  
throw! &
new' *!
ArgumentNullException+ @
(@ A
nameofA G
(G H
contextH O
)O P
)P Q
;Q R
try 
{ 
if 
( 

killSwitch 
? 
.  
CurrentValue  ,
., -
UseKillSwitch- :
==; =
true> B
)B C
{ 
if 
( 

killSwitch "
." #
CurrentValue# /
!=0 2
null3 7
&&8 :

killSwitch; E
.E F
CurrentValueF R
.R S
EnableRequestsS a
)a b
{ 
await 
_next #
(# $
context$ +
)+ ,
., -
ConfigureAwait- ;
(; <
false< A
)A B
;B C
}   
else!! 
{"" 
context## 
.##  
Response##  (
.##( )
Headers##) 0
.##0 1
Clear##1 6
(##6 7
)##7 8
;##8 9
context$$ 
.$$  
Response$$  (
.$$( )

StatusCode$$) 3
=$$4 5

killSwitch$$6 @
.$$@ A
CurrentValue$$A M
.$$M N
HttpStatusCode$$N \
>$$] ^
$num$$_ `
?$$a b

killSwitch$$c m
.$$m n
CurrentValue$$n z
.$$z {
HttpStatusCode	$${ â
:
$$ä ã
$num
$$å è
;
$$è ê
await%% 
context%% %
.%%% &
Response%%& .
.%%. /

WriteAsync%%/ 9
(%%9 :
string%%: @
.%%@ A
Empty%%A F
)%%F G
.%%G H
ConfigureAwait%%H V
(%%V W
false%%W \
)%%\ ]
;%%] ^
}&& 
}'' 
else(( 
{)) 
await** 
_next** 
(**  
context**  '
)**' (
.**( )
ConfigureAwait**) 7
(**7 8
false**8 =
)**= >
;**> ?
}++ 
},, 
catch.. 
(.. 
System.. 
... 
	Exception.. #
ex..$ &
)..& '
{00 
await11 
HandleException11 %
(11% &
ref11& )
context11* 1
,111 2
ref113 6
ex117 9
)119 :
.11: ;
ConfigureAwait11; I
(11I J
false11J O
)11O P
;11P Q
}22 
}33 	
private55 
Task55 
HandleException55 $
(55$ %
ref55% (
HttpContext55) 4
context555 <
,55< =
ref55> A
System55B H
.55H I
	Exception55I R
	exception55S \
)55\ ]
{66 	
Devon4NetLogger77 
.77 
Error77 !
(77! "
	exception77" +
)77+ ,
;77, -
var99 
exceptionTypeValue99 "
=99# $
	exception99% .
.99. /
GetType99/ 6
(996 7
)997 8
;998 9
var:: 
exceptionInterfaces:: #
=::$ %
exceptionTypeValue::& 8
.::8 9
GetInterfaces::9 F
(::F G
)::G H
.::H I
Select::I O
(::O P
i::P Q
=>::R T
i::U V
.::V W
Name::W [
)::[ \
.::\ ]
ToList::] c
(::c d
)::d e
;::e f
exceptionInterfaces;; 
.;;  
Add;;  #
(;;# $
exceptionTypeValue;;$ 6
.;;6 7
Name;;7 ;
);;; <
;;;< =
return== 
exceptionInterfaces== &
switch==' -
{>> 
{?? 
}?? 
exceptionType?? !
when??" &
exceptionType??' 4
.??4 5
Contains??5 =
(??= >
$str??> T
)??T U
=>??V X
HandleContext??Y f
(??f g
ref??g j
context??k r
,??r s
StatusCodes@@ 
.@@  (
Status422UnprocessableEntity@@  <
)@@< =
,@@= >
{AA 
}AA 
exceptionTypeAA !
whenAA" &
exceptionTypeAA' 4
.AA4 5
ContainsAA5 =
(AA= >
$strAA> Q
)AAQ R
||AAS U
exceptionTypeBB' 4
.BB4 5
ContainsBB5 =
(BB= >
$strBB> U
)BBU V
||BBW Y
exceptionTypeCC' 4
.CC4 5
ContainsCC5 =
(CC= >
$strCC> Q
)CCQ R
||CCS U
exceptionTypeDD' 4
.DD4 5
ContainsDD5 =
(DD= >
$strDD> U
)DDU V
=>DDW Y
HandleContextDDZ g
(DDg h
refDDh k
contextDDl s
,DDs t
StatusCodesEE 
.EE  
Status400BadRequestEE  3
)EE3 4
,EE4 5
{FF 
}FF 
exceptionTypeFF !
whenFF" &
exceptionTypeFF' 4
.FF4 5
ContainsFF5 =
(FF= >
$strFF> P
)FFP Q
=>FFR T
HandleContextFFU b
(FFb c
refFFc f
contextFFg n
,FFn o
(GG 
(GG 
IWebApiExceptionGG &
)GG& '
	exceptionGG( 1
)GG1 2
.GG2 3

StatusCodeGG3 =
,GG= >
	exceptionGG? H
.GGH I
MessageGGI P
,GGP Q
(HH 
(HH 
IWebApiExceptionHH &
)HH& '
	exceptionHH( 1
)HH1 2
.HH2 3
ShowMessageHH3 >
)HH> ?
,HH? @
_II 
=>II 
HandleContextII "
(II" #
refII# &
contextII' .
,II. /
StatusCodesII0 ;
.II; <(
Status500InternalServerErrorII< X
,IIX Y
	exceptionIIZ c
.IIc d
MessageIId k
)IIk l
}JJ 
;JJ 
}KK 	
privateMM 
staticMM 
TaskMM 
HandleContextMM )
(MM) *
refMM* -
HttpContextMM. 9
contextMM: A
,MMA B
intMMC F
?MMF G

statusCodeMMH R
=MMS T
nullMMU Y
,MMY Z
stringMM[ a
errorMessageMMb n
=MMo p
nullMMq u
,MMu v
boolMMw {
showMessage	MM| á
=
MMà â
false
MMä è
)
MMè ê
{NN 	
contextOO 
.OO 
ResponseOO 
.OO 
HeadersOO $
.OO$ %
ClearOO% *
(OO* +
)OO+ ,
;OO, -
contextPP 
.PP 
ResponsePP 
.PP 

StatusCodePP '
=PP( )

statusCodePP* 4
??PP5 7
StatusCodesPP8 C
.PPC D(
Status500InternalServerErrorPPD `
;PP` a
ifRR 
(RR 
!RR 
showMessageRR 
||RR  

statusCodeRR! +
==RR, .
StatusCodesRR/ :
.RR: ;
Status204NoContentRR; M
||RRN P
stringRRQ W
.RRW X
IsNullOrEmptyRRX e
(RRe f
errorMessageRRf r
)RRr s
)RRt u
returnRRv |
Task	RR} Å
.
RRÅ Ç
CompletedTask
RRÇ è
;
RRè ê
contextTT 
.TT 
ResponseTT 
.TT 
ContentTypeTT (
=TT) *
$strTT+ =
;TT= >
returnUU 
contextUU 
.UU 
ResponseUU #
.UU# $

WriteAsyncUU$ .
(UU. /
JsonSerializerUU/ =
.UU= >
	SerializeUU> G
(UUG H
newUUH K
{UUL M
errorUUN S
=UUT U
errorMessageUUV b
}UUc d
)UUd e
)UUe f
;UUf g
}VV 	
}WW 
}XX ì1
ÆC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Middleware\Headers\CustomHeadersMiddleware.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #

Middleware# -
.- .
Headers. 5
{ 
public

 

class

 #
CustomHeadersMiddleware

 (
{ 
private 
readonly 
RequestDelegate (
_next) .
;. /
public #
CustomHeadersMiddleware &
(& '
RequestDelegate' 6
next7 ;
); <
{ 	
_next 
= 
next 
; 
} 	
public 
async 
Task 
Invoke  
(  !
HttpContext! ,
context- 4
)4 5
{ 	
if 
( 
context 
. 
Request 
.  
Method  &
.& '
ToLower' .
(. /
)/ 0
==1 3
$str4 =
)= >
await? D
_nextE J
(J K
contextK R
)R S
;S T
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &&
MiddlewareHeaderDefinition& @
.@ A)
StrictTransportSecurityHeaderA ^
)^ _
)_ `
{ 
context 
. 
TryAddHeader $
($ %+
CustomMiddlewareHeaderTypeConst% D
.D E)
StrictTransportSecurityHeaderE b
,b c&
MiddlewareHeaderDefinitiond ~
.~ *
StrictTransportSecurityHeader	 ú
)
ú ù
;
ù û
} 
if 
( 
! 
string 
. 
IsNullOrEmpty %
(% &&
MiddlewareHeaderDefinition& @
.@ A
XFrameOptionsHeaderA T
)T U
)U V
{ 
context 
. 
TryAddHeader $
($ %+
CustomMiddlewareHeaderTypeConst% D
.D E
XFrameOptionsHeaderE X
,X Y&
MiddlewareHeaderDefinitionZ t
.t u 
XFrameOptionsHeader	u à
)
à â
;
â ä
} 
if!! 
(!! 
!!! 
string!! 
.!! 
IsNullOrEmpty!! %
(!!% &&
MiddlewareHeaderDefinition!!& @
.!!@ A
XssProtectionHeader!!A T
)!!T U
)!!U V
{"" 
context## 
.## 
TryAddHeader## $
(##$ %+
CustomMiddlewareHeaderTypeConst##% D
.##D E
XssProtectionHeader##E X
,##X Y&
MiddlewareHeaderDefinition##Z t
.##t u 
XssProtectionHeader	##u à
)
##à â
;
##â ä
}$$ 
if&& 
(&& 
!&& 
string&& 
.&& 
IsNullOrEmpty&& %
(&&% &&
MiddlewareHeaderDefinition&&& @
.&&@ A%
XContentTypeOptionsHeader&&A Z
)&&Z [
)&&[ \
{'' 
context(( 
.(( 
TryAddHeader(( $
((($ %+
CustomMiddlewareHeaderTypeConst((% D
.((D E%
XContentTypeOptionsHeader((E ^
,((^ _&
MiddlewareHeaderDefinition((` z
.((z {&
XContentTypeOptionsHeader	(({ î
)
((î ï
;
((ï ñ
})) 
if++ 
(++ 
!++ 
string++ 
.++ 
IsNullOrEmpty++ %
(++% &&
MiddlewareHeaderDefinition++& @
.++@ A'
ContentSecurityPolicyHeader++A \
)++\ ]
)++] ^
{,, 
context-- 
.-- 
TryAddHeader-- $
(--$ %+
CustomMiddlewareHeaderTypeConst--% D
.--D E'
ContentSecurityPolicyHeader--E `
,--` a&
MiddlewareHeaderDefinition--b |
.--| }(
ContentSecurityPolicyHeader	--} ò
)
--ò ô
;
--ô ö
}.. 
if00 
(00 
!00 
string00 
.00 
IsNullOrEmpty00 %
(00% &&
MiddlewareHeaderDefinition00& @
.00@ A.
"PermittedCrossDomainPoliciesHeader00A c
)00c d
)00d e
{11 
context22 
.22 
TryAddHeader22 $
(22$ %+
CustomMiddlewareHeaderTypeConst22% D
.22D E.
"PermittedCrossDomainPoliciesHeader22E g
,22g h'
MiddlewareHeaderDefinition	22i É
.
22É Ñ0
"PermittedCrossDomainPoliciesHeader
22Ñ ¶
)
22¶ ß
;
22ß ®
}33 
if55 
(55 
!55 
string55 
.55 
IsNullOrEmpty55 %
(55% &&
MiddlewareHeaderDefinition55& @
.55@ A 
ReferrerPolicyHeader55A U
)55U V
)55V W
{66 
context77 
.77 
TryAddHeader77 $
(77$ %+
CustomMiddlewareHeaderTypeConst77% D
.77D E 
ReferrerPolicyHeader77E Y
,77Y Z&
MiddlewareHeaderDefinition77[ u
.77u v!
ReferrerPolicyHeader	77v ä
)
77ä ã
;
77ã å
}88 
context:: 
.:: 
TryRemoveHeader:: #
(::# $+
CustomMiddlewareHeaderTypeConst::$ C
.::C D
ServerHeader::D P
)::P Q
;::Q R
context;; 
.;; 
TryRemoveHeader;; #
(;;# $+
CustomMiddlewareHeaderTypeConst;;$ C
.;;C D
AspNetVersion;;D Q
);;Q R
;;;R S
context<< 
.<< 
TryRemoveHeader<< #
(<<# $+
CustomMiddlewareHeaderTypeConst<<$ C
.<<C D
XPowered<<D L
)<<L M
;<<M N
await>> 
_next>> 
(>> 
context>> 
)>>  
.>>  !
ConfigureAwait>>! /
(>>/ 0
false>>0 5
)>>5 6
;>>6 7
}?? 	
}@@ 
}AA á
¶C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Middleware\Headers\HeaderTypeConst.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #

Middleware# -
.- .
Headers. 5
{ 
public 

static 
class +
CustomMiddlewareHeaderTypeConst 7
{ 
public 
const 
string %
AccessControlExposeHeader 5
=6 7
$str8 W
;W X
public 
const 
string )
StrictTransportSecurityHeader 9
=: ;
$str< W
;W X
public		 
const		 
string		 
XFrameOptionsHeader		 /
=		0 1
$str		2 C
;		C D
public 
const 
string 
XssProtectionHeader /
=0 1
$str2 D
;D E
public 
const 
string %
XContentTypeOptionsHeader 5
=6 7
$str8 P
;P Q
public 
const 
string '
ContentSecurityPolicyHeader 7
=8 9
$str: S
;S T
public 
const 
string .
"PermittedCrossDomainPoliciesHeader >
=? @
$strA d
;d e
public 
const 
string  
ReferrerPolicyHeader 0
=1 2
$str3 D
;D E
public 
const 
string 
ServerHeader (
=) *
$str+ 3
;3 4
public 
const 
string 
AspNetVersion )
=* +
$str, >
;> ?
public 
const 
string 
XPowered $
=% &
$str' 5
;5 6
public 
const 
string 
	XsrfToken %
=& '
$str( 4
;4 5
} 
} §
±C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Middleware\Headers\MiddlewareHeaderDefinition.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #

Middleware# -
.- .
Headers. 5
{ 
public 

static 
class &
MiddlewareHeaderDefinition 2
{ 
public 
static 
string %
AccessControlExposeHeader 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public		 
static		 
string		 )
StrictTransportSecurityHeader		 :
{		; <
get		= @
;		@ A
set		B E
;		E F
}		G H
public

 
static

 
string

 
XFrameOptionsHeader

 0
{

1 2
get

3 6
;

6 7
set

8 ;
;

; <
}

= >
public 
static 
string 
XssProtectionHeader 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
static 
string %
XContentTypeOptionsHeader 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
static 
string '
ContentSecurityPolicyHeader 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
public 
static 
string .
"PermittedCrossDomainPoliciesHeader ?
{@ A
getB E
;E F
setG J
;J K
}L M
public 
static 
string  
ReferrerPolicyHeader 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
static 
void 
SetupHeaders '
(' (
this( ,
IServiceCollection- ?
services@ H
,H I
refJ M
IConfigurationN \
configuration] j
)j k
{ 	%
AccessControlExposeHeader %
=& '
configuration( 5
[5 6
$str6 Y
]Y Z
;Z [)
StrictTransportSecurityHeader )
=* +
configuration, 9
[9 :
$str: a
]a b
;b c
XFrameOptionsHeader 
=  !
configuration" /
[/ 0
$str0 M
]M N
;N O
XssProtectionHeader 
=  !
configuration" /
[/ 0
$str0 M
]M N
;N O%
XContentTypeOptionsHeader %
=& '
configuration( 5
[5 6
$str6 Y
]Y Z
;Z ['
ContentSecurityPolicyHeader '
=( )
configuration* 7
[7 8
$str8 ]
]] ^
;^ _.
"PermittedCrossDomainPoliciesHeader .
=/ 0
configuration1 >
[> ?
$str? k
]k l
;l m 
ReferrerPolicyHeader  
=! "
configuration# 0
[0 1
$str1 O
]O P
;P Q
} 	
} 
} ⁄	
¶C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Middleware\MiddlewareConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Configuration' 4
{ 
public 

static 
class #
MiddlewareConfiguration /
{		 
public

 
static

 
void

 "
SetupDevonfwMiddleware

 1
(

1 2
this

2 6
IApplicationBuilder

7 J
builder

K R
)

R S
{ 	
builder 
. 
UseMiddleware !
<! "'
ExceptionHandlingMiddleware" =
>= >
(> ?
)? @
;@ A
builder 
. 
UseMiddleware !
<! "#
CustomHeadersMiddleware" 9
>9 :
(: ;
); <
;< =
builder 
. 
UseMiddleware !
<! "(
ClientCertificatesMiddleware" >
>> ?
(? @
)@ A
;A B
} 	
} 
} 