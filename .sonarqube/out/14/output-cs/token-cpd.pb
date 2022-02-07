�R
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CircuitBreaker\CircuitBreakerConfiguration.cs
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
$str	BB[ �
"
BB� �
)
BB� �
;
BB� �
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
endPointEntity	EEw �
.
EE� �!
CertificatePassword
EE� �
)
EE� �
;
EE� �
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
SslProtocols	FFt �
)
FF� �
(
FF� �
Convert
FF� �
.
FF� �
ToInt32
FF� �
(
FF� �
endPointEntity
FF� �
.
FF� �
SslProtocol
FF� �
)
FF� �
)
FF� �
;
FF� �
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

retryCount	LLv �
,
LL� �
context
LL� �
)
LL� �
=>
LL� �
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
result	OOz �
.
OO� �
	Exception
OO� �
)
OO� �
;
OO� �
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
$str	aa �
)
aa� �
;
aa� �
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
}ii �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CircuitBreaker\Common\BuiltInTypes.cs
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
� �
.
� �
	Namespace
� �
==
� �
$str
� �
)
� �
.
� �
Select
� �
(
� �
x
� �
=>
� �
x
� �
.
� �
Name
� �
)
� �
.
� �
ToList
� �
(
� �
)
� �
;
� �
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
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CircuitBreaker\Common\IBuiltInTypes.cs
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
}		 ��
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CircuitBreaker\Handler\HttpClientHandler.cs
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
PropertyNamingPolicy	n �
=
� �
JsonNamingPolicy
� �
.
� �
	CamelCase
� �
,
� �
IgnoreNullValues
� �
=
� �
true
� �
}
� �
;
� �
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
string	| �
	mediaType
� �
,
� �
bool
� �
contentAsJson
� �
=
� �
true
� �
,
� �
bool
� �
useCamelCase
� �
=
� �
false
� �
,
� �

Dictionary
� �
<
� �
string
� �
,
� �
string
� �
>
� �
headers
� �
=
� �
null
� �
)
� �
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
useCamelCase	!!t �
)
!!� �
;
!!� �
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
,	** �

Dictionary
**� �
<
**� �
string
**� �
,
**� �
string
**� �
>
**� �
headers
**� �
=
**� �
null
**� �
,
**� �
bool
**� �
contentAsJson
**� �
=
**� �
true
**� �
,
**� �
bool
**� �
useCamelCase
**� �
=
**� �
false
**� �
)
**� �
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
contentAsJson	00t �
,
00� �
useCamelCase
00� �
)
00� �
;
00� �
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

Dictionary	>> �
<
>>� �
string
>>� �
,
>>� �
string
>>� �
>
>>� �
headers
>>� �
=
>>� �
null
>>� �
,
>>� �
bool
>>� �
contentAsJson
>>� �
=
>>� �
true
>>� �
,
>>� �
bool
>>� �
useCamelCase
>>� �
=
>>� �
false
>>� �
)
>>� �
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
contentAsJson	CCt �
,
CC� �
useCamelCase
CC� �
)
CC� �
;
CC� �
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
null	RR~ �
,
RR� �

Dictionary
RR� �
<
RR� �
string
RR� �
,
RR� �
string
RR� �
>
RR� �
headers
RR� �
=
RR� �
null
RR� �
)
RR� �
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
soapHeaders	UUu �
,
UU� �
false
UU� �
)
UU� �
;
UU� �
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
content	jj{ �
,
jj� �
string
jj� �
	mediaType
jj� �
=
jj� �
	MediaType
jj� �
.
jj� �
ApplicationJson
jj� �
,
jj� �

Dictionary
jj� �
<
jj� �
string
jj� �
,
jj� �
string
jj� �
>
jj� �
headers
jj� �
=
jj� �
null
jj� �
,
jj� �
bool
jj� �
contentAsJson
jj� �
=
jj� �
true
jj� �
,
jj� �
bool
jj� �
useCamelCase
jj� �
=
jj� �
false
jj� �
)
jj� �
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
�� 
(
�� 
	Exception
�� 
ex
�� 
)
��  
{
�� 
LogException
�� 
(
�� 
ref
��  
ex
��! #
)
��# $
;
��$ %
throw
�� 
;
�� 
}
�� 
finally
�� 
{
�� 

httpClient
�� 
?
�� 
.
�� 
Dispose
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
return
�� !
httpResponseMessage
�� &
;
��& '
}
�� 	
private
�� 

HttpClient
�� 
GetDefaultClient
�� +
(
��+ ,
string
��, 2
endPointName
��3 ?
,
��? @

Dictionary
��A K
<
��K L
string
��L R
,
��R S
string
��T Z
>
��Z [
headers
��\ c
=
��d e
null
��f j
)
��j k
{
�� 	
var
�� 

httpClient
�� 
=
�� 
HttpClientFactory
�� .
.
��. /
CreateClient
��/ ;
(
��; <
endPointName
��< H
)
��H I
;
��I J
if
�� 
(
�� 
headers
�� 
==
�� 
null
�� 
||
��  "
!
��# $
headers
��$ +
.
��+ ,
Any
��, /
(
��/ 0
)
��0 1
)
��1 2
return
��3 9

httpClient
��: D
;
��D E
foreach
�� 
(
�� 
var
�� 
(
�� 
key
�� 
,
�� 
value
�� $
)
��$ %
in
��& (
headers
��) 0
)
��0 1
{
�� 

httpClient
�� 
.
�� #
DefaultRequestHeaders
�� 0
.
��0 1
Add
��1 4
(
��4 5
key
��5 8
,
��8 9
value
��: ?
)
��? @
;
��@ A
}
�� 
return
�� 

httpClient
�� 
;
�� 
}
�� 	
private
�� 
HttpContent
�� 
CreateHttpContent
�� -
<
��- .
T
��. /
>
��/ 0
(
��0 1
T
��1 2
requestContent
��3 A
,
��A B
string
��C I
	mediaType
��J S
,
��S T
bool
��U Y
contentAsJson
��Z g
,
��g h
bool
��i m
useCamelCase
��n z
)
��z {
{
�� 	
if
�� 
(
�� 
requestContent
�� 
==
�� !
null
��" &
)
��& '
return
��( .
null
��/ 3
;
��3 4
var
�� 
requestBody
�� 
=
�� 
contentAsJson
�� +
?
��, -
	Serialize
��. 7
(
��7 8
requestContent
��8 F
,
��F G
useCamelCase
��H T
)
��T U
:
��V W
requestContent
��X f
.
��f g
ToString
��g o
(
��o p
)
��p q
;
��q r
HttpContent
�� 
httpContent
�� #
=
��$ %
new
��& )
StringContent
��* 7
(
��7 8
requestBody
��8 C
)
��C D
;
��D E
if
�� 
(
�� 
	mediaType
�� 
!=
�� 
null
�� !
)
��! "
{
�� 
httpContent
�� 
.
�� 
Headers
�� #
.
��# $
ContentType
��$ /
=
��0 1
new
��2 5"
MediaTypeHeaderValue
��6 J
(
��J K
	mediaType
��K T
)
��T U
;
��U V
}
�� 
return
�� 
httpContent
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
LogException
�� !
(
��! "
ref
��" %
	Exception
��& /
	exception
��0 9
)
��9 :
{
�� 	
Devon4NetLogger
�� 
.
�� 
Error
�� !
(
��! "
	exception
��" +
)
��+ ,
;
��, -
}
�� 	
private
�� 
string
�� 
	Serialize
��  
(
��  !
object
��! '
toPrint
��( /
,
��/ 0
bool
��1 5
useCamelCase
��6 B
)
��B C
{
�� 	
return
�� 
JsonSerializer
�� !
.
��! "
	Serialize
��" +
(
��+ ,
toPrint
��, 3
,
��3 4
useCamelCase
��5 A
?
��B C(
CamelJsonSerializerOptions
��D ^
:
��_ `
null
��a e
)
��e f
;
��f g
}
�� 	
private
�� 
T
�� 
Deserialize
�� 
<
�� 
T
�� 
>
��  
(
��  !
string
��! '
input
��( -
,
��- .
bool
��/ 3
useCamelCase
��4 @
)
��@ A
{
�� 	
return
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� '
(
��' (
input
��( -
)
��- .
?
�� 
default
�� 
:
�� 
BuiltInTypes
�� 
.
�� &
GetBuiltInTypeObjecNames
�� 7
(
��7 8
)
��8 9
.
��9 :
Contains
��: B
(
��B C
typeof
��C I
(
��I J
T
��J K
)
��K L
.
��L M
Name
��M Q
)
��Q R
?
��T U
(
��V W
T
��W X
)
��X Y
Convert
��Y `
.
��` a

ChangeType
��a k
(
��k l
input
��l q
,
��q r
typeof
��s y
(
��y z
T
��z {
)
��{ |
)
��| }
:
��~ 
JsonSerializer��� �
.��� �
Deserialize��� �
<��� �
T��� �
>��� �
(��� �
input��� �
,��� �
useCamelCase��� �
?��� �*
CamelJsonSerializerOptions��� �
:��� �
null��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� 
CheckHttpResponse
�� ,
(
��, -!
HttpResponseMessage
��- @!
httpResponseMessage
��A T
,
��T U
string
��V \
endPointName
��] i
)
��i j
{
�� 	
await
�� 
LogHttpResponse
�� !
(
��! "!
httpResponseMessage
��" 5
,
��5 6
endPointName
��7 C
)
��C D
;
��D E
if
�� 
(
�� !
httpResponseMessage
�� #
==
��$ &
null
��' +
)
��+ ,
{
�� 
throw
�� 
new
�� "
HttpRequestException
�� .
(
��. /
$"
��/ 1
$str
��1 E
{
��E F
endPointName
��F R
}
��R S
$str
��S g
"
��g h
)
��h i
;
��i j
}
�� 
if
�� 
(
�� !
httpResponseMessage
�� #
!=
��$ &
null
��' +
&&
��, .
!
��/ 0!
httpResponseMessage
��0 C
.
��C D!
IsSuccessStatusCode
��D W
)
��W X
{
�� 
var
�� 
responseResult
�� "
=
��# $
await
��% *!
httpResponseMessage
��+ >
.
��> ?
Content
��? F
.
��F G
ReadAsStringAsync
��G X
(
��X Y
)
��Y Z
.
��Z [
ConfigureAwait
��[ i
(
��i j
false
��j o
)
��o p
;
��p q
throw
�� 
new
�� (
HttpCustomRequestException
�� 4
(
��4 5
$"
��5 7
$str
��7 K
{
��K L
endPointName
��L X
}
��X Y
$str��Y �
{��� �
(��� �
int��� �
)��� �#
httpResponseMessage��� �
.��� �

StatusCode��� �
}��� �
$str��� �
{��� �
responseResult��� �
}��� �
"��� �
,��� �
(��� �
int��� �
)��� �#
httpResponseMessage��� �
.��� �

StatusCode��� �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
string
�� !
>
��! " 
ManageHttpResponse
��# 5
(
��5 6!
HttpResponseMessage
��6 I!
httpResponseMessage
��J ]
,
��] ^
string
��_ e
endPointName
��f r
)
��r s
{
�� 	
await
�� 
CheckHttpResponse
�� #
(
��# $!
httpResponseMessage
��$ 7
,
��7 8
endPointName
��9 E
)
��E F
;
��F G
return
�� 
await
�� !
httpResponseMessage
�� ,
.
��, -
Content
��- 4
.
��4 5
ReadAsStringAsync
��5 F
(
��F G
)
��G H
.
��H I
ConfigureAwait
��I W
(
��W X
false
��X ]
)
��] ^
;
��^ _
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
Stream
�� !
>
��! "(
ManageHttpResponseAsStream
��# =
(
��= >!
HttpResponseMessage
��> Q!
httpResponseMessage
��R e
,
��e f
string
��g m
endPointName
��n z
)
��z {
{
�� 	
await
�� 
CheckHttpResponse
�� #
(
��# $!
httpResponseMessage
��$ 7
,
��7 8
endPointName
��9 E
)
��E F
;
��F G
if
�� 
(
�� !
httpResponseMessage
�� #
==
��$ &
null
��' +
)
��+ ,
{
�� 
throw
�� 
new
�� "
HttpRequestException
�� .
(
��. /
$"
��/ 1
$str
��1 E
{
��E F
endPointName
��F R
}
��R S
$str
��S g
"
��g h
)
��h i
;
��i j
}
�� 
if
�� 
(
�� !
httpResponseMessage
�� #
.
��# $!
IsSuccessStatusCode
��$ 7
)
��7 8
{
�� 
return
�� 
await
�� !
httpResponseMessage
�� 0
.
��0 1
Content
��1 8
.
��8 9
ReadAsStreamAsync
��9 J
(
��J K
)
��K L
.
��L M
ConfigureAwait
��M [
(
��[ \
false
��\ a
)
��a b
;
��b c
}
�� 
var
�� 
messageResult
�� 
=
�� 
await
��  %!
httpResponseMessage
��& 9
.
��9 :
Content
��: A
.
��A B
ReadAsStringAsync
��B S
(
��S T
)
��T U
.
��U V
ConfigureAwait
��V d
(
��d e
false
��e j
)
��j k
;
��k l
throw
�� 
new
�� "
HttpRequestException
�� *
(
��* +
$"
��+ -
$str
��- A
{
��A B
endPointName
��B N
}
��N O
$str
��O d
{
��d e
messageResult
��e r
}
��r s
"
��s t
)
��t u
;
��u v
}
�� 	
private
�� 
async
�� 
Task
�� 
LogHttpResponse
�� *
(
��* +!
HttpResponseMessage
��+ >!
httpResponseMessage
��? R
,
��R S
string
��T Z
endPointName
��[ g
)
��g h
{
�� 	
if
�� 
(
�� !
httpResponseMessage
�� #
==
��$ &
null
��' +
)
��+ ,
{
�� 
Devon4NetLogger
�� 
.
��  
Information
��  +
(
��+ ,
$"
��, .
$str
��. U
{
��U V
endPointName
��V b
}
��b c
$str
��c k
"
��k l
)
��l m
;
��m n
return
�� 
;
�� 
}
�� 
var
�� 
contentResult
�� 
=
�� !
httpResponseMessage
��  3
.
��3 4!
IsSuccessStatusCode
��4 G
?
�� 
$str
�� 0
:
�� 
await
�� 
LogHttpContent
�� &
(
��& '!
httpResponseMessage
��' :
.
��: ;
Content
��; B
,
��B C
endPointName
��D P
)
��P Q
;
��Q R
Devon4NetLogger
�� 
.
�� 
Information
�� '
(
��' (
$"
��( *
$str
��* Q
{
��Q R
endPointName
��R ^
}
��^ _
$str
��_ o
{
��o p"
httpResponseMessage��p �
.��� �
RequestMessage��� �
}��� �
$str��� �
{��� �#
httpResponseMessage��� �
}��� �
$str��� �
{��� �
contentResult��� �
}��� �
"��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
string
�� !
>
��! "
LogHttpContent
��# 1
(
��1 2
HttpContent
��2 =
httpContent
��> I
,
��I J
string
��K Q
endPointName
��R ^
)
��^ _
{
�� 	
if
�� 
(
�� 
httpContent
�� 
==
�� 
null
�� #
)
��# $
{
�� 
return
�� 
$"
�� 
$str
�� )
{
��) *
endPointName
��* 6
}
��6 7
$str
��7 ?
"
��? @
;
��@ A
}
�� 
var
�� 
contentResult
�� 
=
�� 
await
��  %
httpContent
��& 1
.
��1 2
ReadAsStringAsync
��2 C
(
��C D
)
��D E
.
��E F
ConfigureAwait
��F T
(
��T U
false
��U Z
)
��Z [
;
��[ \
return
�� 
$"
�� 
$str
�� %
{
��% &
endPointName
��& 2
}
��2 3
$str
��3 4
{
��4 5
contentResult
��5 B
}
��B C
"
��C D
;
��D E
}
�� 	
private
�� 
string
�� 
GetEncodedUrl
�� $
(
��$ %
string
��% +
baseAddress
��, 7
,
��7 8
string
��9 ?
endPoint
��@ H
)
��H I
{
�� 	
var
�� 
result
�� 
=
�� 
string
�� 
.
��  
Empty
��  %
;
��% &
if
�� 
(
�� 
endPoint
�� 
.
�� 
Contains
�� !
(
��! "
baseAddress
��" -
)
��- .
)
��. /
{
�� 
endPoint
�� 
=
�� 
endPoint
�� #
.
��# $
Replace
��$ +
(
��+ ,
baseAddress
��, 7
,
��7 8
$str
��9 <
)
��< =
;
��= >
}
�� 
if
�� 
(
�� 
endPoint
�� 
.
�� 
Contains
�� !
(
��! "
$str
��" &
)
��& '
)
��' (
{
�� 
endPoint
�� 
=
�� 
endPoint
�� #
.
��# $
Replace
��$ +
(
��+ ,
$str
��, 0
,
��0 1
$str
��2 5
)
��5 6
;
��6 7
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
baseAddress
��% 0
)
��0 1
)
��1 2
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, {
)
��{ |
;
��| }
}
�� 
if
�� 
(
�� 
baseAddress
�� 
.
�� 
EndsWith
�� $
(
��$ %
$str
��% (
)
��( )
&&
��* ,
endPoint
��- 5
.
��5 6

StartsWith
��6 @
(
��@ A
$str
��A D
)
��D E
)
��E F
{
�� 
result
�� 
=
�� 
baseAddress
�� $
+
��% &
endPoint
��' /
.
��/ 0
	Substring
��0 9
(
��9 :
$num
��: ;
)
��; <
;
��< =
}
�� 
if
�� 
(
�� 
!
�� 
baseAddress
�� 
.
�� 
EndsWith
�� %
(
��% &
$str
��& )
)
��) *
&&
��+ -
!
��. /
endPoint
��/ 7
.
��7 8

StartsWith
��8 B
(
��B C
$str
��C F
)
��F G
)
��G H
{
�� 
result
�� 
=
�� 
$"
�� 
{
�� 
baseAddress
�� '
}
��' (
$str
��( )
{
��) *
endPoint
��* 2
}
��2 3
"
��3 4
;
��4 5
}
�� 
if
�� 
(
�� 
!
�� 
endPoint
�� 
.
�� 

StartsWith
�� $
(
��$ %
$str
��% (
)
��( )
||
��* ,
baseAddress
��- 8
.
��8 9
EndsWith
��9 A
(
��A B
$str
��B E
)
��E F
&&
��G I
!
��J K
endPoint
��K S
.
��S T

StartsWith
��T ^
(
��^ _
$str
��_ b
)
��b c
||
��d f
!
��g h
baseAddress
��h s
.
��s t
EndsWith
��t |
(
��| }
$str��} �
)��� �
&&��� �
endPoint��� �
.��� �

StartsWith��� �
(��� �
$str��� �
)��� �
)��� �
{
�� 
result
�� 
=
�� 
$"
�� 
{
�� 
baseAddress
�� '
}
��' (
{
��( )
endPoint
��) 1
}
��1 2
"
��2 3
;
��3 4
}
�� 
return
�� 
Uri
�� 
.
�� 
EscapeUriString
�� &
(
��& '
result
��' -
)
��- .
;
��. /
}
�� 	
}
�� 
}�� �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CircuitBreaker\Handler\IHttpClientHandler.cs
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
} �
,


� �
string


� �
>


� �
headers


� �
=


� �
null


� �
,


� �
bool


� �
contentAsJson


� �
=


� �
true


� �
,


� �
bool


� �
useCamelCase


� �
=


� �
false


� �
)


� �
;


� �
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
string	 �
,
� �
string
� �
>
� �
headers
� �
=
� �
null
� �
,
� �
bool
� �
contentAsJson
� �
=
� �
true
� �
,
� �
bool
� �
useCamelCase
� �
=
� �
false
� �
)
� �
;
� �
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
,	 �
bool
� �
contentAsJson
� �
=
� �
true
� �
,
� �
bool
� �
useCamelCase
� �
=
� �
false
� �
,
� �

Dictionary
� �
<
� �
string
� �
,
� �
string
� �
>
� �
headers
� �
=
� �
null
� �
)
� �
;
� �
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

Dictionary	w �
<
� �
string
� �
,
� �
string
� �
>
� �
headers
� �
=
� �
null
� �
)
� �
;
� �
} 
} 