�
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\Commands\Command.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
RabbitMQ# +
.+ ,
Commands, 4
{ 
[ 
Serializable 
] 
public 

class 
Command 
: 
Message "
{		 
public

 
DateTime

 
	Timestamp

 !
{

" #
get

$ '
;

' (
	protected

) 2
set

3 6
;

6 7
}

8 9
	protected 
Command 
( 
) 
{ 	
	Timestamp 
= 
DateTime  
.  !
Now! $
;$ %%
InternalMessageIdentifier %
=& '
Guid( ,
., -
NewGuid- 4
(4 5
)5 6
;6 7
} 	
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\Common\DatabaseConst.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
RabbitMQ# +
.+ ,
Common, 2
{ 
public 

static 
class 
DatabaseConst %
{ 
public 
const 
string 
	SqlServer %
=& '
$str( Q
;Q R
public 
const 
string 
PostgresSql '
=( )
$str* Q
;Q R
public 
const 
string 
MySql !
=" #
$str$ D
;D E
public 
const 
string 
MySqlPomelo '
=( )
$str* L
;L M
public		 
const		 
string		 
FireBirdSql		 '
=		( )
$str		* K
;		K L
public

 
const

 
string

 
FireBirdSqlV

 (
=

) *
$str

+ U
;

U V
public 
const 
string 
SqlLite #
=$ %
$str& L
;L M
public 
const 
string 
Oracle "
=# $
$str% A
;A B
public 
const 
string 
Ibm 
=  !
$str" ;
;; <
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\Common\QueueActionsEnum.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
RabbitMQ# +
.+ ,
Common, 2
{ 
public 

enum 
QueueActionsEnum  
{ 
SetUp 
= 
$num 
, 
Sent 
, 
Handled 
, 
Error 
}		 
}

 �0
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\Data\Service\RabbitMqBackupLiteDbService.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
RabbitMQ# +
.+ ,
Data, 0
.0 1
Service1 8
{ 
public 

class '
RabbitMqBackupLiteDbService ,
:- .(
IRabbitMqBackupLiteDbService/ K
{ 
private 
LiteDb 
. 

Repository !
.! "
IRepository" -
<- .
RabbitBackup. :
>: ;*
RabbitMqBackupLiteDbRepository< Z
{[ \
get] `
;` a
setb e
;e f
}g h
private 
IJsonHelper 

JsonHelper &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public '
RabbitMqBackupLiteDbService *
(* +
LiteDb+ 1
.1 2

Repository2 <
.< =
IRepository= H
<H I
RabbitBackupI U
>U V*
rabbitMqBackupLiteDbRepositoryW u
,u v
IJsonHelper	w �

jsonHelper
� �
)
� �
{ 	*
RabbitMqBackupLiteDbRepository *
=+ ,*
rabbitMqBackupLiteDbRepository- K
;K L

JsonHelper 
= 

jsonHelper #
;# $
} 	
public 
	BsonValue 
CreateMessageBackup ,
(, -
Command- 4
command5 <
,< =
QueueActionsEnum> N
actionO U
=V W
QueueActionsEnumX h
.h i
Senti m
,m n
boolo s!
increaseRetryCounter	t �
=
� �
false
� �
,
� �
string
� �
additionalData
� �
=
� �
null
� �
,
� �
string
� �
	errorData
� �
=
� �
null
� �
)
� �
{ 	
try 
{ 
if 
( 
command 
? 
. %
InternalMessageIdentifier 6
==7 9
null: >
||? A
commandB I
.I J%
InternalMessageIdentifierJ c
.c d
IsNullOrEmptyGuidd u
(u v
)v w
)w x
{ 
throw 
new 
ArgumentException /
(/ 0
$"0 2
$str2 r
"r s
)s t
;t u
} 
var!! 
backUp!! 
=!! 
new!!  
RabbitBackup!!! -
{"" 
Id## 
=## 
Guid## 
.## 
NewGuid## %
(##% &
)##& '
,##' (%
InternalMessageIdentifier$$ -
=$$. /
command$$0 7
.$$7 8%
InternalMessageIdentifier$$8 Q
,$$Q R
Retries%% 
=%%  
increaseRetryCounter%% 2
?%%3 4
$num%%5 6
:%%7 8
$num%%9 :
,%%: ;
AdditionalData&& "
=&&# $
string&&% +
.&&+ ,
IsNullOrEmpty&&, 9
(&&9 :
additionalData&&: H
)&&H I
?&&J K
string&&L R
.&&R S
Empty&&S X
:&&Y Z
additionalData&&[ i
,&&i j
IsError'' 
='' 
false'' #
,''# $
MessageContent(( "
=((# $ 
GetSerializedContent((% 9
(((9 :
command((: A
)((A B
,((B C
MessageType)) 
=))  !
command))" )
.))) *
MessageType))* 5
,))5 6
TimeStampUTC**  
=**! "
command**# *
.*** +
	Timestamp**+ 4
.**4 5
ToUniversalTime**5 D
(**D E
)**E F
,**F G
Action++ 
=++ 
action++ #
.++# $
ToString++$ ,
(++, -
)++- .
,++. /
Error,, 
=,, 
string,, "
.,," #
IsNullOrEmpty,,# 0
(,,0 1
	errorData,,1 :
),,: ;
?,,< =
string,,> D
.,,D E
Empty,,E J
:,,K L
	errorData,,M V
}-- 
;-- 
var// 
result// 
=// *
RabbitMqBackupLiteDbRepository// ;
.//; <
Create//< B
(//B C
backUp//C I
)//I J
;//J K
return11 
result11 
;11 
}22 
catch33 
(33 
	Exception33 
ex33 
)33  
{44 
Devon4NetLogger55 
.55  
Error55  %
(55% &
$"55& (
$str55( H
{55H I
ex55I K
.55K L
Message55L S
}55S T
$str55T U
{55U V
ex55V X
.55X Y
InnerException55Y g
}55g h
"55h i
)55i j
;55j k
Devon4NetLogger66 
.66  
Error66  %
(66% &
ex66& (
)66( )
;66) *
throw77 
;77 
}88 
}99 	
private;; 
string;;  
GetSerializedContent;; +
(;;+ ,
Command;;, 3
command;;4 ;
);;; <
{<< 	
var== 
typedCommand== 
=== 
Convert== &
.==& '

ChangeType==' 1
(==1 2
command==2 9
,==9 :
command==; B
.==B C
GetType==C J
(==J K
)==K L
)==L M
;==M N
var>> 
serializedContent>> !
=>>" #

JsonHelper>>$ .
.>>. /
	Serialize>>/ 8
(>>8 9
typedCommand>>9 E
)>>E F
;>>F G
return?? 
serializedContent?? $
;??$ %
}@@ 	
}AA 
}BB �^
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\Data\Service\RabbitMqBackupService.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
RabbitMQ# +
.+ ,
Data, 0
.0 1
Service1 8
{ 
public 

class !
RabbitMqBackupService &
:' ("
IRabbitMqBackupService) ?
{ 
public 
bool 
UseExternalDatabase '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
private 
IJsonHelper 

JsonHelper &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
private 
string #
ContextConnectionString .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
private 
string 
ContextProvider &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public !
RabbitMqBackupService $
($ %!
RabbitMqBackupContext% :
context; B
,B C
IJsonHelperD O

jsonHelperP Z
)Z [
{ 	+
GetContextConnectionAndProvider +
(+ ,
context, 3
)3 4
;4 5
UseExternalDatabase 
=  !
context" )
!=* ,
null- 1
;1 2

JsonHelper 
= 

jsonHelper #
;# $
} 	
public !
RabbitMqBackupService $
($ %
IJsonHelper% 0

jsonHelper1 ;
); <
{ 	
UseExternalDatabase   
=    !
false  " '
;  ' (

JsonHelper!! 
=!! 

jsonHelper!! #
;!!# $
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
RabbitBackup$$ &
>$$& '
CreateMessageBackup$$( ;
($$; <
Command$$< C
command$$D K
,$$K L
QueueActionsEnum$$M ]
action$$^ d
=$$e f
QueueActionsEnum$$g w
.$$w x
Sent$$x |
,$$| }
bool	$$~ �"
increaseRetryCounter
$$� �
=
$$� �
false
$$� �
,
$$� �
string
$$� �
additionalData
$$� �
=
$$� �
null
$$� �
,
$$� �
string
$$� �
	errorData
$$� �
=
$$� �
null
$$� �
)
$$� �
{%% 	!
RabbitMqBackupContext&& !
ctx&&" %
=&&& '
null&&( ,
;&&, -
try(( 
{)) 
ctx** 
=** 
CreateContext** #
(**# $
)**$ %
;**% &
if,, 
(,, 
ctx,, 
==,, 
null,, 
),,  
{-- 
throw.. 
new.. 
ArgumentException.. /
(../ 0
$str..0 h
)..h i
;..i j
}// 
if11 
(11 
!11 
UseExternalDatabase11 (
)11( )
{22 
throw33 
new33 
ArgumentException33 /
(33/ 0
$str44 o
)44o p
;44p q
}55 
if77 
(77 
command77 
?77 
.77 %
InternalMessageIdentifier77 6
==777 9
null77: >
||77? A
command77B I
.77I J%
InternalMessageIdentifier77J c
.77c d
IsNullOrEmptyGuid77d u
(77u v
)77v w
)77w x
{88 
throw99 
new99 
ArgumentException99 /
(99/ 0
$"990 2
$str992 r
"99r s
)99s t
;99t u
}:: 
var<< 
backUp<< 
=<< 
new<<  
RabbitBackup<<! -
{== 
Id>> 
=>> 
Guid>> 
.>> 
NewGuid>> %
(>>% &
)>>& '
,>>' (%
InternalMessageIdentifier?? -
=??. /
command??0 7
.??7 8%
InternalMessageIdentifier??8 Q
,??Q R
Retries@@ 
=@@  
increaseRetryCounter@@ 2
?@@3 4
$num@@5 6
:@@7 8
$num@@9 :
,@@: ;
AdditionalDataAA "
=AA# $
stringAA% +
.AA+ ,
IsNullOrEmptyAA, 9
(AA9 :
additionalDataAA: H
)AAH I
?AAJ K
stringAAL R
.AAR S
EmptyAAS X
:AAY Z
additionalDataAA[ i
,AAi j
IsErrorBB 
=BB 
falseBB #
,BB# $
MessageContentCC "
=CC# $ 
GetSerializedContentCC& :
(CC: ;
commandCC; B
)CCB C
,CCC D
MessageTypeDD 
=DD  !
commandDD" )
.DD) *
MessageTypeDD* 5
,DD5 6
TimeStampUTCEE  
=EE! "
commandEE# *
.EE* +
	TimestampEE+ 4
.EE4 5
ToUniversalTimeEE5 D
(EED E
)EEE F
,EEF G
ActionFF 
=FF 
actionFF #
.FF# $
ToStringFF$ ,
(FF, -
)FF- .
,FF. /
ErrorGG 
=GG 
stringGG "
.GG" #
IsNullOrEmptyGG# 0
(GG0 1
	errorDataGG1 :
)GG: ;
?GG< =
stringGG> D
.GGD E
EmptyGGE J
:GGK L
	errorDataGGM V
}HH 
;HH 
varJJ 
resultJJ 
=JJ 
awaitJJ "
ctxJJ# &
.JJ& '
RabbitBackupJJ' 3
.JJ3 4
AddAsyncJJ4 <
(JJ< =
backUpJJ= C
)JJC D
.JJD E
ConfigureAwaitJJE S
(JJS T
falseJJT Y
)JJY Z
;JJZ [
awaitKK 
ctxKK 
.KK 
SaveChangesAsyncKK *
(KK* +
)KK+ ,
.KK, -
ConfigureAwaitKK- ;
(KK; <
falseKK< A
)KKA B
;KKB C
returnLL 
resultLL 
.LL 
EntityLL $
;LL$ %
}MM 
catchNN 
(NN 
	ExceptionNN 
exNN 
)NN  
{OO 
Devon4NetLoggerPP 
.PP  
ErrorPP  %
(PP% &
exPP& (
)PP( )
;PP) *
throwQQ 
;QQ 
}RR 
finallySS 
{TT 
ifUU 
(UU 
ctxUU 
!=UU 
nullUU 
)UU  
awaitUU! &
ctxUU' *
.UU* +
DisposeAsyncUU+ 7
(UU7 8
)UU8 9
.UU9 :
ConfigureAwaitUU: H
(UUH I
falseUUI N
)UUN O
;UUO P
}VV 
}WW 	
private`` !
RabbitMqBackupContext`` %
CreateContext``& 3
(``3 4
)``4 5
{aa 	
varbb 
errorMessagebb 
=bb 
$strbb |
;bb| }
ifcc 
(cc 
stringcc 
.cc 
IsNullOrEmptycc $
(cc$ %#
ContextConnectionStringcc% <
)cc< =
)cc= >
{dd 
Devon4NetLoggeree 
.ee  
Erroree  %
(ee% &
errorMessageee& 2
)ee2 3
;ee3 4
}ff 
varhh 
optionsBuilderhh 
=hh  
newhh! $#
DbContextOptionsBuilderhh% <
<hh< =!
RabbitMqBackupContexthh= R
>hhR S
(hhS T
)hhT U
;hhU V
switchjj 
(jj 
ContextProviderjj #
)jj# $
{kk 
casell 
DatabaseConstll "
.ll" #
	SqlServerll# ,
:ll, -
optionsBuildermm "
.mm" #
UseSqlServermm# /
(mm/ 0#
ContextConnectionStringmm0 G
)mmG H
;mmH I
breaknn 
;nn 
caseoo 
DatabaseConstoo "
.oo" #
PostgresSqloo# .
:oo. /
optionsBuilderpp "
.pp" #
	UseNpgsqlpp# ,
(pp, -#
ContextConnectionStringpp- D
)ppD E
;ppE F
breakqq 
;qq 
caserr 
DatabaseConstrr "
.rr" #
MySqlrr# (
:rr( )
casess 
DatabaseConstss "
.ss" #
MySqlPomeloss# .
:ss. /
optionsBuildertt "
.tt" #
UseMySqltt# +
(tt+ ,#
ContextConnectionStringtt, C
)ttC D
;ttD E
breakuu 
;uu 
casevv 
DatabaseConstvv "
.vv" #
FireBirdSqlvv# .
:vv. /
caseww 
DatabaseConstww "
.ww" #
FireBirdSqlVww# /
:ww/ 0
optionsBuilderxx "
.xx" #
UseFirebirdxx# .
(xx. /#
ContextConnectionStringxx/ F
)xxF G
;xxG H
breakyy 
;yy 
casezz 
DatabaseConstzz "
.zz" #
SqlLitezz# *
:zz* +
optionsBuilder{{ "
.{{" #
	UseSqlite{{# ,
({{, -#
ContextConnectionString{{- D
){{D E
;{{E F
break|| 
;|| 
default
�� 
:
�� 
Devon4NetLogger
�� #
.
��# $
Error
��$ )
(
��) *
errorMessage
��* 6
)
��6 7
;
��7 8
throw
�� 
new
�� 
ArgumentException
�� /
(
��/ 0
errorMessage
��0 <
)
��< =
;
��= >
}
�� 
return
�� 
new
�� #
RabbitMqBackupContext
�� ,
(
��, -
optionsBuilder
��- ;
.
��; <
Options
��< C
)
��C D
;
��D E
}
�� 	
private
�� 
string
�� "
GetSerializedContent
�� +
(
��+ ,
Command
��, 3
command
��4 ;
)
��; <
{
�� 	
var
�� 
typedCommand
�� 
=
�� 
Convert
�� &
.
��& '

ChangeType
��' 1
(
��1 2
command
��2 9
,
��9 :
command
��; B
.
��B C
GetType
��C J
(
��J K
)
��K L
)
��L M
;
��M N
var
�� 
serializedContent
�� !
=
��" #

JsonHelper
��$ .
.
��. /
	Serialize
��/ 8
(
��8 9
typedCommand
��9 E
)
��E F
;
��F G
return
�� 
serializedContent
�� $
;
��$ %
}
�� 	
private
�� 
void
�� -
GetContextConnectionAndProvider
�� 4
(
��4 5#
RabbitMqBackupContext
��5 J
context
��K R
)
��R S
{
�� 	
try
�� 
{
�� 
ContextProvider
�� 
=
��  !
context
��" )
.
��) *
Database
��* 2
.
��2 3
ProviderName
��3 ?
;
��? @%
ContextConnectionString
�� '
=
��( )
context
��* 1
.
��1 2
Database
��2 :
.
��: ;
GetDbConnection
��; J
(
��J K
)
��K L
.
��L M
ConnectionString
��M ]
;
��] ^
}
�� 
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
�� 
Devon4NetLogger
�� 
.
��  
Error
��  %
(
��% &
$str
��& _
)
��_ `
;
��` a
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
�� 
}
�� 	
}
�� 
}�� �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\Domain\Database\RabbitMqBackupContext.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
RabbitMQ# +
.+ ,
Domain, 2
.2 3
Database3 ;
{ 
public 

class !
RabbitMqBackupContext &
:' (
	DbContext) 2
{ 
public !
RabbitMqBackupContext $
($ %
)% &
{		 	
}

 	
public !
RabbitMqBackupContext $
($ %
DbContextOptions% 5
<5 6!
RabbitMqBackupContext6 K
>K L
optionsM T
)T U
: 
base 
( 
options 
) 
{ 	
} 	
public 
virtual 
DbSet 
< 
RabbitBackup )
>) *
RabbitBackup+ 7
{8 9
get: =
;= >
set? B
;B C
}D E
	protected 
override 
void 
OnModelCreating  /
(/ 0
ModelBuilder0 <
modelBuilder= I
)I J
{ 	
modelBuilder 
. 
Entity 
<  
RabbitBackup  ,
>, -
(- .
entity. 4
=>5 7
{ 
entity 
. 
HasKey 
( 
e 
=>  "
e# $
.$ %
Id% '
)' (
;( )
entity 
. 
Property 
(  
e  !
=>" $
e% &
.& '
MessageType' 2
)2 3
.3 4

IsRequired4 >
(> ?
)? @
;@ A
} 
) 
; 
} 	
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\Domain\Database\RabbitMqBackupLiteDbContext.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
RabbitMQ# +
.+ ,
Domain, 2
.2 3
Database3 ;
{ 
public		 

class		 '
RabbitMqBackupLiteDbContext		 ,
:		- .
ILiteDbContext		/ =
{

 
public 
LiteDatabase 
Database $
{% &
get' *
;* +
}, -
public '
RabbitMqBackupLiteDbContext *
(* +
IOptions+ 3
<3 4
RabbitMqOptions4 C
>C D
optionsE L
)L M
{ 	
if 
( 
options 
? 
. 
Value 
? 
.  
Backup  &
==' )
null* .
||/ 1
!2 3
options3 :
.: ;
Value; @
.@ A
BackupA G
.G H
UseLocalBackupH V
)V W
{ 
return 
; 
} 
var 
path 
= 
FileOperations %
.% &
GetFileFullPath& 5
(5 6
options6 =
.= >
Value> C
.C D
BackupD J
.J K
DatabaseNameK W
)W X
;X Y
var 

connection 
= 
string #
.# $
IsNullOrEmpty$ 1
(1 2
path2 6
)6 7
?8 9
$str: |
:} ~
$"	 �
$str
� �
{
� �
path
� �
}
� �
$str
� �
"
� �
;
� �
Database 
= 
new 
LiteDatabase '
(' (

connection( 2
)2 3
;3 4
} 	
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\Domain\Entities\RabbitBackup.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
RabbitMQ# +
.+ ,
Domain, 2
.2 3
Entities3 ;
{ 
public 

partial 
class 
RabbitBackup %
{ 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public 
Guid %
InternalMessageIdentifier -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public		 
string		 
MessageType		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
DateTime

 
TimeStampUTC

 $
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
string 
MessageContent $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
AdditionalData $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 

LogContent  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
IsError 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Error 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
Retries 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Action 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\Domain\ServiceInterfaces\IRabbitMqBackupLiteDbService.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
RabbitMQ# +
.+ ,
Domain, 2
.2 3
ServiceInterfaces3 D
{ 
public 

	interface (
IRabbitMqBackupLiteDbService 1
{		 
	BsonValue

 
CreateMessageBackup

 %
(

% &
Command

& -
command

. 5
,

5 6
QueueActionsEnum

7 G
action

H N
=

O P
QueueActionsEnum

Q a
.

a b
Sent

b f
,

f g
bool

h l!
increaseRetryCounter	

m �
=


� �
false


� �
,


� �
string


� �
additionalData
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
� �
string


� �
	errorData
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
)


� �
;


� �
} 
} �

�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\Domain\ServiceInterfaces\IRabbitMqBackupService.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
RabbitMQ# +
.+ ,
Domain, 2
.2 3
ServiceInterfaces3 D
{ 
public 

	interface "
IRabbitMqBackupService +
{		 
bool

 
UseExternalDatabase

  
{

! "
get

# &
;

& '
}

( )
Task 
< 
RabbitBackup 
> 
CreateMessageBackup .
(. /
Command/ 6
command7 >
,> ?
QueueActionsEnum@ P
actionQ W
=X Y
QueueActionsEnumZ j
.j k
Sentk o
,o p
boolq u!
increaseRetryCounter	v �
=
� �
false
� �
,
� �
string
� �
additionalData
� �
=
� �
null
� �
,
� �
string
� �
	errorData
� �
=
� �
null
� �
)
� �
;
� �
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\Events\Message.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
RabbitMQ# +
.+ ,
Events, 2
{ 
public 

abstract 
class 
Message !
{ 
public 
string 
MessageType !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
Guid %
InternalMessageIdentifier -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
	protected

 
Message

 
(

 
)

 
{ 	
MessageType 
= 
GetType !
(! "
)" #
.# $
Name$ (
;( )
} 	
} 
} ��
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\Handlers\RabbitMqHandler.cs
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
" #
RabbitMQ

# +
.

+ ,
Handlers

, 4
{ 
public 

abstract 
class 
RabbitMqHandler )
<) *
T* +
>+ ,
where- 2
T3 4
:5 6
Command7 >
{ 
private 
IBus 

ServiceBus 
{  !
get" %
;% &
set' *
;* +
}, -
private "
IRabbitMqBackupService &!
RabbitMqBackupService' <
{= >
get? B
;B C
setD G
;G H
}I J
private (
IRabbitMqBackupLiteDbService ,'
RabbitMqBackupLiteDbService- H
{I J
getK N
;N O
setP S
;S T
}U V
private 
IServiceCollection "
Services# +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
abstract 
Task 
< 
bool !
>! "
HandleCommand# 0
(0 1
T1 2
command3 :
): ;
;; <
	protected 
RabbitMqHandler !
(! "
IServiceCollection" 4
services5 =
,= >
IBus? C

serviceBusD N
,N O
boolP T
subscribeToChannelU g
=h i
falsej o
)o p
{ 	

BasicSetup 
( 
services 
,  

serviceBus! +
,+ ,
subscribeToChannel- ?
)? @
;@ A
} 	
	protected 
RabbitMqHandler !
(! "
IServiceCollection" 4
services5 =
,= >
IBus? C

serviceBusD N
,N O"
IRabbitMqBackupServiceP f!
rabbitMqBackupServiceg |
,| }
bool	~ � 
subscribeToChannel
� �
=
� �
false
� �
)
� �
{ 	

BasicSetup 
( 
services 
,  

serviceBus! +
,+ ,
subscribeToChannel- ?
,? @!
rabbitMqBackupServiceA V
)V W
;W X
} 	
	protected 
RabbitMqHandler !
(! "
IServiceCollection" 4
services5 =
,= >
IBus? C

serviceBusD N
,N O(
IRabbitMqBackupLiteDbServiceP l(
rabbitMqBackupLiteDbService	m �
,
� �
bool
� � 
subscribeToChannel
� �
=
� �
false
� �
)
� �
{   	

BasicSetup!! 
(!! 
services!! 
,!!  

serviceBus!!! +
,!!+ ,
subscribeToChannel!!- ?
,!!? @
null!!A E
,!!E F'
rabbitMqBackupLiteDbService!!G b
)!!b c
;!!c d
}"" 	
	protected$$ 
RabbitMqHandler$$ !
($$! "
IServiceCollection$$" 4
services$$5 =
,$$= >
IBus$$? C

serviceBus$$D N
,$$N O"
IRabbitMqBackupService$$P f!
rabbitMqBackupService$$g |
,$$| })
IRabbitMqBackupLiteDbService	$$~ �)
rabbitMqBackupLiteDbService
$$� �
,
$$� �
bool
$$� � 
subscribeToChannel
$$� �
=
$$� �
false
$$� �
)
$$� �
{%% 	

BasicSetup&& 
(&& 
services&& 
,&&  

serviceBus&&! +
,&&+ ,
subscribeToChannel&&- ?
,&&? @!
rabbitMqBackupService&&A V
,&&V W'
rabbitMqBackupLiteDbService&&X s
)&&s t
;&&t u
}'' 	
public)) 
async)) 
Task)) 
<)) 
bool)) 
>)) 
Publish))  '
())' (
T))( )
command))* 1
)))1 2
{** 	
var++ 
status++ 
=++ 
QueueActionsEnum++ )
.++) *
SetUp++* /
;++/ 0
try-- 
{.. 
status// 
=// 
QueueActionsEnum// )
.//) *
SetUp//* /
;/// 0
await11 

ServiceBus11  
.11  !
PubSub11! '
.11' (
PublishAsync11( 4
(114 5
command115 <
)11< =
.11= >
ContinueWith11> J
(11J K
task11K O
=>11P R
{11S T
status11U [
=11\ ]$
PublishCommandTaskResult11^ v
(11v w
command11w ~
,11~ 
task
11� �
)
11� �
;
11� �
}
11� �
)
11� �
.
11� �
ConfigureAwait
11� �
(
11� �
false
11� �
)
11� �
;
11� �
await22 
BackUpMessage22 #
(22# $
command22$ +
,22+ ,
status22- 3
)223 4
.224 5
ConfigureAwait225 C
(22C D
false22D I
)22I J
;22J K
}33 
catch44 
(44 
	Exception44 
ex44 
)44  
{55 
await66 
BackUpMessage66 #
(66# $
command66$ +
,66+ ,
QueueActionsEnum66- =
.66= >
Error66> C
,66C D
false66E J
,66J K
string66L R
.66R S
Empty66S X
,66X Y
$"66Z \
{66\ ]
ex66] _
.66_ `
Message66` g
}66g h
$str66h k
{66k l
ex66l n
.66n o
InnerException66o }
}66} ~
"66~ 
)	66 �
.
66� �
ConfigureAwait
66� �
(
66� �
false
66� �
)
66� �
;
66� �
Devon4NetLogger77 
.77  
Error77  %
(77% &
$"77& (
$str77( B
{77B C
ex77C E
.77E F
Message77F M
}77M N
$str77N O
{77O P
ex77P R
.77R S
InnerException77S a
}77a b
"77b c
)77c d
;77d e
Devon4NetLogger88 
.88  
Error88  %
(88% &
ex88& (
)88( )
;88) *
}99 
return;; 
status;; 
==;; 
QueueActionsEnum;; -
.;;- .
Sent;;. 2
;;;2 3
}<< 	
public>> 
T>> 
GetInstance>> 
<>> 
T>> 
>>> 
(>>  
)>>  !
{?? 	
var@@ 
sp@@ 
=@@ 
Services@@ 
.@@  
BuildServiceProvider@@ 2
(@@2 3
)@@3 4
;@@4 5
returnAA 
spAA 
.AA 

GetServiceAA  
<AA  !
TAA! "
>AA" #
(AA# $
)AA$ %
;AA% &
}BB 	
privateDD 
asyncDD 
TaskDD 
<DD 
boolDD 
>DD  "
BackupAndHandleCommandDD! 7
(DD7 8
TDD8 9
messageDD: A
)DDA B
{EE 	
varFF 
statusFF 
=FF 
QueueActionsEnumFF )
.FF) *
SetUpFF* /
;FF/ 0
varGG 
errorMessageGG 
=GG 
stringGG %
.GG% &
EmptyGG& +
;GG+ ,
tryHH 
{II 
awaitJJ 
HandleCommandJJ #
(JJ# $
messageJJ$ +
)JJ+ ,
.JJ, -
ContinueWithJJ- 9
(JJ9 :
taskJJ: >
=>JJ? A
{JJB C
statusJJD J
=JJK L#
HandleCommandTaskResultJJM d
(JJd e
messageJJe l
,JJl m
taskJJn r
,JJr s
outJJt w
errorMessage	JJx �
)
JJ� �
;
JJ� �
}
JJ� �
)
JJ� �
.
JJ� �
ConfigureAwait
JJ� �
(
JJ� �
false
JJ� �
)
JJ� �
;
JJ� �
awaitKK 
BackUpMessageKK #
(KK# $
messageKK$ +
,KK+ ,
statusKK- 3
,KK3 4
falseKK4 9
,KK9 :
stringKK: @
.KK@ A
EmptyKKA F
,KKF G
errorMessageKKH T
)KKT U
.KKU V
ConfigureAwaitKKV d
(KKd e
falseKKe j
)KKj k
;KKk l
}LL 
catchMM 
(MM 
	ExceptionMM 
exMM 
)MM  
{NN 
awaitOO 
BackUpMessageOO #
(OO# $
messageOO$ +
,OO+ ,
QueueActionsEnumOO- =
.OO= >
ErrorOO> C
,OOC D
falseOOE J
,OOJ K
stringOOL R
.OOR S
EmptyOOS X
,OOX Y
$"OOZ \
{OO\ ]
exOO] _
.OO_ `
MessageOO` g
}OOg h
$strOOh k
{OOk l
exOOl n
.OOn o
InnerExceptionOOo }
}OO} ~
"OO~ 
)	OO �
.
OO� �
ConfigureAwait
OO� �
(
OO� �
false
OO� �
)
OO� �
;
OO� �
Devon4NetLoggerPP 
.PP  
ErrorPP  %
(PP% &
$"PP& (
$strPP( @
{PP@ A
exPPA C
.PPC D
MessagePPD K
}PPK L
$strPPL M
{PPM N
exPPN P
.PPP Q
InnerExceptionPPQ _
}PP_ `
"PP` a
)PPa b
;PPb c
Devon4NetLoggerQQ 
.QQ  
ErrorQQ  %
(QQ% &
exQQ& (
)QQ( )
;QQ) *
returnRR 
falseRR 
;RR 
}SS 
returnUU 
statusUU 
==UU 
QueueActionsEnumUU -
.UU- .
HandledUU. 5
;UU5 6
}VV 	
privateXX 
staticXX 
QueueActionsEnumXX '#
HandleCommandTaskResultXX( ?
(XX? @
TXX@ A
messageXXB I
,XXI J
TaskXXK O
<XXO P
boolXXP T
>XXT U
taskXXV Z
,XXZ [
outXX\ _
stringXX` f
errorMessageXXg s
)XXs t
{YY 	
varZZ 
statusZZ 
=ZZ 
QueueActionsEnumZZ )
.ZZ) *
SetUpZZ* /
;ZZ/ 0
errorMessage[[ 
=[[ 
string[[ !
.[[! "
Empty[[" '
;[[' (
if]] 
(]] 
task]] 
.]] 
IsCompleted]]  
)]]  !
{^^ 
status__ 
=__ 
QueueActionsEnum__ )
.__) *
Handled__* 1
;__1 2
Devon4NetLogger`` 
.``  
Information``  +
(``+ ,
$"``, .
$str``. 6
{``6 7
message``7 >
.``> ?
MessageType``? J
}``J K
$str``K ]
{``] ^
message``^ e
.``e f%
InternalMessageIdentifier``f 
}	`` �
$str
``� �
"
``� �
)
``� �
;
``� �
}aa 
ifcc 
(cc 
!cc 
taskcc 
.cc 
	IsFaultedcc 
)cc  
returncc! '
statuscc( .
;cc. /
statusee 
=ee 
QueueActionsEnumee %
.ee% &
Erroree& +
;ee+ ,
errorMessageff 
=ff 
$"ff 
$strff %
{ff% &
messageff& -
.ff- .
MessageTypeff. 9
}ff9 :
$strff: L
{ffL M
messageffM T
.ffT U%
InternalMessageIdentifierffU n
}ffn o
$str	ffo �
{
ff� �
task
ff� �
.
ff� �
	Exception
ff� �
?
ff� �
.
ff� �
Message
ff� �
}
ff� �
$str
ff� �
{
ff� �
task
ff� �
.
ff� �
	Exception
ff� �
?
ff� �
.
ff� �
InnerExceptions
ff� �
}
ff� �
"
ff� �
;
ff� �
Devon4NetLoggergg 
.gg 
Errorgg !
(gg! "
errorMessagegg" .
)gg. /
;gg/ 0
Devon4NetLoggerhh 
.hh 
Errorhh !
(hh! "
taskhh" &
.hh& '
	Exceptionhh' 0
)hh0 1
;hh1 2
returnjj 
statusjj 
;jj 
}kk 	
privatemm 
staticmm 
QueueActionsEnummm '$
PublishCommandTaskResultmm( @
(mm@ A
TmmA B
commandmmC J
,mmJ K
TaskmmL P
taskmmQ U
)mmU V
{nn 	
varoo 
statusoo 
=oo 
QueueActionsEnumoo )
.oo) *
SetUpoo* /
;oo/ 0
ifqq 
(qq 
taskqq 
.qq 
IsCompletedqq  
)qq  !
{rr 
statusss 
=ss 
QueueActionsEnumss )
.ss) *
Sentss* .
;ss. /
Devon4NetLoggertt 
.tt  
Informationtt  +
(tt+ ,
$"tt, .
$strtt. 6
{tt6 7
commandtt7 >
.tt> ?
MessageTypett? J
}ttJ K
$strttK ]
{tt] ^
commandtt^ e
.tte f%
InternalMessageIdentifierttf 
}	tt �
$str
tt� �
"
tt� �
)
tt� �
;
tt� �
}uu 
ifww 
(ww 
!ww 
taskww 
.ww 
	IsFaultedww 
)ww  
returnww! '
statusww( .
;ww. /
statusyy 
=yy 
QueueActionsEnumyy %
.yy% &
Erroryy& +
;yy+ ,
Devon4NetLoggerzz 
.zz 
Errorzz !
(zz! "
$"zz" $
$strzz$ ,
{zz, -
commandzz- 4
.zz4 5
MessageTypezz5 @
}zz@ A
$strzzA S
{zzS T
commandzzT [
.zz[ \%
InternalMessageIdentifierzz\ u
}zzu v
$str	zzv �
"
zz� �
)
zz� �
;
zz� �
Devon4NetLogger{{ 
.{{ 
Error{{ !
({{! "
task{{" &
.{{& '
	Exception{{' 0
){{0 1
;{{1 2
return}} 
status}} 
;}} 
}~~ 	
private
�� 
void
�� 

BasicSetup
�� 
(
��   
IServiceCollection
��  2
services
��3 ;
,
��; <
IBus
��= A

serviceBus
��B L
,
��L M
bool
��N R 
subscribeToChannel
��S e
,
��e f$
IRabbitMqBackupService
��g }$
rabbitMqBackupService��~ �
=��� �
null��� �
,��� �,
IRabbitMqBackupLiteDbService��� �+
rabbitMqBackupLiteDbService��� �
=��� �
null��� �
)��� �
{
�� 	
if
�� 
(
�� 

serviceBus
�� 
==
�� 
null
�� "
)
��" #
{
�� 
Devon4NetLogger
�� 
.
��  
Error
��  %
(
��% &
$str
��& h
)
��h i
;
��i j
return
�� 
;
�� 
}
�� 

ServiceBus
�� 
=
�� 

serviceBus
�� #
;
��# $
Services
�� 
=
�� 
services
�� 
;
��  #
RabbitMqBackupService
�� !
=
��" ##
rabbitMqBackupService
��$ 9
;
��9 :)
RabbitMqBackupLiteDbService
�� '
=
��( ))
rabbitMqBackupLiteDbService
��* E
;
��E F
if
�� 
(
��  
subscribeToChannel
�� "
)
��" #
{
�� 

ServiceBus
�� 
.
�� 
PubSub
�� !
.
��! "
SubscribeAsync
��" 0
<
��0 1
T
��1 2
>
��2 3
(
��3 4
typeof
��4 :
(
��: ;
T
��; <
)
��< =
.
��= >
Name
��> B
,
��B C$
BackupAndHandleCommand
��D Z
)
��Z [
;
��[ \
}
�� 
}
�� 	
private
�� 
async
�� 
Task
�� 
BackUpMessage
�� (
(
��( )
T
��) *
command
��+ 2
,
��2 3
QueueActionsEnum
��4 D
queueAction
��E P
=
��Q R
QueueActionsEnum
��S c
.
��c d
Sent
��d h
,
��h i
bool
��j n#
increaseRetryCounter��o �
=��� �
false��� �
,��� �
string��� �
additionalData��� �
=��� �
null��� �
,��� �
string��� �
	errorData��� �
=��� �
null��� �
)��� �
{
�� 	
try
�� 
{
�� )
RabbitMqBackupLiteDbService
�� +
?
��+ ,
.
��, -!
CreateMessageBackup
��- @
(
��@ A
command
��A H
,
��H I
queueAction
��J U
,
��U V"
increaseRetryCounter
��W k
,
��k l
additionalData
��m {
,
��{ |
	errorData��} �
)��� �
;��� �
if
�� 
(
�� #
RabbitMqBackupService
�� )
!=
��* ,
null
��- 1
&&
��2 4#
RabbitMqBackupService
��5 J
.
��J K!
UseExternalDatabase
��K ^
)
��^ _
{
�� 
await
�� #
RabbitMqBackupService
�� /
.
��/ 0!
CreateMessageBackup
��0 C
(
��C D
command
��D K
,
��K L
queueAction
��M X
,
��X Y"
increaseRetryCounter
��Z n
,
��n o
additionalData
��p ~
,
��~ 
	errorData��� �
)��� �
.��� �
ConfigureAwait��� �
(��� �
false��� �
)��� �
;��� �
}
�� 
}
�� 
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
��) *
throw
�� 
;
�� 
}
�� 
}
�� 	
}
�� 
}�� �q
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\RabbitMqConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Configuration' 4
{ 
public 

static 
class !
RabbitMqConfiguration -
{ 
public 
static 
void 
SetupRabbitMq (
(( )
this) -
IServiceCollection. @
servicesA I
,I J
refK N
IConfigurationO ]
configuration^ k
)k l
{ 	
var 
rabbitMqOptions 
=  !
services" *
.* +
GetTypedOptions+ :
<: ;
RabbitMqOptions; J
>J K
(K L
configurationL Y
,Y Z
$str[ e
)e f
;f g
if 
( 
rabbitMqOptions 
==  "
null# '
||( *
!+ ,
rabbitMqOptions, ;
.; <
EnableRabbitMq< J
||K M
rabbitMqOptionsN ]
.] ^
Hosts^ c
==d f
nullg k
||l n
!o p
rabbitMqOptionsp 
.	 �
Hosts
� �
.
� �
Any
� �
(
� �
)
� �
)
� �
return
� �
;
� �
if 
( 
rabbitMqOptions 
.  
Hosts  %
==& (
null) -
||. 0
!1 2
rabbitMqOptions2 A
.A B
HostsB G
.G H
AnyH K
(K L
)L M
)M N
{ 
return 
; 
}   
try"" 
{## 7
+ConfigureRabbitMqGenericDependencyInjection$$ ;
($$; <
services$$< D
)$$D E
;$$E F,
 SetupRabbitMqBackupLocalDatabase%% 0
(%%0 1
services%%1 9
,%%9 :
rabbitMqOptions%%; J
)%%J K
;%%K L
var'' 
prefetchCount'' !
=''" #
(''$ %
ushort''% +
)''+ ,
('', -
rabbitMqOptions''- <
.''< =
PrefetchCount''= J
!=''K M
null''N R
?''S T
(''U V
ushort''V \
)''\ ]
rabbitMqOptions''] l
.''l m
PrefetchCount''m z
.''z {
Value	''{ �
:
''� �
$num
''� �
)
''� �
;
''� �
var(( 
timeOut(( 
=(( 
rabbitMqOptions(( -
.((- .
Timeout((. 5
!=((6 8
null((9 =
?((> ?
TimeSpan((@ H
.((H I
FromSeconds((I T
(((T U
rabbitMqOptions((U d
.((d e
Timeout((e l
.((l m
Value((m r
)((r s
:((t u
default((v }
;((} ~
var)) 
requestedHeartbeat)) &
=))' (
())) *
rabbitMqOptions))* 9
.))9 :
RequestedHeartbeat)): L
!=))M O
null))P T
?))U V
TimeSpan))W _
.))_ `
FromSeconds))` k
())k l
rabbitMqOptions))l {
.)){ |
RequestedHeartbeat	))| �
.
))� �
Value
))� �
)
))� �
:
))� �
default
))� �
)
))� �
;
))� �
var++ 

connection++ 
=++  
new++! $#
ConnectionConfiguration++% <
{,, 
Hosts-- 
=-- 
rabbitMqOptions-- +
.--+ ,
Hosts--, 1
.--1 2
Select--2 8
(--8 9 
GetHostConfiguration--9 M
)--M N
.--N O
ToList--O U
(--U V
)--V W
,--W X
PersistentMessages.. &
=..' (
rabbitMqOptions..) 8
...8 9
PersistentMessages..9 K
,..K L
PublisherConfirms// %
=//& '
rabbitMqOptions//( 7
.//7 8
PublisherConfirms//8 I
,//I J
Product00 
=00 
rabbitMqOptions00 -
.00- .
Product00. 5
,005 6
VirtualHost11 
=11  !
string11" (
.11( )
IsNullOrEmpty11) 6
(116 7
rabbitMqOptions117 F
.11F G
VirtualHost11G R
)11R S
?11T U
$str11V Y
:11Z [
rabbitMqOptions11\ k
.11k l
VirtualHost11l w
,11w x
Platform22 
=22 
rabbitMqOptions22 .
.22. /
Platform22/ 7
,227 8
PrefetchCount33 !
=33" #
prefetchCount33$ 1
>332 3
$num334 5
?336 7
prefetchCount338 E
:33F G
(33H I
ushort33I O
)33O P
$num33P R
,33R S
Timeout44 
=44 
timeOut44 %
,44% &
UserName55 
=55 
rabbitMqOptions55 .
.55. /
UserName55/ 7
,557 8
Password66 
=66 
rabbitMqOptions66 .
.66. /
Password66/ 7
,667 8
RequestedHeartbeat77 &
=77' (
requestedHeartbeat77) ;
,77; <
}88 
;88 
services:: 
.:: 
AddSingleton:: %
(::% &
RabbitHutch::& 1
.::1 2
	CreateBus::2 ;
(::; <

connection::< F
,::F G
serviceRegister::H W
=>::X Z
serviceRegister::[ j
.::j k
Register::k s
(::s t
serviceProvider	::t �
=>
::� �
Log
::� �
.
::� �
Logger
::� �
)
::� �
)
::� �
)
::� �
;
::� �
};; 
catch<< 
(<< !
ArgumentNullException<< (
ex<<) +
)<<+ ,
{<<- .
Devon4NetLogger<</ >
.<<> ?
Error<<? D
(<<D E
ex<<E G
)<<G H
;<<H I
}<<J K
catch== 
(== 
EasyNetQException== $
ex==% '
)==' (
{==) *
Devon4NetLogger==+ :
.==: ;
Error==; @
(==@ A
ex==A C
)==C D
;==D E
}==F G
catch>> 
(>> 
ArgumentException>> $
ex>>% '
)>>' (
{>>) *
Devon4NetLogger>>+ :
.>>: ;
Error>>; @
(>>@ A
ex>>A C
)>>C D
;>>D E
}>>F G
catch?? 
(??  
PathTooLongException?? '
ex??( *
)??+ ,
{??- .
Devon4NetLogger??/ >
.??> ?
Error??? D
(??D E
ex??E G
)??G H
;??H I
}??J K
}@@ 	
publicBB 
staticBB 
voidBB 
AddRabbitMqHandlerBB -
<BB- .
TBB. /
>BB/ 0
(BB0 1
thisBB1 5
IServiceCollectionBB6 H
servicesBBI Q
,BBQ R
boolBBS W
subscribeToQueueBBX h
)BBh i
whereBBj o
TBBp q
:BBr s
classBBt y
{CC 	
varDD 

memberInfoDD 
=DD 
typeofDD #
(DD# $
TDD$ %
)DD% &
.DD& '
BaseTypeDD' /
;DD/ 0
ifEE 
(EE 

memberInfoEE 
!=EE 
nullEE "
&&EE# %
!EE& '

memberInfoEE' 1
.EE1 2
NameEE2 6
.EE6 7
ContainsEE7 ?
(EE? @
$strEE@ Q
)EEQ R
)EER S
{FF 
throwGG 
newGG 
ArgumentExceptionGG +
(GG+ ,
$"GG, .
$strGG. @
{GG@ A
typeofGGA G
(GGG H
TGGH I
)GGI J
.GGJ K
FullNameGGK S
}GGS T
$strGGT z
"GGz {
)GG{ |
;GG| }
}HH 
usingJJ 
varJJ 
spJJ 
=JJ 
servicesJJ #
.JJ# $ 
BuildServiceProviderJJ$ 8
(JJ8 9
)JJ9 :
;JJ: ;
varKK 
busKK 
=KK 
spKK 
.KK 

GetServiceKK #
<KK# $
IBusKK$ (
>KK( )
(KK) *
)KK* +
;KK+ ,
varLL 
repoLiteLL 
=LL 
spLL 
.LL 

GetServiceLL (
<LL( )(
IRabbitMqBackupLiteDbServiceLL) E
>LLE F
(LLF G
)LLG H
;LLH I
varMM 
repoMM 
=MM 
spMM 
.MM 

GetServiceMM $
<MM$ %"
IRabbitMqBackupServiceMM% ;
>MM; <
(MM< =
)MM= >
;MM> ?
varOO 
objOO 
=OO 
(OO 
TOO 
)OO 
	ActivatorOO "
.OO" #
CreateInstanceOO# 1
(OO1 2
typeofOO2 8
(OO8 9
TOO9 :
)OO: ;
,OO; <
servicesOO= E
,OOE F
busOOG J
,OOJ K
repoOOL P
,OOP Q
repoLiteOOR Z
,OOZ [
subscribeToQueueOO\ l
)OOl m
;OOm n
servicesQQ 
.QQ 
AddSingletonQQ !
(QQ! "
objQQ" %
)QQ% &
;QQ& '
}RR 	
privateTT 
staticTT 
voidTT 7
+ConfigureRabbitMqGenericDependencyInjectionTT G
(TTG H
IServiceCollectionTTH Z
servicesTT[ c
)TTc d
{UU 	
servicesVV 
.VV 
AddTransientVV !
(VV! "
typeofVV" (
(VV( )
IRepositoryVV) 4
<VV4 5
RabbitBackupVV5 A
>VVA B
)VVB C
,VVC D
typeofVVE K
(VVK L

RepositoryVVL V
<VVV W
RabbitBackupVVW c
>VVc d
)VVd e
)VVe f
;VVf g
servicesWW 
.WW 
AddTransientWW !
(WW! "
typeofWW" (
(WW( )"
IRabbitMqBackupServiceWW) ?
)WW? @
,WW@ A
typeofWWB H
(WWH I!
RabbitMqBackupServiceWWI ^
)WW^ _
)WW_ `
;WW` a
}XX 	
privateZZ 
staticZZ 
voidZZ ,
 SetupRabbitMqBackupLocalDatabaseZZ <
(ZZ< =
IServiceCollectionZZ= O
servicesZZP X
,ZZX Y
RabbitMqOptionsZZZ i
rabbitMqOptionsZZj y
)ZZy z
{[[ 	
Devon4NetLogger\\ 
.\\ 
Information\\ '
(\\' (
$str\\( {
)\\{ |
;\\| }
if]] 
(]] 
rabbitMqOptions]] 
.]]  
Backup]]  &
==]]' )
null]]* .
||]]/ 1
!]]2 3
rabbitMqOptions]]3 B
.]]B C
Backup]]C I
.]]I J
UseLocalBackup]]J X
)]]X Y
return]]Z `
;]]` a
Devon4NetLogger^^ 
.^^ 
Information^^ '
(^^' (
$str^^( j
)^^j k
;^^k l
services`` 
.`` 
AddSingleton`` !
<``! "
ILiteDbContext``" 0
,``0 1'
RabbitMqBackupLiteDbContext``2 M
>``M N
(``N O
)``O P
;``P Q
servicesaa 
.aa 
AddTransientaa !
(aa! "
typeofaa" (
(aa( )(
IRabbitMqBackupLiteDbServiceaa) E
)aaE F
,aaF G
typeofaaH N
(aaN O'
RabbitMqBackupLiteDbServiceaaO j
)aaj k
)aak l
;aal m
}bb 	
privatedd 
staticdd 
HostConfigurationdd ( 
GetHostConfigurationdd) =
(dd= >
HostDefinitiondd> L
hostddM Q
)ddQ R
{ee 	
varff 
hostConfigurationff !
=ff" #
newff$ '
HostConfigurationff( 9
{ff: ;
Hostff< @
=ffA B
hostffC G
.ffG H
HostffH L
}ffM N
;ffN O
vargg 
portgg 
=gg 
(gg 
ushortgg 
)gg 
(gg  !
hostgg! %
.gg% &
Portgg& *
!=gg+ -
nullgg. 2
?gg3 4
(gg5 6
ushortgg6 <
)gg< =
hostgg> B
.ggB C
PortggC G
.ggG H
ValueggH M
:ggN O
$numggP Q
)ggQ R
;ggR S
ifii 
(ii 
portii 
>ii 
$numii 
)ii 
hostConfigurationii +
.ii+ ,
Portii, 0
=ii1 2
portii3 7
;ii7 8
Enumjj 
.jj 
TryParsejj 
(jj 
hostjj 
.jj 
SslPolicyErrorsjj .
,jj. /
outjj0 3
SslPolicyErrorsjj4 C
sslPolicyErrorsjjD S
)jjS T
;jjT U
ifll 
(ll 
!ll 
hostll 
.ll 
Sslll 
)ll 
returnll !
hostConfigurationll" 3
;ll3 4
hostConfigurationnn 
.nn 
Sslnn !
.nn! "
CertPassphrasenn" 0
=nn1 2
hostnn3 7
.nn7 8
SslCertPassPhrasenn8 I
;nnI J
hostConfigurationoo 
.oo 
Ssloo !
.oo! ""
AcceptablePolicyErrorsoo" 8
=oo9 :
sslPolicyErrorsoo; J
;ooJ K
hostConfigurationpp 
.pp 
Sslpp !
.pp! "

ServerNamepp" ,
=pp- .
hostpp/ 3
.pp3 4
SslServerNamepp4 A
;ppA B
hostConfigurationqq 
.qq 
Sslqq !
.qq! "
CertPathqq" *
=qq+ ,
FileOperationsqq- ;
.qq; <
GetFileFullPathqq< K
(qqK L
hostqqL P
.qqP Q
SslCertPathqqQ \
)qq\ ]
;qq] ^
hostConfigurationrr 
.rr 
Sslrr !
.rr! "
Enabledrr" )
=rr* +
hostrr, 0
.rr0 1
Sslrr1 4
;rr4 5
returntt 
hostConfigurationtt $
;tt$ %
}uu 	
}vv 
}ww �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\Samples\Commads\UserSampleCommand.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
RabbitMQ# +
.+ ,
Samples, 3
.3 4
Commads4 ;
{ 
public 

class 
UserSampleCommand "
:# $
Command% ,
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
SurName 
{ 
get  #
;# $
set% (
;( )
}* +
}		 
}

 �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.RabbitMQ\Samples\Handllers\UserSampleRabbitMqHandler.cs
	namespace		 	
	Devon4Net		
 
.		 
Infrastructure		 "
.		" #
RabbitMQ		# +
.		+ ,
Samples		, 3
.		3 4
	Handllers		4 =
{

 
public 

class %
UserSampleRabbitMqHandler *
:+ ,
RabbitMqHandler- <
<< =
UserSampleCommand= N
>N O
{ 
public %
UserSampleRabbitMqHandler (
(( )
IServiceCollection) ;
services< D
,D E
IBusF J

serviceBusK U
,U V
boolW [
subscribeToChannel\ n
=o p
falseq v
)v w
:x y
basez ~
(~ 
services	 �
,
� �

serviceBus
� �
,
� � 
subscribeToChannel
� �
)
� �
{ 	
} 	
public %
UserSampleRabbitMqHandler (
(( )
IServiceCollection) ;
services< D
,D E
IBusF J

serviceBusK U
,U V"
IRabbitMqBackupServiceW m"
rabbitMqBackupService	n �
,
� �
bool
� � 
subscribeToChannel
� �
=
� �
false
� �
)
� �
:
� �
base
� �
(
� �
services
� �
,
� �

serviceBus
� �
,
� �#
rabbitMqBackupService
� �
,
� � 
subscribeToChannel
� �
)
� �
{ 	
} 	
public %
UserSampleRabbitMqHandler (
(( )
IServiceCollection) ;
services< D
,D E
IBusF J

serviceBusK U
,U V(
IRabbitMqBackupLiteDbServiceW s(
rabbitMqBackupLiteDbService	t �
,
� �
bool
� � 
subscribeToChannel
� �
=
� �
false
� �
)
� �
:
� �
base
� �
(
� �
services
� �
,
� �

serviceBus
� �
,
� �)
rabbitMqBackupLiteDbService
� �
,
� � 
subscribeToChannel
� �
)
� �
{ 	
} 	
public %
UserSampleRabbitMqHandler (
(( )
IServiceCollection) ;
services< D
,D E
IBusF J

serviceBusK U
,U V"
IRabbitMqBackupServiceW m"
rabbitMqBackupService	n �
,
� �*
IRabbitMqBackupLiteDbService
� �)
rabbitMqBackupLiteDbService
� �
,
� �
bool
� � 
subscribeToChannel
� �
=
� �
false
� �
)
� �
:
� �
base
� �
(
� �
services
� �
,
� �

serviceBus
� �
,
� �#
rabbitMqBackupService
� �
,
� �)
rabbitMqBackupLiteDbService
� �
,
� � 
subscribeToChannel
� �
)
� �
{ 	
} 	
public## 
override## 
async## 
Task## "
<##" #
bool### '
>##' (
HandleCommand##) 6
(##6 7
UserSampleCommand##7 H
command##I P
)##P Q
{%% 	
Devon4NetLogger&& 
.&& 
Debug&& !
(&&! "
$"&&" $
$str&&$ )
{&&) *
command&&* 1
.&&1 2
Name&&2 6
}&&6 7
$str&&7 8
{&&8 9
command&&9 @
.&&@ A
SurName&&A H
}&&H I
$str&&I S
"&&S T
)&&T U
;&&U V
return'' 
true'' 
;'' 
}(( 	
}++ 
},, 