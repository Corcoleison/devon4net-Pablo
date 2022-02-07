ÑR
ÆC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CircuitBreaker\CircuitBreakerConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Configuration' 4
{ 
public 

static 
class '
CircuitBreakerConfiguration 3
{ 
private 
static 
bool 
CheckCertificate ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
static 
void 
SetupCircuitBreaker .
(. /
this/ 3
IServiceCollection4 F
servicesG O
,O P
refQ T
IConfigurationU c
configurationd q
)q r
{ 	
var !
circuitBreakerOptions %
=& '
services( 0
.0 1
GetTypedOptions1 @
<@ A!
CircuitBreakerOptionsA V
>V W
(W X
configurationX e
,e f
$strg w
)w x
;x y
if 
( !
circuitBreakerOptions %
?% &
.& '
	Endpoints' 0
==1 3
null4 8
||9 ;
!< =!
circuitBreakerOptions= R
.R S
	EndpointsS \
.\ ]
Any] `
(` a
)a b
)b c
{ 
return 
; 
} 
services   
.   
AddSingleton   !
(  ! "
typeof  " (
(  ( )
IBuiltInTypes  ) 6
)  6 7
,  7 8
typeof  9 ?
(  ? @
BuiltInTypes  @ L
)  L M
)  M N
;  N O
CheckCertificate"" 
="" !
circuitBreakerOptions"" 4
.""4 5
CheckCertificate""5 E
;""E F
services## 
.## 
AddHttpClient## "
(##" #!
circuitBreakerOptions### 8
.##8 9
	Endpoints##9 B
)##B C
;##C D
services$$ 
.$$ 
AddTransient$$ !
<$$! "
IHttpClientHandler$$" 4
,$$4 5
HttpClientHandler$$6 G
>$$G H
($$H I
)$$I J
;$$J K
}%% 	
private'' 
static'' 
void'' 
AddHttpClient'' )
('') *
this''* .
IServiceCollection''/ A
services''B J
,''J K
Endpoint''L T
endPointEntity''U c
)''c d
{(( 	
if)) 
()) 
endPointEntity)) 
==)) !
null))" &
)))& '
throw))( -
new)). 1!
ArgumentNullException))2 G
())G H
$str))H X
,))X Y
$str))Z z
)))z {
;)){ |
var++ 
waitAndSync++ 
=++ 
endPointEntity++ ,
.++, -
GetWaitAndRetry++- <
(++< =
)++= >
;++> ?
var,, 
waitAndSyncList,, 
=,,  !
waitAndSync,," -
.,,- .
Select,,. 4
(,,4 5
w,,5 6
=>,,7 9
new,,: =
TimeSpan,,> F
(,,F G
Convert,,G N
.,,N O
ToInt32,,O V
(,,V W
w,,W X
),,X Y
),,Y Z
),,Z [
.,,[ \
ToList,,\ b
(,,b c
),,c d
;,,d e
services.. 
... 
AddHttpClient.. "
(.." #
endPointEntity..# 1
...1 2
Name..2 6
,..6 7
client..8 >
=>..? A
{// 
client00 
.00 
BaseAddress00 &
=00' (
new00) ,
Uri00- 0
(000 1
endPointEntity001 ?
.00? @
BaseAddress00@ K
)00K L
;00L M
foreach22 
(22 
var22  
(22! "
key22" %
,22% &
value22' ,
)22, -
in22. 0
endPointEntity221 ?
.22? @

GetHeaders22@ J
(22J K
)22K L
)22L M
{33 
client44 
.44 !
DefaultRequestHeaders44 4
.444 5
Add445 8
(448 9
key449 <
,44< =
value44> C
)44C D
;44D E
}55 
}77 
)77 
.77 .
"ConfigurePrimaryHttpMessageHandler77 5
(775 6
(776 7
)777 8
=>779 ;
{88 
var99 
handler99 
=99  !!
GetHttpMessageHandler99" 7
(997 8
)998 9
;999 :
if;; 
(;; 
!;; 
endPointEntity;; '
.;;' (
UseCertificate;;( 6
);;6 7
{<< 
return== 
handler== &
;==& '
}>> 
if@@ 
(@@ 
endPointEntity@@ &
.@@& '
Certificate@@' 2
==@@3 5
null@@6 :
)@@: ;
{AA 
throwBB 
newBB ! 
ApplicationExceptionBB" 6
(BB6 7
$"BB7 9
$strBB9 F
{BBF G
endPointEntityBBG U
.BBU V
NameBBV Z
}BBZ [
$str	BB[ ¢
"
BB¢ £
)
BB£ §
;
BB§ •
}CC 
varEE 
certificateEE #
=EE$ %
newEE& )
X509Certificate2EE* :
(EE: ;
FileOperationsEE; I
.EEI J
GetFileFullPathEEJ Y
(EEY Z
endPointEntityEEZ h
.EEh i
CertificateEEi t
)EEt u
,EEu v
endPointEntity	EEw Ö
.
EEÖ Ü!
CertificatePassword
EEÜ ô
)
EEô ö
;
EEö õ
handlerFF 
.FF 
SslProtocolsFF (
=FF) *
stringFF+ 1
.FF1 2
IsNullOrEmptyFF2 ?
(FF? @
endPointEntityFF@ N
.FFN O
SslProtocolFFO Z
)FFZ [
?FF\ ]
SslProtocolsFF^ j
.FFj k
Tls12FFk p
:FFq r
(FFs t
SslProtocols	FFt Ä
)
FFÄ Å
(
FFÅ Ç
Convert
FFÇ â
.
FFâ ä
ToInt32
FFä ë
(
FFë í
endPointEntity
FFí †
.
FF† °
SslProtocol
FF° ¨
)
FF¨ ≠
)
FF≠ Æ
;
FFÆ Ø
handlerGG 
.GG 
ClientCertificatesGG .
.GG. /
AddGG/ 2
(GG2 3
certificateGG3 >
)GG> ?
;GG? @
handlerHH 
.HH $
ClientCertificateOptionsHH 4
=HH5 6#
ClientCertificateOptionHH7 N
.HHN O
ManualHHO U
;HHU V
returnII 
handlerII "
;II" #
}KK 
)KK 
.LL '
AddTransientHttpErrorPolicyLL ,
(LL, -
builderLL- 4
=>LL5 7
builderLL8 ?
.LL? @
WaitAndRetryAsyncLL@ Q
(LLQ R
waitAndSyncListLLR a
,LLa b
(LLc d
resultLLd j
,LLj k
timeSpanLLl t
,LLt u

retryCount	LLv Ä
,
LLÄ Å
context
LLÇ â
)
LLâ ä
=>
LLã ç
{MM 
ifNN 
(NN 
waitAndSyncListNN '
.NN' (
CountNN( -
(NN- .
)NN. /
!=NN0 2

retryCountNN3 =
)NN= >
returnNN? E
;NNE F
throwOO 
newOO  
HttpRequestExceptionOO 2
(OO2 3
$"OO3 5
$strOO5 C
{OOC D
endPointEntityOOD R
.OOR S
NameOOS W
}OOW X
$strOOX Z
{OOZ [
endPointEntityOO[ i
.OOi j
BaseAddressOOj u
}OOu v
$strOOv w
"OOw x
,OOx y
result	OOz Ä
.
OOÄ Å
	Exception
OOÅ ä
)
OOä ã
;
OOã å
}PP 
)PP 
)PP 
.QQ '
AddTransientHttpErrorPolicyQQ ,
(QQ, -
builderQQ- 4
=>QQ5 7
builderQQ8 ?
.QQ? @
CircuitBreakerAsyncQQ@ S
(QQS T
waitAndSyncRR  
.RR  !
CountRR! &
,RR& '
TimeSpanSS 
.SS 
FromMillisecondsSS .
(SS. /
endPointEntitySS/ =
.SS= >
DurationOfBreakSS> M
)SSM N
)SSN O
)TT 
;TT 
}UU 	
privateWW 
staticWW 
SystemWW 
.WW 
NetWW !
.WW! "
HttpWW" &
.WW& '
HttpClientHandlerWW' 8!
GetHttpMessageHandlerWW9 N
(WWN O
)WWO P
{XX 	
returnYY 
newYY 
SystemYY 
.YY 
NetYY !
.YY! "
HttpYY" &
.YY& '
HttpClientHandlerYY' 8
{ZZ 5
)ServerCertificateCustomValidationCallback[[ 9
=[[: ;
([[< =
m[[= >
,[[> ?
c[[@ A
,[[A B
a[[C D
,[[D E
e[[F G
)[[G H
=>[[I K
![[L M
CheckCertificate[[M ]
,[[] ^
}\\ 
;\\ 
}]] 	
private__ 
static__ 
void__ 
AddHttpClient__ )
(__) *
this__* .
IServiceCollection__/ A
services__B J
,__J K
IReadOnlyCollection__L _
<___ `
Endpoint__` h
>__h i
endPointEntityList__j |
)__| }
{`` 	
ifaa 
(aa 
endPointEntityListaa "
==aa# %
nullaa& *
||aa+ -
!aa. /
endPointEntityListaa/ A
.aaA B
AnyaaB E
(aaE F
)aaF G
)aaG H
throwaaI N
newaaO R!
ArgumentNullExceptionaaS h
(aah i
$straai }
,aa} ~
$str	aa ¥
)
aa¥ µ
;
aaµ ∂
foreachcc 
(cc 
varcc 
endPointEntitycc '
incc( *
endPointEntityListcc+ =
)cc= >
{dd 
servicesee 
.ee 
AddHttpClientee &
(ee& '
endPointEntityee' 5
)ee5 6
;ee6 7
}ff 
}gg 	
}hh 
}ii ∑
¶C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CircuitBreaker\Common\BuiltInTypes.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CircuitBreaker# 1
.1 2
Common2 8
{ 
public 

class 
BuiltInTypes 
: 
IBuiltInTypes  -
{ 
private		 
List		 
<		 
string		 
>		 !
BuiltInTypeObjecNames		 2
{		3 4
get		5 8
;		8 9
}		: ;
public 
BuiltInTypes 
( 
) 
{ 	!
BuiltInTypeObjecNames !
=" #
new$ '
List( ,
<, -
string- 3
>3 4
(4 5
)5 6
;6 7!
BuiltInTypeObjecNames !
=" #
typeof$ *
(* +
Type+ /
)/ 0
.0 1
Assembly1 9
.9 :
GetTypes: B
(B C
)C D
.D E
WhereE J
(J K
xK L
=>M O
xP Q
.Q R
IsPublicR Z
&&[ ]
x^ _
._ `
IsSealed` h
&&i k
xl m
.m n
IsSerializablen |
&&} 
x
Ä Å
.
Å Ç
	Namespace
Ç ã
==
ã ç
$str
ç ï
)
ï ñ
.
ñ ó
Select
ó ù
(
ù û
x
û ü
=>
† ¢
x
£ §
.
§ •
Name
• ©
)
© ™
.
™ ´
ToList
´ ±
(
± ≤
)
≤ ≥
;
≥ ¥
} 	
public 
List 
< 
string 
> $
GetBuiltInTypeObjecNames 4
(4 5
)5 6
{ 	
return !
BuiltInTypeObjecNames (
;( )
} 	
} 
} ‰
ßC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CircuitBreaker\Common\IBuiltInTypes.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CircuitBreaker# 1
.1 2
Common2 8
{ 
public 

	interface 
IBuiltInTypes "
{ 
List 
< 
string 
> $
GetBuiltInTypeObjecNames -
(- .
). /
;/ 0
} 
}		 ﬂ˝
¨C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CircuitBreaker\Handler\HttpClientHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CircuitBreaker# 1
.1 2
Handler2 9
{ 
public 

class 
HttpClientHandler "
:# $
IHttpClientHandler% 7
{ 
private 
IHttpClientFactory "
HttpClientFactory# 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
private 
IBuiltInTypes 
BuiltInTypes *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
private 
const 
string 

SoapAction '
=( )
$str* 6
;6 7
private 
static 
readonly !
JsonSerializerOptions  5&
CamelJsonSerializerOptions6 P
=Q R
newS V!
JsonSerializerOptionsW l
{m n!
PropertyNamingPolicy	n Ç
=
É Ñ
JsonNamingPolicy
Ö ï
.
ï ñ
	CamelCase
ñ ü
,
ü †
IgnoreNullValues
° ±
=
≤ ≥
true
¥ ∏
}
∏ π
;
π ∫
public 
HttpClientHandler  
(  !
IHttpClientFactory! 3
httpClientFactory4 E
,E F
IBuiltInTypesG T
builtInTypesU a
)a b
{ 	
HttpClientFactory 
= 
httpClientFactory  1
;1 2
BuiltInTypes 
= 
builtInTypes '
;' (
} 	
public 
async 
Task 
< 
HttpResponseMessage -
>- .
Send/ 3
(3 4

HttpMethod4 >

httpMethod? I
,I J
stringK Q
endPointNameR ^
,^ _
string` f
urlg j
,j k
objectl r
contents z
,z {
string	| Ç
	mediaType
É å
,
å ç
bool
é í
contentAsJson
ì †
=
° ¢
true
£ ß
,
ß ®
bool
© ≠
useCamelCase
Æ ∫
=
ª º
false
Ω ¬
,
¬ √

Dictionary
ƒ Œ
<
Œ œ
string
œ ’
,
’ ÷
string
◊ ›
>
› ﬁ
headers
ﬂ Ê
=
Á Ë
null
È Ì
)
Ì Ó
{ 	
try 
{   
return!! 
await!! 
SendCommand!! (
(!!( )

httpMethod!!) 3
,!!3 4
endPointName!!5 A
,!!A B
url!!C F
,!!F G
content!!H O
,!!O P
	mediaType!!Q Z
,!!Z [
headers!!\ c
,!!c d
contentAsJson!!e r
,!!r s
useCamelCase	!!t Ä
)
!!Ä Å
;
!!Å Ç
}"" 
catch## 
(## 
	Exception## 
ex## 
)##  
{$$ 
LogException%% 
(%% 
ref%%  
ex%%! #
)%%# $
;%%$ %
throw&& 
;&& 
}'' 
}(( 	
public** 
async** 
Task** 
<** 
Stream**  
>**  !
Send**" &
(**& '

HttpMethod**' 1

httpMethod**2 <
,**< =
string**> D
endPointName**E Q
,**Q R
string**S Y
url**Z ]
,**] ^
object**_ e
content**f m
,**m n
string**o u
	mediaType**v 
,	** Ä

Dictionary
**Å ã
<
**ã å
string
**å í
,
**í ì
string
**î ö
>
**ö õ
headers
**ú £
=
**§ •
null
**¶ ™
,
**™ ´
bool
**¨ ∞
contentAsJson
**± æ
=
**ø ¿
true
**¡ ≈
,
**≈ ∆
bool
**« À
useCamelCase
**Ã ÿ
=
**Ÿ ⁄
false
**€ ‡
)
**‡ ·
{++ 	
HttpResponseMessage,, 
httpResponseMessage,,  3
=,,4 5
null,,6 :
;,,: ;
try.. 
{// 
httpResponseMessage00 #
=00$ %
await00& +
SendCommand00, 7
(007 8

httpMethod008 B
,00B C
endPointName00D P
,00P Q
url00R U
,00U V
content00W ^
,00^ _
	mediaType00` i
,00i j
headers00k r
,00r s
contentAsJson	00t Å
,
00Å Ç
useCamelCase
00É è
)
00è ê
;
00ê ë
return11 
await11 &
ManageHttpResponseAsStream11 7
(117 8
httpResponseMessage118 K
,11K L
endPointName11M Y
)11Y Z
;11Z [
}22 
catch33 
(33 
	Exception33 
ex33 
)33  
{44 
LogException55 
(55 
ref55  
ex55! #
)55# $
;55$ %
throw66 
;66 
}77 
finally88 
{99 
httpResponseMessage:: #
?::# $
.::$ %
Dispose::% ,
(::, -
)::- .
;::. /
};; 
}<< 	
public>> 
async>> 
Task>> 
<>> 
T>> 
>>> 
Send>> !
<>>! "
T>>" #
>>># $
(>>$ %

HttpMethod>>% /

httpMethod>>0 :
,>>: ;
string>>< B
endPointName>>C O
,>>O P
string>>Q W
url>>X [
,>>[ \
object>>] c
content>>d k
,>>k l
string>>m s
	mediaType>>t }
,>>} ~

Dictionary	>> â
<
>>â ä
string
>>ä ê
,
>>ê ë
string
>>í ò
>
>>ò ô
headers
>>ö °
=
>>¢ £
null
>>§ ®
,
>>® ©
bool
>>™ Æ
contentAsJson
>>Ø º
=
>>Ω æ
true
>>ø √
,
>>√ ƒ
bool
>>≈ …
useCamelCase
>>  ÷
=
>>◊ ÿ
false
>>Ÿ ﬁ
)
>>ﬁ ﬂ
{?? 	
HttpResponseMessage@@ 
httpResponseMessage@@  3
=@@4 5
null@@6 :
;@@: ;
tryAA 
{BB 
httpResponseMessageCC #
=CC$ %
awaitCC& +
SendCommandCC, 7
(CC7 8

httpMethodCC8 B
,CCB C
endPointNameCCD P
,CCP Q
urlCCR U
,CCU V
contentCCW ^
,CC^ _
	mediaTypeCC` i
,CCi j
headersCCk r
,CCr s
contentAsJson	CCt Å
,
CCÅ Ç
useCamelCase
CCÉ è
)
CCè ê
;
CCê ë
varDD 

httpResultDD 
=DD  
awaitDD! &
ManageHttpResponseDD' 9
(DD9 :
httpResponseMessageDD: M
,DDM N
endPointNameDDO [
)DD[ \
;DD\ ]
returnEE 
DeserializeEE "
<EE" #
TEE# $
>EE$ %
(EE% &

httpResultEE& 0
,EE0 1
useCamelCaseEE2 >
)EE> ?
;EE? @
}FF 
catchGG 
(GG 
	ExceptionGG 
exGG 
)GG  
{HH 
LogExceptionII 
(II 
refII  
exII! #
)II# $
;II$ %
throwJJ 
;JJ 
}KK 
finallyLL 
{MM 
httpResponseMessageNN #
?NN# $
.NN$ %
DisposeNN% ,
(NN, -
)NN- .
;NN. /
}OO 
}PP 	
publicRR 
asyncRR 
TaskRR 
<RR 
stringRR  
>RR  !
SendSoapRequestRR" 1
(RR1 2
stringRR2 8
endPointNameRR9 E
,RRE F
stringRRG M
urlRRN Q
,RRQ R
stringRRS Y
soapMessageRRZ e
,RRe f
stringRRg m
soapActionUrlRRn {
=RR| }
null	RR~ Ç
,
RRÇ É

Dictionary
RRÑ é
<
RRé è
string
RRè ï
,
RRï ñ
string
RRó ù
>
RRù û
headers
RRü ¶
=
RRß ®
null
RR© ≠
)
RR≠ Æ
{SS 	
varTT 
soapHeadersTT 
=TT 
AddSoapHeadersTT ,
(TT, -
headersTT- 4
,TT4 5
soapActionUrlTT6 C
)TTC D
;TTD E
varUU 
httpResponseUU 
=UU 
awaitUU $
SendCommandUU% 0
(UU0 1

HttpMethodUU1 ;
.UU; <
PostUU< @
,UU@ A
endPointNameUUB N
,UUN O
urlUUP S
,UUS T
soapMessageUUU `
,UU` a
	MediaTypeUUb k
.UUk l
TextXmlUUl s
,UUs t
soapHeaders	UUu Ä
,
UUÄ Å
false
UUÇ á
)
UUá à
;
UUà â
returnVV 
awaitVV 
ManageHttpResponseVV +
(VV+ ,
httpResponseVV, 8
,VV8 9
endPointNameVV: F
)VVF G
;VVG H
}WW 	
private[[ 

Dictionary[[ 
<[[ 
string[[ !
,[[! "
string[[# )
>[[) *
AddSoapHeaders[[+ 9
([[9 :

Dictionary[[: D
<[[D E
string[[E K
,[[K L
string[[M S
>[[S T
headers[[U \
,[[\ ]
string[[^ d
soapActionUrl[[e r
)[[r s
{\\ 	
if]] 
(]] 
string]] 
.]] 
IsNullOrEmpty]] $
(]]$ %
soapActionUrl]]% 2
)]]2 3
)]]3 4
return]]5 ;
headers]]< C
;]]C D
if^^ 
(^^ 
headers^^ 
==^^ 
null^^ 
)^^  
return^^! '
new^^( +

Dictionary^^, 6
<^^6 7
string^^7 =
,^^= >
string^^? E
>^^E F
{^^G H
{^^I J

SoapAction^^K U
,^^U V
soapActionUrl^^W d
}^^e f
}^^g h
;^^h i
var`` 
result`` 
=`` 
new`` 

Dictionary`` '
<``' (
string``( .
,``. /
string``0 6
>``6 7
(``7 8
headers``8 ?
)``? @
;``@ A
ifbb 
(bb 
!bb 
resultbb 
.bb 
ContainsKeybb #
(bb# $

SoapActionbb$ .
)bb. /
)bb/ 0
{cc 
resultdd 
.dd 
Adddd 
(dd 

SoapActiondd %
,dd% &
soapActionUrldd' 4
)dd4 5
;dd5 6
}ee 
returngg 
resultgg 
;gg 
}hh 	
privatejj 
asyncjj 
Taskjj 
<jj 
HttpResponseMessagejj .
>jj. /
SendCommandjj0 ;
(jj; <

HttpMethodjj< F

httpMethodjjG Q
,jjQ R
stringjjS Y
endPointNamejjZ f
,jjf g
stringjjh n
urljjo r
,jjr s
objectjjt z
content	jj{ Ç
,
jjÇ É
string
jjÑ ä
	mediaType
jjã î
=
jjï ñ
	MediaType
jjó †
.
jj† °
ApplicationJson
jj° ∞
,
jj∞ ±

Dictionary
jj≤ º
<
jjº Ω
string
jjΩ √
,
jj√ ƒ
string
jj≈ À
>
jjÀ Ã
headers
jjÕ ‘
=
jj’ ÷
null
jj◊ €
,
jj€ ‹
bool
jj› ·
contentAsJson
jj‚ Ô
=
jj Ò
true
jjÚ ˆ
,
jjˆ ˜
bool
jj¯ ¸
useCamelCase
jj˝ â
=
jjä ã
false
jjå ë
)
jjë í
{kk 	

HttpClientll 

httpClientll !
=ll" #
nullll$ (
;ll( )
HttpResponseMessagemm 
httpResponseMessagemm  3
;mm3 4
tryoo 
{pp 
varqq 
methodqq 
=qq 
newqq  

HttpMethodqq! +
(qq+ ,

httpMethodqq, 6
.qq6 7
ToStringqq7 ?
(qq? @
)qq@ A
)qqA B
;qqB C
usingss 
(ss 

httpClientss !
=ss" #
GetDefaultClientss$ 4
(ss4 5
endPointNamess5 A
,ssA B
headersssC J
)ssJ K
)ssK L
{tt 
varuu 
requestuu 
=uu  !
newuu" %
HttpRequestMessageuu& 8
(uu8 9
methoduu9 ?
,uu? @
GetEncodedUrluuA N
(uuN O

httpClientuuO Y
.uuY Z
BaseAddressuuZ e
.uue f
ToStringuuf n
(uun o
)uuo p
,uup q
urluur u
)uuu v
)uuv w
;uuw x
ifww 
(ww 
contentww 
!=ww  "
nullww# '
)ww' (
{xx 
requestyy 
.yy  
Contentyy  '
=yy( )
CreateHttpContentyy* ;
(yy; <
contentyy< C
,yyC D
	mediaTypeyyE N
,yyN O
contentAsJsonyyP ]
,yy] ^
useCamelCaseyy_ k
)yyk l
;yyl m
}zz 
httpResponseMessage|| '
=||( )
await||* /

httpClient||0 :
.||: ;
	SendAsync||; D
(||D E
request||E L
)||L M
.||M N
ConfigureAwait||N \
(||\ ]
false||] b
)||b c
;||c d
await}} 
LogHttpResponse}} )
(}}) *
httpResponseMessage}}* =
,}}= >
endPointName}}? K
)}}K L
.}}L M
ConfigureAwait}}M [
(}}[ \
false}}\ a
)}}a b
;}}b c
}~~ 
} 
catch
ÄÄ 
(
ÄÄ 
	Exception
ÄÄ 
ex
ÄÄ 
)
ÄÄ  
{
ÅÅ 
LogException
ÇÇ 
(
ÇÇ 
ref
ÇÇ  
ex
ÇÇ! #
)
ÇÇ# $
;
ÇÇ$ %
throw
ÉÉ 
;
ÉÉ 
}
ÑÑ 
finally
ÖÖ 
{
ÜÜ 

httpClient
áá 
?
áá 
.
áá 
Dispose
áá #
(
áá# $
)
áá$ %
;
áá% &
}
àà 
return
ää !
httpResponseMessage
ää &
;
ää& '
}
ãã 	
private
çç 

HttpClient
çç 
GetDefaultClient
çç +
(
çç+ ,
string
çç, 2
endPointName
çç3 ?
,
çç? @

Dictionary
ççA K
<
ççK L
string
ççL R
,
ççR S
string
ççT Z
>
ççZ [
headers
çç\ c
=
ççd e
null
ççf j
)
ççj k
{
éé 	
var
èè 

httpClient
èè 
=
èè 
HttpClientFactory
èè .
.
èè. /
CreateClient
èè/ ;
(
èè; <
endPointName
èè< H
)
èèH I
;
èèI J
if
ëë 
(
ëë 
headers
ëë 
==
ëë 
null
ëë 
||
ëë  "
!
ëë# $
headers
ëë$ +
.
ëë+ ,
Any
ëë, /
(
ëë/ 0
)
ëë0 1
)
ëë1 2
return
ëë3 9

httpClient
ëë: D
;
ëëD E
foreach
ìì 
(
ìì 
var
ìì 
(
ìì 
key
ìì 
,
ìì 
value
ìì $
)
ìì$ %
in
ìì& (
headers
ìì) 0
)
ìì0 1
{
îî 

httpClient
ïï 
.
ïï #
DefaultRequestHeaders
ïï 0
.
ïï0 1
Add
ïï1 4
(
ïï4 5
key
ïï5 8
,
ïï8 9
value
ïï: ?
)
ïï? @
;
ïï@ A
}
ññ 
return
òò 

httpClient
òò 
;
òò 
}
ôô 	
private
õõ 
HttpContent
õõ 
CreateHttpContent
õõ -
<
õõ- .
T
õõ. /
>
õõ/ 0
(
õõ0 1
T
õõ1 2
requestContent
õõ3 A
,
õõA B
string
õõC I
	mediaType
õõJ S
,
õõS T
bool
õõU Y
contentAsJson
õõZ g
,
õõg h
bool
õõi m
useCamelCase
õõn z
)
õõz {
{
úú 	
if
ùù 
(
ùù 
requestContent
ùù 
==
ùù !
null
ùù" &
)
ùù& '
return
ùù( .
null
ùù/ 3
;
ùù3 4
var
üü 
requestBody
üü 
=
üü 
contentAsJson
üü +
?
üü, -
	Serialize
üü. 7
(
üü7 8
requestContent
üü8 F
,
üüF G
useCamelCase
üüH T
)
üüT U
:
üüV W
requestContent
üüX f
.
üüf g
ToString
üüg o
(
üüo p
)
üüp q
;
üüq r
HttpContent
°° 
httpContent
°° #
=
°°$ %
new
°°& )
StringContent
°°* 7
(
°°7 8
requestBody
°°8 C
)
°°C D
;
°°D E
if
££ 
(
££ 
	mediaType
££ 
!=
££ 
null
££ !
)
££! "
{
§§ 
httpContent
•• 
.
•• 
Headers
•• #
.
••# $
ContentType
••$ /
=
••0 1
new
••2 5"
MediaTypeHeaderValue
••6 J
(
••J K
	mediaType
••K T
)
••T U
;
••U V
}
¶¶ 
return
®® 
httpContent
®® 
;
®® 
}
©© 	
private
´´ 
void
´´ 
LogException
´´ !
(
´´! "
ref
´´" %
	Exception
´´& /
	exception
´´0 9
)
´´9 :
{
¨¨ 	
Devon4NetLogger
≠≠ 
.
≠≠ 
Error
≠≠ !
(
≠≠! "
	exception
≠≠" +
)
≠≠+ ,
;
≠≠, -
}
ÆÆ 	
private
∞∞ 
string
∞∞ 
	Serialize
∞∞  
(
∞∞  !
object
∞∞! '
toPrint
∞∞( /
,
∞∞/ 0
bool
∞∞1 5
useCamelCase
∞∞6 B
)
∞∞B C
{
±± 	
return
≤≤ 
JsonSerializer
≤≤ !
.
≤≤! "
	Serialize
≤≤" +
(
≤≤+ ,
toPrint
≤≤, 3
,
≤≤3 4
useCamelCase
≤≤5 A
?
≤≤B C(
CamelJsonSerializerOptions
≤≤D ^
:
≤≤_ `
null
≤≤a e
)
≤≤e f
;
≤≤f g
}
≥≥ 	
private
µµ 
T
µµ 
Deserialize
µµ 
<
µµ 
T
µµ 
>
µµ  
(
µµ  !
string
µµ! '
input
µµ( -
,
µµ- .
bool
µµ/ 3
useCamelCase
µµ4 @
)
µµ@ A
{
∂∂ 	
return
∑∑ 
string
∑∑ 
.
∑∑ 
IsNullOrEmpty
∑∑ '
(
∑∑' (
input
∑∑( -
)
∑∑- .
?
∏∏ 
default
∏∏ 
:
ππ 
BuiltInTypes
ππ 
.
ππ &
GetBuiltInTypeObjecNames
ππ 7
(
ππ7 8
)
ππ8 9
.
ππ9 :
Contains
ππ: B
(
ππB C
typeof
ππC I
(
ππI J
T
ππJ K
)
ππK L
.
ππL M
Name
ππM Q
)
ππQ R
?
ππT U
(
ππV W
T
ππW X
)
ππX Y
Convert
ππY `
.
ππ` a

ChangeType
ππa k
(
ππk l
input
ππl q
,
ππq r
typeof
ππs y
(
ππy z
T
ππz {
)
ππ{ |
)
ππ| }
:
ππ~ 
JsonSerializerππÄ é
.ππé è
Deserializeππè ö
<ππö õ
Tππõ ú
>ππú ù
(ππù û
inputππû £
,ππ£ §
useCamelCaseππ• ±
?ππ≤ ≥*
CamelJsonSerializerOptionsππ¥ Œ
:ππœ –
nullππ— ’
)ππ’ ÷
;ππ÷ ◊
}
∫∫ 	
private
ºº 
async
ºº 
Task
ºº 
CheckHttpResponse
ºº ,
(
ºº, -!
HttpResponseMessage
ºº- @!
httpResponseMessage
ººA T
,
ººT U
string
ººV \
endPointName
ºº] i
)
ººi j
{
ΩΩ 	
await
ææ 
LogHttpResponse
ææ !
(
ææ! "!
httpResponseMessage
ææ" 5
,
ææ5 6
endPointName
ææ7 C
)
ææC D
;
ææD E
if
¿¿ 
(
¿¿ !
httpResponseMessage
¿¿ #
==
¿¿$ &
null
¿¿' +
)
¿¿+ ,
{
¡¡ 
throw
¬¬ 
new
¬¬ "
HttpRequestException
¬¬ .
(
¬¬. /
$"
¬¬/ 1
$str
¬¬1 E
{
¬¬E F
endPointName
¬¬F R
}
¬¬R S
$str
¬¬S g
"
¬¬g h
)
¬¬h i
;
¬¬i j
}
√√ 
if
≈≈ 
(
≈≈ !
httpResponseMessage
≈≈ #
!=
≈≈$ &
null
≈≈' +
&&
≈≈, .
!
≈≈/ 0!
httpResponseMessage
≈≈0 C
.
≈≈C D!
IsSuccessStatusCode
≈≈D W
)
≈≈W X
{
∆∆ 
var
«« 
responseResult
«« "
=
««# $
await
««% *!
httpResponseMessage
««+ >
.
««> ?
Content
««? F
.
««F G
ReadAsStringAsync
««G X
(
««X Y
)
««Y Z
.
««Z [
ConfigureAwait
««[ i
(
««i j
false
««j o
)
««o p
;
««p q
throw
»» 
new
»» (
HttpCustomRequestException
»» 4
(
»»4 5
$"
»»5 7
$str
»»7 K
{
»»K L
endPointName
»»L X
}
»»X Y
$str»»Y Ä
{»»Ä Å
(»»Å Ç
int»»Ç Ö
)»»Ö Ü#
httpResponseMessage»»á ö
.»»ö õ

StatusCode»»õ •
}»»• ¶
$str»»¶ ©
{»»© ™
responseResult»»™ ∏
}»»∏ π
"»»π ∫
,»»∫ ª
(»»º Ω
int»»Ω ¿
)»»¿ ¡#
httpResponseMessage»»¬ ’
.»»’ ÷

StatusCode»»÷ ‡
)»»‡ ·
;»»· ‚
}
…… 
}
   	
private
ÃÃ 
async
ÃÃ 
Task
ÃÃ 
<
ÃÃ 
string
ÃÃ !
>
ÃÃ! " 
ManageHttpResponse
ÃÃ# 5
(
ÃÃ5 6!
HttpResponseMessage
ÃÃ6 I!
httpResponseMessage
ÃÃJ ]
,
ÃÃ] ^
string
ÃÃ_ e
endPointName
ÃÃf r
)
ÃÃr s
{
ÕÕ 	
await
ŒŒ 
CheckHttpResponse
ŒŒ #
(
ŒŒ# $!
httpResponseMessage
ŒŒ$ 7
,
ŒŒ7 8
endPointName
ŒŒ9 E
)
ŒŒE F
;
ŒŒF G
return
–– 
await
–– !
httpResponseMessage
–– ,
.
––, -
Content
––- 4
.
––4 5
ReadAsStringAsync
––5 F
(
––F G
)
––G H
.
––H I
ConfigureAwait
––I W
(
––W X
false
––X ]
)
––] ^
;
––^ _
}
—— 	
private
”” 
async
”” 
Task
”” 
<
”” 
Stream
”” !
>
””! "(
ManageHttpResponseAsStream
””# =
(
””= >!
HttpResponseMessage
””> Q!
httpResponseMessage
””R e
,
””e f
string
””g m
endPointName
””n z
)
””z {
{
‘‘ 	
await
’’ 
CheckHttpResponse
’’ #
(
’’# $!
httpResponseMessage
’’$ 7
,
’’7 8
endPointName
’’9 E
)
’’E F
;
’’F G
if
◊◊ 
(
◊◊ !
httpResponseMessage
◊◊ #
==
◊◊$ &
null
◊◊' +
)
◊◊+ ,
{
ÿÿ 
throw
ŸŸ 
new
ŸŸ "
HttpRequestException
ŸŸ .
(
ŸŸ. /
$"
ŸŸ/ 1
$str
ŸŸ1 E
{
ŸŸE F
endPointName
ŸŸF R
}
ŸŸR S
$str
ŸŸS g
"
ŸŸg h
)
ŸŸh i
;
ŸŸi j
}
⁄⁄ 
if
‹‹ 
(
‹‹ !
httpResponseMessage
‹‹ #
.
‹‹# $!
IsSuccessStatusCode
‹‹$ 7
)
‹‹7 8
{
›› 
return
ﬁﬁ 
await
ﬁﬁ !
httpResponseMessage
ﬁﬁ 0
.
ﬁﬁ0 1
Content
ﬁﬁ1 8
.
ﬁﬁ8 9
ReadAsStreamAsync
ﬁﬁ9 J
(
ﬁﬁJ K
)
ﬁﬁK L
.
ﬁﬁL M
ConfigureAwait
ﬁﬁM [
(
ﬁﬁ[ \
false
ﬁﬁ\ a
)
ﬁﬁa b
;
ﬁﬁb c
}
ﬂﬂ 
var
·· 
messageResult
·· 
=
·· 
await
··  %!
httpResponseMessage
··& 9
.
··9 :
Content
··: A
.
··A B
ReadAsStringAsync
··B S
(
··S T
)
··T U
.
··U V
ConfigureAwait
··V d
(
··d e
false
··e j
)
··j k
;
··k l
throw
‚‚ 
new
‚‚ "
HttpRequestException
‚‚ *
(
‚‚* +
$"
‚‚+ -
$str
‚‚- A
{
‚‚A B
endPointName
‚‚B N
}
‚‚N O
$str
‚‚O d
{
‚‚d e
messageResult
‚‚e r
}
‚‚r s
"
‚‚s t
)
‚‚t u
;
‚‚u v
}
„„ 	
private
ÂÂ 
async
ÂÂ 
Task
ÂÂ 
LogHttpResponse
ÂÂ *
(
ÂÂ* +!
HttpResponseMessage
ÂÂ+ >!
httpResponseMessage
ÂÂ? R
,
ÂÂR S
string
ÂÂT Z
endPointName
ÂÂ[ g
)
ÂÂg h
{
ÊÊ 	
if
ÁÁ 
(
ÁÁ !
httpResponseMessage
ÁÁ #
==
ÁÁ$ &
null
ÁÁ' +
)
ÁÁ+ ,
{
ËË 
Devon4NetLogger
ÈÈ 
.
ÈÈ  
Information
ÈÈ  +
(
ÈÈ+ ,
$"
ÈÈ, .
$str
ÈÈ. U
{
ÈÈU V
endPointName
ÈÈV b
}
ÈÈb c
$str
ÈÈc k
"
ÈÈk l
)
ÈÈl m
;
ÈÈm n
return
ÍÍ 
;
ÍÍ 
}
ÎÎ 
var
ÌÌ 
contentResult
ÌÌ 
=
ÌÌ !
httpResponseMessage
ÌÌ  3
.
ÌÌ3 4!
IsSuccessStatusCode
ÌÌ4 G
?
ÓÓ 
$str
ÓÓ 0
:
ÔÔ 
await
ÔÔ 
LogHttpContent
ÔÔ &
(
ÔÔ& '!
httpResponseMessage
ÔÔ' :
.
ÔÔ: ;
Content
ÔÔ; B
,
ÔÔB C
endPointName
ÔÔD P
)
ÔÔP Q
;
ÔÔQ R
Devon4NetLogger
ÒÒ 
.
ÒÒ 
Information
ÒÒ '
(
ÒÒ' (
$"
ÒÒ( *
$str
ÒÒ* Q
{
ÒÒQ R
endPointName
ÒÒR ^
}
ÒÒ^ _
$str
ÒÒ_ o
{
ÒÒo p"
httpResponseMessageÒÒp É
.ÒÒÉ Ñ
RequestMessageÒÒÑ í
}ÒÒí ì
$strÒÒì §
{ÒÒ§ •#
httpResponseMessageÒÒ• ∏
}ÒÒ∏ π
$strÒÒπ Õ
{ÒÒÕ Œ
contentResultÒÒŒ €
}ÒÒ€ ‹
"ÒÒ‹ ›
)ÒÒ› ﬁ
;ÒÒﬁ ﬂ
}
ÚÚ 	
private
ÙÙ 
async
ÙÙ 
Task
ÙÙ 
<
ÙÙ 
string
ÙÙ !
>
ÙÙ! "
LogHttpContent
ÙÙ# 1
(
ÙÙ1 2
HttpContent
ÙÙ2 =
httpContent
ÙÙ> I
,
ÙÙI J
string
ÙÙK Q
endPointName
ÙÙR ^
)
ÙÙ^ _
{
ıı 	
if
ˆˆ 
(
ˆˆ 
httpContent
ˆˆ 
==
ˆˆ 
null
ˆˆ #
)
ˆˆ# $
{
˜˜ 
return
¯¯ 
$"
¯¯ 
$str
¯¯ )
{
¯¯) *
endPointName
¯¯* 6
}
¯¯6 7
$str
¯¯7 ?
"
¯¯? @
;
¯¯@ A
}
˘˘ 
var
˚˚ 
contentResult
˚˚ 
=
˚˚ 
await
˚˚  %
httpContent
˚˚& 1
.
˚˚1 2
ReadAsStringAsync
˚˚2 C
(
˚˚C D
)
˚˚D E
.
˚˚E F
ConfigureAwait
˚˚F T
(
˚˚T U
false
˚˚U Z
)
˚˚Z [
;
˚˚[ \
return
¸¸ 
$"
¸¸ 
$str
¸¸ %
{
¸¸% &
endPointName
¸¸& 2
}
¸¸2 3
$str
¸¸3 4
{
¸¸4 5
contentResult
¸¸5 B
}
¸¸B C
"
¸¸C D
;
¸¸D E
}
˝˝ 	
private
ˇˇ 
string
ˇˇ 
GetEncodedUrl
ˇˇ $
(
ˇˇ$ %
string
ˇˇ% +
baseAddress
ˇˇ, 7
,
ˇˇ7 8
string
ˇˇ9 ?
endPoint
ˇˇ@ H
)
ˇˇH I
{
ÄÄ 	
var
ÅÅ 
result
ÅÅ 
=
ÅÅ 
string
ÅÅ 
.
ÅÅ  
Empty
ÅÅ  %
;
ÅÅ% &
if
ÉÉ 
(
ÉÉ 
endPoint
ÉÉ 
.
ÉÉ 
Contains
ÉÉ !
(
ÉÉ! "
baseAddress
ÉÉ" -
)
ÉÉ- .
)
ÉÉ. /
{
ÑÑ 
endPoint
ÖÖ 
=
ÖÖ 
endPoint
ÖÖ #
.
ÖÖ# $
Replace
ÖÖ$ +
(
ÖÖ+ ,
baseAddress
ÖÖ, 7
,
ÖÖ7 8
$str
ÖÖ9 <
)
ÖÖ< =
;
ÖÖ= >
}
ÜÜ 
if
àà 
(
àà 
endPoint
àà 
.
àà 
Contains
àà !
(
àà! "
$str
àà" &
)
àà& '
)
àà' (
{
ââ 
endPoint
ää 
=
ää 
endPoint
ää #
.
ää# $
Replace
ää$ +
(
ää+ ,
$str
ää, 0
,
ää0 1
$str
ää2 5
)
ää5 6
;
ää6 7
}
ãã 
if
çç 
(
çç 
string
çç 
.
çç 
IsNullOrEmpty
çç $
(
çç$ %
baseAddress
çç% 0
)
çç0 1
)
çç1 2
{
éé 
throw
èè 
new
èè 
ArgumentException
èè +
(
èè+ ,
$str
èè, {
)
èè{ |
;
èè| }
}
êê 
if
íí 
(
íí 
baseAddress
íí 
.
íí 
EndsWith
íí $
(
íí$ %
$str
íí% (
)
íí( )
&&
íí* ,
endPoint
íí- 5
.
íí5 6

StartsWith
íí6 @
(
íí@ A
$str
ííA D
)
ííD E
)
ííE F
{
ìì 
result
îî 
=
îî 
baseAddress
îî $
+
îî% &
endPoint
îî' /
.
îî/ 0
	Substring
îî0 9
(
îî9 :
$num
îî: ;
)
îî; <
;
îî< =
}
ïï 
if
óó 
(
óó 
!
óó 
baseAddress
óó 
.
óó 
EndsWith
óó %
(
óó% &
$str
óó& )
)
óó) *
&&
óó+ -
!
óó. /
endPoint
óó/ 7
.
óó7 8

StartsWith
óó8 B
(
óóB C
$str
óóC F
)
óóF G
)
óóG H
{
òò 
result
ôô 
=
ôô 
$"
ôô 
{
ôô 
baseAddress
ôô '
}
ôô' (
$str
ôô( )
{
ôô) *
endPoint
ôô* 2
}
ôô2 3
"
ôô3 4
;
ôô4 5
}
öö 
if
úú 
(
úú 
!
úú 
endPoint
úú 
.
úú 

StartsWith
úú $
(
úú$ %
$str
úú% (
)
úú( )
||
úú* ,
baseAddress
úú- 8
.
úú8 9
EndsWith
úú9 A
(
úúA B
$str
úúB E
)
úúE F
&&
úúG I
!
úúJ K
endPoint
úúK S
.
úúS T

StartsWith
úúT ^
(
úú^ _
$str
úú_ b
)
úúb c
||
úúd f
!
úúg h
baseAddress
úúh s
.
úús t
EndsWith
úút |
(
úú| }
$strúú} Ä
)úúÄ Å
&&úúÇ Ñ
endPointúúÖ ç
.úúç é

StartsWithúúé ò
(úúò ô
$strúúô ú
)úúú ù
)úúù û
{
ùù 
result
ûû 
=
ûû 
$"
ûû 
{
ûû 
baseAddress
ûû '
}
ûû' (
{
ûû( )
endPoint
ûû) 1
}
ûû1 2
"
ûû2 3
;
ûû3 4
}
üü 
return
°° 
Uri
°° 
.
°° 
EscapeUriString
°° &
(
°°& '
result
°°' -
)
°°- .
;
°°. /
}
¢¢ 	
}
•• 
}¶¶ €
≠C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CircuitBreaker\Handler\IHttpClientHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CircuitBreaker# 1
.1 2
Handler2 9
{ 
public 

	interface 
IHttpClientHandler '
{		 
Task

 
<

 
T

 
>

 
Send

 
<

 
T

 
>

 
(

 

HttpMethod

 "

httpMethod

# -
,

- .
string

/ 5
endPointName

6 B
,

B C
string

D J
url

K N
,

N O
object

P V
content

W ^
,

^ _
string

` f
	mediaType

g p
,

p q

Dictionary

r |
<

| }
string	

} É
,


É Ñ
string


Ö ã
>


ã å
headers


ç î
=


ï ñ
null


ó õ
,


õ ú
bool


ù °
contentAsJson


¢ Ø
=


∞ ±
true


≤ ∂
,


∂ ∑
bool


∏ º
useCamelCase


Ω …
=


  À
false


Ã —
)


— “
;


“ ”
Task 
< 
Stream 
> 
Send 
( 

HttpMethod $

httpMethod% /
,/ 0
string1 7
endPointName8 D
,D E
stringF L
urlM P
,P Q
objectR X
contentY `
,` a
stringb h
	mediaTypei r
,r s

Dictionaryt ~
<~ 
string	 Ö
,
Ö Ü
string
á ç
>
ç é
headers
è ñ
=
ó ò
null
ô ù
,
ù û
bool
ü £
contentAsJson
§ ±
=
≤ ≥
true
¥ ∏
,
∏ π
bool
∫ æ
useCamelCase
ø À
=
Ã Õ
false
Œ ”
)
” ‘
;
‘ ’
Task 
< 
HttpResponseMessage  
>  !
Send" &
(& '

HttpMethod' 1

httpMethod2 <
,< =
string> D
endPointNameE Q
,Q R
stringS Y
urlZ ]
,] ^
object_ e
contentf m
,m n
stringo u
	mediaTypev 
,	 Ä
bool
Å Ö
contentAsJson
Ü ì
=
î ï
true
ñ ö
,
ö õ
bool
ú †
useCamelCase
° ≠
=
Æ Ø
false
∞ µ
,
µ ∂

Dictionary
∑ ¡
<
¡ ¬
string
¬ »
,
» …
string
  –
>
– —
headers
“ Ÿ
=
⁄ €
null
‹ ‡
)
‡ ·
;
· ‚
Task 
< 
string 
> 
SendSoapRequest $
($ %
string% +
endPointName, 8
,8 9
string: @
urlA D
,D E
stringF L
soapMessageM X
,X Y
stringZ `
soapActionUrla n
=o p
nullq u
,u v

Dictionary	w Å
<
Å Ç
string
Ç à
,
à â
string
ä ê
>
ê ë
headers
í ô
=
ö õ
null
ú †
)
† °
;
° ¢
} 
} 