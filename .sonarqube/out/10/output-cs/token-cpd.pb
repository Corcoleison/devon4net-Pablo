¸'
šC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Cors\CorsConfiguration.cs
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
class 
CorsConfiguration )
{		 
public

 
static

 
void

 
	SetupCors

 $
(

$ %
this

% )
IServiceCollection

* <
services

= E
,

E F
ref

G J
IConfiguration

K Y
configuration

Z g
)

g h
{ 	
var 
CorsOptions 
= 
services &
.& '
GetTypedOptions' 6
<6 7
CorsOptions7 B
>B C
(C D
configurationD Q
,Q R
$strS \
)\ ]
;] ^
if 
( 
CorsOptions 
? 
. 
Origins $
==% '
null( ,
), -
{ #
SetCorsAnyOriginAllowed '
(' (
ref( +
services, 4
)4 5
;5 6
} 
else 
{ 
SetupCorsOrigins  
(  !
ref! $
services% -
,- .
ref/ 2
configuration3 @
)@ A
;A B
} 
} 	
private 
static 
void #
SetCorsAnyOriginAllowed 3
(3 4
ref4 7
IServiceCollection8 J
servicesK S
)S T
{ 	
services 
. 
AddCors 
( 
options $
=>% '
{ 
options 
. 
	AddPolicy !
(! "
$str" .
,. /
builder0 7
=>8 :
{ 
builder 
. 
AllowAnyOrigin *
(* +
)+ ,
;, -
builder   
.   
AllowAnyHeader   *
(  * +
)  + ,
;  , -
builder!! 
.!! 
AllowAnyMethod!! *
(!!* +
)!!+ ,
;!!, -
}"" 
)"" 
;"" 
}## 
)## 
;## 
}$$ 	
private++ 
static++ 
void++ 
SetupCorsOrigins++ ,
(++, -
ref++- 0
IServiceCollection++1 C
services++D L
,++L M
ref++N Q
IConfiguration++R `
configuration++a n
)++n o
{,, 	
var-- 
corsOptions-- 
=-- 
services-- &
.--& '
GetTypedOptions--' 6
<--6 7
CorsOptions--7 B
>--B C
(--C D
configuration--D Q
,--Q R
$str--S Y
)--Y Z
;--Z [
if// 
(// 
corsOptions// 
==// 
null// #
)//# $
{00 #
SetCorsAnyOriginAllowed11 '
(11' (
ref11( +
services11, 4
)114 5
;115 6
}22 
else33 
{44 
foreach55 
(55 
var55 

definition55 '
in55( *
corsOptions55+ 6
.556 7
Origins557 >
)55> ?
{66 
services77 
.77 
AddCors77 $
(77$ %
options77% ,
=>77- /
{88 
options99 
.99  
	AddPolicy99  )
(99) *

definition99* 4
.994 5

CorsPolicy995 ?
,99? @
builder99A H
=>99I K
{:: 
builder;; #
.;;# $
WithOrigins;;$ /
(;;/ 0

definition;;0 :
.;;: ;
GetOriginsList;;; I
(;;I J
);;J K
.;;K L
ToArray;;L S
(;;S T
);;T U
);;U V
;;;V W
builder<< #
.<<# $
WithHeaders<<$ /
(<</ 0

definition<<0 :
.<<: ;
GetHeadersList<<; I
(<<I J
)<<J K
.<<K L
ToArray<<L S
(<<S T
)<<T U
)<<U V
;<<V W
builder== #
.==# $
WithMethods==$ /
(==/ 0

definition==0 :
.==: ;
GetMethodsList==; I
(==I J
)==J K
.==K L
ToArray==L S
(==S T
)==T U
)==U V
;==V W
if>> 
(>>  

definition>>  *
.>>* +
AllowCredentials>>+ ;
)>>; <
builder>>= D
.>>D E
AllowCredentials>>E U
(>>U V
)>>V W
;>>W X
}?? 
)?? 
;?? 
}@@ 
)@@ 
;@@ 
}AA 
}BB 
}CC 	
}DD 
}EE 