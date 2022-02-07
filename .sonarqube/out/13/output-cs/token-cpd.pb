à
≠C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Lambda\Extensions\EnumerableExtension.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Lambda' -
.- .

Extensions. 8
{ 
public		 

static		 
class		 
EnumerableExtension		 +
{

 
public 
static 
Task 
ForEachAsync '
<' (
T( )
>) *
(* +
this+ /
IEnumerable0 ;
<; <
T< =
>= >
source? E
,E F
intG J"
maxDegreeOfParallelismK a
,a b
Funcc g
<g h
Th i
,i j
Taskk o
>o p
bodyq u
)u v
{ 	
return 
Task 
. 
WhenAll 
(  
from 
	partition 
in !
Partitioner" -
.- .
Create. 4
(4 5
source5 ;
); <
.< =
GetPartitions= J
(J K"
maxDegreeOfParallelismK a
)a b
select 
Task 
. 
Run 
(  
async  %
delegate& .
{ 
using 
( 
	partition $
)$ %
while 
( 
	partition (
.( )
MoveNext) 1
(1 2
)2 3
)3 4
await !
body" &
(& '
	partition' 0
.0 1
Current1 8
)8 9
;9 :
} 
) 
) 
; 
} 	
} 
} †
¨C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Lambda\Handlers\ILambdaClientHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Lambda' -
.- .
Handlers. 6
{ 
public 

	interface  
ILambdaClientHandler )
{ 
Task 
< 
TOutput 
> 
Invoke 
< 
TInput #
,# $
TOutput% ,
>, -
(- .
string. 4
functionName5 A
,A B
TInputC I

inputParamJ T
,T U
InvocationTypeV d
invocationTypee s
=t u
nullv z
)z {
;{ |
}		 
}

 «&
´C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Lambda\Handlers\LambdaClientHandler.cs
	namespace		 	
	Devon4Net		
 
.		 
Infrastructure		 "
.		" #
AWS		# &
.		& '
Lambda		' -
.		- .
Handlers		. 6
{

 
public 

class 
LambdaClientHandler $
:% & 
ILambdaClientHandler' ;
{ 
private 
const 
string "
BuiltInTypeObjectNames 3
=4 5
$str	6 ≤
;
≤ ≥
private 
string 
	AwsRegion  
{! "
get# &
;& '
}( )
private 
string  
AwsSecretAccessKeyId +
{, -
get. 1
;1 2
}3 4
private 
string 
AwsSecretAccessKey )
{* +
get, /
;/ 0
}1 2
public 
LambdaClientHandler "
(" #
string# )
	awsRegion* 3
,3 4
string5 ; 
awsSecretAccessKeyId< P
,P Q
stringR X
awsSecretAccessKeyY k
)k l
{ 	
	AwsRegion 
= 
	awsRegion !
;! "
AwsSecretAccessKey 
=  
awsSecretAccessKey! 3
;3 4 
AwsSecretAccessKeyId  
=! " 
awsSecretAccessKeyId# 7
;7 8
} 	
public 
async 
Task 
< 
TOutput !
>! "
Invoke# )
<) *
TInput* 0
,0 1
TOutput1 8
>8 9
(9 :
string: @
functionNameA M
,M N
TInputO U

inputParamV `
,` a
InvocationTypeb p
invocationTypeq 
=
Ä Å
null
Ç Ü
)
Ü á
{ 	
var 
lambdaConfig 
= 
new "
AmazonLambdaConfig# 5
(5 6
)6 7
{8 9
RegionEndpoint: H
=I J
RegionEndpointK Y
.Y Z
GetBySystemNameZ i
(i j
	AwsRegionj s
)s t
}u v
;v w
var 
	awsClient 
= 
new 
AmazonLambdaClient  2
(2 3 
AwsSecretAccessKeyId3 G
,G H
AwsSecretAccessKeyI [
,[ \
lambdaConfig] i
)i j
;j k
var 
response 
= 
await  
	awsClient! *
.* +
InvokeAsync+ 6
(6 7
new7 :
InvokeRequest; H
{ 
FunctionName   
=   
functionName   +
,  + ,
InvocationType!! 
=!!  
invocationType!!! /
==!!0 2
null!!3 7
?!!8 9
InvocationType!!: H
.!!H I
RequestResponse!!I X
:!!Y Z
invocationType!![ i
,!!i j
Payload"" 
="" 
JsonSerializer"" (
.""( )
	Serialize"") 2
(""2 3

inputParam""3 =
)""= >
}## 
)## 
;## 
return%% 
Deserialize%% 
<%%  
TOutput%%  '
>%%' (
(%%( )
Encoding%%) 1
.%%1 2
Default%%2 9
.%%9 :
	GetString%%: C
(%%C D
response%%D L
.%%L M
Payload%%M T
.%%T U
ToArray%%U \
(%%\ ]
)%%] ^
)%%^ _
)%%_ `
;%%` a
}&& 	
private(( 
T(( 
Deserialize(( 
<(( 
T(( 
>((  
(((  !
string((! '
input((( -
)((- .
{)) 	
return** 
string** 
.** 
IsNullOrEmpty** '
(**' (
input**( -
)**- .
?++ 
default++ 
:,, "
BuiltInTypeObjectNames,, (
.,,( )
Contains,,) 1
(,,1 2
typeof,,2 8
(,,8 9
T,,9 :
),,: ;
.,,; <
Name,,< @
),,@ A
?,,B C
(,,D E
T,,E F
),,F G
Convert,,G N
.,,N O

ChangeType,,O Y
(,,Y Z
input,,Z _
,,,_ `
typeof,,a g
(,,g h
T,,h i
),,i j
),,j k
:,,l m
JsonSerializer,,n |
.,,| }
Deserialize	,,} à
<
,,à â
T
,,â ä
>
,,ä ã
(
,,ã å
input
,,å ë
)
,,ë í
;
,,í ì
}-- 	
}.. 
}// ö
≠C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Lambda\Interfaces\ILambdaEventHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Lambda' -
.- .

Interfaces. 8
{ 
public 

	interface 
ILambdaEventHandler (
<( )
in) +
TInput, 2
,2 3
TOutput4 ;
>; <
where= B
TInputC I
:J K
classL Q
{ 
Task 
< 
TOutput 
> 
FunctionHandler %
(% &
TInput& ,
input- 2
,2 3
ILambdaContext4 B
contextC J
)J K
;K L
}		 
}

 í
©C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Lambda\Interfaces\IMessageHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Lambda' -
.- .

Interfaces. 8
{ 
public 

	interface 
IMessageHandler $
<$ %
in% '
TInput( .
,. /
TOutput0 7
>7 8
where9 >
TInput? E
:F G
classH M
{ 
Task 
< 
TOutput 
> 
HandleMessage #
(# $
TInput$ *
message+ 2
,2 3
ILambdaContext4 B
contextC J
)J K
;K L
}		 
}

 ≥1
ùC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Lambda\LambdaFunction.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Lambda' -
{ 
public 

abstract 
class 
LambdaFunction (
<( )
TInput) /
,/ 0
TOutput0 7
>7 8
where9 >
TInput? E
:F G
classH M
{ 
	protected 
IConfigurationRoot $
Configuration% 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
	protected 
IServiceProvider "
ServiceProvider# 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
	protected 
IServiceCollection $
ServiceCollection% 6
=7 8
new9 <
ServiceCollection= N
(N O
)O P
;P Q
	protected 
ILogger 
Logger  
{! "
get# &
;& '
set( +
;+ ,
}- .
	protected 
abstract 
void 
ConfigureServices  1
(1 2
IServiceCollection2 D
servicesE M
)M N
;N O
	protected 
LambdaFunction  
(  !
)! "
{ 	
Setup 
( 
) 
; 
} 	
public 
void 
Setup 
( 
) 
{ 	
SetupConfiguration 
( 
)  
;  !
ServiceCollection   
.   

AddOptions   (
(  ( )
)  ) *
;  * +
ServiceCollection!! 
.!! 
AddSingleton!! *
(!!* +
Configuration!!+ 8
)!!8 9
;!!9 :
ServiceCollection"" 
."" 

AddLogging"" (
(""( )
ConfigureLogging"") 9
)""9 :
;"": ;
ConfigureServices## 
(## 
ServiceCollection## /
)##/ 0
;##0 1
ServiceProvider$$ 
=$$ 
ServiceCollection$$ /
.$$/ 0 
BuildServiceProvider$$0 D
($$D E
)$$E F
;$$F G
Logger%% 
=%% 
ServiceProvider%% $
.%%$ %
GetRequiredService%%% 7
<%%7 8
ILogger%%8 ?
<%%? @
TInput%%@ F
>%%F G
>%%G H
(%%H I
)%%I J
;%%J K
}&& 	
public(( 
Task(( 
<(( 
TOutput(( 
>(( 
FunctionHandler(( ,
(((, -
TInput((- 3
input((4 9
,((9 :
ILambdaContext((; I
context((J Q
)((Q R
{)) 	
using** 
var** 
scope** 
=** 
ServiceProvider** -
.**- .
CreateScope**. 9
(**9 :
)**: ;
;**; <
var++ 
handler++ 
=++ 
scope++ 
.++  
ServiceProvider++  /
.++/ 0

GetService++0 :
<++: ;
ILambdaEventHandler++; N
<++N O
TInput++O U
,++U V
TOutput++W ^
>++^ _
>++_ `
(++` a
)++a b
;++b c
if-- 
(-- 
handler-- 
==-- 
null-- 
)--  
{.. 
var// 
message// 
=// 
$"//  
$str//  -
{//- .
typeof//. 4
(//4 5
TInput//5 ;
)//; <
.//< =
Name//= A
}//A B
$str	//B Ä
"
//Ä Å
;
//Å Ç
Logger00 
.00 
LogError00 
(00  
message00  '
)00' (
;00( )
throw11 
new11 %
InvalidOperationException11 3
(113 4
message114 ;
)11; <
;11< =
}22 
Logger44 
.44 
LogInformation44 !
(44! "
$str44" 4
)444 5
;445 6
return55 
handler55 
.55 
FunctionHandler55 *
(55* +
input55+ 0
,550 1
context552 9
)559 :
;55: ;
}66 	
	protected88 
void88 
ConfigureLogging88 '
(88' (
ILoggingBuilder88( 7
logging888 ?
)88? @
{99 	
logging:: 
.:: 
AddConfiguration:: $
(::$ %
Configuration::% 2
.::2 3

GetSection::3 =
(::= >
$str::> G
)::G H
)::H I
;::I J
logging;; 
.;; 
AddLambdaLogger;; #
(;;# $
new;;$ '
LambdaLoggerOptions;;( ;
{<< 
IncludeCategory== 
===  !
true==" &
,==& '
IncludeLogLevel>> 
=>>  !
true>>" &
,>>& '
IncludeNewline?? 
=??  
true??! %
}@@ 
)@@ 
;@@ 
}AA 	
	protectedBB 
voidBB 
SetupConfigurationBB )
(BB) *
)BB* +
{CC 	
ConfigurationDD 
=DD 
newDD  
ConfigurationBuilderDD  4
(DD4 5
)DD5 6
.EE #
AddEnvironmentVariablesEE (
(EE( )
)EE) *
.FF 
SetBasePathFF 
(FF 
	DirectoryFF &
.FF& '
GetCurrentDirectoryFF' :
(FF: ;
)FF; <
)FF< =
.GG 
AddJsonFileGG 
(GG 
$strGG /
,GG/ 0
optionalGG1 9
:GG9 :
trueGG; ?
,GG? @
reloadOnChangeGGA O
:GGO P
trueGGQ U
)GGU V
.HH 
AddSecretsHandlerHH "
(HH" #
)HH# $
.II 
BuildII 
(II 
)II 
;II 
}JJ 	
}KK 
}LL 