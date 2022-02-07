®
¢C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Common\AutoRegisterData.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Common* 0
{		 
public 

class 
AutoRegisterData !
{ 
public 
AutoRegisterData 
(  
IServiceCollection  2
services3 ;
,; <
IEnumerable= H
<H I
TypeI M
>M N
typesToConsiderO ^
)^ _
{ 	
Services 
= 
services 
??  "
throw# (
new) ,!
ArgumentNullException- B
(B C
nameofC I
(I J
servicesJ R
)R S
)S T
;T U
TypesToConsider 
= 
typesToConsider -
??. 0
throw1 6
new7 :!
ArgumentNullException; P
(P Q
nameofQ W
(W X
typesToConsiderX g
)g h
)h i
;i j
} 	
public 
IServiceCollection !
Services" *
{+ ,
get- 0
;0 1
}2 3
public"" 
IEnumerable"" 
<"" 
Type"" 
>""  
TypesToConsider""! 0
{""1 2
get""3 6
;""6 7
}""8 9
public(( 
Func(( 
<(( 
Type(( 
,(( 
bool(( 
>(( 

TypeFilter((  *
{((+ ,
get((- 0
;((0 1
set((2 5
;((5 6
}((7 8
})) 
}** ∏
öC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Enums\MediaType.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CircuitBreaker# 1
.1 2
Common2 8
.8 9
Enums9 >
{ 
public 

class 
	MediaType 
{ 
public 
const 
string 
Application '
=( )
$str* 9
;9 :
public 
const 
string !
ApplicationEcmascript 1
=2 3
$str4 L
;L M
public 
const 
string !
ApplicationJavascript 1
=2 3
$str4 L
;L M
public 
const 
string "
ApplicationOctetStream 2
=3 4
$str5 O
;O P
public		 
const		 
string		 
ApplicationJson		 +
=		, -
$str		. @
;		@ A
public

 
const

 
string

 
ApplicationXwww

 +
=

, -
$str

. Q
;

Q R
public 
const 
string 
TextCss #
=$ %
$str& 0
;0 1
public 
const 
string 
	TextPlain %
=& '
$str( 4
;4 5
public 
const 
string 
TextHtml $
=% &
$str' 2
;2 3
public 
const 
string 
TextXml #
=$ %
$str& 0
;0 1
public 
const 
string 
	ImageJpeg %
=& '
$str( 4
;4 5
public 
const 
string 
Imagegif $
=% &
$str' 2
;2 3
public 
const 
string 
ImagePng $
=% &
$str' 2
;2 3
public 
const 
string 
	AudioMpeg %
=& '
$str( 4
;4 5
public 
const 
string 
AudioOgg $
=% &
$str' 2
;2 3
public 
const 
string 
Audio !
=" #
$str$ -
;- .
public 
const 
string 
VideoMp4 $
=% &
$str' 2
;2 3
public 
const 
string 
MultipartFormData -
=. /
$str0 E
;E F
public 
const 
string 
MultipartByteRanges /
=0 1
$str2 H
;H I
} 
} §
∞C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Exceptions\HttpCustomRequestException.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *

Exceptions* 4
{ 
[ 
Serializable 
] 
public 

class &
HttpCustomRequestException +
:, -
	Exception. 7
,7 8
IWebApiException9 I
{ 
public		 
int		 

StatusCode		 
{		 
get		  #
;		# $
}		% &
public 
bool 
ShowMessage 
=>  "
false# (
;( )
public &
HttpCustomRequestException )
() *
)* +
{ 	

StatusCode 
= 
StatusCodes $
.$ %(
Status500InternalServerError% A
;A B
} 	
public &
HttpCustomRequestException )
() *
string* 0
message1 8
)8 9
: 
base 
( 
message 
) 
{ 	

StatusCode 
= 
StatusCodes $
.$ %(
Status500InternalServerError% A
;A B
} 	
public &
HttpCustomRequestException )
() *
string* 0
message1 8
,8 9
int: =

statusCode> H
)H I
: 
base 
( 
message 
) 
{ 	

StatusCode 
= 

statusCode #
;# $
} 	
public &
HttpCustomRequestException )
() *
string* 0
message1 8
,8 9
	Exception: C
innerD I
)I J
:   
base   
(   
message   
,   
inner   !
)  ! "
{!! 	

StatusCode"" 
="" 
StatusCodes"" $
.""$ %(
Status500InternalServerError""% A
;""A B
}## 	
	protected%% &
HttpCustomRequestException%% ,
(%%, -
System%%- 3
.%%3 4
Runtime%%4 ;
.%%; <
Serialization%%< I
.%%I J
SerializationInfo%%J [
serializationInfo%%\ m
,%%m n
System%%o u
.%%u v
Runtime%%v }
.%%} ~
Serialization	%%~ ã
.
%%ã å
StreamingContext
%%å ú
streamingContext
%%ù ≠
)
%%≠ Æ
:&& 
base&& 
(&& 
serializationInfo&& $
,&&$ %
streamingContext&&& 6
)&&6 7
{'' 	

StatusCode(( 
=(( 
StatusCodes(( $
.(($ %(
Status500InternalServerError((% A
;((A B
})) 	
}** 
}++ ù
¶C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Exceptions\IWebApiException.cs
	namespace 

	Devon4Net 
. 
Infrastructure #
.# $
Common$ *
.* +

Exceptions+ 5
{ 
public 

	interface 
IWebApiException %
{ 
int 

StatusCode 
{ 
get 
; 
} 
bool 
ShowMessage 
{ 
get 
; 
}  !
} 
} —!
ôC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\FileOperations.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
{ 
public 

static 
class 
FileOperations &
{		 
private

 
static

 
string

 
ApplicationPath

 -
{

. /
get

/ 2
;

2 3
set

3 6
;

6 7
}

7 8
public 
static 
List 
< 
string !
>! "
GetFilesFromPath# 3
(3 4
string4 :
searchPattern; H
,H I
stringJ P
defaultDirectoryQ a
=b c
nulld h
)h i
{ 	
var 
workingDirectory  
=! "
string# )
.) *
IsNullOrEmpty* 7
(7 8
defaultDirectory8 H
)H I
||J L
!M N
	DirectoryN W
.W X
ExistsX ^
(^ _
defaultDirectory_ o
)o p
?q r
	Directorys |
.| } 
GetCurrentDirectory	} ê
(
ê ë
)
ë í
:
ì î
defaultDirectory
ï •
;
• ¶
return 
	Directory 
. 
GetFiles %
(% &
workingDirectory& 6
,6 7
searchPattern8 E
,E F
SearchOptionG S
.S T
AllDirectoriesT b
)b c
.c d
ToListd j
(j k
)k l
;l m
} 	
public 
static 
string 
GetFileFullPath ,
(, -
string- 3
fileName4 <
,< =
string> D
defaultDirectoryE U
=V W
nullX \
)\ ]
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
fileName% -
)- .
). /
return0 6
string7 =
.= >
Empty> C
;C D
if 
( 
File 
. 
Exists 
( 
fileName $
)$ %
)% &
return' -
Path. 2
.2 3
GetFullPath3 >
(> ?
fileName? G
)G H
;H I
var 
workingDirectory  
=! "
string# )
.) *
IsNullOrEmpty* 7
(7 8
defaultDirectory8 H
)H I
||J L
!M N
	DirectoryN W
.W X
ExistsX ^
(^ _
defaultDirectory_ o
)o p
?q r
	Directorys |
.| } 
GetCurrentDirectory	} ê
(
ê ë
)
ë í
:
ì î
defaultDirectory
ï •
;
• ¶
var 
theFile 
= 
	Directory #
.# $
GetFiles$ ,
(, -
workingDirectory- =
,= >
fileName? G
,G H
SearchOptionI U
.U V
AllDirectoriesV d
)d e
.e f
FirstOrDefaultf t
(t u
)u v
;v w
return 
theFile 
; 
} 	
public 
static 
string 
GetApplicationPath /
(/ 0
)0 1
{   	
if!! 
(!! 
string!! 
.!! 
IsNullOrEmpty!! $
(!!$ %
ApplicationPath!!% 4
)!!4 5
)!!5 6
{"" 
ApplicationPath## 
=##  !
Path##" &
.##& '
GetDirectoryName##' 7
(##7 8
Assembly##8 @
.##@ A
GetEntryAssembly##A Q
(##Q R
)##R S
.##S T
Location##T \
)##\ ]
;##] ^
}$$ 
return%% 
ApplicationPath%% "
;%%" #
}&& 	
}'' 
}(( µ6
¶C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Helpers\AutoRegisterHelpers.cs
	namespace

 	
	Devon4Net


 
.

 
Infrastructure

 "
.

" #
Common

# )
.

) *
Helpers

* 1
{ 
public 

static 
class 
AutoRegisterHelpers +
{ 
public 
static 
AutoRegisterData &3
'RegisterAssemblyPublicNonGenericClasses' N
(N O
thisO S
IServiceCollectionT f
servicesg o
,o p
paramsq w
Assembly	x Ä
[
Ä Å
]
Å Ç

assemblies
É ç
)
ç é
{ 	
if 
( 

assemblies 
. 
Length !
==" $
$num% &
)& '

assemblies 
= 
new  
[  !
]! "
{# $
Assembly$ ,
., -
GetCallingAssembly- ?
(? @
)@ A
}A B
;B C
var 
allPublicTypes 
=  

assemblies! +
.+ ,

SelectMany, 6
(6 7
x7 8
=>9 ;
x< =
.= >
GetExportedTypes> N
(N O
)O P
. 
Where 
( 
y 
=> 
y 
. 
IsClass %
&&& (
!) *
y* +
.+ ,

IsAbstract, 6
&&7 9
!: ;
y; <
.< =
IsGenericType= J
&&K M
!N O
yO P
.P Q
IsNestedQ Y
)Y Z
)Z [
;[ \
return   
new   
AutoRegisterData   '
(  ' (
services  ( 0
,  0 1
allPublicTypes  2 @
)  @ A
;  A B
}!! 	
public** 
static** 
AutoRegisterData** &
Where**' ,
(**, -
this**- 1
AutoRegisterData**2 B
autoRegData**C N
,**N O
Func**P T
<**T U
Type**U Y
,**Y Z
bool**[ _
>**_ `
	predicate**a j
)**j k
{++ 	
if,, 
(,, 
autoRegData,, 
==,, 
null,, #
),,# $
throw,,% *
new,,+ .!
ArgumentNullException,,/ D
(,,D E
nameof,,E K
(,,K L
autoRegData,,L W
),,W X
),,X Y
;,,Y Z
autoRegData-- 
.-- 

TypeFilter-- "
=--# $
	predicate--% .
;--. /
return.. 
new.. 
AutoRegisterData.. '
(..' (
autoRegData..( 3
...3 4
Services..4 <
,..< =
autoRegData..> I
...I J
TypesToConsider..J Y
...Y Z
Where..Z _
(.._ `
	predicate..` i
)..i j
)..j k
;..k l
}// 	
public77 
static77 
IServiceCollection77 ()
AsPublicImplementedInterfaces77) F
(77F G
this77G K
AutoRegisterData77L \
autoRegData77] h
,77h i
ServiceLifetime88 
lifetime88 $
=88% &
ServiceLifetime88' 6
.886 7
	Transient887 @
)88@ A
{99 	
if:: 
(:: 
autoRegData:: 
==:: 
null:: #
)::# $
throw::% *
new::+ .!
ArgumentNullException::/ D
(::D E
nameof::E K
(::K L
autoRegData::L W
)::W X
)::X Y
;::Y Z
foreach;; 
(;; 
var;; 
	classType;; "
in;;# %
(;;& '
autoRegData;;' 2
.;;2 3

TypeFilter;;3 =
==;;> @
null;;A E
?<< 
autoRegData<< 
.<< 
TypesToConsider<< -
:== 
autoRegData== 
.== 
TypesToConsider== -
.==- .
Where==. 3
(==3 4
autoRegData==4 ?
.==? @

TypeFilter==@ J
)==J K
)==K L
)==L M
{>> 
var?? 

interfaces?? 
=??  
	classType??! *
.??* +
GetTypeInfo??+ 6
(??6 7
)??7 8
.??8 9!
ImplementedInterfaces??9 N
;??N O
foreach@@ 
(@@ 
var@@ 
infc@@ !
in@@" $

interfaces@@% /
.@@/ 0
Where@@0 5
(@@5 6
i@@6 7
=>@@8 :
i@@; <
!=@@= ?
typeof@@@ F
(@@F G
IDisposable@@G R
)@@R S
&&@@T V
i@@W X
.@@X Y
IsPublic@@Y a
&&@@b d
!@@e f
i@@f g
.@@g h
IsNested@@h p
)@@p q
)@@q r
{AA 
autoRegDataBB 
.BB  
ServicesBB  (
.BB( )
AddBB) ,
(BB, -
newBB- 0
ServiceDescriptorBB1 B
(BBB C
infcBBC G
,BBG H
	classTypeBBI R
,BBR S
lifetimeBBT \
)BB\ ]
)BB] ^
;BB^ _
}CC 
}DD 
returnFF 
autoRegDataFF 
.FF 
ServicesFF '
;FF' (
}GG 	
publicNN 
staticNN 
IServiceCollectionNN (/
#AsSingletonPublicImplementedClassesNN) L
(NNL M
thisNNM Q
AutoRegisterDataNNR b
autoRegDataNNc n
)NNn o
{OO 	
ifPP 
(PP 
autoRegDataPP 
==PP 
nullPP #
)PP# $
throwPP% *
newPP+ .!
ArgumentNullExceptionPP/ D
(PPD E
nameofPPE K
(PPK L
autoRegDataPPL W
)PPW X
)PPX Y
;PPY Z
foreachQQ 
(QQ 
varQQ 
	classTypeQQ "
inQQ# %
(QQ& '
autoRegDataQQ' 2
.QQ2 3

TypeFilterQQ3 =
==QQ> @
nullQQA E
?RR 
autoRegDataRR 
.RR 
TypesToConsiderRR -
:SS 
autoRegDataSS 
.SS 
TypesToConsiderSS -
.SS- .
WhereSS. 3
(SS3 4
autoRegDataSS4 ?
.SS? @

TypeFilterSS@ J
)SSJ K
)SSK L
)SSL M
{TT 
autoRegDataUU 
.UU 
ServicesUU $
.UU$ %
AddSingletonUU% 1
(UU1 2
	classTypeUU2 ;
)UU; <
;UU< =
}VV 
returnXX 
autoRegDataXX 
.XX 
ServicesXX '
;XX' (
}YY 	
}ZZ 
}[[ À
≥C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\AnsibleTower\AnsibleTowerOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
AnsibleTower2 >
{ 
public 

class 
AnsibleTowerOptions $
{ 
public 
bool 
EnableAnsible !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
CircuitBreakerName (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 

ApiUrlBase  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 
Version		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
Username

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} é
°C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\AWS\AwsOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
AWS2 5
{ 
public 

class 

AwsOptions 
{ 
public 
bool 
	EnableAws 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Region 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ˆ
∑C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\CircuitBreaker\CircuitBreakerOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
CircuitBreaker2 @
{ 
public 

class !
CircuitBreakerOptions &
{ 
public 
bool 
CheckCertificate $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
List 
< 
Endpoint 
> 
	Endpoints '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
}		 
}

  5
™C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\CircuitBreaker\Endpoint.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
CircuitBreaker2 @
{ 
public 

class 
Endpoint 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
BaseAddress		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 

Dictionary

 
<

 
string

  
,

  !
string

" (
>

( )
Headers

* 1
{

2 3
get

4 7
;

7 8
set

9 <
;

< =
}

> ?
public 
List 
< 
double 
> 
WaitAndRetrySeconds /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
double 
DurationOfBreak %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
UseCertificate "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
Certificate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
CertificatePassword )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
string 
SslProtocol !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Endpoint 
( 
) 
{ 	
} 	
public 
Endpoint 
( 
string 
name #
,# $
string% +
baseAddress, 7
)7 8
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
name% )
)) *
||+ -
string. 4
.4 5
IsNullOrEmpty5 B
(B C
baseAddressC N
)N O
)O P
throwQ V
newW Z!
ArgumentNullException[ p
(p q
$strq w
,w x
$str	y ù
)
ù û
;
û ü
Name 
= 
name 
; 
BaseAddress 
= 
baseAddress %
;% &
Headers 
= 
new 

Dictionary $
<$ %
string% +
,+ ,
string- 3
>3 4
(4 5
)5 6
;6 7
WaitAndRetrySeconds 
=  !
new" %
List& *
<* +
double+ 1
>1 2
{3 4
$num5 6
}7 8
;8 9
} 	
public   

Dictionary   
<   
string    
,    !
string  " (
>  ( )

GetHeaders  * 4
(  4 5
)  5 6
{!! 	
return"" 
Headers"" 
??"" 
new"" !

Dictionary""" ,
<"", -
string""- 3
,""3 4
string""5 ;
>""; <
(""< =
)""= >
;""> ?
}## 	
public%% 
List%% 
<%% 
double%% 
>%% 
GetWaitAndRetry%% +
(%%+ ,
)%%, -
{&& 	
return'' 
WaitAndRetrySeconds'' &
??''' )
new''* -
List''. 2
<''2 3
double''3 9
>''9 :
{''; <
$num''= B
}''C D
;''D E
}(( 	
public++ 
void++ 
AddWaitAndRetry++ #
(++# $
int++$ '
secondsToWait++( 5
)++5 6
{,, 	
if-- 
(-- 
secondsToWait-- 
<=--  
$num--! "
)--" #
throw--$ )
new--* -!
ArgumentNullException--. C
(--C D
$str--D S
,--S T
$str	--U Ñ
)
--Ñ Ö
;
--Ö Ü
WaitAndRetrySeconds.. 
...  
Add..  #
(..# $
secondsToWait..$ 1
)..1 2
;..2 3
}// 	
public11 
void11 
AddRequestHeader11 $
(11$ %
string11% +
key11, /
,11/ 0
string111 7
value118 =
,11= >
bool11? C
overwriteValue11D R
=11S T
false11U Z
)11Z [
{22 	
if33 
(33 
string33 
.33 
IsNullOrEmpty33 $
(33$ %
key33% (
)33( )
||33* ,
string33- 3
.333 4
IsNullOrEmpty334 A
(33A B
value33B G
)33G H
)33H I
throw33J O
new33P S!
ArgumentNullException33T i
(33i j
$str33j o
,33o p
$str	33q é
)
33é è
;
33è ê
var44 
	keyExists44 
=44 
Headers44 #
.44# $
ContainsKey44$ /
(44/ 0
key440 3
)443 4
;444 5
if66 
(66 
Headers66 
==66 
null66 
)66  
{77 
Headers88 
=88 
new88 

Dictionary88 (
<88( )
string88) /
,88/ 0
string881 7
>887 8
{99 
{:: 
key:: 
,:: 
value::  
}::! "
};; 
;;; 
return<< 
;<< 
}== 
if?? 
(?? 
overwriteValue?? 
)?? 
{@@ 
HeadersAA 
.AA 
RemoveAA 
(AA 
keyAA "
)AA" #
;AA# $
}BB 
elseCC 
{DD 
ifEE 
(EE 
	keyExistsEE 
)EE 
throwEE $
newEE% (!
ArgumentNullExceptionEE) >
(EE> ?
$strEE? D
,EED E
$strEEF f
)EEf g
;EEg h
HeadersFF 
.FF 
AddFF 
(FF 
keyFF 
,FF  
valueFF! &
)FF& '
;FF' (
}GG 
}HH 	
}II 
}JJ ñ
£C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Cors\CorsOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Cors2 6
{ 
public 

class 
CorsOptions 
{ 
public 
Origin 
[ 
] 
Origins 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ÿ
ûC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Cors\Origin.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Cors2 6
{ 
public 

class 
Origin 
{ 
public 
string 

CorsPolicy  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 
Origins		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
Headers

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
string 
Methods 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
AllowCredentials $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
List 
< 
string 
> 
GetOriginsList *
(* +
)+ ,
{ 	
return 
Origins 
. 
Split  
(  !
$char! $
)$ %
.% &
ToList& ,
(, -
)- .
;. /
} 	
public 
List 
< 
string 
> 
GetMethodsList *
(* +
)+ ,
{ 	
return 
Methods 
. 
Split  
(  !
$char! $
)$ %
.% &
ToList& ,
(, -
)- .
;. /
} 	
public 
List 
< 
string 
> 
GetHeadersList *
(* +
)+ ,
{ 	
return 
Headers 
. 
Split  
(  !
$char! $
)$ %
.% &
ToList& ,
(, -
)- .
;. /
} 	
} 
} Î
´C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\CyberArk\CyberArkOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
CyberArk2 :
{ 
public 

class 
CyberArkOptions  
{ 
public 
bool 
EnableCyberArk "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
CircuitBreakerName (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
}		 
}

 ¢	
™C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Devon\Clientcertificate.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Devon2 7
{ 
public 

class 
Clientcertificate "
{ 
public 
bool )
DisableClientCertificateCheck 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
bool $
RequireClientCertificate ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
bool &
CheckCertificateRevocation .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
Clientcertificates !
ClientCertificates" 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
}		 
}

 È
´C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Devon\Clientcertificates.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Devon2 7
{ 
public 

class 
Clientcertificates #
{ 
public 
List 
< 
string 
> 
	Whitelist %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool )
DisableClientCertificateCheck 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
}		 
}

 µ
ßC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Devon\DevonfwOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Devon2 7
{ 
public 

class 
DevonfwOptions 
{ 
public 
bool  
UseDetailedErrorsKey (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
bool 
UseIIS 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 

UseSwagger 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
UseXsrf 
{ 
get !
;! "
set# &
;& '
}( )
public		 
string		 
Environment		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 

Killswitch

 

KillSwitch

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
public 
Kestrel 
Kestrel 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} Ò
†C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Devon\Kestrel.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Devon2 7
{ 
public 

class 
Kestrel 
{ 
public 
bool 
UseHttps 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
ApplicationPort "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
Servercertificate  
ServerCertificate! 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
Clientcertificate  
ClientCertificate! 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
}		 
}

 á
£C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Devon\Killswitch.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Devon2 7
{ 
public 

class 

Killswitch 
{ 
public 
string "
killSwitchSettingsFile ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} ±
™C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Devon\Servercertificate.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Devon2 7
{ 
public 

class 
Servercertificate "
{ 
public 
string 
Certificate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
CertificatePassword )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} ø
£C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Grpc\GrpcOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
{ 
public 

class 
GrpcOptions 
{ 
public 
bool 

EnableGrpc 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
UseDevCertificate %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 

GrpcServer  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int !
MaxReceiveMessageSize (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
}		 
}

 ∑
°C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\JWT\JwtOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
JWT2 5
{ 
public 

class 

JwtOptions 
{ 
public 
string 
Audience 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Issuer 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
TokenExpirationTime &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool $
ValidateIssuerSigningKey ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public		 
bool		 
ValidateLifetime		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
public

 
int

 
	ClockSkew

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
public 
Security 
Security  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ∆
üC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\JWT\Security.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
JWT2 5
{ 
public 

class 
Security 
{ 
public 
string (
SecretKeyEncryptionAlgorithm 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
string $
SecretKeyLengthAlgorithm .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
string 
	SecretKey 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
Certificate !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
string		 
CertificatePassword		 )
{		* +
get		, /
;		/ 0
set		1 4
;		4 5
}		6 7
public

 
string

 *
CertificateEncryptionAlgorithm

 4
{

5 6
get

7 :
;

: ;
set

< ?
;

? @
}

A B
} 
} õ
ßC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Kafka\Administration.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Kafka2 7
{ 
public 

class 
Administration 
{ 
public 
string 
AdminId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Servers 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} é
°C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Kafka\Consumer.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Kafka2 7
{ 
public 

class 
Consumer 
{ 
public 
string 

ConsumerId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 
Servers		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
ClientId

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 
GroupId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Topics 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 

AutoCommit 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
?  
StatisticsIntervalMs (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
? 
SessionTimeoutMs $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
AutoOffsetReset %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
EnablePartitionEof &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
IsolationLevel $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool ,
 EnableSslCertificateVerification 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
string 
Debug 
{ 
get !
;! "
set# &
;& '
}( )
public 
List 
< 
string 
> 
	GetTopics %
(% &
)& '
{ 	
return 
string 
. 
IsNullOrEmpty '
(' (
Topics( .
). /
?0 1
new2 5
List6 :
<: ;
string; A
>A B
(B C
)C D
:E F
TopicsG M
.M N
SplitN S
(S T
$charT W
)W X
.X Y
ToListY _
(_ `
)` a
;a b
} 	
} 
} ˆ	
•C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Kafka\KafkaOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Kafka2 7
{ 
public 

class 
KafkaOptions 
{ 
public 
bool 
EnableKafka 
{  !
get" %
;% &
set' *
;* +
}, -
public 
List 
< 
Administration "
>" #
Administration$ 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public		 
List		 
<		 
Producer		 
>		 
	Producers		 '
{		( )
get		* -
;		- .
set		/ 2
;		2 3
}		4 5
public

 
List

 
<

 
Consumer

 
>

 
	Consumers

 '
{

( )
get

* -
;

- .
set

/ 2
;

2 3
}

4 5
} 
} £
°C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Kafka\Producer.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Kafka2 7
{ 
public 

class 
Producer 
{ 
public 
string 

ProducerId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Servers 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
ClientId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Topic 
{ 
get !
;! "
set# &
;& '
}( )
public		 
int		 
?		 
MessageMaxBytes		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
int

 
?

 
CompressionLevel

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
public 
string 
CompressionType %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
? "
ReceiveMessageMaxBytes *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
bool ,
 EnableSslCertificateVerification 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public 
int 
? "
CancellationDelayMaxMs *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
string 
Ack 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Debug 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
BrokerAddressTtl $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
? 
BatchNumMessages $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool 
EnableIdempotence %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
? 
MaxInFlight 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
? !
MessageSendMaxRetries )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
? 
	BatchSize 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ”
ØC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\KillSwitch\KillSwitchOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2

KillSwitch2 <
{ 
public 

class 
KillSwitchOptions "
{ 
public 
bool 
UseKillSwitch !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
EnableRequests "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
HttpStatusCode !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
}		 â
ßC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\LiteDb\LiteDbOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
LiteDb2 8
{ 
public 

class 
LiteDbOptions 
{ 
public 
string 
DatabaseLocation &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ‚
•C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Log\GraylogOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Log2 5
{ 
public 

class 
GraylogOptions 
{ 
public 
string 
GrayLogHost !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
GrayLogPort 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
GrayLogProtocol %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
UseSecureConnection '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public		 
bool		 
UseAsyncLogging		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
int

 

RetryCount

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
int 
RetryIntervalMs "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
int 
MaxUdpMessageSize $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} Î
°C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Log\LogOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Log2 5
{ 
public 

class 

LogOptions 
{ 
public 
bool 

UseLogFile 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
UseSQLiteDb 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 

UseGraylog 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
UseAOPTrace 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
LogLevel		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
SqliteDatabase

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
public 
string 
LogFile 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
SeqLogServerHost &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
GraylogOptions 
GrayLog %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ô
°C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\MediatR\Backup.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
MediatR2 9
{ 
public 

class 
Backup 
{ 
public 
bool 
UseLocalBackup "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
DatabaseName "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ¢
©C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\MediatR\MediatROptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
MediatR2 9
{ 
public 

class 
MediatROptions 
{ 
public 
bool 
EnableMediatR !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
Backup 
Backup 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ”
°C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\OptionsHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
{ 
public 

static 
class 
OptionsHandler &
{ 
public		 
static		 
T		 
GetTypedOptions		 '
<		' (
T		( )
>		) *
(		* +
this		+ /
IServiceCollection		0 B
services		C K
,		K L
IConfiguration		M [
configuration		\ i
,		i j
string		k q
sectionName		r }
)		} ~
where			 Ñ
T
		Ö Ü
:
		á à
class
		â é
,
		é è
new
		ê ì
(
		ì î
)
		î ï
{

 	
services 
. 
	Configure 
< 
T  
>  !
(! "
configuration" /
./ 0

GetSection0 :
(: ;
sectionName; F
)F G
)G H
;H I
using 
var 
serviceProvider %
=& '
services( 0
.0 1 
BuildServiceProvider1 E
(E F
)F G
;G H
return 
serviceProvider "
." #

GetService# -
<- .
IOptions. 6
<6 7
T7 8
>8 9
>9 :
(: ;
); <
?< =
.= >
Value> C
;C D
} 	
} 
} õ
¢C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\RabbitMq\Backup.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
RabbitMq2 :
{ 
public 

class 
Backup 
{ 
public 
bool 
UseLocalBackup "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
DatabaseName "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ƒ
™C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\RabbitMq\HostDefinition.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
RabbitMq2 :
{ 
public 

class 
HostDefinition 
{ 
public 
string 
Host 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
Port 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
Ssl 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
SslServerName #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public		 
string		 
SslCertPath		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
SslCertPassPhrase

 '
{

( )
get

* -
;

- .
set

/ 2
;

2 3
}

4 5
public 
string 
SslPolicyErrors %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ”
´C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\RabbitMq\RabbitMQOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
RabbitMq2 :
{ 
public 

class 
RabbitMqOptions  
{ 
public 
bool 
EnableRabbitMq "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
List 
< 
HostDefinition "
>" #
Hosts$ )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public		 
string		 
UserName		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
Password

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 
VirtualHost !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Product 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
? 
RequestedHeartbeat &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int 
? 
PrefetchCount !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
PublisherConfirms %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool 
PersistentMessages &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
Platform 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
? 
Timeout 
{ 
get !
;! "
set# &
;& '
}( )
public 
Backup 
Backup 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} ù
©C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\SmaxHcm\SmaxHcmOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
SmaxHcm2 9
{ 
public 

class 
SmaxHcmOptions 
{ 
public 
bool 

EnableSmax 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
TenantId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 
CircuitBreakerName		 (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
public

 
string

 

ProviderId

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
} 
} £
¢C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Swagger\Contact.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Swagger2 9
{ 
public 

class 
Contact 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
} 
}		 ∆
£C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Swagger\Endpoint.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Swagger2 9
{ 
public 

class 
Endpoint 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
UrlUi 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
RouteTemplate #
{$ %
get& )
;) *
set+ .
;. /
}0 1
}		 
}

 ä
¢C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Swagger\License.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Swagger2 9
{ 
public 

class 
License 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Url 
{ 
get 
;  
set! $
;$ %
}& '
} 
} ´
©C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Common\Options\Swagger\SwaggerOptions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Common# )
.) *
Options* 1
.1 2
Swagger2 9
{ 
public 

class 
SwaggerOptions 
{ 
public 
string 
Version 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Title 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Terms 
{ 
get !
;! "
set# &
;& '
}( )
public		 
Contact		 
Contact		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
License

 
License

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
Endpoint 
Endpoint  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} 