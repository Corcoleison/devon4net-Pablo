‚
üC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Common\Consts\AuthConst.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Common' -
.- .
Consts. 4
{ 
public 

class 
	AuthConst 
{ 
public 
const 
string  
AuthenticationScheme 0
=1 2
$str3 ;
;; <
}		 
}

 ç
©C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Common\Consts\ConfigurationConsts.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Common' -
.- .
Consts. 4
{ 
public 

static 
class 
ConfigurationConsts +
{ 
public 
const 
string #
DefaultSettingsNodeName 3
=4 5
$str6 ?
;? @
} 
} á
™C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Common\Extensions\StringExtensions.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Common' -
.- .

Extensions. 8
{ 
public 

static 
class 
StringExtensions (
{ 
public 
static 
byte 
[ 
] $
ToByteArrayFromHexBinary 5
(5 6
this6 :
string; A
	hexBinaryB K
)K L
{ 	
if		 
(		 
	hexBinary		 
.		 
Length		  
%		! "
$num		# $
!=		% '
$num		( )
)		) *
{

 
throw 
new 
ArgumentException +
(+ ,
$str, ^
)^ _
;_ `
} 
var 
result 
= 
new 
byte !
[! "
	hexBinary" +
.+ ,
Length, 2
/3 4
$num5 6
]6 7
;7 8
for 
( 
var 
i 
= 
$num 
; 
i 
< 
	hexBinary  )
.) *
Length* 0
;0 1
i2 3
+=4 6
$num7 8
)8 9
{ 
result 
[ 
i 
/ 
$num 
] 
= 
Convert  '
.' (
ToByte( .
(. /
$"/ 1
{1 2
	hexBinary2 ;
[; <
i< =
]= >
}> ?
{? @
	hexBinary@ I
[I J
iJ K
+L M
$numN O
]O P
}P Q
"Q R
,R S
$numT V
)V W
;W X
} 
return 
result 
; 
} 	
} 
} â
°C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Common\Helper\IJsonHelper.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Common' -
.- .
Helper. 4
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
;		$ %
T

 	
Deserialize


 
<

 
T

 
>

 
(

 
string

 
input

  %
)

% &
;

& '
} 
} Ü
†C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Common\Helper\JsonHelper.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Common' -
.- .
Helper. 4
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
 
const

 
string

 "
BuiltInTypeObjectNames

 3
=

4 5
$str	

6 ≤
;


≤ ≥
public 
T 
Deserialize 
< 
T 
> 
(  
string  &
input' ,
), -
{ 	
return 
string 
. 
IsNullOrEmpty '
(' (
input( -
)- .
? 
default 
: "
BuiltInTypeObjectNames (
.( )
Contains) 1
(1 2
typeof2 8
(8 9
T9 :
): ;
.; <
Name< @
)@ A
?B C
(D E
TE F
)F G
ConvertG N
.N O

ChangeTypeO Y
(Y Z
inputZ _
,_ `
typeofa g
(g h
Th i
)i j
)j k
:l m
JsonSerializern |
.| }
Deserialize	} à
<
à â
T
â ä
>
ä ã
(
ã å
input
å ë
)
ë í
;
í ì
} 	
public 
async 
Task 
< 
string  
>  !
SerializeAsync" 0
<0 1
T1 2
>2 3
(3 4
T4 5
input6 ;
); <
{ 	
using 
var 
stream 
= 
new "
MemoryStream# /
(/ 0
)0 1
;1 2
await 
JsonSerializer  
.  !
SerializeAsync! /
(/ 0
stream0 6
,6 7
input8 =
,= >
input? D
.D E
GetTypeE L
(L M
)M N
)N O
;O P
stream 
. 
Position 
= 
$num 
;  
using 
var 
reader 
= 
new "
StreamReader# /
(/ 0
stream0 6
)6 7
;7 8
return 
await 
reader 
.  
ReadToEndAsync  .
(. /
)/ 0
;0 1
} 	
public 
string 
	Serialize 
<  
T  !
>! "
(" #
T# $
input% *
)* +
{ 	
return 
JsonSerializer !
.! "
	Serialize" +
(+ ,
input, 1
)1 2
;2 3
} 	
}   
}!! ß"
®C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Common\Operations\FileOperations.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Common' -
.- .

Operations. 8
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
}(( ˛
©C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Common\Validators\ApiKeyValidator.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Common' -
.- .

Validators. 8
{ 
public 

class 
ApiKeyValidator  
:! "
IApiKeyValidator# 3
{ 
private 
readonly 
IConfiguration '
_configuration( 6
;6 7
public		 
ApiKeyValidator		 
(		 
IConfiguration		 -
configuration		. ;
)		; <
{

 	
_configuration 
= 
configuration *
;* +
} 	
public 
bool 
ValidateApiToken $
($ %
string% +
apiToken, 4
)4 5
{ 	
var 
apiKeysList 
= 
_configuration ,
., -

GetSection- 7
(7 8
$str8 A
)A B
.B C
ValueC H
;H I
return 
apiKeysList 
. 
Contains '
(' (
$"( *
$str* ,
{, -
apiToken- 5
}5 6
$str6 8
"8 9
)9 :
;: ;
} 	
} 
} ˆ
™C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Common\Validators\IApiKeyValidator.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Common' -
.- .

Validators. 8
{ 
public 

	interface 
IApiKeyValidator %
{ 
bool 
ValidateApiToken 
( 
string $
apiToken% -
)- .
;. /
} 
} 