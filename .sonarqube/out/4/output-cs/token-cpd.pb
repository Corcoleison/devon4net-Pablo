®
ÆC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Secrets\AwsSecretsConfigurationBuilder.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Secrets' .
{ 
public 

static 
class *
AwsSecretsConfigurationBuilder 6
{ 
public		 
static		 !
IConfigurationBuilder		 +
AddSecretsHandler		, =
(		= >
this		> B!
IConfigurationBuilder		C X 
configurationBuilder		Y m
,		m n
AWSCredentials		o }
awsCredentials			~ å
=
		å ç
null
		é í
,
		í ì
RegionEndpoint
		î ¢
regionEndpoint
		£ ±
=
		≤ ≥
null
		¥ ∏
)
		∏ π
{

 	
if 
( 
awsCredentials 
!= !
null" &
)& '
{  
configurationBuilder $
.$ %
Add% (
(( )
new) ,)
AwsSecretsConfigurationSource- J
(J K
awsCredentialsK Y
,Y Z
regionEndpoint[ i
)i j
)j k
;k l
} 
return  
configurationBuilder '
;' (
} 	
} 
} ‘(
ØC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Secrets\AwsSecretsConfigurationProvider.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Secrets' .
{ 
public 

class +
AwsSecretsConfigurationProvider 0
:1 2!
ConfigurationProvider3 H
,H I
IDisposableJ U
{ 
private 
static 
bool 
IsJson "
(" #
string# )
str* -
)- .
=>/ 1
str2 5
.5 6

StartsWith6 @
(@ A
$strA D
)D E
||F H
strI L
.L M

StartsWithM W
(W X
$strX [
)[ \
;\ ]
private 
IAwsSecretsHandler "
AwsSecretsHandler# 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
public +
AwsSecretsConfigurationProvider .
(. /
AWSCredentials/ =
awsCredentials> L
=M N
nullO S
,S T
RegionEndpointU c
regionEndpointd r
=s t
nullu y
)y z
{ 	
AwsSecretsHandler 
= 
new  #
AwsSecretsHandler$ 5
(5 6
awsCredentials6 D
,D E
regionEndpointE S
)S T
;T U
} 	
public 
override 
void 
Load !
(! "
)" #
{ 	
base 
. 
Load 
( 
) 
; 
Data 
= 
GetAwsSecretsData $
($ %
default% ,
), -
.- .
ConfigureAwait. <
(< =
false= B
)B C
.C D

GetAwaiterD N
(N O
)O P
.P Q
	GetResultQ Z
(Z [
)[ \
;\ ]
} 	
public 
void 
Dispose 
( 
) 
{ 	
AwsSecretsHandler 
. 
Dispose %
(% &
)& '
;' (
} 	
private!! 
async!! 
Task!! 
<!! 

Dictionary!! %
<!!% &
string!!& ,
,!!, -
string!!. 4
>!!4 5
>!!5 6
GetAwsSecretsData!!7 H
(!!H I
CancellationToken!!I Z
cancellationToken!![ l
)!!l m
{"" 	
var## 
secrets## 
=## 
await## 
AwsSecretsHandler##  1
.##1 2
GetAllSecrets##2 ?
(##? @
cancellationToken##@ Q
)##Q R
.##R S
ConfigureAwait##S a
(##a b
false##b g
)##g h
;##h i
var$$ 
result$$ 
=$$ 
new$$ 

Dictionary$$ '
<$$' (
string$$( .
,$$. /
string$$0 6
>$$6 7
($$7 8
)$$8 9
;$$9 :
foreach%% 
(%% 
var%% 
secret%% 
in%%  "
secrets%%# *
)%%* +
{&& 
try'' 
{(( 
var)) 
secretValue)) #
=))$ %
await))& +
AwsSecretsHandler)), =
.))= >
GetSecretValue))> L
())L M
new))M P!
GetSecretValueRequest))Q f
{))g h
SecretId))i q
=))r s
secret))t z
.))z {
ARN)){ ~
}	)) Ä
,
))Ä Å
cancellationToken
))Ç ì
)
))ì î
.
))î ï
ConfigureAwait
))ï £
(
))£ §
false
))§ ©
)
))© ™
;
))™ ´
var** 
secretValueString** )
=*** +
secretValue**, 7
.**7 8
SecretString**8 D
;**D E
if,, 
(,, 
secretValueString,, )
is,,* ,
null,,- 1
),,1 2
continue--  
;--  !
result// 
.// 
Add// 
(// 
secret// %
.//% &
Name//& *
,//* +
secretValueString//, =
)//= >
;//> ?
}11 
catch22 
(22 %
ResourceNotFoundException22 0
ex221 3
)223 4
{33 
throw44 
new44 )
AmazonSecretsManagerException44 ;
(44; <
$"44< >
$str44> e
{44e f
secret44f l
.44l m
Name44m q
}44q r
$str44r x
{44x y
secret44y 
.	44 Ä
ARN
44Ä É
}
44É Ñ
$str
44Ñ Ö
"
44Ö Ü
,
44Ü á
ex
44à ä
)
44ä ã
;
44ã å
}55 
}66 
return77 
result77 
;77 
}88 	
}99 
}:: …
≠C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Secrets\AwsSecretsConfigurationSource.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Secrets' .
{ 
public 

class )
AwsSecretsConfigurationSource .
:/ 0 
IConfigurationSource1 E
{ 
private		 
AWSCredentials		 
AwsCredentials		 -
{		. /
get		0 3
;		3 4
set		5 8
;		8 9
}		: ;
private

 
RegionEndpoint

 
RegionEndpoint

 -
{

. /
get

0 3
;

3 4
set

5 8
;

8 9
}

: ;
public )
AwsSecretsConfigurationSource ,
(, -
AWSCredentials- ;
awsCredentials< J
=K L
nullM Q
,Q R
RegionEndpointS a
regionEndpointb p
=q r
nulls w
)w x
{ 	
AwsCredentials 
= 
awsCredentials +
;+ ,
RegionEndpoint 
= 
regionEndpoint +
;+ ,
} 	
public "
IConfigurationProvider %
Build& +
(+ ,!
IConfigurationBuilder, A
builderB I
)I J
{ 	
return 
new +
AwsSecretsConfigurationProvider 6
(6 7
AwsCredentials7 E
,E F
RegionEndpointG U
)U V
;V W
} 	
} 
} †3
°C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Secrets\AwsSecretsHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Secrets' .
{ 
public 

class 
AwsSecretsHandler "
:# $
IAwsSecretsHandler% 7
{ 
private 
readonly 

JsonHelper #
_jsonHelper$ /
=0 1
new2 5

JsonHelper6 @
(@ A
)A B
;B C
private !
IAmazonSecretsManager %
SecretsManager& 4
{5 6
get7 :
;: ;
}< =
private 
SecretsManagerCache #
Cache$ )
{* +
get, /
;/ 0
}1 2
public 
AwsSecretsHandler  
(  !
AWSCredentials! /
awsCredentials0 >
,> ?
RegionEndpoint@ N
regionEndpointO ]
)] ^
{ 	
if 
( 
awsCredentials 
== !
null" &
)& '
return( .
;. /
SecretsManager 
= )
GetAmazonSecretsManagerClient :
(: ;
awsCredentials; I
,I J
regionEndpointK Y
)Y Z
;Z [
Cache 
= 
new 
SecretsManagerCache +
(+ ,
SecretsManager, :
): ;
;; <
} 	
private &
AmazonSecretsManagerClient *)
GetAmazonSecretsManagerClient+ H
(H I
AWSCredentialsI W
awsCredentialsX f
,f g
RegionEndpointh v
regionEndpoint	w Ö
)
Ö Ü
{ 	
if 
( 
awsCredentials 
!= !
null" &
&&' )
regionEndpoint* 8
!=9 ;
null< @
)@ A
{ 
return 
new &
AmazonSecretsManagerClient 5
(5 6
awsCredentials6 D
,D E
regionEndpointF T
)T U
;U V
} 
return!! 
awsCredentials!! !
!=!!" $
null!!% )
?!!* +
new!!, /&
AmazonSecretsManagerClient!!0 J
(!!J K
awsCredentials!!K Y
)!!Y Z
:!![ \
new!!] `&
AmazonSecretsManagerClient!!a {
(!!{ |
)!!| }
;!!} ~
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
T$$ 
>$$ 
GetSecretString$$ ,
<$$, -
T$$- .
>$$. /
($$/ 0
string$$0 6
secretId$$7 ?
)$$? @
{%% 	
var&& 
sec&& 
=&& 
await&& 
Cache&& !
.&&! "
GetSecretString&&" 1
(&&1 2
secretId&&2 :
)&&: ;
;&&; <
return'' 
_jsonHelper'' 
.'' 
Deserialize'' *
<''* +
T''+ ,
>'', -
(''- .
sec''. 1
)''1 2
;''2 3
}(( 	
public** 
Task** 
<** 
byte** 
[** 
]** 
>** 
GetSecretBinary** +
(**+ ,
string**, 2
secretId**3 ;
)**; <
{++ 	
return,, 
Cache,, 
.,, 
GetSecretBinary,, (
(,,( )
secretId,,) 1
),,1 2
;,,2 3
}-- 	
public// 
Task// 
<// "
GetSecretValueResponse// *
>//* +
GetSecretValue//, :
(//: ;!
GetSecretValueRequest//; P
request//Q X
,//X Y
CancellationToken//Z k
cancellationToken//l }
=//~ 
default
//Ä á
(
//á à
CancellationToken
//à ô
)
//ô ö
)
//ö õ
{00 	
return11 
SecretsManager11 !
.11! "
GetSecretValueAsync11" 5
(115 6
request116 =
,11= >
cancellationToken11? P
)11P Q
;11Q R
}22 	
public44 
async44 
Task44 
<44 
IReadOnlyList44 '
<44' (
SecretListEntry44( 7
>447 8
>448 9
GetAllSecrets44: G
(44G H
CancellationToken44H Y
cancellationToken44Z k
)44k l
{55 	
var66 
result66 
=66 
new66 
List66 !
<66! "
SecretListEntry66" 1
>661 2
(662 3
)663 4
;664 5
var77 
query77 
=77 
default77 
(77  
ListSecretsResponse77  3
)773 4
;774 5
do99 
{:: 
var;; 
	nextToken;; 
=;; 
query;;  %
?;;% &
.;;& '
	NextToken;;' 0
;;;0 1
var<< 
request<< 
=<< 
new<< !
ListSecretsRequest<<" 4
(<<4 5
)<<5 6
{<<7 8
	NextToken<<9 B
=<<C D
	nextToken<<E N
}<<O P
;<<P Q
query>> 
=>> 
await>> 
SecretsManager>> ,
.>>, -
ListSecretsAsync>>- =
(>>= >
request>>> E
,>>E F
cancellationToken>>G X
)>>X Y
.>>Y Z
ConfigureAwait>>Z h
(>>h i
false>>i n
)>>n o
;>>o p
result?? 
.?? 
AddRange?? 
(??  
query??  %
.??% &

SecretList??& 0
)??0 1
;??1 2
}AA 
whileAA 
(AA 
queryAA 
.AA 
	NextTokenAA $
!=AA% '
nullAA( ,
)AA, -
;AA- .
returnCC 
resultCC 
;CC 
}DD 	
publicFF 
voidFF 
DisposeFF 
(FF 
)FF 
{GG 	
SecretsManagerHH 
.HH 
DisposeHH "
(HH" #
)HH# $
;HH$ %
CacheII 
.II 
DisposeII 
(II 
)II 
;II 
}JJ 	
}KK 
}LL π
¢C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.Secrets\IAwsSecretsHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
Secrets' .
{ 
public		 

	interface		 
IAwsSecretsHandler		 '
:		( )
IDisposable		* 5
{

 
Task 
< 
IReadOnlyList 
< 
SecretListEntry *
>* +
>+ ,
GetAllSecrets- :
(: ;
CancellationToken; L
cancellationTokenM ^
)^ _
;_ `
Task 
< 
T 
> 
GetSecretString 
<  
T  !
>! "
(" #
string# )
secretId* 2
)2 3
;3 4
Task 
< 
byte 
[ 
] 
> 
GetSecretBinary $
($ %
string% +
secretId, 4
)4 5
;5 6
Task 
< "
GetSecretValueResponse #
># $
GetSecretValue% 3
(3 4!
GetSecretValueRequest4 I
requestJ Q
,Q R
CancellationTokenS d
cancellationTokene v
=w x
default	y Ä
(
Ä Å
CancellationToken
Å í
)
í ì
)
ì î
;
î ï
} 
} 