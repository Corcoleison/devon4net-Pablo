�
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Kafka\Common\Const\KafkaDefaultValues.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Kafka# (
.( )
Common) /
./ 0
Const0 5
{ 
public 

static 
class 
KafkaDefaultValues *
{ 
public 
const 
int 
MessageMaxBytes (
=) *
$num+ 2
;2 3
public 
const 
CompressionType $
CompressionType% 4
=5 6
	Confluent7 @
.@ A
KafkaA F
.F G
CompressionTypeG V
.V W
GzipW [
;[ \
public		 
const		 
int		 
CompressionLevel		 )
=		* +
-		, -
$num		- .
;		. /
public

 
const

 
int

 "
ReceiveMessageMaxBytes

 /
=

0 1
$num

2 ;
;

; <
public 
const 
bool ,
 EnableSslCertificateVerification :
=; <
false= B
;C D
public 
const 
int "
CancellationDelayMaxMs /
=0 1
$num2 5
;5 6
public 
const 
Acks 
Ack 
= 
Acks  $
.$ %
None% )
;) *
public 
const 
string 
Debug !
=" #
$str$ &
;& '
public 
const 
int 
BrokerAddressTtl )
=* +
$num, 0
;0 1
public 
const 
int 
BatchNumMessages )
=* +
$num, 3
;3 4
public 
const 
bool 
EnableIdempotence +
=, -
false. 3
;3 4
public 
const 
int 
MaxInFlight $
=% &
$num' (
;( )
public 
const 
int !
MessageSendMaxRetries .
=/ 0
$num1 2
;2 3
public 
const 
int 
	BatchSize "
=# $
$num% ,
;, -
public 
const 
int  
StatisticsIntervalMs -
=. /
$num0 1
;1 2
public 
const 
int 
SessionTimeoutMs )
=* +
$num, 0
;0 1
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Kafka\Exceptions\AdminNotFoundException.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Kafka# (
.( )

Exceptions) 3
{ 
public 

class "
AdminNotFoundException '
:( )
	Exception* 3
,3 4
IWebApiException5 E
{ 
public		 
int		 

StatusCode		 
{		 
get		  #
;		# $
}		% &
public

 
bool

 
ShowMessage

 
{

  !
get

" %
;

% &
}

' (
public "
AdminNotFoundException %
(% &
)& '
{ 	

StatusCode 
= 
StatusCodes $
.$ %(
Status500InternalServerError% A
;A B
} 	
public "
AdminNotFoundException %
(% &
string& ,
message- 4
)4 5
:6 7
base8 <
(< =
message= D
)D E
{ 	

StatusCode 
= 
StatusCodes $
.$ %(
Status500InternalServerError% A
;A B
} 	
} 
} �

�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Kafka\Exceptions\ConsumerException.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Kafka# (
.( )

Exceptions) 3
{ 
public 

class 
ConsumerException "
:# $
	Exception% .
,. /
IWebApiException0 @
{ 
public		 
int		 

StatusCode		 
{		 
get		  #
;		# $
}		% &
public

 
bool

 
ShowMessage

 
{

  !
get

" %
;

% &
}

' (
public 
ConsumerException  
(  !
)! "
{ 	

StatusCode 
= 
StatusCodes $
.$ %(
Status500InternalServerError% A
;A B
} 	
public 
ConsumerException  
(  !
string! '
message( /
)/ 0
:1 2
base3 7
(7 8
message8 ?
)? @
{ 	

StatusCode 
= 
StatusCodes $
.$ %(
Status500InternalServerError% A
;A B
} 	
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Kafka\Exceptions\ConsumerNotFoundException.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Kafka# (
.( )

Exceptions) 3
{ 
public 

class %
ConsumerNotFoundException *
:+ ,
	Exception- 6
,6 7
IWebApiException8 H
{ 
public		 
int		 

StatusCode		 
{		 
get		  #
;		# $
}		% &
public

 
bool

 
ShowMessage

 
{

  !
get

" %
;

% &
}

' (
public %
ConsumerNotFoundException (
(( )
)) *
{ 	

StatusCode 
= 
StatusCodes $
.$ %(
Status500InternalServerError% A
;A B
} 	
public %
ConsumerNotFoundException (
(( )
string) /
message0 7
)7 8
:9 :
base; ?
(? @
message@ G
)G H
{ 	

StatusCode 
= 
StatusCodes $
.$ %(
Status500InternalServerError% A
;A B
} 	
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Kafka\Exceptions\DeliverMessageException.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Kafka# (
.( )

Exceptions) 3
{ 
public 

class #
DeliverMessageException (
:) *
	Exception+ 4
,4 5
IWebApiException6 F
{ 
public		 
int		 

StatusCode		 
{		 
get		  #
;		# $
}		% &
public

 
bool

 
ShowMessage

 
{

  !
get

" %
;

% &
}

' (
public #
DeliverMessageException &
(& '
)' (
{ 	

StatusCode 
= 
StatusCodes $
.$ %(
Status500InternalServerError% A
;A B
} 	
public #
DeliverMessageException &
(& '
string' -
message. 5
)5 6
:7 8
base9 =
(= >
message> E
)E F
{ 	

StatusCode 
= 
StatusCodes $
.$ %(
Status500InternalServerError% A
;A B
} 	
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Kafka\Exceptions\ProducerNotFoundException.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Kafka# (
.( )

Exceptions) 3
{ 
public 

class %
ProducerNotFoundException *
:+ ,
	Exception- 6
,6 7
IWebApiException8 H
{ 
public		 
int		 

StatusCode		 
{		 
get		  #
;		# $
}		% &
public

 
bool

 
ShowMessage

 
{

  !
get

" %
;

% &
}

' (
public %
ProducerNotFoundException (
(( )
)) *
{ 	

StatusCode 
= 
StatusCodes $
.$ %(
Status500InternalServerError% A
;A B
} 	
public %
ProducerNotFoundException (
(( )
string) /
message0 7
)7 8
:9 :
base; ?
(? @
message@ G
)G H
{ 	

StatusCode 
= 
StatusCodes $
.$ %(
Status500InternalServerError% A
;A B
} 	
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Kafka\Handlers\IKafkaConsumerHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Kafka# (
.( )
Handlers) 1
{ 
public 

	interface !
IKafkaConsumerHandler *
{ 
T 	
GetInstance
 
< 
T 
> 
( 
) 
; 
void 
EnableConsumer 
( 
bool  
startConsumer! .
=/ 0
true1 5
)5 6
;6 7
void 
DisableConsumer 
( 
) 
; 
} 
}		 �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Kafka\Handlers\IKafkaProducerHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Kafka# (
.( )
Handlers) 1
{ 
public 

	interface !
IKafkaProducerHandler *
<* +
T+ ,
,, -
TV. 0
>0 1
{ 
TS 

GetInstance 
< 
TS 
> 
( 
) 
; 
Task		 
<		 
DeliveryResult		 
<		 
T		 
,		 
TV		 !
>		! "
>		" #
SendMessage		$ /
(		/ 0
T		0 1
key		2 5
,		5 6
TV		7 9
value		: ?
)		? @
;		@ A
}

 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Kafka\Handlers\IKakfkaHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Kafka# (
.( )
Handlers) 1
{ 
public 

	interface 
IKakfkaHandler #
{ 
	IProducer		 
<		 
T		 
,		 
TV		 
>		 
GetProducerBuilder		 +
<		+ ,
T		, -
,		- .
TV		/ 1
>		1 2
(		2 3
string		3 9
clientId		: B
)		B C
where		D I
T		J K
:		L M
class		N S
where		T Y
TV		Z \
:		] ^
class		_ d
;		d e
	IConsumer

 
<

 
T

 
,

 
TV

 
>

 
GetConsumerBuilder

 +
<

+ ,
T

, -
,

- .
TV

/ 1
>

1 2
(

2 3
string

3 9

consumerId

: D
)

D E
where

F K
T

L M
:

N O
class

P U
where

V [
TV

\ ^
:

_ `
class

a f
;

f g
Task 
< 
DeliveryResult 
< 
T 
, 
TV !
>! "
>" #
DeliverMessage$ 2
<2 3
T3 4
,4 5
TV6 8
>8 9
(9 :
T: ;
key< ?
,? @
TVA C
valueD I
,I J
stringK Q

producerIdR \
)\ ]
where^ c
Td e
:f g
classh m
wheren s
TVt v
:w x
classy ~
;~ 
Task 
< 
bool 
> 
CreateTopic 
( 
string %
adminId& -
,- .
string/ 5
	topicName6 ?
,? @
shortA F
replicationFactorG X
=Y Z
$num[ \
,\ ]
int^ a
numPartitionsb o
=p q
$numr s
)s t
;t u
Task 
< 
bool 
> 
DeleteTopic 
( 
string %
adminId& -
,- .
List/ 3
<3 4
string4 :
>: ;

topicsName< F
)F G
;G H
} 
} �H
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Kafka\Handlers\KafkaConsumerHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Kafka# (
.( )
Handlers) 1
{		 
public

 

abstract

 
class

  
KafkaConsumerHandler

 .
<

. /
T

/ 0
,

0 1
TV

2 4
>

4 5
:

5 6!
IKafkaConsumerHandler

7 L
where

M R
T

S T
:

U V
class

W \
where

] b
TV

c e
:

f g
class

h m
{ 
public 
abstract 
void 
HandleCommand *
(* +
T+ ,
key- 0
,0 1
TV2 4
value5 :
): ;
;; <
private 
IKakfkaHandler 
KafkaHandler +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
private 
bool 
EnableConsumerFlag '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
private 
bool 
Commit 
{ 
get !
;! "
set# &
;& '
}( )
private 
int 
CommitPeriod  
{! "
get# &
;& '
set( +
;+ ,
}- .
private 
string 

ConsumerId !
{" #
get$ '
;' (
set) ,
;, -
}. /
	protected 
IServiceCollection $
Services% -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
	protected  
KafkaConsumerHandler &
(& '
IServiceCollection' 9
services: B
,B C
IKakfkaHandlerD R
kafkaHandlerS _
,_ `
stringa g

consumerIdh r
,r s
boolt x
commity 
=
� �
false
� �
,
� �
int
� �
commitPeriod
� �
=
� �
$num
� �
)
� �
{ 	
Services 
= 
services 
;  
KafkaHandler 
= 
kafkaHandler '
;' (

ConsumerId 
= 

consumerId #
;# $
EnableConsumerFlag 
=  
true! %
;% &
Commit 
= 
commit 
; 
CommitPeriod 
= 
commitPeriod '
;' (
Consume 
( 
Commit 
, 
CommitPeriod (
)( )
;) *
} 	
public 
TS 
GetInstance 
< 
TS  
>  !
(! "
)" #
{   	
var!! 
sp!! 
=!! 
Services!! 
.!!  
BuildServiceProvider!! 2
(!!2 3
)!!3 4
;!!4 5
return"" 
sp"" 
."" 

GetService""  
<""  !
TS""! #
>""# $
(""$ %
)""% &
;""& '
}## 	
public%% 
void%% 
EnableConsumer%% "
(%%" #
bool%%# '
startConsumer%%( 5
=%%6 7
true%%8 <
)%%< =
{&& 	
EnableConsumerFlag'' 
=''  
true''! %
;''% &
Devon4NetLogger(( 
.(( 
Debug(( !
(((! "
$str((" I
)((I J
;((J K
if)) 
()) 
startConsumer)) 
))) 
Consume)) &
())& '
Commit))' -
,))- .
CommitPeriod))/ ;
))); <
;))< =
}** 	
public,, 
void,, 
DisableConsumer,, #
(,,# $
),,$ %
{-- 	
EnableConsumerFlag.. 
=..  
false..! &
;..& '
Devon4NetLogger// 
.// 
Debug// !
(//! "
$str//" J
)//J K
;//K L
}00 	
private;; 
void;; 
Consume;; 
(;; 
bool;; !
commit;;" (
,;;( )
int;;* -
commitPeriod;;. :
);;: ;
{<< 	
var== 
cancellationToken== !
===" #
new==$ '#
CancellationTokenSource==( ?
(==? @
)==@ A
;==A B
try?? 
{@@ 
TaskAA 
.AA 
RunAA 
(AA 
(AA 
)AA 
=>AA 
{BB 
usingCC 
varCC 
consumerCC &
=CC' (
KafkaHandlerCC) 5
.CC5 6
GetConsumerBuilderCC6 H
<CCH I
TCCI J
,CCJ K
TVCCL N
>CCN O
(CCO P

ConsumerIdCCP Z
)CCZ [
;CC[ \
whileDD 
(DD 
EnableConsumerFlagDD -
)DD- .
{EE 
tryFF 
{GG 
varHH 
consumeResultHH  -
=HH. /
consumerHH0 8
?HH8 9
.HH9 :
ConsumeHH: A
(HHA B
cancellationTokenHHB S
.HHS T
TokenHHT Y
)HHY Z
;HHZ [
ifII 
(II  
consumeResultII  -
?II- .
.II. /
MessageII/ 6
==II7 9
nullII: >
)II> ?
continueII@ H
;IIH I
HandleCommandKK )
(KK) *
consumeResultKK* 7
.KK7 8
MessageKK8 ?
.KK? @
KeyKK@ C
,KKC D
consumeResultKKE R
.KKR S
MessageKKS Z
.KKZ [
ValueKK[ `
)KK` a
;KKa b
ifLL 
(LL  
consumeResultLL  -
.LL- .
IsPartitionEOFLL. <
)LL< =
{MM 
Devon4NetLoggerNN  /
.NN/ 0
InformationNN0 ;
(NN; <
$"NN< >
$strNN> S
{NNS T
consumeResultNNT a
.NNa b
TopicNNb g
}NNg h
$strNNh t
{NNt u
consumeResult	NNu �
.
NN� �
	Partition
NN� �
}
NN� �
$str
NN� �
{
NN� �
consumeResult
NN� �
.
NN� �
Offset
NN� �
}
NN� �
$str
NN� �
"
NN� �
)
NN� �
;
NN� �
continueOO  (
;OO( )
}PP 
Devon4NetLoggerRR +
.RR+ ,
DebugRR, 1
(RR1 2
$"RR2 4
$strRR4 H
{RRH I
consumeResultRRI V
.RRV W 
TopicPartitionOffsetRRW k
}RRk l
$strRRl n
{RRn o
consumeResultRRo |
.RR| }
Message	RR} �
.
RR� �
Value
RR� �
}
RR� �
"
RR� �
)
RR� �
;
RR� �
ifTT 
(TT  
!TT  !
commitTT! '
)TT' (
continueTT) 1
;TT1 2
ifVV 
(VV  
consumeResultVV  -
.VV- .
OffsetVV. 4
%VV5 6
commitPeriodVV7 C
!=VVD F
$numVVG H
)VVH I
continueVVJ R
;VVR S
tryXX 
{YY 
consumerZZ  (
.ZZ( )
CommitZZ) /
(ZZ/ 0
consumeResultZZ0 =
)ZZ= >
;ZZ> ?
}[[ 
catch\\ !
(\\" #
KafkaException\\# 1
e\\2 3
)\\3 4
{]] 
Devon4NetLogger^^  /
.^^/ 0
Error^^0 5
(^^5 6
$"^^6 8
$str^^8 F
{^^F G
e^^G H
.^^H I
Error^^I N
.^^N O
Reason^^O U
}^^U V
"^^V W
)^^W X
;^^X Y
consumer__  (
.__( )
Close__) .
(__. /
)__/ 0
;__0 1
}`` 
}aa 
catchbb 
(bb 
ConsumeExceptionbb /
ebb0 1
)bb1 2
{cc 
Devon4NetLoggerdd +
.dd+ ,
Errordd, 1
(dd1 2
$"dd2 4
$strdd4 C
{ddC D
eddD E
.ddE F
ErrorddF K
.ddK L
ReasonddL R
}ddR S
"ddS T
)ddT U
;ddU V
consumeree $
?ee$ %
.ee% &
Closeee& +
(ee+ ,
)ee, -
;ee- .
}ff 
}gg 
}hh 
,hh 
cancellationTokenhh $
.hh$ %
Tokenhh% *
)hh* +
;hh+ ,
}ii 
catchjj 
(jj &
OperationCanceledExceptionjj -
ejj. /
)jj/ 0
{kk 
Devon4NetLoggerll 
.ll  
Errorll  %
(ll% &
$strll& 9
)ll9 :
;ll: ;
Devon4NetLoggermm 
.mm  
Errormm  %
(mm% &
emm& '
)mm' (
;mm( )
}oo 
}pp 	
}qq 
}rr � 
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Kafka\Handlers\KafkaProducerHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Kafka# (
.( )
Handlers) 1
{ 
public 

class  
KafkaProducerHandler %
<% &
T& '
,' (
TV) +
>+ ,
:- .!
IKafkaProducerHandler/ D
<D E
TE F
,F G
TVH J
>J K
whereL Q
TR S
:T U
classV [
where\ a
TVb d
:e f
classg l
{		 
	protected

 
IServiceCollection

 $
Services

% -
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
: ;
private 
IKakfkaHandler 
KafkaHandler +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
private 
string 

ProducerId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public  
KafkaProducerHandler #
(# $
IServiceCollection$ 6
services7 ?
,? @
IKakfkaHandlerA O
kafkaHandlerP \
,\ ]
string^ d

producerIde o
)o p
{ 	
Services 
= 
services 
;  
KafkaHandler 
= 
kafkaHandler '
;' (

ProducerId 
= 

producerId #
;# $
} 	
public 
Task 
< 
DeliveryResult "
<" #
T# $
,$ %
TV& (
>( )
>) *
SendMessage+ 6
(6 7
T7 8
key9 <
,< =
TV> @
valueA F
)F G
{ 	
var 
result 
= 
KafkaHandler %
.% &
DeliverMessage& 4
(4 5
key5 8
,8 9
value: ?
,? @

ProducerIdA K
)K L
;L M
var 
date 
= 
result 
. 
Result $
.$ %
	Timestamp% .
.. /
UtcDateTime/ :
;: ;
Devon4NetLogger 
. 
Information '
(' (
$"( *
$str* B
{B C
resultC I
.I J
ResultJ P
.P Q
KeyQ T
}T U
$strU `
{` a
resulta g
.g h
Resulth n
.n o
Valueo t
}t u
$stru 
{	 �
result
� �
.
� �
Result
� �
.
� �
Topic
� �
}
� �
$str
� �
{
� �
date
� �
.
� �
ToShortDateString
� �
(
� �
)
� �
}
� �
$str
� �
{
� �
date
� �
.
� �
ToLongTimeString
� �
(
� �
)
� �
}
� �
$str
� �
{
� �
result
� �
.
� �
Result
� �
.
� �
Status
� �
}
� �
"
� �
)
� �
;
� �
return 
result 
; 
} 	
public 
TS 
GetInstance 
< 
TS  
>  !
(! "
)" #
{ 	
var 
sp 
= 
Services 
.  
BuildServiceProvider 2
(2 3
)3 4
;4 5
return   
sp   
.   

GetService    
<    !
TS  ! #
>  # $
(  $ %
)  % &
;  & '
}!! 	
}"" 
}## ��
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Kafka\Handlers\KakfkaHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Kafka# (
.( )
Handlers) 1
{ 
public 

class 
KakfkaHandler 
:  
IKakfkaHandler! /
{ 
private 
KafkaOptions 
KafkaOptions )
{* +
get, /
;/ 0
}1 2
public 
KakfkaHandler 
( 
IOptions %
<% &
KafkaOptions& 2
>2 3
kafkaOptions4 @
)@ A
{ 	
KafkaOptions 
= 
kafkaOptions '
?' (
.( )
Value) .
;. /
} 	
public 
async 
Task 
< 
DeliveryResult (
<( )
T) *
,* +
TV, .
>. /
>/ 0
DeliverMessage1 ?
<? @
T@ A
,A B
TVC E
>E F
(F G
TG H
keyI L
,L M
TVN P
valueQ V
,V W
stringX ^

producerId_ i
)i j
wherek p
Tq r
:s t
classu z
where	{ �
TV
� �
:
� �
class
� �
{ 	
DeliveryResult 
< 
T 
, 
TV  
>  !
result" (
;( )
var 
producerOptions 
=  !
GetProducerOptions" 4
(4 5

producerId5 ?
)? @
;@ A
using 
var 
producer 
=  
GetProducerBuilder! 3
<3 4
T4 5
,5 6
TV7 9
>9 :
(: ;

producerId; E
)E F
;F G
try 
{ 
result   
=   
await   
producer   '
.  ' (
ProduceAsync  ( 4
(  4 5
producerOptions  5 D
.  D E
Topic  E J
,  J K
new  L O
Message  P W
<  W X
T  X Y
,  Y Z
TV  [ ]
>  ] ^
{  _ `
Key  a d
=  e f
key  g j
,  j k
Value  l q
=  r s
value  t y
}  z {
)  { |
.  | }
ConfigureAwait	  } �
(
  � �
false
  � �
)
  � �
;
  � �
producer!! 
.!! 
Flush!! 
(!! 
)!!  
;!!  !
producer"" 
."" 
Dispose""  
(""  !
)""! "
;""" #
}## 
catch$$ 
($$ 
ProduceException$$ #
<$$# $
string$$$ *
,$$* +
string$$, 2
>$$2 3
e$$4 5
)$$5 6
{%% 
Devon4NetLogger&& 
.&&  
Error&&  %
(&&% &
e&&& '
)&&' (
;&&( )
throw'' 
;'' 
}(( 
return** 
result** 
;** 
}++ 	
public-- 
	IProducer-- 
<-- 
T-- 
,-- 
TV-- 
>-- 
GetProducerBuilder--  2
<--2 3
T--3 4
,--4 5
TV--6 8
>--8 9
(--9 :
string--: @

producerId--A K
)--K L
where--M R
T--S T
:--U V
class--W \
where--] b
TV--c e
:--f g
class--h m
{.. 	
var// 
producerOptions// 
=//  !
GetProducerOptions//" 4
(//4 5

producerId//5 ?
)//? @
;//@ A
var11 
configuration11 
=11 0
$GetDefaultKafkaProducerConfiguration11  D
(11D E
producerOptions11E T
)11T U
;11U V
var33 
producer33 
=33 &
GetProducerBuilderInstance33 5
<335 6
T336 7
,337 8
TV339 ;
>33; <
(33< =
configuration33= J
)33J K
;33K L
var55 
result55 
=55 
producer55 !
.55! "
Build55" '
(55' (
)55( )
;55) *
return77 
result77 
;77 
}88 	
private:: 
static:: 
ProducerBuilder:: &
<::& '
T::' (
,::( )
TV::* ,
>::, -&
GetProducerBuilderInstance::. H
<::H I
T::I J
,::J K
TV::L N
>::N O
(::O P
ProducerConfig::P ^
configuration::_ l
)::l m
where::n s
T::t u
:::v w
class::x }
where	::~ �
TV
::� �
:
::� �
class
::� �
{;; 	
var<< 
producer<< 
=<< 
new<< 
ProducerBuilder<< .
<<<. /
T<</ 0
,<<0 1
TV<<2 4
><<4 5
(<<5 6
configuration<<6 C
)<<C D
;<<D E
producer>> 
.>> 
SetErrorHandler>> $
(>>$ %
(>>% &
_>>& '
,>>' (
e>>) *
)>>* +
=>>>, .
Devon4NetLogger>>/ >
.>>> ?
Error>>? D
(>>D E
new>>E H
ConsumerException>>I Z
(>>Z [
$">>[ ]
$str>>] h
{>>h i
e>>i j
.>>j k
Code>>k o
}>>o p
$str>>p s
{>>s t
e>>t u
.>>u v
Reason>>v |
}>>| }
">>} ~
)>>~ 
)	>> �
)
>>� �
;
>>� �
producer?? 
.??  
SetStatisticsHandler?? )
(??) *
(??* +
_??+ ,
,??, -
json??. 2
)??2 3
=>??4 6
Devon4NetLogger??7 F
.??F G
Information??G R
(??R S
$"??S U
$str??U a
{??a b
json??b f
}??f g
"??g h
)??h i
)??i j
;??j k
producer@@ 
.@@ 
SetLogHandler@@ "
(@@" #
(@@# $
c@@$ %
,@@% &

partitions@@' 1
)@@1 2
=>@@3 5
{@@5 6
Devon4NetLogger@@6 E
.@@E F
Information@@F Q
(@@Q R
$"@@R T
$str@@T h
{@@h i
string@@i o
.@@o p
Join@@p t
(@@t u
$str@@u y
,@@y z

partitions	@@{ �
)
@@� �
}
@@� �
$str
@@� �
"
@@� �
)
@@� �
;
@@� �
}
@@� �
)
@@� �
;
@@� �
returnAA 
producerAA 
;AA 
}BB 	
privateDD 
ProducerDD 
GetProducerOptionsDD +
(DD+ ,
stringDD, 2

producerIdDD3 =
)DD= >
{EE 	
ifFF 
(FF 
stringFF 
.FF 
IsNullOrEmptyFF $
(FF$ %

producerIdFF% /
)FF/ 0
)FF0 1
{GG 
throwHH 
newHH %
ProducerNotFoundExceptionHH 3
(HH3 4
$"HH4 6
$strHH6 c
"HHc d
)HHd e
;HHe f
}II 
varKK 
producerOptionsKK 
=KK  !
KafkaOptionsKK" .
.KK. /
	ProducersKK/ 8
.KK8 9
FirstOrDefaultKK9 G
(KKG H
pKKH I
=>KKJ L
pKKM N
.KKN O

ProducerIdKKO Y
==KKZ \

producerIdKK] g
)KKg h
;KKh i
ifMM 
(MM 
producerOptionsMM 
==MM  "
nullMM# '
)MM' (
{NN 
throwOO 
newOO %
ConsumerNotFoundExceptionOO 3
(OO3 4
$"OO4 6
$strOO6 l
{OOl m

producerIdOOm w
}OOw x
"OOx y
)OOy z
;OOz {
}PP 
returnRR 
producerOptionsRR "
;RR" #
}SS 	
privateUU 
staticUU 
ProducerConfigUU %0
$GetDefaultKafkaProducerConfigurationUU& J
(UUJ K
ProducerUUK S
producerUUT \
)UU\ ]
{VV 	
varWW 
resultWW 
=WW 
newWW 
ProducerConfigWW ,
{XX 
BootstrapServersYY  
=YY! "
producerYY# +
.YY+ ,
ServersYY, 3
,YY3 4
ClientIdZZ 
=ZZ 
producerZZ #
.ZZ# $
ClientIdZZ$ ,
,ZZ, -
CompressionLevel[[  
=[[! "
producer[[# +
.[[+ ,
CompressionLevel[[, <
??[[= ?
KafkaDefaultValues[[@ R
.[[R S
CompressionLevel[[S c
,[[c d
CompressionType\\ 
=\\  !
GetCompressionType\\" 4
(\\4 5
producer\\5 =
.\\= >
CompressionType\\> M
)\\M N
,\\N O,
 EnableSslCertificateVerification]] 0
=]]1 2
producer]]3 ;
.]]; <,
 EnableSslCertificateVerification]]< \
,]]\ ]"
CancellationDelayMaxMs^^ &
=^^' (
producer^^) 1
.^^1 2"
CancellationDelayMaxMs^^2 H
??^^I K
KafkaDefaultValues^^L ^
.^^^ _"
CancellationDelayMaxMs^^_ u
,^^u v
Acks__ 
=__ 
GetAck__ 
(__ 
producer__ &
.__& '
Ack__' *
)__* +
,__+ ,
BrokerAddressTtl``  
=``! "
producer``# +
.``+ ,
BrokerAddressTtl``, <
??``= ?
KafkaDefaultValues``@ R
.``R S
BrokerAddressTtl``S c
,``c d
BatchNumMessagesaa  
=aa! "
produceraa# +
.aa+ ,
BatchNumMessagesaa, <
??aa= ?
KafkaDefaultValuesaa@ R
.aaR S
BatchNumMessagesaaS c
,aac d
EnableIdempotencebb !
=bb" #
producerbb$ ,
.bb, -
EnableIdempotencebb- >
,bb> ?
MaxInFlightcc 
=cc 
producercc &
.cc& '
MaxInFlightcc' 2
??cc3 5
KafkaDefaultValuescc6 H
.ccH I
MaxInFlightccI T
,ccT U!
MessageSendMaxRetriesdd %
=dd& '
producerdd( 0
.dd0 1!
MessageSendMaxRetriesdd1 F
??ddG I
KafkaDefaultValuesddJ \
.dd\ ]!
MessageSendMaxRetriesdd] r
,ddr s
	BatchSizeee 
=ee 
produceree $
.ee$ %
	BatchSizeee% .
??ee/ 1
KafkaDefaultValuesee2 D
.eeD E
	BatchSizeeeE N
,eeN O
MessageMaxBytesff 
=ff  !
producerff" *
.ff* +
MessageMaxBytesff+ :
??ff; =
KafkaDefaultValuesff> P
.ffP Q
MessageMaxBytesffQ `
,ff` a"
ReceiveMessageMaxBytesgg &
=gg' (
producergg) 1
.gg1 2"
ReceiveMessageMaxBytesgg2 H
??ggI K
KafkaDefaultValuesggL ^
.gg^ _"
ReceiveMessageMaxBytesgg_ u
}hh 
;hh 
ifjj 
(jj 
!jj 
stringjj 
.jj 
IsNullOrEmptyjj %
(jj% &
producerjj& .
.jj. /
Debugjj/ 4
)jj4 5
)jj5 6
{kk 
resultll 
.ll 
Debugll 
=ll 
producerll '
.ll' (
Debugll( -
;ll- .
}mm 
returnoo 
resultoo 
;oo 
}pp 	
publicww 
	IConsumerww 
<ww 
Tww 
,ww 
TVww 
>ww 
GetConsumerBuilderww  2
<ww2 3
Tww3 4
,ww4 5
TVww6 8
>ww8 9
(ww9 :
stringww: @

consumerIdwwA K
)wwK L
wherewwM R
TwwS T
:wwU V
classwwW \
whereww] b
TVwwc e
:wwf g
classwwh m
{xx 	
ifyy 
(yy 
stringyy 
.yy 
IsNullOrEmptyyy $
(yy$ %

consumerIdyy% /
)yy/ 0
)yy0 1
{zz 
throw{{ 
new{{ %
ConsumerNotFoundException{{ 3
({{3 4
$"{{4 6
$str{{6 c
"{{c d
){{d e
;{{e f
}|| 
var~~ 
consumerOptions~~ 
=~~  !
KafkaOptions~~" .
.~~. /
	Consumers~~/ 8
.~~8 9
FirstOrDefault~~9 G
(~~G H
p~~H I
=>~~J L
p~~M N
.~~N O

ConsumerId~~O Y
==~~Z \

consumerId~~] g
)~~g h
;~~h i
if
�� 
(
�� 
consumerOptions
�� 
==
��  "
null
��# '
)
��' (
{
�� 
throw
�� 
new
�� '
ConsumerNotFoundException
�� 3
(
��3 4
$"
��4 6
$str
��6 l
{
��l m

consumerId
��m w
}
��w x
"
��x y
)
��y z
;
��z {
}
�� 
var
�� 
configuration
�� 
=
�� 2
$GetDefaultKafkaConsumerConfiguration
��  D
(
��D E
consumerOptions
��E T
)
��T U
;
��U V
var
�� 
consumer
�� 
=
�� 
new
�� 
ConsumerBuilder
�� .
<
��. /
T
��/ 0
,
��0 1
TV
��2 4
>
��4 5
(
��5 6
configuration
��6 C
)
��C D
;
��D E
	IConsumer
�� 
<
�� 
T
�� 
,
�� 
TV
�� 
>
�� 
result
�� #
=
��$ %
null
��& *
;
��* +
try
�� 
{
�� 
consumer
�� 
.
�� 
SetErrorHandler
�� (
(
��( )
(
��) *
_
��* +
,
��+ ,
e
��- .
)
��. /
=>
��0 2
Devon4NetLogger
��3 B
.
��B C
Error
��C H
(
��H I
new
��I L
ConsumerException
��M ^
(
��^ _
$"
��_ a
$str
��a l
{
��l m
e
��m n
.
��n o
Code
��o s
}
��s t
$str
��t w
{
��w x
e
��x y
.
��y z
Reason��z �
}��� �
"��� �
)��� �
)��� �
)��� �
;��� �
consumer
�� 
.
�� "
SetStatisticsHandler
�� -
(
��- .
(
��. /
_
��/ 0
,
��0 1
json
��2 6
)
��6 7
=>
��8 :
Devon4NetLogger
��; J
.
��J K
Information
��K V
(
��V W
$"
��W Y
$str
��Y e
{
��e f
json
��f j
}
��j k
"
��k l
)
��l m
)
��m n
;
��n o
consumer
�� 
.
�� *
SetPartitionsAssignedHandler
�� 5
(
��5 6
(
��6 7
c
��7 8
,
��8 9

partitions
��: D
)
��D E
=>
��F H
{
�� 
Devon4NetLogger
�� #
.
��# $
Information
��$ /
(
��/ 0
$"
��0 2
$str
��2 H
{
��H I
string
��I O
.
��O P
Join
��P T
(
��T U
$str
��U Y
,
��Y Z

partitions
��[ e
)
��e f
}
��f g
$str
��g h
"
��h i
)
��i j
;
��j k
}
�� 
)
�� 
;
�� 
consumer
�� 
.
�� )
SetPartitionsRevokedHandler
�� 4
(
��4 5
(
��5 6
c
��6 7
,
��7 8

partitions
��9 C
)
��C D
=>
��E G
{
�� 
Devon4NetLogger
�� #
.
��# $
Information
��$ /
(
��/ 0
$"
��0 2
$str
��2 H
{
��H I
string
��I O
.
��O P
Join
��P T
(
��T U
$str
��U Y
,
��Y Z

partitions
��[ e
)
��e f
}
��f g
$str
��g h
"
��h i
)
��i j
;
��j k
}
�� 
)
�� 
;
�� 
result
�� 
=
�� 
consumer
�� !
.
��! "
Build
��" '
(
��' (
)
��( )
;
��) *
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� )
(
��) *
consumerOptions
��* 9
.
��9 :
Topics
��: @
)
��@ A
)
��A B
result
��C I
.
��I J
	Subscribe
��J S
(
��S T
consumerOptions
��T c
.
��c d
	GetTopics
��d m
(
��m n
)
��n o
)
��o p
;
��p q
}
�� 
catch
�� 
(
�� '
InvalidOperationException
�� ,
ex
��- /
)
��/ 0
{
�� 
Devon4NetLogger
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
)
��( )
;
��) *
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
ConsumerConfig
�� %2
$GetDefaultKafkaConsumerConfiguration
��& J
(
��J K
Consumer
��K S
consumer
��T \
)
��\ ]
{
�� 	
var
�� 
result
�� 
=
�� 
new
�� 
ConsumerConfig
�� ,
{
�� 
BootstrapServers
��  
=
��! "
consumer
��# +
.
��+ ,
Servers
��, 3
,
��3 4
ClientId
�� 
=
�� 
consumer
�� #
.
��# $
ClientId
��$ ,
,
��, -
GroupId
�� 
=
�� 
consumer
�� "
.
��" #
GroupId
��# *
,
��* +
EnableAutoCommit
��  
=
��! "
consumer
��# +
.
��+ ,

AutoCommit
��, 6
,
��6 7"
StatisticsIntervalMs
�� $
=
��% &
consumer
��' /
.
��/ 0"
StatisticsIntervalMs
��0 D
??
��E G 
KafkaDefaultValues
��H Z
.
��Z ["
StatisticsIntervalMs
��[ o
,
��o p
SessionTimeoutMs
��  
=
��! "
consumer
��# +
.
��+ ,
SessionTimeoutMs
��, <
??
��= ? 
KafkaDefaultValues
��@ R
.
��R S
SessionTimeoutMs
��S c
,
��c d
AutoOffsetReset
�� 
=
��  ! 
GetAutoOffsetReset
��" 4
(
��4 5
consumer
��5 =
.
��= >
AutoOffsetReset
��> M
)
��M N
,
��N O 
EnablePartitionEof
�� "
=
��# $
consumer
��% -
.
��- . 
EnablePartitionEof
��. @
,
��@ A
IsolationLevel
�� 
=
��  
GetIsolationLevel
��! 2
(
��2 3
consumer
��3 ;
.
��; <
IsolationLevel
��< J
)
��J K
,
��K L.
 EnableSslCertificateVerification
�� 0
=
��1 2
consumer
��3 ;
.
��; <.
 EnableSslCertificateVerification
��< \
,
��\ ]
}
�� 
;
�� 
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
consumer
��& .
.
��. /
Debug
��/ 4
)
��4 5
)
��5 6
{
�� 
result
�� 
.
�� 
Debug
�� 
=
�� 
consumer
�� '
.
��' (
Debug
��( -
;
��- .
}
�� 
return
�� 
result
�� 
;
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 
CreateTopic
��  +
(
��+ ,
string
��, 2
adminId
��3 :
,
��: ;
string
��< B
	topicName
��C L
,
��L M
short
��N S
replicationFactor
��T e
=
��f g
$num
��h i
,
��i j
int
��k n
numPartitions
��o |
=
��} ~
$num�� �
)��� �
{
�� 	
using
�� 
var
�� 
adminClient
�� !
=
��" ##
GetAdminClientBuilder
��$ 9
(
��9 :
adminId
��: A
)
��A B
;
��B C
try
�� 
{
�� 
await
�� 
adminClient
�� !
.
��! "
CreateTopicsAsync
��" 3
(
��3 4
new
��4 7
[
��7 8
]
��8 9
{
��: ;
new
��; > 
TopicSpecification
��? Q
{
��R S
Name
��T X
=
��Y Z
	topicName
��[ d
,
��d e
ReplicationFactor
��f w
=
��x y 
replicationFactor��z �
,��� �
NumPartitions��� �
=��� �
numPartitions��� �
}��� �
}��� �
)��� �
;��� �
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� #
CreateTopicsException
�� (
ex
��) +
)
��+ ,
{
�� 
Devon4NetLogger
�� 
.
��  
Error
��  %
(
��% &
$"
��& (
$str
��( H
{
��H I
ex
��I K
.
��K L
Results
��L S
[
��S T
$num
��T U
]
��U V
.
��V W
Topic
��W \
}
��\ ]
$str
��] _
{
��_ `
ex
��` b
.
��b c
Results
��c j
[
��j k
$num
��k l
]
��l m
.
��m n
Error
��n s
.
��s t
Reason
��t z
}
��z {
"
��{ |
)
��| }
;
��} ~
Devon4NetLogger
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
)
��( )
;
��) *
throw
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
bool
�� 
>
�� 
DeleteTopic
��  +
(
��+ ,
string
��, 2
adminId
��3 :
,
��: ;
List
��< @
<
��@ A
string
��A G
>
��G H

topicsName
��I S
)
��S T
{
�� 	
using
�� 
var
�� 
adminClient
�� !
=
��" ##
GetAdminClientBuilder
��$ 9
(
��9 :
adminId
��: A
)
��A B
;
��B C
try
�� 
{
�� 
await
�� 
adminClient
�� !
.
��! "
DeleteTopicsAsync
��" 3
(
��3 4

topicsName
��4 >
)
��> ?
;
��? @
return
�� 
true
�� 
;
�� 
}
�� 
catch
�� 
(
�� #
CreateTopicsException
�� (
ex
��) +
)
��+ ,
{
�� 
Devon4NetLogger
�� 
.
��  
Error
��  %
(
��% &
$"
��& (
$str
��( H
{
��H I
ex
��I K
.
��K L
Results
��L S
[
��S T
$num
��T U
]
��U V
.
��V W
Topic
��W \
}
��\ ]
$str
��] _
{
��_ `
ex
��` b
.
��b c
Results
��c j
[
��j k
$num
��k l
]
��l m
.
��m n
Error
��n s
.
��s t
Reason
��t z
}
��z {
"
��{ |
)
��| }
;
��} ~
Devon4NetLogger
�� 
.
��  
Error
��  %
(
��% &
ex
��& (
)
��( )
;
��) *
throw
�� 
;
�� 
}
�� 
}
�� 	
private
�� 
IAdminClient
�� #
GetAdminClientBuilder
�� 2
(
��2 3
string
��3 9
adminId
��: A
)
��A B
{
�� 	
var
�� 
adminOptions
�� 
=
�� 
GetAdminOptions
�� .
(
��. /
adminId
��/ 6
)
��6 7
;
��7 8
var
�� 
adminClient
�� 
=
�� 
new
�� ! 
AdminClientBuilder
��" 4
(
��4 5
new
��5 8
AdminClientConfig
��9 J
{
��K L
BootstrapServers
��M ]
=
��^ _
adminOptions
��` l
.
��l m
Servers
��m t
}
��u v
)
��v w
.
��w x
Build
��x }
(
��} ~
)
��~ 
;�� �
return
�� 
adminClient
�� 
;
�� 
}
�� 	
private
�� 
Administration
�� 
GetAdminOptions
�� .
(
��. /
string
��/ 5
adminId
��6 =
)
��= >
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
adminId
��% ,
)
��, -
)
��- .
{
�� 
throw
�� 
new
�� $
AdminNotFoundException
�� 0
(
��0 1
$"
��1 3
$str
��3 ]
"
��] ^
)
��^ _
;
��_ `
}
�� 
var
�� 
adminOptions
�� 
=
�� 
KafkaOptions
�� +
.
��+ ,
Administration
��, :
.
��: ;
FirstOrDefault
��; I
(
��I J
p
��J K
=>
��L N
p
��O P
.
��P Q
AdminId
��Q X
==
��Y [
adminId
��\ c
)
��c d
;
��d e
if
�� 
(
�� 
adminOptions
�� 
==
�� 
null
��  $
)
��$ %
{
�� 
throw
�� 
new
�� $
AdminNotFoundException
�� 0
(
��0 1
$"
��1 3
$str
��3 f
{
��f g
adminId
��g n
}
��n o
"
��o p
)
��p q
;
��q r
}
�� 
return
�� 
adminOptions
�� 
;
��  
}
�� 	
private
�� 
static
�� 
Acks
�� 
?
�� 
GetAck
�� #
(
��# $
string
��$ *
producerAck
��+ 6
)
��6 7
{
�� 	
return
�� 
producerAck
�� 
.
�� 
ToLower
�� &
(
��& '
)
��' (
switch
��) /
{
�� 
$str
�� 
=>
�� 
Acks
�� 
.
�� 
None
�� #
,
��# $
$str
�� 
=>
�� 
Acks
�� 
.
�� 
All
�� !
,
��! "
$str
�� 
=>
�� 
Acks
��  
.
��  !
Leader
��! '
,
��' (
$str
�� 
=>
�� 
Acks
�� 
.
�� 
None
�� #
,
��# $
_
�� 
=>
�� 
Acks
�� 
.
�� 
None
�� 
}
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
CompressionType
�� &
?
��& ' 
GetCompressionType
��( :
(
��: ;
string
��; A%
producerCompressionType
��B Y
)
��Y Z
{
�� 	
return
�� %
producerCompressionType
�� *
.
��* +
ToLower
��+ 2
(
��2 3
)
��3 4
switch
��5 ;
{
�� 
$str
�� 
=>
�� 
CompressionType
�� )
.
��) *
Gzip
��* .
,
��. /
$str
�� 
=>
�� 
CompressionType
�� +
.
��+ ,
Snappy
��, 2
,
��2 3
$str
�� 
=>
�� 
CompressionType
�� (
.
��( )
Lz4
��) ,
,
��, -
$str
�� 
=>
�� 
CompressionType
�� )
.
��) *
Zstd
��* .
,
��. /
$str
�� 
=>
�� 
CompressionType
�� )
.
��) *
None
��* .
,
��. /
_
�� 
=>
�� 
CompressionType
�� $
.
��$ %
None
��% )
}
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
AutoOffsetReset
�� &
?
��& ' 
GetAutoOffsetReset
��( :
(
��: ;
string
��; A%
consumerAutoOffsetReset
��B Y
)
��Y Z
{
�� 	
return
�� %
consumerAutoOffsetReset
�� *
.
��* +
ToLower
��+ 2
(
��2 3
)
��3 4
switch
��5 ;
{
�� 
$str
�� 
=>
�� 
AutoOffsetReset
�� +
.
��+ ,
Latest
��, 2
,
��2 3
$str
�� 
=>
�� 
AutoOffsetReset
�� -
.
��- .
Earliest
��. 6
,
��6 7
$str
�� 
=>
�� 
AutoOffsetReset
�� *
.
��* +
Error
��+ 0
,
��0 1
_
�� 
=>
�� 
AutoOffsetReset
�� $
.
��$ %
Latest
��% +
}
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
IsolationLevel
�� %
GetIsolationLevel
��& 7
(
��7 8
string
��8 >
isolationLevel
��? M
)
��M N
{
�� 	
return
�� 
isolationLevel
�� !
.
��! "
ToLower
��" )
(
��) *
)
��* +
switch
��, 2
{
�� 
$str
�� !
=>
��" $
IsolationLevel
��% 3
.
��3 4
ReadUncommitted
��4 C
,
��C D
$str
�� 
=>
��  "
IsolationLevel
��# 1
.
��1 2
ReadCommitted
��2 ?
,
��? @
_
�� 
=>
�� 
IsolationLevel
�� #
.
��# $
ReadCommitted
��$ 1
}
�� 
;
�� 
}
�� 	
}
�� 
}�� �2
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Kafka\KafkaConfiguration.cs
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
" #
Kafka

# (
{ 
public 

static 
class 
KafkaConfiguration *
{ 
private 
static 
ProducerConfig %
KafkaOptions& 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
public 
static 
void 

SetupKafka %
(% &
this& *
IServiceCollection+ =
services> F
,F G
IConfigurationH V
configurationW d
)d e
{ 	
var 
kafkaOptions 
= 
services '
.' (
GetTypedOptions( 7
<7 8
KafkaOptions8 D
>D E
(E F
configurationF S
,S T
$strU \
)\ ]
;] ^
if 
( 
kafkaOptions 
== 
null  $
||% '
!( )
kafkaOptions) 5
.5 6
EnableKafka6 A
||B D
kafkaOptionsE Q
.Q R
	ProducersR [
==\ ^
null_ c
||d f
!g h
kafkaOptionsh t
.t u
	Producersu ~
.~ 
Any	 �
(
� �
)
� �
)
� �
return
� �
;
� �
services 
. 
AddTransient !
(! "
typeof" (
(( )
IKakfkaHandler) 7
)7 8
,8 9
typeof: @
(@ A
KakfkaHandlerA N
)N O
)O P
;P Q
} 	
public 
static 
void 
AddKafkaConsumer +
<+ ,
T, -
>- .
(. /
this/ 3
IServiceCollection4 F
servicesG O
,O P
stringQ W

consumerIdX b
,b c
boold h
commiti o
=p q
falser w
,w x
inty |
commitPeriod	} �
=
� �
$num
� �
)
� �
where
� �
T
� �
:
� �
class
� �
{ 	
var 

memberInfo 
= 
typeof #
(# $
T$ %
)% &
.& '
BaseType' /
;/ 0
if 
( 

memberInfo 
!= 
null "
&&# %
!& '

memberInfo' 1
.1 2
Name2 6
.6 7
Contains7 ?
(? @
$str@ V
)V W
)W X
{ 
throw 
new 
ArgumentException +
(+ ,
$", .
$str. @
{@ A
typeofA G
(G H
TH I
)I J
.J K
FullNameK S
}S T
$strT 
"	 �
)
� �
;
� �
} 
using!! 
var!! 
sp!! 
=!! 
services!! #
.!!# $ 
BuildServiceProvider!!$ 8
(!!8 9
)!!9 :
;!!: ;
var"" 

kafHandler"" 
="" 
sp"" 
.""  

GetService""  *
<""* +
IKakfkaHandler""+ 9
>""9 :
("": ;
)""; <
;""< =
var$$ 
obj$$ 
=$$ 
($$ 
T$$ 
)$$ 
	Activator$$ "
.$$" #
CreateInstance$$# 1
($$1 2
typeof$$2 8
($$8 9
T$$9 :
)$$: ;
,$$; <
services$$= E
,$$E F

kafHandler$$G Q
,$$Q R

consumerId$$S ]
,$$] ^
commit$$_ e
,$$e f
commitPeriod$$g s
)$$s t
;$$t u
services&& 
.&& 
AddSingleton&& !
(&&! "
obj&&" %
)&&% &
;&&& '
}'' 	
public)) 
static)) 
void)) 
AddKafkaProducer)) +
<))+ ,
T)), -
>))- .
()). /
this))/ 3
IServiceCollection))4 F
services))G O
,))O P
string))Q W

producerId))X b
)))b c
where))d i
T))j k
:))l m
class))n s
{** 	
var++ 

memberInfo++ 
=++ 
typeof++ #
(++# $
T++$ %
)++% &
.++& '
BaseType++' /
;++/ 0
if,, 
(,, 

memberInfo,, 
!=,, 
null,, "
&&,,# %
!,,& '

memberInfo,,' 1
.,,1 2
Name,,2 6
.,,6 7
Contains,,7 ?
(,,? @
$str,,@ V
),,V W
),,W X
{-- 
throw.. 
new.. 
ArgumentException.. +
(..+ ,
$".., .
$str... @
{..@ A
typeof..A G
(..G H
T..H I
)..I J
...J K
FullName..K S
}..S T
$str..T 
"	.. �
)
..� �
;
..� �
}// 
using11 
var11 
sp11 
=11 
services11 #
.11# $ 
BuildServiceProvider11$ 8
(118 9
)119 :
;11: ;
var22 

kafHandler22 
=22 
sp22 
.22  

GetService22  *
<22* +
IKakfkaHandler22+ 9
>229 :
(22: ;
)22; <
;22< =
var44 
obj44 
=44 
(44 
T44 
)44 
	Activator44 "
.44" #
CreateInstance44# 1
(441 2
typeof442 8
(448 9
T449 :
)44: ;
,44; <
services44= E
,44E F

kafHandler44G Q
,44Q R

producerId44S ]
)44] ^
;44^ _
services66 
.66 
AddSingleton66 !
(66! "
obj66" %
)66% &
;66& '
}77 	
}88 
}99 