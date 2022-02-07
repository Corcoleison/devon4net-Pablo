∫
πC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\SnsManagement\Dto\SnsCustomMessage.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
SnsManagement0 =
.= >
Dto> A
{ 
public 

class 
SnsCustomMessage !
{ 
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ˇ
∫C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\SnsManagement\Dto\SnsFunctionResult.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
SnsManagement0 =
.= >
Dto> A
{ 
public 

class 
SnsFunctionResult "
{ 
public 
int 
NumberOfMessages #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
SnsFunctionResult  
(  !
)! "
{ 	
NumberOfMessages		 
=		 
$num		  
;		  !
}

 	
} 
} »
¿C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\SnsManagement\Dto\SnsMessageHandlerResult.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
SnsManagement0 =
.= >
Dto> A
{ 
public 

class #
SnsMessageHandlerResult (
{ 
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ∂
∫C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\SnsManagement\Functions\SnsFunction.cs
[		 
assembly		 	
:			 

LambdaSerializer		 
(		 
typeof		 "
(		" #
Amazon		# )
.		) *
Lambda		* 0
.		0 1
Serialization		1 >
.		> ?
SystemTextJson		? M
.		M N'
DefaultLambdaJsonSerializer		N i
)		i j
)		j k
]		k l
	namespace

 	
	Devon4Net


 
.

 
Application

 
.

  
Lambda

  &
.

& '
Business

' /
.

/ 0
SnsManagement

0 =
.

= >
	Functions

> G
{ 
public 

class 
SnsFunction 
: 
LambdaFunction -
<- .
SNSEvent. 6
,6 7
SnsFunctionResult8 I
>I J
{ 
	protected 
override 
void 
ConfigureServices  1
(1 2
IServiceCollection2 D
servicesE M
)M N
{ 	
services 
. 
AddTransient !
<! "
ILambdaEventHandler" 5
<5 6
SNSEvent6 >
,> ?
SnsFunctionResult@ Q
>Q R
,R S#
SnsFunctionEventHandlerT k
<k l
SnsCustomMessagel |
>| }
>} ~
(~ 
)	 Ä
;
Ä Å
services 
. 
AddTransient !
<! "
IMessageHandler" 1
<1 2
SnsCustomMessage2 B
,B C#
SnsMessageHandlerResultD [
>[ \
,\ ]
SnsMessageHandler^ o
>o p
(p q
)q r
;r s
} 	
} 
} ˇ*
≈C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\SnsManagement\Handlers\SnsFunctionEventHandler.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
SnsManagement0 =
.= >
Handlers> F
{ 
public 

class #
SnsFunctionEventHandler (
<( )
TMessage) 1
>1 2
:3 4
ILambdaEventHandler5 H
<H I
SNSEventI Q
,Q R
SnsFunctionResultS d
>d e
wheref k
TMessagel t
:u v
classw |
{ 
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public #
SnsFunctionEventHandler &
(& '
IServiceProvider' 7
serviceProvider8 G
,G H
ILoggerFactoryI W
loggerFactoryX e
)e f
{ 	
_serviceProvider 
= 
serviceProvider .
??/ 1
throw2 7
new8 ;!
ArgumentNullException< Q
(Q R
nameofR X
(X Y
serviceProviderY h
)h i
)i j
;j k
_logger 
= 
loggerFactory #
?# $
.$ %
CreateLogger% 1
(1 2
typeof2 8
(8 9
TMessage9 A
)A B
.B C
NameC G
)G H
??I K
throwL Q
newR U!
ArgumentNullExceptionV k
(k l
nameofl r
(r s
loggerFactory	s Ä
)
Ä Å
)
Å Ç
;
Ç É
} 	
public 
async 
Task 
< 
SnsFunctionResult +
>+ ,
FunctionHandler- <
(< =
SNSEvent= E
inputF K
,K L
ILambdaContextM [
context\ c
)c d
{ 	
var 
result 
= 
new 
SnsFunctionResult .
(. /
)/ 0
;0 1
if 
( 
! 
input 
. 
Records 
. 
Any "
(" #
)# $
)$ %
return& ,
result- 3
;3 4
foreach 
( 
var 
record 
in  "
input# (
.( )
Records) 0
)0 1
{ 
if   
(   
record   
?   
.   
Sns   
==    "
null  # '
)  ' (
continue  ) 1
;  1 2
using"" 
var"" 
scope"" 
=""  !
_serviceProvider""" 2
.""2 3
CreateScope""3 >
(""> ?
)""? @
;""@ A
var## 
messageValue##  
=##! "
record### )
.##) *
Sns##* -
.##- .
Message##. 5
;##5 6
var$$ 
message$$ 
=$$ 
JsonSerializer$$ ,
.$$, -
Deserialize$$- 8
<$$8 9
TMessage$$9 A
>$$A B
($$B C
messageValue$$C O
)$$O P
;$$P Q
_logger&& 
.&& 
LogDebug&&  
(&&  !
$"&&! #
$str&&# -
{&&- .
messageValue&&. :
}&&: ;
"&&; <
)&&< =
;&&= >
var(( 
messageHandler(( "
=((# $
scope((% *
.((* +
ServiceProvider((+ :
.((: ;

GetService((; E
<((E F
IMessageHandler((F U
<((U V
TMessage((V ^
,((^ _#
SnsMessageHandlerResult((` w
>((w x
>((x y
(((y z
)((z {
;(({ |
if)) 
()) 
messageHandler)) "
==))# %
null))& *
)))* +
{** 
var++ 
errorMessage++ $
=++% &
$"++' )
$str++) <
{++< =
typeof++= C
(++C D
TMessage++D L
)++L M
.++M N
Name++N R
}++R S
$str++S Z
"++Z [
;++[ \
_logger,, 
.,, 
LogCritical,, '
(,,' (
errorMessage,,( 4
),,4 5
;,,5 6
throw-- 
new-- %
InvalidOperationException-- 7
(--7 8
errorMessage--8 D
)--D E
;--E F
}.. 
await00 
messageHandler00 $
.00$ %
HandleMessage00% 2
(002 3
message003 :
,00: ;
context00< C
)00C D
.00D E
ConfigureAwait00E S
(00S T
false00T Y
)00Y Z
;00Z [
}11 
result33 
.33 
NumberOfMessages33 #
=33$ %
input33& +
.33+ ,
Records33, 3
.333 4
Count334 9
;339 :
return55 
result55 
;55 
}66 	
}77 
}88 ø
øC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\SnsManagement\Handlers\SnsMessageHandler.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
SnsManagement0 =
.= >
Handlers> F
{		 
public

 

class

 
SnsMessageHandler

 "
:

# $
IMessageHandler

% 4
<

4 5
SnsCustomMessage

5 E
,

E F#
SnsMessageHandlerResult

G ^
>

^ _
{ 
private 
readonly 
ILogger  
<  !
SnsMessageHandler! 2
>2 3
_logger4 ;
;; <
public 
SnsMessageHandler  
(  !
ILogger! (
<( )
SnsMessageHandler) :
>: ;
logger< B
)B C
{ 	
_logger 
= 
logger 
?? 
throw  %
new& )!
ArgumentNullException* ?
(? @
nameof@ F
(F G
loggerG M
)M N
)N O
;O P
} 	
public 
Task 
< #
SnsMessageHandlerResult +
>+ ,
HandleMessage- :
(: ;
SnsCustomMessage; K
notificationL X
,X Y
ILambdaContextZ h
contexti p
)p q
{ 	
_logger 
. 
LogInformation "
(" #
$"# %
$str% <
{< =
notification= I
?I J
.J K
MessageK R
}R S
"S T
)T U
;U V
return 
Task 
. 

FromResult "
(" #
new# &#
SnsMessageHandlerResult' >
{> ?
Content? F
=G H
notificationI U
?U V
.V W
MessageW ^
}_ `
)` a
;a b
} 	
} 
} ∫
πC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\SqsManagement\Dto\SqsCustomMessage.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
SqsManagement0 =
.= >
Dto> A
{ 
public 

class 
SqsCustomMessage !
{ 
public 
string 
Message 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ˇ
∫C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\SqsManagement\Dto\SqsFunctionResult.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
SqsManagement0 =
.= >
Dto> A
{ 
public 

class 
SqsFunctionResult "
{ 
public 
int 
NumberOfMessages #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
SqsFunctionResult  
(  !
)! "
{ 	
NumberOfMessages		 
=		 
$num		  
;		  !
}

 	
} 
} »
¿C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\SqsManagement\Dto\SqsMessageHandlerResult.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
SqsManagement0 =
.= >
Dto> A
{ 
public 

class #
SqsMessageHandlerResult (
{ 
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} √
∫C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\SqsManagement\Functions\SqsFunction.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
SqsManagement0 =
.= >
	Functions> G
{		 
public 

class 
SqsFunction 
: 
LambdaFunction -
<- .
SQSEvent. 6
,6 7
SqsFunctionResult8 I
>I J
{ 
	protected 
override 
void 
ConfigureServices  1
(1 2
IServiceCollection2 D
servicesE M
)M N
{ 	
services 
. 
AddTransient !
<! "
ILambdaEventHandler" 5
<5 6
SQSEvent6 >
,> ?
SqsFunctionResult@ Q
>Q R
,R S#
SqsFunctionEventHandlerT k
<k l
SqsCustomMessagel |
>| }
>} ~
(~ 
)	 Ä
;
Ä Å
services 
. 
AddTransient !
<! "
IMessageHandler" 1
<1 2
SqsCustomMessage2 B
,B C#
SqsMessageHandlerResultD [
>[ \
,\ ]
SqsMessageHandler^ o
>o p
(p q
)q r
;r s
} 	
} 
} Ü)
≈C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\SqsManagement\Handlers\SqsFunctionEventHandler.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
SqsManagement0 =
.= >
Handlers> F
{ 
public 

class #
SqsFunctionEventHandler (
<( )
TMessage) 1
>1 2
:3 4
ILambdaEventHandler5 H
<H I
SQSEventI Q
,Q R
SqsFunctionResultS d
>d e
wheref k
TMessagel t
:u v
classw |
{ 
private 
readonly 
ILogger  
_logger! (
;( )
private 
readonly 
IServiceProvider )
_serviceProvider* :
;: ;
public #
SqsFunctionEventHandler &
(& '
IServiceProvider' 7
serviceProvider8 G
,G H
ILoggerFactoryI W
loggerFactoryX e
)e f
{ 	
_serviceProvider 
= 
serviceProvider .
??/ 1
throw2 7
new8 ;!
ArgumentNullException< Q
(Q R
nameofR X
(X Y
serviceProviderY h
)h i
)i j
;j k
_logger 
= 
loggerFactory #
?# $
.$ %
CreateLogger% 1
(1 2
typeof2 8
(8 9
TMessage9 A
)A B
.B C
NameC G
)G H
??I K
throwL Q
newR U!
ArgumentNullExceptionV k
(k l
nameofl r
(r s
loggerFactory	s Ä
)
Ä Å
)
Å Ç
;
Ç É
} 	
public 
async 
Task 
< 
SqsFunctionResult +
>+ ,
FunctionHandler- <
(< =
SQSEvent= E
inputF K
,K L
ILambdaContextM [
context\ c
)c d
{ 	
var 
result 
= 
new 
SqsFunctionResult .
(. /
)/ 0
;0 1
if 
( 
! 
input 
. 
Records 
. 
Any "
(" #
)# $
)$ %
return& ,
result- 3
;3 4
foreach 
( 
var 
record 
in  "
input# (
.( )
Records) 0
)0 1
{ 
if   
(   
record   
?   
.   
Body    
==  ! #
null  $ (
)  ) *
continue  + 3
;  3 4
using"" 
var"" 
scope"" 
=""  !
_serviceProvider""" 2
.""2 3
CreateScope""3 >
(""> ?
)""? @
;""@ A
var## 

sqsMessage## 
=##  
record##! '
.##' (
Body##( ,
;##, -
var$$ 
message$$ 
=$$ 
JsonSerializer$$ ,
.$$, -
Deserialize$$- 8
<$$8 9
TMessage$$9 A
>$$A B
($$B C

sqsMessage$$C M
)$$M N
;$$N O
var&& 
messageHandler&& "
=&&# $
scope&&% *
.&&* +
ServiceProvider&&+ :
.&&: ;

GetService&&; E
<&&E F
IMessageHandler&&F U
<&&U V
TMessage&&V ^
,&&^ _#
SqsMessageHandlerResult&&` w
>&&w x
>&&x y
(&&y z
)&&z {
;&&{ |
if'' 
('' 
messageHandler'' "
==''# %
null''& *
)''* +
{(( 
var)) 
errorMessage)) $
=))% &
$"))' )
$str))) <
{))< =
typeof))= C
())C D
TMessage))D L
)))L M
.))M N
Name))N R
}))R S
$str))S Z
"))Z [
;))[ \
_logger** 
.** 
LogError** $
(**$ %
errorMessage**% 1
)**1 2
;**2 3
throw++ 
new++ %
InvalidOperationException++ 7
(++7 8
errorMessage++8 D
)++D E
;++E F
},, 
await.. 
messageHandler.. $
...$ %
HandleMessage..% 2
(..2 3
message..3 :
,..: ;
context..< C
)..C D
...D E
ConfigureAwait..E S
(..S T
false..T Y
)..Y Z
;..Z [
}// 
result33 
.33 
NumberOfMessages33 #
=33$ %
input33& +
.33+ ,
Records33, 3
.333 4
Count334 9
;339 :
return55 
result55 
;55 
}66 	
}77 
}88 ∞
øC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\SqsManagement\Handlers\SqsMessageHandler.cs
	namespace		 	
	Devon4Net		
 
.		 
Application		 
.		  
Lambda		  &
.		& '
Business		' /
.		/ 0
SqsManagement		0 =
.		= >
Handlers		> F
{

 
public 

class 
SqsMessageHandler "
:# $
IMessageHandler% 4
<4 5
SqsCustomMessage5 E
,E F#
SqsMessageHandlerResultG ^
>^ _
{ 
private 
readonly 
ILogger  
<  !
SnsMessageHandler! 2
>2 3
_logger4 ;
;; <
public 
SqsMessageHandler  
(  !
ILogger! (
<( )
SnsMessageHandler) :
>: ;
logger< B
)B C
{ 	
_logger 
= 
logger 
?? 
throw  %
new& )!
ArgumentNullException* ?
(? @
nameof@ F
(F G
loggerG M
)M N
)N O
;O P
} 	
public 
Task 
< #
SqsMessageHandlerResult +
>+ ,
HandleMessage- :
(: ;
SqsCustomMessage; K
messageL S
,S T
ILambdaContextU c
contextd k
)k l
{ 	
_logger 
. 
LogInformation "
(" #
$"# %
$str% 7
{7 8
message8 ?
?? @
.@ A
MessageA H
}H I
"I J
)J K
;K L
return 
Task 
. 

FromResult "
(" #
new# &#
SqsMessageHandlerResult' >
{> ?
Content? F
=G H
messageI P
?P Q
.Q R
MessageR Y
}Y Z
)Z [
;[ \
} 	
} 
} ∂
µC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\StringManagement\Dto\InputData.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
StringManagement0 @
.@ A
DtoA D
{ 
public 

class 
	InputData 
{ 
public 
string 
StringChain !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} π
∂C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\StringManagement\Dto\LowerInput.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
StringManagement0 @
.@ A
DtoA D
{ 
public 

class 

LowerInput 
{ 
public 
	InputData 
	LowerData "
{# $
get% (
;( )
set* -
;- .
}/ 0
}		 
}

 π
∂C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\StringManagement\Dto\UpperInput.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
StringManagement0 @
.@ A
DtoA D
{ 
public 

class 

UpperInput 
{ 
public 
	InputData 
	UpperData "
{# $
get% (
;( )
set* -
;- .
}/ 0
}		 
}

 ·	
≈C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\StringManagement\Functions\Lower\LowerFunction.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
StringManagement0 @
.@ A
	FunctionsA J
.J K
LowerK P
{ 
public		 

class		 
LowerFunction		 
:		  
LambdaFunction		! /
<		/ 0

LowerInput		0 :
,		: ;
string		< B
>		B C
{

 
	protected 
override 
void 
ConfigureServices  1
(1 2
IServiceCollection2 D
servicesE M
)M N
{ 	
services 
. 
AddTransient !
<! "
ILambdaEventHandler" 5
<5 6

LowerInput6 @
,@ A
stringB H
>H I
,I J%
LowerFunctionEventHandlerK d
>d e
(e f
)f g
;g h
} 	
} 
} ·	
≈C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\StringManagement\Functions\Upper\UpperFunction.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
StringManagement0 @
.@ A
	FunctionsA J
.J K
UpperK P
{ 
public		 

class		 
UpperFunction		 
:		  
LambdaFunction		! /
<		/ 0

UpperInput		0 :
,		: ;
string		< B
>		B C
{

 
	protected 
override 
void 
ConfigureServices  1
(1 2
IServiceCollection2 D
servicesE M
)M N
{ 	
services 
. 
AddTransient !
<! "
ILambdaEventHandler" 5
<5 6

UpperInput6 @
,@ A
stringB H
>H I
,I J%
UpperFunctionEventHandlerK d
>d e
(e f
)f g
;g h
} 	
} 
} …

–C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\StringManagement\Handlers\Lower\LowerFunctionEventHandler.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
StringManagement0 @
.@ A
HandlersA I
.I J
LowerJ O
{ 
public 

class %
LowerFunctionEventHandler *
:+ ,
ILambdaEventHandler- @
<@ A

LowerInputA K
,K L
stringM S
>S T
{		 
public

 
Task

 
<

 
string

 
>

 
FunctionHandler

 +
(

+ ,

LowerInput

, 6
input

7 <
,

< =
ILambdaContext

> L
context

M T
)

T U
{ 	
return 
Task 
. 

FromResult "
(" #
input# (
?( )
.) *
	LowerData* 3
?3 4
.4 5
StringChain5 @
.@ A
ToLowerA H
(H I
)I J
)J K
;K L
} 	
} 
} …

–C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Templates\AWS\Devon4Net.Application.Lambda\business\StringManagement\Handlers\Upper\UpperFunctionEventHandler.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
Lambda  &
.& '
Business' /
./ 0
StringManagement0 @
.@ A
HandlersA I
.I J
UpperJ O
{ 
public 

class %
UpperFunctionEventHandler *
:+ ,
ILambdaEventHandler- @
<@ A

UpperInputA K
,K L
stringM S
>S T
{		 
public

 
Task

 
<

 
string

 
>

 
FunctionHandler

 +
(

+ ,

UpperInput

, 6
input

7 <
,

< =
ILambdaContext

> L
context

M T
)

T U
{ 	
return 
Task 
. 

FromResult "
(" #
input# (
?( )
.) *
	UpperData* 3
?3 4
.4 5
StringChain5 @
.@ A
ToUpperA H
(H I
)I J
)J K
;K L
} 	
} 
} 