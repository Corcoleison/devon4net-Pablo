ê
úC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Extensions\GuidExtension.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #

Extensions# -
{ 
public 

static 
class 
GuidExtension %
{ 
public 
static 
bool 
IsNullOrEmptyGuid ,
(, -
this- 1
Guid2 6
?6 7
guid8 <
)= >
{ 	
return		 
guid		 
==		 
null		 
||		  "
guid		# '
==		( *
default		+ 2
(		2 3
Guid		3 7
)		7 8
||		9 ;
guid		< @
==		A C
Guid		D H
.		H I
Empty		I N
;		N O
}

 	
public 
static 
bool 
IsNullOrEmptyGuid ,
(, -
this- 1
Guid2 6
guid7 ;
); <
{ 	
return 
guid 
== 
default "
(" #
Guid# '
)' (
||) +
guid, 0
==1 3
Guid4 8
.8 9
Empty9 >
;> ?
} 	
public 
static 
string 
GuidToString )
() *
this* .
Guid/ 3
guid4 8
)8 9
{ 	
if 
( 
guid 
. 
IsNullOrEmptyGuid &
(& '
)' (
)( )
throw* /
new0 3
ArgumentException4 E
(E F
$strF Z
)Z [
;[ \
return 
guid 
. 
ToString  
(  !
)! "
;" #
} 	
public 
static 
Guid 
StringToGuid '
(' (
this( ,
string- 3
guid4 8
)8 9
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
guid% )
)) *
)* +
throw, 1
new2 5
ArgumentException6 G
(G H
$strH \
)\ ]
;] ^
Guid 
. 
TryParse 
( 
guid 
, 
out  #
Guid$ (
result) /
)/ 0
;0 1
if 
( 
result 
. 
IsNullOrEmptyGuid (
(( )
)) *
)* +
throw, 1
new2 5
ArgumentException6 G
(G H
$strH U
)U V
;V W
return 
result 
; 
} 	
public   
static   
bool   
IsValid   "
(  " #
this  # '
string  ( .
guid  / 3
)  3 4
{!! 	
if"" 
("" 
string"" 
."" 
IsNullOrEmpty"" $
(""$ %
guid""% )
)"") *
)""* +
return"", 2
false""3 8
;""8 9
return## 
Guid## 
.## 
TryParse##  
(##  !
guid##! %
,##% &
out##' *
Guid##+ /
myGuid##0 6
)##6 7
;##7 8
}$$ 	
}&& 
}'' ≥
¢C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Extensions\Helpers\IJsonHelper.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #

Extensions# -
.- .
Helpers. 5
{ 
public 

	interface 
IJsonHelper  
{ 
Task 
< 
string 
> 
SerializeAsync #
<# $
T$ %
>% &
(& '
T' (
input) .
). /
;/ 0
string		 
	Serialize		 
<		 
T		 
>		 
(		 
T		 
input		 #
)		# $
;		$ %
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
 
DeserializeAsync

  
<

  !
T

! "
>

" #
(

# $
string

$ * 
jsonObjectDefinition

+ ?
)

? @
;

@ A
} 
} •
®C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Extensions\Helpers\IObjectTypeHelper.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #

Extensions# -
.- .
Helpers. 5
{ 
public 

	interface 
IObjectTypeHelper &
{ 
object %
CovertObjectFromClassName (
(( )
object) /
objectInstance0 >
,> ?
string@ F
fullClassNameG T
)T U
;U V
} 
} ö
°C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Extensions\Helpers\JsonHelper.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #

Extensions# -
.- .
Helpers. 5
{ 
public 

class 

JsonHelper 
: 
IJsonHelper )
{		 
private

 !
JsonSerializerOptions

 %!
JsonSerializerOptions

& ;
{

< =
get

> A
;

A B
set

C F
;

F G
}

H I
public 

JsonHelper 
( 
) 
{ 	!
JsonSerializerOptions !
=" #
null$ (
;( )
} 	
public 
void $
SetJsonSerializerOptions ,
(, -!
JsonSerializerOptions- B!
jsonSerializerOptionsC X
)X Y
{ 	!
JsonSerializerOptions !
=" #!
jsonSerializerOptions$ 9
;9 :
} 	
public 
async 
Task 
< 
string  
>  !
SerializeAsync" 0
<0 1
T1 2
>2 3
(3 4
T4 5
input6 ;
); <
{ 	
var 
stream 
= 
new 
MemoryStream )
() *
)* +
;+ ,
await 
JsonSerializer  
.  !
SerializeAsync! /
</ 0
T0 1
>1 2
(2 3
stream3 9
,9 :
input; @
,@ A!
JsonSerializerOptionsB W
)W X
;X Y
stream 
. 
Position 
= 
$num 
;  
using 
var 
reader 
= 
new "
StreamReader# /
(/ 0
stream0 6
)6 7
;7 8
return 
await 
reader 
.  
ReadToEndAsync  .
(. /
)/ 0
;0 1
} 	
public   
string   
	Serialize   
<    
T    !
>  ! "
(  " #
T  # $
input  % *
)  * +
{!! 	
var"" 
stream"" 
="" 
new"" 
MemoryStream"" )
("") *
)""* +
;""+ ,
return## 
JsonSerializer## !
.##! "
	Serialize##" +
<##+ ,
T##, -
>##- .
(##. /
input##/ 4
,##4 5!
JsonSerializerOptions##6 K
)##K L
;##L M
}$$ 	
public&& 
async&& 
Task&& 
<&& 
T&& 
>&& 
DeserializeAsync&& -
<&&- .
T&&. /
>&&/ 0
(&&0 1
string&&1 7 
jsonObjectDefinition&&8 L
)&&L M
{'' 	
var(( 
reader(( 
=(( 
new(( 
MemoryStream(( )
((() *
Encoding((* 2
.((2 3
UTF8((3 7
.((7 8
GetBytes((8 @
(((@ A 
jsonObjectDefinition((A U
)((U V
)((V W
;((W X
return)) 
await)) 
JsonSerializer)) '
.))' (
DeserializeAsync))( 8
<))8 9
T))9 :
>)): ;
()); <
reader))< B
,))B C!
JsonSerializerOptions))D Y
)))Y Z
;))Z [
}** 	
}++ 
},, Ü
ßC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Extensions\Helpers\ObjectTypeHelper.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #

Extensions# -
.- .
Helpers. 5
{ 
public 

class 
ObjectTypeHelper !
:" #
IObjectTypeHelper$ 5
{ 
public 
object %
CovertObjectFromClassName /
(/ 0
object0 6
objectInstance7 E
,E F
stringG M
fullClassNameN [
)[ \
{ 	
if		 
(		 
string		 
.		 
IsNullOrEmpty		 $
(		$ %
fullClassName		% 2
)		2 3
)		3 4
throw		5 :
new		; >
ArgumentException		? P
(		P Q
$str		Q p
)		p q
;		q r
var

 
classNameTarget

 
=

  !
Type

" &
.

& '
GetType

' .
(

. /
fullClassName

/ <
)

< =
;

= >
if 
( 
classNameTarget 
==  "
null# '
)' (
throw) .
new/ 2
ArgumentException3 D
(D E
$strE u
)u v
;v w
return 
Convert 
. 

ChangeType %
(% &
objectInstance& 4
,4 5
classNameTarget6 E
)E F
;F G
} 	
} 
} ÷
§C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Extensions\HttpContextExtensions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #

Extensions# -
{ 
public 

static 
class !
HttpContextExtensions -
{ 
public 
static 
bool "
ResponseContainsHeader 1
(1 2
this2 6
HttpContext7 B
httpContextC N
,N O
stringP V
headerW ]
)] ^
{		 	
return

 
httpContext

 
.

 
Response

 '
.

' (
Headers

( /
.

/ 0
ContainsKey

0 ;
(

; <
header

< B
)

B C
;

C D
} 	
public 
static 
bool 
TryAddHeader '
(' (
this( ,
HttpContext- 8
httpContext9 D
,D E
stringF L

headerNameM W
,W X
stringY _
headerValue` k
)k l
{ 	
if 
( 
httpContext 
. "
ResponseContainsHeader 2
(2 3

headerName3 =
)= >
)> ?
return@ F
trueG K
;K L
try 
{ 
httpContext 
. 
Response $
.$ %
Headers% ,
., -
Add- 0
(0 1

headerName1 ;
,; <
headerValue= H
)H I
;I J
return 
true 
; 
} 
catch 
( 
ArgumentException $
)$ %
{ 
return 
false 
; 
} 
} 	
public 
static 
bool 
TryRemoveHeader *
(* +
this+ /
HttpContext0 ;
httpContext< G
,G H
stringI O

headerNameP Z
)Z [
{ 	
if 
( 
httpContext 
== 
null #
)# $
throw% *
new+ .!
ArgumentNullException/ D
(D E
nameofE K
(K L
httpContextL W
)W X
)X Y
;Y Z
if 
( 
! 
httpContext 
. "
ResponseContainsHeader 3
(3 4

headerName4 >
)> ?
)? @
returnA G
trueH L
;L M
try 
{   
httpContext!! 
.!! 
Response!! $
.!!$ %
Headers!!% ,
.!!, -
Remove!!- 3
(!!3 4

headerName!!4 >
)!!> ?
;!!? @
return"" 
true"" 
;"" 
}## 
catch$$ 
($$ 
ArgumentException$$ $
)$$$ %
{%% 
return&& 
false&& 
;&& 
}'' 
}(( 	
})) 
}** Ì
£C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Extensions\HttpRequestExtension.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #

Extensions# -
{ 
public		 

static		 
class		  
HttpRequestExtension		 ,
{

 
public 
static 
string !
GetContextIsoLanguage 2
(2 3
this3 7
HttpRequest8 C
requestD K
)K L
{ 	
return 
request 
. 
HttpContext &
.& '
Features' /
./ 0
Get0 3
<3 4"
IRequestCultureFeature4 J
>J K
(K L
)L M
.M N
RequestCultureN \
.\ ]
Culture] d
.d e&
ThreeLetterISOLanguageNamee 
;	 Ä
} 	
public 
static 
List 
< 
string !
>! "
GetContextLanguages# 6
(6 7
this7 ;
HttpRequest< G
requestH O
)O P
{ 	
return 
request 
. 
GetTypedHeaders *
(* +
)+ ,
. 
AcceptLanguage &
? 
. 
OrderByDescending *
(* +
x+ ,
=>- /
x0 1
.1 2
Quality2 9
??: <
$num= >
)> ?
. 
Select 
( 
x  
=>! #
x$ %
.% &
Value& +
.+ ,
ToString, 4
(4 5
)5 6
)6 7
. 
ToList 
( 
)  
??! #
new$ '
List( ,
<, -
string- 3
>3 4
(4 5
)5 6
;6 7
} 	
public 
static 
CultureInfo !
GetContextCulture" 3
(3 4
this4 8
HttpRequest9 D
requestE L
)L M
{ 	
return 
request 
. 
HttpContext '
.' (
Features( 0
.0 1
Get1 4
<4 5"
IRequestCultureFeature5 K
>K L
(L M
)M N
.N O
RequestCultureO ]
.] ^
Culture^ e
;e f
} 	
} 
} 