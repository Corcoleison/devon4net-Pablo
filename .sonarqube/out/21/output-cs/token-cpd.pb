˛
üC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Command\CommandBase.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Command+ 2
{ 
public 

class 
CommandBase 
< 
T 
> 
:  !

ActionBase" ,
<, -
T- .
>. /
where0 5
T6 7
:8 9
class: ?
{ 
} 
}		 ˚
ùC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Common\ActionBase.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Common+ 1
{ 
public 

class 

ActionBase 
< 
T 
> 
:  
IRequest! )
<) *
T* +
>+ ,
where- 2
T3 4
:5 6
class7 <
{ 
public 
DateTime 
	Timestamp !
{" #
get$ '
;' (
}) *
public		 
string		 
MessageType		 !
{		" #
get		$ '
;		' (
}		) *
public

 
Guid

 %
InternalMessageIdentifier

 -
{

. /
get

0 3
;

3 4
}

5 6
	protected 

ActionBase 
( 
) 
{ 	
	Timestamp 
= 
DateTime  
.  !
Now! $
;$ %%
InternalMessageIdentifier %
=& '
Guid( ,
., -
NewGuid- 4
(4 5
)5 6
;6 7
MessageType 
= 
GetType !
(! "
)" #
.# $
Name$ (
;( )
} 	
} 
} €
†C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Common\DatabaseConst.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Common+ 1
{ 
public 

static 
class 
DatabaseConst %
{ 
public		 
const		 
string		 
	SqlServer		 %
=		& '
$str		( Q
;		Q R
public

 
const

 
string

 
PostgresSql

 '
=

( )
$str

* Q
;

Q R
public 
const 
string 
MySql !
=" #
$str$ D
;D E
public 
const 
string 
MySqlPomelo '
=( )
$str* L
;L M
public 
const 
string 
FireBirdSql '
=( )
$str* K
;K L
public 
const 
string 
FireBirdSqlV (
=) *
$str+ U
;U V
public 
const 
string 
SqlLite #
=$ %
$str& L
;L M
public 
const 
string 
Oracle "
=# $
$str% A
;A B
public 
const 
string 
Ibm 
=  !
$str" ;
;; <
} 
} ﬂ
•C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Common\MediatRActionsEnum.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Common+ 1
{ 
public 

enum 
MediatRActionsEnum "
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
 ™A
≥C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Data\Service\MediatRBackupLiteDbService.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Data+ /
./ 0
Service0 7
{ 
public 

class &
MediatRBackupLiteDbService +
:, -'
IMediatRBackupLiteDbService. I
{ 
private 
IRepository 
< 
MediatRBackup )
>) *)
MediatRBackupLiteDbRepository+ H
{I J
getK N
;N O
setP S
;S T
}U V
private 
IJsonHelper 

JsonHelper &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public &
MediatRBackupLiteDbService )
() *
IRepository* 5
<5 6
MediatRBackup6 C
>C D)
mediatRBackupLiteDbRepositoryE b
,b c
IJsonHelperd o

jsonHelperp z
)z {
{ 	)
MediatRBackupLiteDbRepository )
=* +)
mediatRBackupLiteDbRepository, I
;I J

JsonHelper 
= 

jsonHelper #
;# $
} 	
public 
	BsonValue 
CreateMessageBackup ,
<, -
T- .
>. /
(/ 0

ActionBase0 :
<: ;
T; <
>< =
command> E
,E F
MediatRActionsEnumG Y
actionZ `
=a b
MediatRActionsEnumc u
.u v
Sentv z
,z {
bool  
increaseRetryCounter %
=& '
false( -
,- .
string/ 5
additionalData6 D
=E F
nullG K
,K L
stringM S
	errorDataT ]
=^ _
null` d
)d e
wheref k
Tl m
:n o
classp u
{ 	
try 
{ 
if 
( 
command 
? 
. %
InternalMessageIdentifier 6
==7 9
null: >
||? A
commandB I
.I J%
InternalMessageIdentifierJ c
.c d
IsNullOrEmptyGuidd u
(u v
)v w
)w x
{ 
throw 
new 
ArgumentException /
(/ 0
$"0 2
$str2 r
"r s
)s t
;t u
}   
var"" 
backUp"" 
="" 
new""  
MediatRBackup""! .
{## 
Id$$ 
=$$ 
Guid$$ 
.$$ 
NewGuid$$ %
($$% &
)$$& '
,$$' (%
InternalMessageIdentifier%% -
=%%. /
command%%0 7
.%%7 8%
InternalMessageIdentifier%%8 Q
,%%Q R
Retries&& 
=&&  
increaseRetryCounter&& 2
?&&3 4
$num&&5 6
:&&7 8
$num&&9 :
,&&: ;
AdditionalData'' "
=''# $
string''% +
.''+ ,
IsNullOrEmpty'', 9
(''9 :
additionalData'': H
)''H I
?''J K
string''L R
.''R S
Empty''S X
:''Y Z
additionalData''[ i
,''i j
IsError(( 
=(( 
false(( #
,((# $
MessageContent)) "
=))# $ 
GetSerializedContent))% 9
())9 :
command)): A
)))A B
,))B C
MessageType** 
=**  !
command**" )
.**) *
MessageType*** 5
,**5 6
TimeStampUTC++  
=++! "
command++# *
.++* +
	Timestamp+++ 4
.++4 5
ToUniversalTime++5 D
(++D E
)++E F
,++F G
Action,, 
=,, 
action,, #
.,,# $
ToString,,$ ,
(,,, -
),,- .
,,,. /
Error-- 
=-- 
string-- "
.--" #
IsNullOrEmpty--# 0
(--0 1
	errorData--1 :
)--: ;
?--< =
string--> D
.--D E
Empty--E J
:--K L
	errorData--M V
}.. 
;.. 
return00 )
MediatRBackupLiteDbRepository00 4
.004 5
Create005 ;
(00; <
backUp00< B
)00B C
;00C D
}11 
catch22 
(22 
	Exception22 
ex22 
)22  
{33 
Devon4NetLogger44 
.44  
Error44  %
(44% &
ex44& (
)44( )
;44) *
throw55 
;55 
}66 
}77 	
public99 
	BsonValue99 '
CreateResponseMessageBackup99 4
(994 5
object995 ;
command99< C
,99C D
MediatRActionsEnum99E W
action99X ^
=99_ `
MediatRActionsEnum99a s
.99s t
Sent99t x
,99x y
bool::  
increaseRetryCounter:: %
=::& '
false::( -
,::- .
string::/ 5
additionalData::6 D
=::E F
null::G K
,::K L
string::M S
	errorData::T ]
=::^ _
null::` d
)::d e
{;; 	
try<< 
{== 
var>> 
backUp>> 
=>> 
new>>  
MediatRBackup>>! .
{?? 
Id@@ 
=@@ 
Guid@@ 
.@@ 
NewGuid@@ %
(@@% &
)@@& '
,@@' (
RetriesAA 
=AA  
increaseRetryCounterAA 2
?AA3 4
$numAA5 6
:AA7 8
$numAA9 :
,AA: ;
AdditionalDataBB "
=BB# $
stringBB% +
.BB+ ,
IsNullOrEmptyBB, 9
(BB9 :
additionalDataBB: H
)BBH I
?BBJ K
stringBBL R
.BBR S
EmptyBBS X
:BBY Z
additionalDataBB[ i
,BBi j
IsErrorCC 
=CC 
falseCC #
,CC# $
MessageContentDD "
=DD# $ 
GetSerializedContentDD% 9
(DD9 :
commandDD: A
)DDA B
,DDB C
TimeStampUTCEE  
=EE! "
DateTimeEE# +
.EE+ ,
UtcNowEE, 2
.EE2 3
ToUniversalTimeEE3 B
(EEB C
)EEC D
,EED E
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
;HH 
returnJJ )
MediatRBackupLiteDbRepositoryJJ 4
.JJ4 5
CreateJJ5 ;
(JJ; <
backUpJJ< B
)JJB C
;JJC D
}KK 
catchLL 
(LL 
	ExceptionLL 
exLL 
)LL  
{MM 
Devon4NetLoggerNN 
.NN  
ErrorNN  %
(NN% &
exNN& (
)NN( )
;NN) *
throwOO 
;OO 
}PP 
}QQ 	
privateSS 
stringSS  
GetSerializedContentSS +
(SS+ ,
objectSS, 2
commandSS3 :
)SS: ;
{TT 	
varUU 
typedCommandUU 
=UU 
ConvertUU &
.UU& '

ChangeTypeUU' 1
(UU1 2
commandUU2 9
,UU9 :
commandUU; B
.UUB C
GetTypeUUC J
(UUJ K
)UUK L
)UUL M
;UUM N
varVV 
serializedContentVV !
=VV" #

JsonHelperVV$ .
.VV. /
	SerializeVV/ 8
(VV8 9
typedCommandVV9 E
)VVE F
;VVF G
returnWW 
serializedContentWW $
;WW$ %
}XX 	
}YY 
}ZZ ¢{
≠C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Data\Service\MediatRBackupService.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Data+ /
./ 0
Service0 7
{ 
public 

class  
MediatRBackupService %
:& '!
IMediatRBackupService( =
{ 
public 
bool 
UseExternalDatabase '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
private 
IJsonHelper 

JsonHelper &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
private 
string #
ContextConnectionString .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
private 
string 
ContextProvider &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
private 
void +
GetContextConnectionAndProvider 4
(4 5 
MediatRBackupContext5 I
contextJ Q
)Q R
{ 	
try 
{ 
ContextProvider 
=  !
context" )
.) *
Database* 2
.2 3
ProviderName3 ?
;? @#
ContextConnectionString '
=( )
context* 1
.1 2
Database2 :
.: ;
GetDbConnection; J
(J K
)K L
.L M
ConnectionStringM ]
;] ^
} 
catch 
( 
	Exception 
ex 
)  
{ 
Devon4NetLogger   
.    
Error    %
(  % &
$str  & _
)  _ `
;  ` a
Devon4NetLogger!! 
.!!  
Error!!  %
(!!% &
ex!!& (
)!!( )
;!!) *
}"" 
}## 	
public%%  
MediatRBackupService%% #
(%%# $ 
MediatRBackupContext%%$ 8
context%%9 @
,%%@ A
IJsonHelper%%B M

jsonHelper%%N X
)%%X Y
{&& 	+
GetContextConnectionAndProvider'' +
(''+ ,
context'', 3
)''3 4
;''4 5
UseExternalDatabase(( 
=((  !
context((" )
!=((* ,
null((- 1
;((1 2

JsonHelper)) 
=)) 

jsonHelper)) #
;))# $
}** 	
public,,  
MediatRBackupService,, #
(,,# $
IJsonHelper,,$ /

jsonHelper,,0 :
),,: ;
{-- 	
UseExternalDatabase.. 
=..  !
false.." '
;..' (

JsonHelper// 
=// 

jsonHelper// #
;//# $
}00 	
public22 
async22 
Task22 
<22 
MediatRBackup22 '
>22' (
CreateMessageBackup22) <
<22< =
T22= >
>22> ?
(22? @

ActionBase22@ J
<22J K
T22K L
>22L M
command22N U
,22U V
MediatRActionsEnum22W i
action22j p
=22q r
MediatRActionsEnum	22s Ö
.
22Ö Ü
Sent
22Ü ä
,
22ä ã
bool
22å ê"
increaseRetryCounter
22ë •
=
22¶ ß
false
22® ≠
,
22≠ Æ
string
22Ø µ
additionalData
22∂ ƒ
=
22≈ ∆
null
22« À
,
22À Ã
string
22Õ ”
	errorData
22‘ ›
=
22ﬁ ﬂ
null
22‡ ‰
)
22‰ Â
where
22Ê Î
T
22Ï Ì
:
22Ó Ô
class
22 ı
{33 	 
MediatRBackupContext44  
ctx44! $
=44% &
null44' +
;44+ ,
try66 
{77 
ctx88 
=88 
CreateContext88 #
(88# $
)88$ %
;88% &
if:: 
(:: 
ctx:: 
==:: 
null:: 
)::  
{;; 
throw<< 
new<< 
ArgumentException<< /
(<</ 0
$str<<0 h
)<<h i
;<<i j
}== 
if?? 
(?? 
!?? 
UseExternalDatabase?? (
)??( )
{@@ 
throwAA 
newAA 
ArgumentExceptionAA /
(AA/ 0
$str	AA0 Ü
)
AAÜ á
;
AAá à
}BB 
ifDD 
(DD 
commandDD 
?DD 
.DD %
InternalMessageIdentifierDD 6
==DD7 9
nullDD: >
||DD? A
commandDDB I
.DDI J%
InternalMessageIdentifierDDJ c
.DDc d
IsNullOrEmptyGuidDDd u
(DDu v
)DDv w
)DDw x
{EE 
throwFF 
newFF 
ArgumentExceptionFF /
(FF/ 0
$"FF0 2
$strFF2 r
"FFr s
)FFs t
;FFt u
}GG 
varII 
backUpII 
=II 
newII  
MediatRBackupII! .
{JJ 
IdKK 
=KK 
GuidKK 
.KK 
NewGuidKK %
(KK% &
)KK& '
,KK' (%
InternalMessageIdentifierLL -
=LL. /
commandLL0 7
.LL7 8%
InternalMessageIdentifierLL8 Q
,LLQ R
RetriesMM 
=MM  
increaseRetryCounterMM 2
?MM3 4
$numMM5 6
:MM7 8
$numMM9 :
,MM: ;
AdditionalDataNN "
=NN# $
stringNN% +
.NN+ ,
IsNullOrEmptyNN, 9
(NN9 :
additionalDataNN: H
)NNH I
?NNJ K
stringNNL R
.NNR S
EmptyNNS X
:NNY Z
additionalDataNN[ i
,NNi j
IsErrorOO 
=OO 
falseOO #
,OO# $
MessageContentPP "
=PP# $ 
GetSerializedContentPP% 9
(PP9 :
commandPP: A
)PPA B
,PPB C
MessageTypeQQ 
=QQ  !
commandQQ" )
.QQ) *
MessageTypeQQ* 5
,QQ5 6
TimeStampUTCRR  
=RR! "
commandRR# *
.RR* +
	TimestampRR+ 4
.RR4 5
ToUniversalTimeRR5 D
(RRD E
)RRE F
,RRF G
ActionSS 
=SS 
actionSS #
.SS# $
ToStringSS$ ,
(SS, -
)SS- .
,SS. /
ErrorTT 
=TT 
stringTT "
.TT" #
IsNullOrEmptyTT# 0
(TT0 1
	errorDataTT1 :
)TT: ;
?TT< =
stringTT> D
.TTD E
EmptyTTE J
:TTK L
	errorDataTTM V
}UU 
;UU 
varWW 
resultWW 
=WW 
awaitWW "
ctxWW# &
.WW& '
MediatRBackupWW' 4
.WW4 5
AddAsyncWW5 =
(WW= >
backUpWW> D
)WWD E
.WWE F
ConfigureAwaitWWF T
(WWT U
falseWWU Z
)WWZ [
;WW[ \
awaitXX 
ctxXX 
.XX 
SaveChangesAsyncXX *
(XX* +
)XX+ ,
;XX, -
awaitYY 
ctxYY 
.YY 
DisposeAsyncYY &
(YY& '
)YY' (
;YY( )
returnZZ 
resultZZ 
.ZZ 
EntityZZ $
;ZZ$ %
}[[ 
catch\\ 
(\\ 
	Exception\\ 
ex\\ 
)\\  
{]] 
Devon4NetLogger^^ 
.^^  
Error^^  %
(^^% &
ex^^& (
)^^( )
;^^) *
throw__ 
;__ 
}`` 
finallyaa 
{bb 
ifcc 
(cc 
ctxcc 
!=cc 
nullcc 
)cc  
awaitcc! &
ctxcc' *
.cc* +
DisposeAsynccc+ 7
(cc7 8
)cc8 9
.cc9 :
ConfigureAwaitcc: H
(ccH I
falseccI N
)ccN O
;ccO P
}dd 
}ee 	
publicgg 
asyncgg 
Taskgg 
<gg 
MediatRBackupgg '
>gg' ('
CreateResponseMessageBackupgg) D
(ggD E
objectggE K
commandggL S
,ggS T
MediatRActionsEnumggU g
actionggh n
=ggo p
MediatRActionsEnum	ggq É
.
ggÉ Ñ
Sent
ggÑ à
,
ggà â
boolhh  
increaseRetryCounterhh %
=hh& '
falsehh( -
,hh- .
stringhh/ 5
additionalDatahh6 D
=hhE F
nullhhG K
,hhK L
stringhhM S
	errorDatahhT ]
=hh^ _
nullhh` d
)hhd e
{ii 	
tryjj 
{kk 
varll 
ctxll 
=ll 
CreateContextll '
(ll' (
)ll( )
;ll) *
varnn 
backUpnn 
=nn 
newnn  
MediatRBackupnn! .
{oo 
Idpp 
=pp 
Guidpp 
.pp 
NewGuidpp %
(pp% &
)pp& '
,pp' (
Retriesqq 
=qq  
increaseRetryCounterqq 2
?qq3 4
$numqq5 6
:qq7 8
$numqq9 :
,qq: ;
AdditionalDatarr "
=rr# $
stringrr% +
.rr+ ,
IsNullOrEmptyrr, 9
(rr9 :
additionalDatarr: H
)rrH I
?rrJ K
stringrrL R
.rrR S
EmptyrrS X
:rrY Z
additionalDatarr[ i
,rri j
IsErrorss 
=ss 
falsess #
,ss# $
MessageContenttt "
=tt# $ 
GetSerializedContenttt% 9
(tt9 :
commandtt: A
)ttA B
,ttB C
TimeStampUTCuu  
=uu! "
DateTimeuu# +
.uu+ ,
UtcNowuu, 2
.uu2 3
ToUniversalTimeuu3 B
(uuB C
)uuC D
,uuD E
Actionvv 
=vv 
actionvv #
.vv# $
ToStringvv$ ,
(vv, -
)vv- .
,vv. /
Errorww 
=ww 
stringww "
.ww" #
IsNullOrEmptyww# 0
(ww0 1
	errorDataww1 :
)ww: ;
?ww< =
stringww> D
.wwD E
EmptywwE J
:wwK L
	errorDatawwM V
}xx 
;xx 
varzz 
resultzz 
=zz 
awaitzz "
ctxzz# &
.zz& '
MediatRBackupzz' 4
.zz4 5
AddAsynczz5 =
(zz= >
backUpzz> D
)zzD E
.zzE F
ConfigureAwaitzzF T
(zzT U
falsezzU Z
)zzZ [
;zz[ \
await{{ 
ctx{{ 
.{{ 
SaveChangesAsync{{ *
({{* +
){{+ ,
;{{, -
await|| 
ctx|| 
.|| 
DisposeAsync|| &
(||& '
)||' (
;||( )
return}} 
result}} 
.}} 
Entity}} $
;}}$ %
}~~ 
catch 
( 
	Exception 
ex 
)  
{
ÄÄ 
Devon4NetLogger
ÅÅ 
.
ÅÅ  
Error
ÅÅ  %
(
ÅÅ% &
ex
ÅÅ& (
)
ÅÅ( )
;
ÅÅ) *
throw
ÇÇ 
;
ÇÇ 
}
ÉÉ 
}
ÑÑ 	
private
çç "
MediatRBackupContext
çç $
CreateContext
çç% 2
(
çç2 3
)
çç3 4
{
éé 	
var
èè 
errorMessage
èè 
=
èè 
$str
èè |
;
èè| }
if
êê 
(
êê 
string
êê 
.
êê 
IsNullOrEmpty
êê $
(
êê$ %%
ContextConnectionString
êê% <
)
êê< =
)
êê= >
{
ëë 
Devon4NetLogger
íí 
.
íí  
Error
íí  %
(
íí% &
errorMessage
íí& 2
)
íí2 3
;
íí3 4
}
ìì 
var
ïï 
optionsBuilder
ïï 
=
ïï  
new
ïï! $%
DbContextOptionsBuilder
ïï% <
<
ïï< ="
MediatRBackupContext
ïï= Q
>
ïïQ R
(
ïïR S
)
ïïS T
;
ïïT U
switch
óó 
(
óó 
ContextProvider
óó #
)
óó# $
{
òò 
case
ôô 
DatabaseConst
ôô "
.
ôô" #
	SqlServer
ôô# ,
:
ôô, -
optionsBuilder
öö "
.
öö" #
UseSqlServer
öö# /
(
öö/ 0%
ContextConnectionString
öö0 G
)
ööG H
;
ööH I
break
õõ 
;
õõ 
case
úú 
DatabaseConst
úú "
.
úú" #
PostgresSql
úú# .
:
úú. /
optionsBuilder
ùù "
.
ùù" #
	UseNpgsql
ùù# ,
(
ùù, -%
ContextConnectionString
ùù- D
)
ùùD E
;
ùùE F
break
ûû 
;
ûû 
case
üü 
DatabaseConst
üü "
.
üü" #
MySql
üü# (
:
üü( )
case
†† 
DatabaseConst
†† "
.
††" #
MySqlPomelo
††# .
:
††. /
optionsBuilder
°° "
.
°°" #
UseMySql
°°# +
(
°°+ ,%
ContextConnectionString
°°, C
)
°°C D
;
°°D E
break
¢¢ 
;
¢¢ 
case
££ 
DatabaseConst
££ "
.
££" #
FireBirdSql
££# .
:
££. /
case
§§ 
DatabaseConst
§§ "
.
§§" #
FireBirdSqlV
§§# /
:
§§/ 0
optionsBuilder
•• "
.
••" #
UseFirebird
••# .
(
••. /%
ContextConnectionString
••/ F
)
••F G
;
••G H
break
¶¶ 
;
¶¶ 
case
ßß 
DatabaseConst
ßß "
.
ßß" #
SqlLite
ßß# *
:
ßß* +
optionsBuilder
®® "
.
®®" #
	UseSqlite
®®# ,
(
®®, -%
ContextConnectionString
®®- D
)
®®D E
;
®®E F
break
©© 
;
©© 
default
µµ 
:
µµ 
Devon4NetLogger
∂∂ #
.
∂∂# $
Error
∂∂$ )
(
∂∂) *
errorMessage
∂∂* 6
)
∂∂6 7
;
∂∂7 8
throw
∑∑ 
new
∑∑ 
ArgumentException
∑∑ /
(
∑∑/ 0
errorMessage
∑∑0 <
)
∑∑< =
;
∑∑= >
}
∏∏ 
return
∫∫ 
new
∫∫ "
MediatRBackupContext
∫∫ +
(
∫∫+ ,
optionsBuilder
∫∫, :
.
∫∫: ;
Options
∫∫; B
)
∫∫B C
;
∫∫C D
}
ªª 	
private
ΩΩ 
string
ΩΩ "
GetSerializedContent
ΩΩ +
(
ΩΩ+ ,
object
ΩΩ, 2
command
ΩΩ3 :
)
ΩΩ: ;
{
ææ 	
var
øø 
typedCommand
øø 
=
øø 
Convert
øø &
.
øø& '

ChangeType
øø' 1
(
øø1 2
command
øø2 9
,
øø9 :
command
øø; B
.
øøB C
GetType
øøC J
(
øøJ K
)
øøK L
)
øøL M
;
øøM N
var
¿¿ 
serializedContent
¿¿ !
=
¿¿" #

JsonHelper
¿¿$ .
.
¿¿. /
	Serialize
¿¿/ 8
(
¿¿8 9
typedCommand
¿¿9 E
)
¿¿E F
;
¿¿F G
return
¡¡ 
serializedContent
¡¡ $
;
¡¡$ %
}
¬¬ 	
}
√√ 
}ƒƒ ô
∞C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Domain\Database\MediatRBackupContext.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Domain+ 1
.1 2
Database2 :
{ 
public 

class  
MediatRBackupContext %
:& '
	DbContext( 1
{ 
public  
MediatRBackupContext #
(# $
)$ %
{		 	
}

 	
public  
MediatRBackupContext #
(# $
DbContextOptions$ 4
<4 5 
MediatRBackupContext5 I
>I J
optionsK R
)R S
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
< 
MediatRBackup *
>* +
MediatRBackup, 9
{: ;
get< ?
;? @
setA D
;D E
}F G
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
<  
MediatRBackup  -
>- .
(. /
entity/ 5
=>6 8
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
} ‡
∂C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Domain\Database\MediatRBackupLiteDbContext.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Domain+ 1
.1 2
Database2 :
{ 
public		 

class		 &
MediatRBackupLiteDbContext		 +
:		, -
ILiteDbContext		. <
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
public &
MediatRBackupLiteDbContext )
() *
IOptions* 2
<2 3
MediatROptions3 A
>A B
optionsC J
)J K
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
$"	 Å
$str
Å ä
{
ä ã
path
ã è
}
è ê
$str
ê Æ
"
Æ Ø
;
Ø ∞
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
} ƒ
©C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Domain\Entities\MediatRBackup.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Domain+ 1
.1 2
Entities2 :
{ 
public 

partial 
class 
MediatRBackup &
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
} â
¿C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Domain\ServiceInterfaces\IMediatRBackupLiteDbService.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Domain+ 1
.1 2
ServiceInterfaces2 C
{ 
public 

	interface '
IMediatRBackupLiteDbService 0
{		 
	BsonValue

 
CreateMessageBackup

 %
<

% &
T

& '
>

' (
(

( )

ActionBase

) 3
<

3 4
T

4 5
>

5 6
command

7 >
,

> ?
MediatRActionsEnum

@ R
action

S Y
=

Z [
MediatRActionsEnum

\ n
.

n o
Sent

o s
,

s t
bool

u y!
increaseRetryCounter	

z é
=


è ê
false


ë ñ
,


ñ ó
string


ò û
additionalData


ü ≠
=


Æ Ø
null


∞ ¥
,


¥ µ
string


∂ º
	errorData


Ω ∆
=


« »
null


… Õ
)


Õ Œ
where


œ ‘
T


’ ÷
:


◊ ÿ
class


Ÿ ﬁ
;


ﬁ ﬂ
	BsonValue '
CreateResponseMessageBackup -
(- .
object. 4
command5 <
,< =
MediatRActionsEnum> P
actionQ W
=X Y
MediatRActionsEnumZ l
.l m
Sentm q
,q r
bools w!
increaseRetryCounter	x å
=
ç é
false
è î
,
î ï
string
ñ ú
additionalData
ù ´
=
¨ ≠
null
Æ ≤
,
≤ ≥
string
¥ ∫
	errorData
ª ƒ
=
≈ ∆
null
« À
)
À Ã
;
Ã Õ
} 
} ⁄
∫C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Domain\ServiceInterfaces\IMediatRBackupService.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Domain+ 1
.1 2
ServiceInterfaces2 C
{		 
public

 

	interface

 !
IMediatRBackupService

 *
{ 
bool 
UseExternalDatabase  
{! "
get# &
;& '
}( )
Task 
< 
MediatRBackup 
> 
CreateMessageBackup /
</ 0
T0 1
>1 2
(2 3

ActionBase3 =
<= >
T> ?
>? @
commandA H
,H I
MediatRActionsEnumJ \
action] c
=d e
MediatRActionsEnumf x
.x y
Senty }
,} ~
bool	 É"
increaseRetryCounter
Ñ ò
=
ô ö
false
õ †
,
† °
string
¢ ®
additionalData
© ∑
=
∏ π
null
∫ æ
,
æ ø
string
¿ ∆
	errorData
« –
=
— “
null
” ◊
)
◊ ÿ
where
Ÿ ﬁ
T
ﬂ ‡
:
· ‚
class
„ Ë
;
Ë È
Task 
< 
MediatRBackup 
> '
CreateResponseMessageBackup 7
(7 8
object8 >
command? F
,F G
MediatRActionsEnumH Z
action[ a
=b c
MediatRActionsEnumd v
.v w
Sentw {
,{ |
bool	} Å"
increaseRetryCounter
Ç ñ
=
ó ò
false
ô û
,
û ü
string
† ¶
additionalData
ß µ
=
∂ ∑
null
∏ º
,
º Ω
string
æ ƒ
	errorData
≈ Œ
=
œ –
null
— ’
)
’ ÷
;
÷ ◊
} 
} ë	
£C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Handler\IMediatRHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Handler+ 2
{ 
public 

	interface 
IMediatRHandler $
{ 
Task		 
<		 
TResult		 
>		 

QueryAsync		  
<		  !
TResult		! (
>		( )
(		) *

ActionBase		* 4
<		4 5
TResult		5 <
>		< =
query		> C
)		C D
where		E J
TResult		K R
:		S T
class		U Z
;		Z [
Task

 
<

 
TResult

 
>

 
CommandAsync

 "
<

" #
TResult

# *
>

* +
(

+ ,

ActionBase

, 6
<

6 7
TResult

7 >
>

> ?
query

@ E
)

E F
where

G L
TResult

M T
:

U V
class

W \
;

\ ]
} 
} ›9
¢C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Handler\MediatRHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Handler+ 2
{		 
public

 

class

 
MediatRHandler

 
:

  !
IMediatRHandler

" 1
{ 
private 
	IMediator 
Mediator "
{# $
get% (
;( )
set* -
;- .
}/ 0
private !
IMediatRBackupService % 
MediatRBackupService& :
{; <
get= @
;@ A
setB E
;E F
}G H
private '
IMediatRBackupLiteDbService +&
MediatRBackupLiteDbService, F
{G H
getI L
;L M
setN Q
;Q R
}S T
public 
MediatRHandler 
( 
	IMediator '
mediator( 0
)0 1
{ 	

BasicSetup 
( 
mediator 
,  
null! %
,% &
null' +
)+ ,
;, -
} 	
public 
MediatRHandler 
( 
	IMediator '
mediator( 0
,0 1!
IMediatRBackupService2 G 
mediatRBackupServiceH \
,\ ]'
IMediatRBackupLiteDbService^ y'
mediatRBackupLiteDbService	z î
)
î ï
{ 	

BasicSetup 
( 
mediator 
,   
mediatRBackupService! 5
,5 6&
mediatRBackupLiteDbService7 Q
)Q R
;R S
} 	
public 
MediatRHandler 
( 
	IMediator '
mediator( 0
,0 1'
IMediatRBackupLiteDbService2 M&
mediatRBackupLiteDbServiceN h
)h i
{ 	

BasicSetup 
( 
mediator 
,  
null! %
,% &&
mediatRBackupLiteDbService' A
)A B
;B C
} 	
public 
MediatRHandler 
( 
	IMediator '
mediator( 0
,0 1!
IMediatRBackupService2 G 
mediatRBackupServiceH \
)\ ]
{   	

BasicSetup!! 
(!! 
mediator!! 
,!!   
mediatRBackupService!!! 5
,!!5 6
null!!7 ;
)!!; <
;!!< =
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
TResult$$ !
>$$! "

QueryAsync$$# -
<$$- .
TResult$$. 5
>$$5 6
($$6 7

ActionBase$$7 A
<$$A B
TResult$$B I
>$$I J
query$$K P
)$$P Q
where$$R W
TResult$$X _
:$$` a
class$$b g
{%% 	
await&& 
BackUpMessage&& 
(&&  
query&&  %
)&&% &
;&&& '
return'' 
await'' 
Mediator'' !
.''! "
Send''" &
(''& '
query''' ,
)'', -
;''- .
}(( 	
public** 
async** 
Task** 
<** 
TResult** !
>**! "
CommandAsync**# /
<**/ 0
TResult**0 7
>**7 8
(**8 9

ActionBase**9 C
<**C D
TResult**D K
>**K L
query**M R
)**R S
where**T Y
TResult**Z a
:**b c
class**d i
{++ 	
await,, 
BackUpMessage,, 
(,,  
query,,  %
),,% &
;,,& '
return-- 
await-- 
Mediator-- !
.--! "
Send--" &
(--& '
query--' ,
)--, -
;--- .
}.. 	
private00 
void00 

BasicSetup00 
(00  
	IMediator00  )
mediator00* 2
,002 3!
IMediatRBackupService004 I 
mediatRBackupService00J ^
,00^ _'
IMediatRBackupLiteDbService00` {'
mediatRBackupLiteDbService	00| ñ
)
00ñ ó
{11 	
Mediator22 
=22 
mediator22 
??22  "
throw22# (
new22) ,!
ArgumentNullException22- B
(22B C
$str22C ~
)22~ 
;	22 Ä 
MediatRBackupService33  
=33! " 
mediatRBackupService33# 7
;337 8&
MediatRBackupLiteDbService44 &
=44' (&
mediatRBackupLiteDbService44) C
;44C D
}55 	
private77 
async77 
Task77 
BackUpMessage77 (
<77( )
TResult77) 0
>770 1
(771 2

ActionBase772 <
<77< =
TResult77= D
>77D E
command77F M
,77M N
MediatRActionsEnum77O a
queueAction77b m
=77n o
MediatRActionsEnum	77p Ç
.
77Ç É
Sent
77É á
,
77á à
bool
77â ç"
increaseRetryCounter
77é ¢
=
77£ §
false
77• ™
,
77™ ´
string
77¨ ≤
additionalData
77≥ ¡
=
77¬ √
null
77ƒ »
,
77» …
string
77  –
	errorData
77— ⁄
=
77€ ‹
null
77› ·
)
77· ‚
where
77„ Ë
TResult
77È 
:
77Ò Ú
class
77Û ¯
{88 	
try99 
{:: &
MediatRBackupLiteDbService;; *
?;;* +
.;;+ ,
CreateMessageBackup;;, ?
(;;? @
command;;@ G
,;;G H
queueAction;;I T
,;;T U 
increaseRetryCounter;;V j
,;;j k
additionalData;;l z
,;;z {
	errorData	;;| Ö
)
;;Ö Ü
;
;;Ü á
if== 
(==  
MediatRBackupService== (
!===) +
null==, 0
&&==1 3 
MediatRBackupService==4 H
.==H I
UseExternalDatabase==I \
)==\ ]
{>> 
await??  
MediatRBackupService?? .
.??. /
CreateMessageBackup??/ B
(??B C
command??C J
,??J K
queueAction??L W
,??W X 
increaseRetryCounter??Y m
,??m n
additionalData??o }
,??} ~
	errorData	?? à
)
??à â
.
??â ä
ConfigureAwait
??ä ò
(
??ò ô
false
??ô û
)
??û ü
;
??ü †
}@@ 
}AA 
catchBB 
(BB 
	ExceptionBB 
exBB 
)BB  
{CC 
Devon4NetLoggerDD 
.DD  
ErrorDD  %
(DD% &
$"DD& (
$strDD( \
{DD\ ]
exDD] _
.DD_ `
MessageDD` g
}DDg h
$strDDh i
{DDi j
exDDj l
.DDl m
InnerExceptionDDm {
}DD{ |
"DD| }
)DD} ~
;DD~ 
Devon4NetLoggerEE 
.EE  
ErrorEE  %
(EE% &
exEE& (
)EE( )
;EE) *
throwFF 
;FF 
}GG 
}HH 	
}II 
}JJ †3
©C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Handler\MediatRRequestHandler.cs
	namespace		 	
	Devon4Net		
 
.		 
Infrastructure		 "
.		" #
MediatR		# *
.		* +
Handler		+ 2
{

 
public 

abstract 
class !
MediatrRequestHandler /
</ 0
TRequest0 8
,8 9
	TResponse: C
>C D
:E F
IRequestHandlerG V
<V W
TRequestW _
,_ `
	TResponsea j
>j k
wherel q
TRequestr z
:{ |
IRequest	} Ö
<
Ö Ü
	TResponse
Ü è
>
è ê
{ 
private !
IMediatRBackupService % 
MediatRBackupService& :
{; <
get= @
;@ A
setB E
;E F
}G H
private '
IMediatRBackupLiteDbService +&
MediatRBackupLiteDbService, F
{G H
getI L
;L M
setN Q
;Q R
}S T
	protected !
MediatrRequestHandler '
(' (!
IMediatRBackupService( = 
mediatRBackupService> R
,R S'
IMediatRBackupLiteDbServiceT o'
mediatRBackupLiteDbService	p ä
)
ä ã
{ 	

BasicSetup 
(  
mediatRBackupService +
,+ ,&
mediatRBackupLiteDbService- G
)G H
;H I
} 	
	protected !
MediatrRequestHandler '
(' (!
IMediatRBackupService( = 
mediatRBackupService> R
)R S
{ 	

BasicSetup 
(  
mediatRBackupService +
,+ ,
null- 1
)1 2
;2 3
} 	
	protected !
MediatrRequestHandler '
(' ('
IMediatRBackupLiteDbService( C&
mediatRBackupLiteDbServiceD ^
)^ _
{ 	

BasicSetup 
( 
null 
, &
mediatRBackupLiteDbService 7
)7 8
;8 9
} 	
	protected !
MediatrRequestHandler '
(' (
)( )
{   	

BasicSetup!! 
(!! 
null!! 
,!! 
null!! !
)!!! "
;!!" #
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
	TResponse$$ #
>$$# $
Handle$$% +
($$+ ,
TRequest$$, 4
request$$5 <
,$$< =
CancellationToken$$> O
cancellationToken$$P a
)$$a b
{%% 	
MediatRActionsEnum&& 
status&& %
;&&% &
	TResponse'' 
result'' 
='' 
default'' &
;''& '
try(( 
{)) 
result** 
=** 
await** 
HandleAction** +
(**+ ,
request**, 3
,**3 4
cancellationToken**5 F
)**F G
.**G H
ConfigureAwait**H V
(**V W
false**W \
)**\ ]
;**] ^
status++ 
=++ 
MediatRActionsEnum++ +
.+++ ,
Handled++, 3
;++3 4
},, 
catch-- 
(-- 
	Exception-- 
ex-- 
)--  
{.. 
Devon4NetLogger// 
.//  
Error//  %
(//% &
ex//& (
)//( )
;//) *
status00 
=00 
MediatRActionsEnum00 +
.00+ ,
Error00, 1
;001 2
}11 
await22 
BackUpMessage22 
(22  
request22  '
,22' (
status22) /
)22/ 0
;220 1
return33 
result33 
;33 
}55 	
public77 
abstract77 
Task77 
<77 
	TResponse77 &
>77& '
HandleAction77( 4
(774 5
TRequest775 =
request77> E
,77E F
CancellationToken77G X
cancellationToken77Y j
)77j k
;77k l
private99 
void99 

BasicSetup99 
(99  !
IMediatRBackupService99  5 
mediatRBackupService996 J
,99J K'
IMediatRBackupLiteDbService99L g'
mediatRBackupLiteDbService	99h Ç
)
99Ç É
{:: 	 
MediatRBackupService;;  
=;;! " 
mediatRBackupService;;# 7
;;;7 8&
MediatRBackupLiteDbService<< &
=<<' (&
mediatRBackupLiteDbService<<) C
;<<C D
}== 	
private?? 
async?? 
Task?? 
BackUpMessage?? (
(??( )
TRequest??) 1
request??2 9
,??9 :
MediatRActionsEnum??; M
queueAction??N Y
=??Z [
MediatRActionsEnum??\ n
.??n o
Sent??o s
,??s t
bool??u y!
increaseRetryCounter	??z é
=
??è ê
false
??ë ñ
,
??ñ ó
string
??ò û
additionalData
??ü ≠
=
??Æ Ø
null
??∞ ¥
,
??¥ µ
string
??∂ º
	errorData
??Ω ∆
=
??« »
null
??… Õ
)
??Õ Œ
{@@ 	&
MediatRBackupLiteDbServiceAA &
?AA& '
.AA' ('
CreateResponseMessageBackupAA( C
(AAC D
requestAAD K
,AAK L
queueActionAAM X
,AAX Y 
increaseRetryCounterAAZ n
,AAn o
additionalDataAAp ~
,AA~ 
	errorData
AAÄ â
)
AAâ ä
;
AAä ã
ifCC 
(CC  
MediatRBackupServiceCC $
!=CC% '
nullCC( ,
&&CC- / 
MediatRBackupServiceCC0 D
.CCD E
UseExternalDatabaseCCE X
)CCX Y
{DD 
awaitEE  
MediatRBackupServiceEE *
.EE* +'
CreateResponseMessageBackupEE+ F
(EEF G
requestEEG N
,EEN O
queueActionEEP [
,EE[ \ 
increaseRetryCounterEE] q
,EEq r
additionalData	EEs Å
,
EEÅ Ç
	errorData
EEÉ å
)
EEå ç
.
EEç é
ConfigureAwait
EEé ú
(
EEú ù
false
EEù ¢
)
EE¢ £
;
EE£ §
}FF 
}GG 	
}II 
}KK ¸"
†C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\MediatRConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Configuration' 4
{ 
public 

static 
class  
MediatRConfiguration ,
{ 
public 
static 
void 
SetupMediatR '
(' (
this( ,
IServiceCollection- ?
services@ H
,H I
refJ M
IConfigurationN \
configuration] j
)j k
{ 	
var 
mediatROptions 
=  
services! )
.) *
GetTypedOptions* 9
<9 :
MediatROptions: H
>H I
(I J
configurationJ W
,W X
$strY b
)b c
;c d
if 
( 
mediatROptions 
== !
null" &
||' )
!* +
mediatROptions+ 9
.9 :
EnableMediatR: G
)G H
returnI O
;O P6
*ConfigureMediatRGenericDependencyInjection 6
(6 7
ref7 :
services; C
)C D
;D E+
SetupMediatRBackupLocalDatabase +
(+ ,
ref, /
services0 8
,8 9
ref: =
mediatROptions> L
)L M
;M N
} 	
private 
static 
void 6
*ConfigureMediatRGenericDependencyInjection F
(F G
refG J
IServiceCollectionK ]
services^ f
)f g
{ 	
services 
. 
AddTransient !
(! "
typeof" (
(( )
IRepository) 4
<4 5
MediatRBackup5 B
>B C
)C D
,D E
typeofF L
(L M

RepositoryM W
<W X
MediatRBackupX e
>e f
)f g
)g h
;h i
services   
.   
AddTransient   !
(  ! "
typeof  " (
(  ( )!
IMediatRBackupService  ) >
)  > ?
,  ? @
typeof  A G
(  G H 
MediatRBackupService  H \
)  \ ]
)  ] ^
;  ^ _
services!! 
.!! 
AddTransient!! !
(!!! "
typeof!!" (
(!!( )
IMediatRHandler!!) 8
)!!8 9
,!!9 :
typeof!!; A
(!!A B
MediatRHandler!!B P
)!!P Q
)!!Q R
;!!R S
services"" 
."" 

AddMediatR"" 
(""  
Assembly""  (
.""( ) 
GetExecutingAssembly"") =
(""= >
)""> ?
)""? @
;""@ A
}## 	
private%% 
static%% 
void%% +
SetupMediatRBackupLocalDatabase%% ;
(%%; <
ref%%< ?
IServiceCollection%%@ R
services%%S [
,%%[ \
ref%%] `
MediatROptions%%a o
mediatROptions%%p ~
)%%~ 
{&& 	
Devon4NetLogger'' 
.'' 
Information'' '
(''' (
$str''( {
)''{ |
;''| }
if(( 
((( 
mediatROptions(( 
.(( 
Backup(( %
==((& (
null(() -
||((. 0
!((1 2
mediatROptions((2 @
.((@ A
Backup((A G
.((G H
UseLocalBackup((H V
)((V W
return((X ^
;((^ _
Devon4NetLogger)) 
.)) 
Information)) '
())' (
$str))( j
)))j k
;))k l
services++ 
.++ 
AddSingleton++ !
<++! "
ILiteDbContext++" 0
,++0 1&
MediatRBackupLiteDbContext++2 L
>++L M
(++M N
)++N O
;++O P
services,, 
.,, 
AddTransient,, !
(,,! "
typeof,," (
(,,( )'
IMediatRBackupLiteDbService,,) D
),,D E
,,,E F
typeof,,G M
(,,M N&
MediatRBackupLiteDbService,,N h
),,h i
),,i j
;,,j k
}-- 	
}.. 
}// º
õC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Model\ModelBase.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Model+ 0
{ 
public 

class 
	ModelBase 
{ 
public 
DateTime 
	Timestamp !
{" #
get$ '
;' (
	protected) 2
set3 6
;6 7
}8 9
public 
string 
MessageType !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public		 
Guid		 %
InternalMessageIdentifier		 -
{		. /
get		0 3
;		3 4
set		5 8
;		8 9
}		: ;
public 
	ModelBase 
( 
) 
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
;6 7
MessageType 
= 
GetType !
(! "
)" #
.# $
Name$ (
;( )
} 	
} 
} å
õC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Query\QueryBase.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Query+ 0
{ 
public 

abstract 
class 
	QueryBase #
<# $
T$ %
>% &
:' (

ActionBase) 3
<3 4
T4 5
>5 6
where7 <
T= >
:? @
classA F
{ 
} 
}		 û
üC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Samples\Dto\UserDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Samples+ 2
.2 3
Model3 8
{ 
public 

class 
UserDto 
{ 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
SurName
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
* +
} 
} ô
™C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Samples\Handler\GetUserhandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Samples+ 2
.2 3
Handler3 :
{		 
public

 

class

 
GetUserhandler

 
:

  !
MediatrRequestHandler

! 6
<

6 7
GetUserQuery

7 C
,

C D
UserDto

E L
>

L M
{ 
public 
GetUserhandler 
( !
IMediatRBackupService 3 
mediatRBackupService4 H
,H I'
IMediatRBackupLiteDbServiceJ e'
mediatRBackupLiteDbService	f Ä
)
Ä Å
:
Ç É
base
Ñ à
(
à â"
mediatRBackupService
â ù
,
ù û(
mediatRBackupLiteDbService
ü π
)
π ∫
{ 	
} 	
public 
GetUserhandler 
( '
IMediatRBackupLiteDbService 9&
mediatRBackupLiteDbService: T
)T U
:V W
baseX \
(\ ]&
mediatRBackupLiteDbService] w
)w x
{ 	
} 	
public 
GetUserhandler 
( !
IMediatRBackupService 3 
mediatRBackupService4 H
)H I
:J K
baseL P
(P Q 
mediatRBackupServiceQ e
)e f
{ 	
} 	
public"" 
override"" 
Task"" 
<"" 
UserDto"" $
>""$ %
HandleAction""& 2
(""2 3
GetUserQuery""3 ?
request""@ G
,""G H
CancellationToken""I Z
cancellationToken""[ l
)""l m
{## 	
var$$ 
user$$ 
=$$ 
new$$ 
UserDto$$ "
{%% 
Id&& 
=&& 
request&& 
.&& 
UserId&& #
,&&# $
Name'' 
='' 
$str'' '
,''' (
SurName(( 
=(( 
$str(( .
})) 
;)) 
return++ 
Task++ 
.++ 

FromResult++ "
(++" #
user++# '
)++' (
;++( )
},, 	
}-- 
}.. õ
£C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Samples\Model\UserModel.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Samples+ 2
.2 3
Model3 8
{ 
public 

class 
	UserModel 
: 
	ModelBase &
{ 
public 
Guid 
Id 
{ 
get 
; 
set !
;! "
}# $
public		 
string		 
Name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
SurName
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
public 
	UserModel 
( 
string 
name  $
,$ %
string& ,
surName- 4
)4 5
{ 	
Id 
= 
Guid 
. 
NewGuid 
( 
) 
;  
Name 
= 
name 
; 
SurName 
= 
surName 
; 
} 	
} 
} ™
¶C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.MediatR\Samples\Query\GetUserQuery.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
MediatR# *
.* +
Samples+ 2
.2 3
Query3 8
{ 
public 

class 
GetUserQuery 
: 
	QueryBase  )
<) *
UserDto* 1
>1 2
{ 
public		 
Guid		 
UserId		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public 
GetUserQuery 
( 
Guid  
userId! '
)' (
{ 	
UserId 
= 
userId 
; 
} 	
} 
} 