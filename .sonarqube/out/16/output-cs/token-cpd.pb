�
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\Common\CosmosConfigurationParams.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &
Common& ,
{ 
public 

class %
CosmosConfigurationParams *
{ 
public 
string 
Endpoint 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Key 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
DatabaseName "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
}		 �~
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\Common\DatabaseConfiguration.cs
	namespace

 	
	Devon4Net


 
.

 
Domain

 
.

 

UnitOfWork

 %
.

% &
Common

& ,
{ 
public 

static 
class &
SetupDatabaseConfiguration 2
{ 
private 
const 
int 
MaxRetryDelay '
=( )
$num* ,
;, -
private 
const 
int 
MaxRetryCount '
=( )
$num* ,
;, -
private 
static 
ServiceLifetime &
ServiceLifetime' 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
static 
void 
SetupDatabase (
<( )
T) *
>* +
(+ ,
this, 0
IServiceCollection1 C
servicesD L
,L M
stringN T
connectionStringU e
,e f
DatabaseTypeg s
databaseType	t �
,
� �
ServiceLifetime
� �
serviceLifetime
� �
=
� �
ServiceLifetime
� �
.
� �
	Transient
� �
,
� �'
CosmosConfigurationParams
� �'
cosmosConfigurationParams
� �
=
� �
null
� �
)
� �
where
� �
T
� �
:
� �
	DbContext
� �
{ 	
if 
( 
string 
. 
IsNullOrWhiteSpace )
() *
connectionString* :
): ;
||< >
string? E
.E F
IsNullOrEmptyF S
(S T
connectionStringT d
)d e
)e f
throwg l
newm p
ArgumentException	q �
(
� �
$"
� �
$str
� �
{
� �
connectionString
� �
}
� �
$str
� �
"
� �
)
� �
;
� �
ServiceLifetime 
= 
serviceLifetime -
;- .
SetDatabase 
< 
T 
> 
( 
services #
,# $
databaseType% 1
,1 2%
cosmosConfigurationParams3 L
,L M
connectionStringN ^
)^ _
;_ `
} 	
public 
static 
void 
SetupDatabase (
<( )
T) *
>* +
(+ ,
this, 0
IServiceCollection1 C
servicesD L
,L M
IConfigurationN \
configuration] j
,j k
stringl r!
connectionStringName	s �
,
� �
DatabaseType
� �
databaseType
� �
,
� �
ServiceLifetime
� �
serviceLifetime
� �
=
� �
ServiceLifetime
� �
.
� �
	Transient
� �
,
� �
bool
� �
migrate
� �
=
� �
false
� �
,
� �'
CosmosConfigurationParams
� �'
cosmosConfigurationParams
� �
=
� �
null
� �
)
� �
where
� �
T
� �
:
� �
	DbContext
� �
{ 	
ServiceLifetime 
= 
serviceLifetime -
;- .
var (
applicationConnectionStrings ,
=- .
configuration/ <
.< =

GetSection= G
(G H
$strH [
)[ \
.\ ]
GetChildren] h
(h i
)i j
;j k
if 
( (
applicationConnectionStrings ,
==- /
null0 4
)4 5
throw6 ;
new< ?
ArgumentException@ Q
(Q R
$strR }
)} ~
;~ 
var 
connectionString  
=! "(
applicationConnectionStrings# ?
.? @
FirstOrDefault@ N
(N O
cO P
=>Q S
cT U
.U V
KeyV Y
.Y Z
ToLowerZ a
(a b
)b c
==d f 
connectionStringNameg {
.{ |
ToLower	| �
(
� �
)
� �
)
� �
;
� �
if 
( 
connectionString  
==! #
null$ (
||) +
string, 2
.2 3
IsNullOrEmpty3 @
(@ A
connectionStringA Q
.Q R
ValueR W
)W X
)X Y
throwZ _
new` c
ArgumentExceptiond u
(u v
$"v x
$str	x �
{
� �"
connectionStringName
� �
}
� �
$str
� �
"
� �
)
� �
;
� �
SetDatabase!! 
<!! 
T!! 
>!! 
(!! 
services!! #
,!!# $
databaseType!!% 1
,!!1 2%
cosmosConfigurationParams!!3 L
,!!L M
connectionString!!N ^
.!!^ _
Value!!_ d
)!!d e
;!!e f
if"" 
("" 
migrate"" 
)"" 
Migrate""  
<""  !
T""! "
>""" #
(""# $
services""$ ,
)"", -
;""- .
}$$ 	
private&& 
static&& 
void&& 
Migrate&& #
<&&# $
T&&$ %
>&&% &
(&&& '
IServiceCollection&&' 9
services&&: B
)&&B C
where&&D I
T&&J K
:&&L M
	DbContext&&N W
{'' 	
try(( 
{)) 
using** 
var** 
sp** 
=** 
services** '
.**' ( 
BuildServiceProvider**( <
(**< =
)**= >
;**> ?
if++ 
(++ 
sp++ 
==++ 
null++ 
)++ 
{,, 
Devon4NetLogger-- #
.--# $
Error--$ )
(--) *
$"--* ,
$str--, `
{--` a
typeof--a g
(--g h
T--h i
)--i j
.--j k
FullName--k s
}--s t
$str	--t �
"
--� �
)
--� �
;
--� �
}.. 
else// 
{00 
var11 
context11 
=11  !
sp11" $
.11$ %

GetService11% /
(11/ 0
typeof110 6
(116 7
T117 8
)118 9
)119 :
;11: ;
if22 
(22 
context22 
==22  "
null22# '
)22' (
{33 
Devon4NetLogger44 '
.44' (
Error44( -
(44- .
$"44. 0
$str440 B
{44B C
typeof44C I
(44I J
T44J K
)44K L
.44L M
FullName44M U
}44U V
$str44V }
"44} ~
)44~ 
;	44 �
}55 
(77 
(77 
T77 
)77 
context77 
)77  
?77  !
.77! "
Database77" *
.77* +
Migrate77+ 2
(772 3
)773 4
;774 5
sp88 
.88 
DisposeAsync88 #
(88# $
)88$ %
;88% &
}99 
}:: 
catch;; 
(;; 
	Exception;; 
ex;; 
);;  
{<< 
Devon4NetLogger== 
.==  
Fatal==  %
(==% &
ex==& (
)==( )
;==) *
}>> 
}?? 	
privateAA 
staticAA 
voidAA 
SetDatabaseAA '
<AA' (
TAA( )
>AA) *
(AA* +
IServiceCollectionAA+ =
servicesAA> F
,AAF G
DatabaseTypeAAH T
databaseTypeAAU a
,AAa b%
CosmosConfigurationParamsBB %%
cosmosConfigurationParamsBB& ?
,BB? @
stringBBA G
connectionStringBBH X
)BBX Y
whereBBZ _
TBB` a
:BBb c
	DbContextBBd m
{CC 	
switchDD 
(DD 
databaseTypeDD  
)DD  !
{EE 
caseFF 
DatabaseTypeFF !
.FF! "
	SqlServerFF" +
:FF+ ,
servicesGG 
.GG 
AddDbContextGG )
<GG) *
TGG* +
>GG+ ,
(GG, -
optionsGG- 4
=>GG5 7
optionsGG8 ?
.GG? @
UseSqlServerGG@ L
(GGL M
connectionStringGGM ]
,GG] ^"
sqlServerOptionsActionHH .
:HH. /

sqlOptionsHH0 :
=>HH; =
{II 

sqlOptionsJJ &
.JJ& ' 
EnableRetryOnFailureJJ' ;
(JJ; <
maxRetryCountKK  -
:KK- .
MaxRetryCountKK/ <
,KK< =
maxRetryDelayLL  -
:LL- .
TimeSpanLL/ 7
.LL7 8
FromSecondsLL8 C
(LLC D
MaxRetryDelayLLD Q
)LLQ R
,LLR S
errorNumbersToAddMM  1
:MM1 2
nullMM3 7
)MM7 8
;MM8 9
}NN 
)NN 
,NN 
ServiceLifetimeNN *
)NN* +
;NN+ ,
breakOO 
;OO 
casePP 
DatabaseTypePP !
.PP! "
InMemoryPP" *
:PP* +
servicesQQ 
.QQ 
AddDbContextQQ )
<QQ) *
TQQ* +
>QQ+ ,
(QQ, -
optionsQQ- 4
=>QQ5 7
optionsQQ8 ?
.QQ? @
UseInMemoryDatabaseQQ@ S
(QQS T
connectionStringQQT d
)QQd e
,QQe f
ServiceLifetimeQQg v
)QQv w
;QQw x
breakRR 
;RR 
caseSS 
DatabaseTypeSS !
.SS! "
MySqlSS" '
:SS' (
servicesTT 
.TT 
AddDbContextTT )
<TT) *
TTT* +
>TT+ ,
(TT, -
optionsTT- 4
=>TT5 7
optionsTT8 ?
.TT? @
UseMySqlTT@ H
(TTH I
connectionStringTTI Y
,TTY Z

sqlOptionsTT[ e
=>TTf h
{UU 

sqlOptionsVV "
.VV" # 
EnableRetryOnFailureVV# 7
(VV7 8
maxRetryCountWW )
:WW) *
MaxRetryCountWW+ 8
,WW8 9
maxRetryDelayXX )
:XX) *
TimeSpanXX+ 3
.XX3 4
FromSecondsXX4 ?
(XX? @
MaxRetryDelayXX@ M
)XXM N
,XXN O
errorNumbersToAddYY -
:YY- .
newYY/ 2
ListYY3 7
<YY7 8
intYY8 ;
>YY; <
(YY< =
)YY= >
)YY> ?
;YY? @
}ZZ 
)ZZ 
,ZZ 
ServiceLifetimeZZ &
)ZZ& '
;ZZ' (
break[[ 
;[[ 
case\\ 
DatabaseType\\ !
.\\! "
MariaDb\\" )
:\\) *
services]] 
.]] 
AddDbContext]] )
<]]) *
T]]* +
>]]+ ,
(]], -
options]]- 4
=>]]5 7
options]]8 ?
.]]? @
UseMySql]]@ H
(]]H I
connectionString]]I Y
,]]Y Z

sqlOptions]][ e
=>]]f h
{^^ 

sqlOptions__ "
.__" # 
EnableRetryOnFailure__# 7
(__7 8
maxRetryCount`` )
:``) *
MaxRetryCount``+ 8
,``8 9
maxRetryDelayaa )
:aa) *
TimeSpanaa+ 3
.aa3 4
FromSecondsaa4 ?
(aa? @
MaxRetryDelayaa@ M
)aaM N
,aaN O
errorNumbersToAddbb -
:bb- .
newbb/ 2
Listbb3 7
<bb7 8
intbb8 ;
>bb; <
(bb< =
)bb= >
)bb> ?
;bb? @
}cc 
)cc 
,cc 
ServiceLifetimecc &
)cc& '
;cc' (
breakdd 
;dd 
caseee 
DatabaseTypeee !
.ee! "
Sqliteee" (
:ee( )
servicesff 
.ff 
AddDbContextff )
<ff) *
Tff* +
>ff+ ,
(ff, -
optionsff- 4
=>ff5 7
optionsff8 ?
.ff? @
	UseSqliteff@ I
(ffI J
connectionStringffJ Z
)ffZ [
,ff[ \
ServiceLifetimeff] l
)ffl m
;ffm n
breakgg 
;gg 
casehh 
DatabaseTypehh !
.hh! "
Cosmoshh" (
:hh( )
ifii 
(ii %
cosmosConfigurationParamsii 1
==ii2 4
nullii5 9
)ii9 :
throwjj 
newjj !
ArgumentExceptionjj" 3
(jj3 4
$"jj4 6
$strjj6 _
"jj_ `
)jj` a
;jja b
serviceskk 
.kk 
AddDbContextkk )
<kk) *
Tkk* +
>kk+ ,
(kk, -
optionskk- 4
=>kk5 7
optionskk8 ?
.kk? @
	UseCosmoskk@ I
(kkI J%
cosmosConfigurationParamskkJ c
.kkc d
Endpointkkd l
,kkl m%
cosmosConfigurationParamsll 1
.ll1 2
Keyll2 5
,ll5 6%
cosmosConfigurationParamsll7 P
.llP Q
DatabaseNamellQ ]
)ll] ^
,ll^ _
ServiceLifetimell` o
)llo p
;llp q
breakmm 
;mm 
casenn 
DatabaseTypenn !
.nn! "

PostgreSQLnn" ,
:nn, -
servicesoo 
.oo 
AddDbContextoo )
<oo) *
Too* +
>oo+ ,
(oo, -
optionsoo- 4
=>oo5 7
optionsoo8 ?
.oo? @
	UseNpgsqloo@ I
(ooI J
connectionStringooJ Z
,ooZ [

sqlOptionsoo\ f
=>oog i
{pp 

sqlOptionsqq "
.qq" # 
EnableRetryOnFailureqq# 7
(qq7 8
maxRetryCountrr )
:rr) *
MaxRetryCountrr+ 8
,rr8 9
maxRetryDelayss )
:ss) *
TimeSpanss+ 3
.ss3 4
FromSecondsss4 ?
(ss? @
MaxRetryDelayss@ M
)ssM N
,ssN O
errorCodesToAddtt +
:tt+ ,
newtt- 0
Listtt1 5
<tt5 6
stringtt6 <
>tt< =
(tt= >
)tt> ?
)tt? @
;tt@ A
}uu 
)uu 
,uu 
ServiceLifetimeuu &
)uu& '
;uu' (
breakvv 
;vv 
caseww 
DatabaseTypeww !
.ww! "
FireBirdww" *
:ww* +
servicesxx 
.xx 
AddDbContextxx )
<xx) *
Txx* +
>xx+ ,
(xx, -
optionsxx- 4
=>xx5 7
optionsxx8 ?
.xx? @
UseFirebirdxx@ K
(xxK L
connectionStringxxL \
)xx\ ]
,xx] ^
ServiceLifetimexx_ n
)xxn o
;xxo p
breakyy 
;yy 
casezz 
DatabaseTypezz !
.zz! "
Oraclezz" (
:zz( )
services{{ 
.{{ 
AddDbContext{{ )
<{{) *
T{{* +
>{{+ ,
({{, -
options{{- 4
=>{{5 7
options{{8 ?
.{{? @
	UseOracle{{@ I
({{I J
connectionString{{J Z
){{Z [
,{{[ \
ServiceLifetime{{] l
){{l m
;{{m n
break|| 
;|| 
default
�� 
:
�� 
throw
�� 
new
�� 
ArgumentException
�� /
(
��/ 0
$str
��0 P
)
��P Q
;
��Q R
}
�� 
}
�� 	
}
�� 
}�� �D
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\Common\PredicateBuilder.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &
Common& ,
{ 
public 

static 
class 
PredicateBuilder (
{		 
public 
static 

Expression  
<  !
Func! %
<% &
T& '
,' (
bool) -
>- .
>. /
True0 4
<4 5
T5 6
>6 7
(7 8
)8 9
{: ;
return< B
paramC H
=>I K
trueL P
;P Q
}R S
public 
static 

Expression  
<  !
Func! %
<% &
T& '
,' (
bool) -
>- .
>. /
False0 5
<5 6
T6 7
>7 8
(8 9
)9 :
{; <
return= C
paramD I
=>J L
falseM R
;R S
}T U
public 
static 

Expression  
<  !
Func! %
<% &
T& '
,' (
bool) -
>- .
>. /
Create0 6
<6 7
T7 8
>8 9
(9 :

Expression: D
<D E
FuncE I
<I J
TJ K
,K L
boolM Q
>Q R
>R S
	predicateT ]
)] ^
{_ `
returna g
	predicateh q
;q r
}s t
public 
static 

Expression  
<  !
Func! %
<% &
T& '
,' (
bool) -
>- .
>. /
And0 3
<3 4
T4 5
>5 6
(6 7
this7 ;

Expression< F
<F G
FuncG K
<K L
TL M
,M N
boolO S
>S T
>T U
firstV [
,[ \

Expression] g
<g h
Funch l
<l m
Tm n
,n o
boolp t
>t u
>u v
secondw }
)} ~
{ 	
return 
first 
. 
Compose  
(  !
second! '
,' (

Expression) 3
.3 4
AndAlso4 ;
); <
;< =
} 	
public$$ 
static$$ 

Expression$$  
<$$  !
Func$$! %
<$$% &
T$$& '
,$$' (
bool$$) -
>$$- .
>$$. /
Or$$0 2
<$$2 3
T$$3 4
>$$4 5
($$5 6
this$$6 :

Expression$$; E
<$$E F
Func$$F J
<$$J K
T$$K L
,$$L M
bool$$N R
>$$R S
>$$S T
first$$U Z
,$$Z [

Expression$$\ f
<$$f g
Func$$g k
<$$k l
T$$l m
,$$m n
bool$$o s
>$$s t
>$$t u
second$$v |
)$$| }
{%% 	
return&& 
first&& 
.&& 
Compose&&  
(&&  !
second&&! '
,&&' (

Expression&&) 3
.&&3 4
OrElse&&4 :
)&&: ;
;&&; <
}'' 	
public,, 
static,, 

Expression,,  
<,,  !
Func,,! %
<,,% &
T,,& '
,,,' (
bool,,) -
>,,- .
>,,. /
Not,,0 3
<,,3 4
T,,4 5
>,,5 6
(,,6 7
this,,7 ;

Expression,,< F
<,,F G
Func,,G K
<,,K L
T,,L M
,,,M N
bool,,O S
>,,S T
>,,T U

expression,,V `
),,` a
{-- 	
var.. 
negated.. 
=.. 

Expression.. $
...$ %
Not..% (
(..( )

expression..) 3
...3 4
Body..4 8
)..8 9
;..9 :
return// 

Expression// 
.// 
Lambda// $
<//$ %
Func//% )
<//) *
T//* +
,//+ ,
bool//- 1
>//1 2
>//2 3
(//3 4
negated//4 ;
,//; <

expression//= G
.//G H

Parameters//H R
)//R S
;//S T
}00 	
static55 

Expression55 
<55 
T55 
>55 
Compose55 $
<55$ %
T55% &
>55& '
(55' (
this55( ,

Expression55- 7
<557 8
T558 9
>559 :
first55; @
,55@ A

Expression55B L
<55L M
T55M N
>55N O
second55P V
,55V W
Func55X \
<55\ ]

Expression55] g
,55g h

Expression55i s
,55s t

Expression55u 
>	55 �
merge
55� �
)
55� �
{66 	
var88 
map88 
=88 
first88 
.88 

Parameters88 &
.99 
Select99 
(99 
(99 
f99 
,99 
i99 
)99 
=>99 !
new99" %
{99& '
f99( )
,99) *
s99+ ,
=99- .
second99/ 5
.995 6

Parameters996 @
[99@ A
i99A B
]99B C
}99D E
)99E F
.:: 
ToDictionary:: 
(:: 
p:: 
=>::  "
p::# $
.::$ %
s::% &
,::& '
p::( )
=>::* ,
p::- .
.::. /
f::/ 0
)::0 1
;::1 2
var== 

secondBody== 
=== 
ParameterRebinder== .
.==. /
ReplaceParameters==/ @
(==@ A
map==A D
,==D E
second==F L
.==L M
Body==M Q
)==Q R
;==R S
return@@ 

Expression@@ 
.@@ 
Lambda@@ $
<@@$ %
T@@% &
>@@& '
(@@' (
merge@@( -
(@@- .
first@@. 3
.@@3 4
Body@@4 8
,@@8 9

secondBody@@: D
)@@D E
,@@E F
first@@G L
.@@L M

Parameters@@M W
)@@W X
;@@X Y
}AA 	
classCC 
ParameterRebinderCC 
:CC  !
ExpressionVisitorCC" 3
{DD 	
readonlyEE 

DictionaryEE 
<EE  
ParameterExpressionEE  3
,EE3 4
ParameterExpressionEE5 H
>EEH I
_mapEEJ N
;EEN O
privateGG 
ParameterRebinderGG %
(GG% &

DictionaryGG& 0
<GG0 1
ParameterExpressionGG1 D
,GGD E
ParameterExpressionGGF Y
>GGY Z
mapGG[ ^
)GG^ _
{HH 
thisII 
.II 
_mapII 
=II 
mapII 
??II  "
newII# &

DictionaryII' 1
<II1 2
ParameterExpressionII2 E
,IIE F
ParameterExpressionIIG Z
>IIZ [
(II[ \
)II\ ]
;II] ^
}JJ 
publicLL 
staticLL 

ExpressionLL $
ReplaceParametersLL% 6
(LL6 7

DictionaryLL7 A
<LLA B
ParameterExpressionLLB U
,LLU V
ParameterExpressionLLW j
>LLj k
mapLLl o
,LLo p

ExpressionLLq {
expLL| 
)	LL �
{MM 
returnNN 
newNN 
ParameterRebinderNN ,
(NN, -
mapNN- 0
)NN0 1
.NN1 2
VisitNN2 7
(NN7 8
expNN8 ;
)NN; <
;NN< =
}OO 
	protectedQQ 
overrideQQ 

ExpressionQQ )
VisitParameterQQ* 8
(QQ8 9
ParameterExpressionQQ9 L
nodeQQM Q
)QQQ R
{RR 
ifTT 
(TT 
_mapTT 
.TT 
TryGetValueTT $
(TT$ %
nodeTT% )
,TT) *
outTT+ .
ParameterExpressionTT/ B
replacementTTC N
)TTN O
)TTO P
{UU 
nodeVV 
=VV 
replacementVV &
;VV& '
}WW 
returnYY 
baseYY 
.YY 
VisitParameterYY *
(YY* +
nodeYY+ /
)YY/ 0
;YY0 1
}ZZ 
}[[ 	
}\\ 
}]] �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\Enums\DatabaseType.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &
Enums& +
{ 
public 

enum 
DatabaseType 
{ 
	SqlServer 
= 
$num 
, 
Sqlite 
= 
$num 
, 
InMemory 
= 
$num 
, 
Cosmos 
= 
$num 
, 

PostgreSQL		 
=		 
$num		 
,		 
MySql

 
=

 
$num

 
,

 
MariaDb 
= 
$num 
, 
FireBird 
= 
$num 
, 
Oracle 
= 
$num 
, 
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\Exceptions\ContextNullException.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

Exceptions& 0
{ 
[ 
Serializable 
] 
public 

class  
ContextNullException %
:& '
	Exception( 1
{ 
public  
ContextNullException #
(# $
)$ %
:& '
base( ,
(, -
)- .
{		 	
}

 	
public  
ContextNullException #
(# $
string$ *
message+ 2
)2 3
:4 5
base6 :
(: ;
message; B
)B C
{ 	
} 	
public  
ContextNullException #
(# $
string$ *
message+ 2
,2 3
	Exception4 =
innerException> L
)L M
:N O
baseP T
(T U
messageU \
,\ ]
innerException^ l
)l m
{ 	
} 	
	protected  
ContextNullException &
(& '
System' -
.- .
Runtime. 5
.5 6
Serialization6 C
.C D
SerializationInfoD U
serializationInfoV g
,g h
Systemi o
.o p
Runtimep w
.w x
Serialization	x �
.
� �
StreamingContext
� �
streamingContext
� �
)
� �
: 
base 
( 
serializationInfo $
,$ %
streamingContext& 6
)6 7
{ 	
} 	
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\Exceptions\RepositoryNotFoundException.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

Exceptions& 0
{ 
[ 
Serializable 
] 
public 

class '
RepositoryNotFoundException ,
:- .
	Exception/ 8
{ 
public '
RepositoryNotFoundException *
(* +
)+ ,
:- .
base/ 3
(3 4
)4 5
{		 	
}

 	
public '
RepositoryNotFoundException *
(* +
string+ 1
message2 9
)9 :
:; <
base= A
(A B
messageB I
)I J
{ 	
} 	
public '
RepositoryNotFoundException *
(* +
string+ 1
message2 9
,9 :
	Exception; D
innerExceptionE S
)S T
:U V
baseW [
([ \
message\ c
,c d
innerExceptione s
)s t
{ 	
} 	
	protected '
RepositoryNotFoundException -
(- .
System. 4
.4 5
Runtime5 <
.< =
Serialization= J
.J K
SerializationInfoK \
serializationInfo] n
,n o
Systemp v
.v w
Runtimew ~
.~ 
Serialization	 �
.
� �
StreamingContext
� �
streamingContext
� �
)
� �
: 
base 
( 
serializationInfo $
,$ %
streamingContext& 6
)6 7
{ 	
} 	
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\Exceptions\TransactionNullException.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

Exceptions& 0
{ 
[ 
Serializable 
] 
public 

class $
TransactionNullException )
:* +
	Exception, 5
{ 
public $
TransactionNullException '
(' (
)( )
:* +
base, 0
(0 1
)1 2
{		 	
}

 	
public $
TransactionNullException '
(' (
string( .
message/ 6
)6 7
:8 9
base: >
(> ?
message? F
)F G
{ 	
} 	
public $
TransactionNullException '
(' (
string( .
message/ 6
,6 7
	Exception8 A
innerExceptionB P
)P Q
:R S
baseT X
(X Y
messageY `
,` a
innerExceptionb p
)p q
{ 	
} 	
	protected $
TransactionNullException *
(* +
System+ 1
.1 2
Runtime2 9
.9 :
Serialization: G
.G H
SerializationInfoH Y
serializationInfoZ k
,k l
Systemm s
.s t
Runtimet {
.{ |
Serialization	| �
.
� �
StreamingContext
� �
streamingContext
� �
)
� �
: 
base 
( 
serializationInfo $
,$ %
streamingContext& 6
)6 7
{ 	
} 	
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\Pagination\PaginationBase.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

Pagination& 0
{ 
public 

abstract 
class 
PaginationBase (
{ 
public 
int 
CurrentPage 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
	PageCount 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
PageSize		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
public

 
int

 
RowCount

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
int 
FirstRowOnPage !
{ 	
get 
{ 
return 
( 
CurrentPage %
-& '
$num( )
)) *
*+ ,
PageSize- 5
+6 7
$num8 9
;9 :
}; <
} 	
public 
int 
LastRowOnPage  
{ 	
get 
{ 
return 
Math 
. 
Min !
(! "
CurrentPage" -
*. /
PageSize0 8
,8 9
RowCount: B
)B C
;C D
}E F
} 	
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\Pagination\PaginationResult.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

Pagination& 0
{ 
public 

class 
PaginationResult !
<! "
T" #
># $
:% &
PaginationBase' 5
where6 ;
T< =
:> ?
class@ E
{ 
public 
IList 
< 
T 
> 
Results 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
PaginationResult		 
(		  
)		  !
{

 	
Results 
= 
new 
List 
< 
T  
>  !
(! "
)" #
;# $
} 	
} 
} �/
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\Repository\IRepository.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

Repository& 0
{		 
public

 

	interface

 
IRepository

  
<

  !
T

! "
>

" #
where

$ )
T

* +
:

, -
class

. 3
{ 
Task 
< 
T 
> 
Create 
( 
T 
entity 
,  
bool! %
detach& ,
=- .
true/ 3
)3 4
;4 5
Task 
< 
T 
> 
Update 
( 
T 
entity 
,  
bool! %
detach& ,
=- .
true/ 3
)3 4
;4 5
Task 
< 
bool 
> 
Delete 
( 
T 
entity "
," #
bool$ (
detach) /
=0 1
true2 6
)6 7
;7 8
Task 
< 
bool 
> 
Delete 
( 

Expression $
<$ %
Func% )
<) *
T* +
,+ ,
bool- 1
>1 2
>2 3
	predicate4 =
=> ?
null@ D
)D E
;E F
Task 
< 
T 
> 
GetFirstOrDefault !
(! "

Expression" ,
<, -
Func- 1
<1 2
T2 3
,3 4
bool5 9
>9 :
>: ;
	predicate< E
=F G
nullH L
)L M
;M N
Task 
< 
T 
> 
GetLastOrDefault  
(  !

Expression! +
<+ ,
Func, 0
<0 1
T1 2
,2 3
bool4 8
>8 9
>9 :
	predicate; D
=E F
nullG K
)K L
;L M
Task 
< 
IList 
< 
T 
> 
> 
Get 
( 

Expression %
<% &
Func& *
<* +
T+ ,
,, -
bool. 2
>2 3
>3 4
	predicate5 >
=? @
nullA E
)E F
;F G
Task 
< 
IList 
< 
T 
> 
> 
Get 
( 
IList  
<  !
string! '
>' (
include) 0
,0 1

Expression2 <
<< =
Func= A
<A B
TB C
,C D
boolE I
>I J
>J K
	predicateL U
=V W
nullX \
)\ ]
;] ^
Task 
< 
PaginationResult 
< 
T 
>  
>  !
Get" %
(% &
int& )
currentPage* 5
,5 6
int7 :
pageSize; C
,C D
IListE J
<J K
stringK Q
>Q R
includedNestedFielsS f
,f g

Expressionh r
<r s
Funcs w
<w x
Tx y
,y z
bool{ 
>	 �
>
� �
	predicate
� �
=
� �
null
� �
)
� �
;
� �
Task 
< 
PaginationResult 
< 
T 
>  
>  !
Get" %
(% &
int& )
currentPage* 5
,5 6
int7 :
pageSize; C
,C D

ExpressionE O
<O P
FuncP T
<T U
TU V
,V W
boolX \
>\ ]
>] ^
	predicate_ h
=i j
nullk o
)o p
;p q
Task 
< 
IList 
< 
T 
> 
> 
Get 
< 
TKey 
>  
(  !

Expression! +
<+ ,
Func, 0
<0 1
T1 2
,2 3
bool4 8
>8 9
>9 :
	predicate; D
,D E

ExpressionF P
<P Q
FuncQ U
<U V
TV W
,W X
TKeyY ]
>] ^
>^ _
keySelector` k
,k l
ListSortDirectionm ~
sortDirection	 �
)
� �
;
� �
Task 
< 
PaginationResult 
< 
T 
>  
>  !
Get" %
<% &
TKey& *
>* +
(+ ,
int, /
currentPage0 ;
,; <
int= @
pageSizeA I
,I J

ExpressionK U
<U V
FuncV Z
<Z [
T[ \
,\ ]
bool^ b
>b c
>c d
	predicatee n
,n o

Expressionp z
<z {
Func{ 
<	 �
T
� �
,
� �
TKey
� �
>
� �
>
� �
keySelector
� �
,
� �
ListSortDirection
� �
sortDirection
� �
)
� �
;
� �
Task 
< 
long 
> 
Count 
( 

Expression #
<# $
Func$ (
<( )
T) *
,* +
bool, 0
>0 1
>1 2
	predicate3 <
== >
null? C
)C D
;D E
} 
} ��
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\Repository\Repository.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

Repository& 0
{ 
public 

class 

Repository 
< 
T 
> 
:  
IRepository! ,
<, -
T- .
>. /
where0 5
T6 7
:8 9
class: ?
{ 
private 
	DbContext 
	DbContext #
{$ %
get& )
;) *
set+ .
;. /
}0 1
private 
bool 
DbContextBehaviour '
{) *
get+ .
;. /
set0 3
;3 4
}5 6
private 

IQueryable 
< 
T 
> 
	Queryable '
=>( *
SetQuery+ 3
<3 4
T4 5
>5 6
(6 7
)7 8
;8 9
public 

Repository 
( 
	DbContext #
context$ +
,+ ,
bool- 1
dbContextBehaviour2 D
=E F
falseG L
)L M
{ 	
	DbContext 
= 
context 
;  
DbContextBehaviour 
=  
dbContextBehaviour! 3
;3 4
} 	
public 
async 
Task 
< 
T 
> 
Create #
(# $
T$ %
entity& ,
,, -
bool. 2
detach3 9
=: ;
true< @
)@ A
{   	
var!! 
result!! 
=!! 
await!! 
	DbContext!! (
.!!( )
Set!!) ,
<!!, -
T!!- .
>!!. /
(!!/ 0
)!!0 1
.!!1 2
AddAsync!!2 :
(!!: ;
entity!!; A
)!!A B
.!!B C
ConfigureAwait!!C Q
(!!Q R
false!!R W
)!!W X
;!!X Y
result"" 
."" 
State"" 
="" 
EntityState"" &
.""& '
Added""' ,
;"", -
await## 
	DbContext## 
.## 
SaveChangesAsync## ,
(##, -
)##- .
.##. /
ConfigureAwait##/ =
(##= >
false##> C
)##C D
;##D E
if$$ 
($$ 
detach$$ 
)$$ 
result$$ 
.$$ 
State$$ $
=$$% &
EntityState$$' 2
.$$2 3
Detached$$3 ;
;$$; <
return%% 
result%% 
.%% 
Entity%%  
;%%  !
}&& 	
public(( 
async(( 
Task(( 
<(( 
T(( 
>(( 
Update(( #
(((# $
T(($ %
entity((& ,
,((, -
bool((. 2
detach((3 9
=((: ;
true((< @
)((@ A
{)) 	
var** 
result** 
=** 
	DbContext** "
.**" #
Set**# &
<**& '
T**' (
>**( )
(**) *
)*** +
.**+ ,
Update**, 2
(**2 3
entity**3 9
)**9 :
;**: ;
result++ 
.++ 
State++ 
=++ 
EntityState++ &
.++& '
Modified++' /
;++/ 0
await,, 
	DbContext,, 
.,, 
SaveChangesAsync,, ,
(,,, -
),,- .
.,,. /
ConfigureAwait,,/ =
(,,= >
false,,> C
),,C D
;,,D E
if-- 
(-- 
detach-- 
)-- 
result-- 
.-- 
State-- $
=--% &
EntityState--' 2
.--2 3
Detached--3 ;
;--; <
return.. 
result.. 
... 
Entity..  
;..  !
}// 	
public11 
async11 
Task11 
<11 
bool11 
>11 
Delete11  &
(11& '
T11' (
entity11) /
,11/ 0
bool111 5
detach116 <
=11= >
true11? C
)11C D
{22 	
var33 
result33 
=33 
	DbContext33 "
.33" #
Set33# &
<33& '
T33' (
>33( )
(33) *
)33* +
.33+ ,
Remove33, 2
(332 3
entity333 9
)339 :
;33: ;
result44 
.44 
State44 
=44 
EntityState44 &
.44& '
Deleted44' .
;44. /
var55 
deleted55 
=55 
await55 
	DbContext55  )
.55) *
SaveChangesAsync55* :
(55: ;
)55; <
.55< =
ConfigureAwait55= K
(55K L
false55L Q
)55Q R
;55R S
if66 
(66 
detach66 
)66 
result66 
.66 
State66 $
=66% &
EntityState66' 2
.662 3
Detached663 ;
;66; <
return77 
deleted77 
>77 
$num77 
;77 
}88 	
public:: 
async:: 
Task:: 
<:: 
bool:: 
>:: 
Delete::  &
(::& '

Expression::' 1
<::1 2
Func::2 6
<::6 7
T::7 8
,::8 9
bool::: >
>::> ?
>::? @
	predicate::A J
=::K L
null::M Q
)::Q R
{;; 	
var<< 
result<< 
=<< 
new<< 
List<< !
<<<! "
bool<<" &
><<& '
(<<' (
)<<( )
;<<) *
var== 
entities== 
=== 
await==  
Get==! $
(==$ %
	predicate==% .
)==. /
.==/ 0
ConfigureAwait==0 >
(==> ?
false==? D
)==D E
;==E F
foreach>> 
(>> 
var>> 
item>> 
in>>  
entities>>! )
)>>) *
{?? 
result@@ 
.@@ 
Add@@ 
(@@ 
await@@  
Delete@@! '
(@@' (
item@@( ,
)@@, -
.@@- .
ConfigureAwait@@. <
(@@< =
false@@= B
)@@B C
)@@C D
;@@D E
}AA 
returnCC 
resultCC 
.CC 
AllCC 
(CC 
rCC 
=>CC !
rCC" #
)CC# $
;CC$ %
}DD 	
publicFF 
TaskFF 
<FF 
TFF 
>FF 
GetFirstOrDefaultFF (
(FF( )

ExpressionFF) 3
<FF3 4
FuncFF4 8
<FF8 9
TFF9 :
,FF: ;
boolFF< @
>FF@ A
>FFA B
	predicateFFC L
=FFM N
nullFFO S
)FFS T
{GG 	
returnHH !
GetQueryFromPredicateHH (
(HH( )
	predicateHH) 2
)HH2 3
.HH3 4
FirstOrDefaultAsyncHH4 G
(HHG H
)HHH I
;HHI J
}II 	
publicKK 
TaskKK 
<KK 
TKK 
>KK 
GetLastOrDefaultKK '
(KK' (

ExpressionKK( 2
<KK2 3
FuncKK3 7
<KK7 8
TKK8 9
,KK9 :
boolKK; ?
>KK? @
>KK@ A
	predicateKKB K
=KKL M
nullKKN R
)KKR S
{LL 	
returnMM !
GetQueryFromPredicateMM (
(MM( )
	predicateMM) 2
)MM2 3
.MM3 4
LastOrDefaultAsyncMM4 F
(MMF G
)MMG H
;MMH I
}NN 	
publicPP 
asyncPP 
TaskPP 
<PP 
IListPP 
<PP  
TPP  !
>PP! "
>PP" #
GetPP$ '
(PP' (

ExpressionPP( 2
<PP2 3
FuncPP3 7
<PP7 8
TPP8 9
,PP9 :
boolPP; ?
>PP? @
>PP@ A
	predicatePPB K
=PPL M
nullPPN R
)PPR S
{QQ 	
returnRR 
awaitRR !
GetQueryFromPredicateRR .
(RR. /
	predicateRR/ 8
)RR8 9
.RR9 :
ToListAsyncRR: E
(RRE F
)RRF G
.RRG H
ConfigureAwaitRRH V
(RRV W
falseRRW \
)RR\ ]
;RR] ^
}SS 	
publicUU 
asyncUU 
TaskUU 
<UU 
IListUU 
<UU  
TUU  !
>UU! "
>UU" #
GetUU$ '
<UU' (
TKeyUU( ,
>UU, -
(UU- .

ExpressionUU. 8
<UU8 9
FuncUU9 =
<UU= >
TUU> ?
,UU? @
boolUUA E
>UUE F
>UUF G
	predicateUUH Q
,UUQ R

ExpressionUUS ]
<UU] ^
FuncUU^ b
<UUb c
TUUc d
,UUd e
TKeyUUf j
>UUj k
>UUk l
keySelectorUUm x
,UUx y
ListSortDirection	UUz �
sortDirection
UU� �
)
UU� �
{VV 	
returnWW 
awaitWW '
GetSortedQueryFromPredicateWW 4
(WW4 5
	predicateWW5 >
,WW> ?
keySelectorWW@ K
,WWK L
sortDirectionWWM Z
)WWZ [
.WW[ \
ToListAsyncWW\ g
(WWg h
)WWh i
.WWi j
ConfigureAwaitWWj x
(WWx y
falseWWy ~
)WW~ 
;	WW �
}XX 	
publicZZ 
asyncZZ 
TaskZZ 
<ZZ 
IListZZ 
<ZZ  
TZZ  !
>ZZ! "
>ZZ" #
GetZZ$ '
(ZZ' (
IListZZ( -
<ZZ- .
stringZZ. 4
>ZZ4 5
includeZZ6 =
,ZZ= >

ExpressionZZ? I
<ZZI J
FuncZZJ N
<ZZN O
TZZO P
,ZZP Q
boolZZR V
>ZZV W
>ZZW X
	predicateZZY b
=ZZc d
nullZZe i
)ZZi j
{[[ 	
return\\ 
await\\ ,
 GetResultSetWithNestedProperties\\ 9
(\\9 :
include\\: A
,\\A B
	predicate\\C L
)\\L M
.\\M N
ToListAsync\\N Y
(\\Y Z
)\\Z [
.\\[ \
ConfigureAwait\\\ j
(\\j k
false\\k p
)\\p q
;\\q r
}]] 	
public__ 
Task__ 
<__ 
PaginationResult__ $
<__$ %
T__% &
>__& '
>__' (
Get__) ,
(__, -
int__- 0
currentPage__1 <
,__< =
int__> A
pageSize__B J
,__J K
IList__L Q
<__Q R
string__R X
>__X Y
includedNestedFiels__Z m
,__m n

Expression__o y
<__y z
Func__z ~
<__~ 
T	__ �
,
__� �
bool
__� �
>
__� �
>
__� �
	predicate
__� �
=
__� �
null
__� �
)
__� �
{`` 	
returnaa 1
%GetResultSetWithNestedPropertiesPagedaa 8
(aa8 9
currentPageaa9 D
,aaD E
pageSizeaaF N
,aaN O
includedNestedFielsaaP c
,aac d
	predicateaae n
)aan o
;aao p
}bb 	
publicdd 
Taskdd 
<dd 
PaginationResultdd $
<dd$ %
Tdd% &
>dd& '
>dd' (
Getdd) ,
(dd, -
intdd- 0
currentPagedd1 <
,dd< =
intdd> A
pageSizeddB J
,ddJ K

ExpressionddL V
<ddV W
FuncddW [
<dd[ \
Tdd\ ]
,dd] ^
booldd_ c
>ddc d
>ddd e
	predicateddf o
=ddp q
nullddr v
)ddv w
{ee 	
returnff 
GetPagedResultff !
(ff! "
currentPageff" -
,ff- .
pageSizeff/ 7
,ff7 8!
GetQueryFromPredicateff9 N
(ffN O
	predicateffO X
)ffX Y
)ffY Z
;ffZ [
}gg 	
publicii 
Taskii 
<ii 
PaginationResultii $
<ii$ %
Tii% &
>ii& '
>ii' (
Getii) ,
<ii, -
TKeyii- 1
>ii1 2
(ii2 3
intii3 6
currentPageii7 B
,iiB C
intiiD G
pageSizeiiH P
,iiP Q

ExpressioniiR \
<ii\ ]
Funcii] a
<iia b
Tiib c
,iic d
booliie i
>iii j
>iij k
	predicateiil u
,iiv w

Expression	iix �
<
ii� �
Func
ii� �
<
ii� �
T
ii� �
,
ii� �
TKey
ii� �
>
ii� �
>
ii� �
keySelector
ii� �
,
ii� �
ListSortDirection
ii� �
sortDirection
ii� �
)
ii� �
{jj 	
returnkk 
GetPagedResultkk !
(kk! "
currentPagekk" -
,kk- .
pageSizekk/ 7
,kk7 8'
GetSortedQueryFromPredicatekk9 T
(kkT U
	predicatekkU ^
,kk^ _
keySelectorkk` k
,kkk l
sortDirectionkkm z
)kkz {
)kk{ |
;kk| }
}ll 	
publicnn 
Tasknn 
<nn 
longnn 
>nn 
Countnn 
(nn  

Expressionnn  *
<nn* +
Funcnn+ /
<nn/ 0
Tnn0 1
,nn1 2
boolnn3 7
>nn7 8
>nn8 9
	predicatenn: C
=nnD E
nullnnF J
)nnJ K
{oo 	
returnpp 
	predicatepp 
==pp 
nullpp  $
?pp% &
	Queryablepp' 0
.pp0 1
LongCountAsyncpp1 ?
(pp? @
)pp@ A
:ppB C
	QueryableppD M
.ppM N
LongCountAsyncppN \
(pp\ ]
	predicatepp] f
)ppf g
;ppg h
}qq 	
privatess 

IQueryabless 
<ss 
Tss 
>ss !
GetQueryFromPredicatess 3
(ss3 4

Expressionss4 >
<ss> ?
Funcss? C
<ssC D
TssD E
,ssE F
boolssG K
>ssK L
>ssL M
	predicatessN W
)ssW X
{tt 	
returnuu 
	predicateuu 
!=uu 
nulluu  $
?uu% &
	Queryableuu' 0
.uu0 1
Whereuu1 6
(uu6 7
	predicateuu7 @
)uu@ A
:uuA B
	QueryableuuC L
;uuL M
}vv 	
privatexx 

IQueryablexx 
<xx 
Txx 
>xx '
GetSortedQueryFromPredicatexx 9
<xx9 :
TKeyxx: >
>xx> ?
(xx? @

Expressionxx@ J
<xxJ K
FuncxxK O
<xxO P
TxxP Q
,xxQ R
boolxxS W
>xxW X
>xxX Y
	predicatexxZ c
,xxc d

Expressionxxe o
<xxo p
Funcxxp t
<xxt u
Txxu v
,xxv w
TKeyxxx |
>xx| }
>xx} ~
keySelector	xx �
,
xx� �
ListSortDirection
xx� �
sortDirection
xx� �
)
xx� �
{yy 	
ifzz 
(zz 
sortDirectionzz 
==zz  
ListSortDirectionzz! 2
.zz2 3
	Ascendingzz3 <
)zz< =
{{{ 
return|| 
	predicate||  
!=||! #
null||$ (
?||) *
	Queryable||+ 4
.||4 5
Where||5 :
(||: ;
	predicate||; D
)||D E
.||E F
OrderBy||F M
(||M N
keySelector||N Y
)||Y Z
:||[ \
	Queryable||] f
.||f g
OrderBy||g n
(||n o
keySelector||o z
)||z {
;||{ |
}}} 
return 
	predicate 
!= 
null  $
?% &
	Queryable' 0
.0 1
Where1 6
(6 7
	predicate7 @
)@ A
.A B
OrderByDescendingB S
(S T
keySelectorT _
)_ `
:a b
	Queryablec l
.l m
OrderByDescendingm ~
(~ 
keySelector	 �
)
� �
;
� �
}
�� 	
private
�� 

IQueryable
�� 
<
�� 
T
�� 
>
�� .
 GetResultSetWithNestedProperties
�� >
(
��> ?
IList
��? D
<
��D E
string
��E K
>
��K L!
includedNestedFiels
��M `
,
��` a

Expression
��b l
<
��l m
Func
��m q
<
��q r
T
��r s
,
��s t
bool
��u y
>
��y z
>
��z {
	predicate��| �
=��� �
null��� �
)��� �
{
�� 	
return
�� !
includedNestedFiels
�� &
.
��& '
	Aggregate
��' 0
(
��0 1#
GetQueryFromPredicate
��1 F
(
��F G
	predicate
��G P
)
��P Q
,
��Q R
(
��S T
current
��T [
,
��[ \
property
��] e
)
��e f
=>
��g i
current
��j q
.
��q r
Include
��r y
(
��y z
property��z �
)��� �
)��� �
;��� �
}
�� 	
private
�� 
Task
�� 
<
�� 
PaginationResult
�� %
<
��% &
T
��& '
>
��' (
>
��( )3
%GetResultSetWithNestedPropertiesPaged
��* O
(
��O P
int
��P S
currentPage
��T _
,
��_ `
int
��a d
pageSize
��e m
,
��m n
IList
��o t
<
��t u
string
��u {
>
��{ |"
includedNestedFiels��} �
,��� �

Expression��� �
<��� �
Func��� �
<��� �
T��� �
,��� �
bool��� �
>��� �
>��� �
	predicate��� �
=��� �
null��� �
)��� �
{
�� 	
return
�� 
GetPagedResult
�� !
(
��! "
currentPage
��" -
,
��- .
pageSize
��/ 7
,
��7 8.
 GetResultSetWithNestedProperties
��9 Y
(
��Y Z!
includedNestedFiels
��Z m
,
��m n
	predicate
��o x
)
��x y
)
��y z
;
��z {
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
PaginationResult
�� +
<
��+ ,
T
��, -
>
��- .
>
��. /
GetPagedResult
��0 >
(
��> ?
int
��? B
currentPage
��C N
,
��N O
int
��P S
pageSize
��T \
,
��\ ]

IQueryable
��^ h
<
��h i
T
��i j
>
��j k

resultList
��l v
)
��v w
{
�� 	
var
�� 
pagedResult
�� 
=
�� 
new
�� !
PaginationResult
��" 2
<
��2 3
T
��3 4
>
��4 5
(
��5 6
)
��6 7
{
��8 9
CurrentPage
��: E
=
��F G
currentPage
��H S
,
��S T
PageSize
��U ]
=
��^ _
pageSize
��` h
,
��h i
RowCount
��j r
=
��s t

resultList
��u 
.�� �
Count��� �
(��� �
)��� �
}��� �
;��� �
var
�� 
	pageCount
�� 
=
�� 
(
�� 
double
�� #
)
��# $
pagedResult
��$ /
.
��/ 0
RowCount
��0 8
/
��9 :
pageSize
��; C
;
��C D
pagedResult
�� 
.
�� 
	PageCount
�� !
=
��" #
(
��$ %
int
��% (
)
��( )
Math
��) -
.
��- .
Ceiling
��. 5
(
��5 6
	pageCount
��6 ?
)
��? @
;
��@ A
var
�� 
skip
�� 
=
�� 
(
�� 
currentPage
�� #
-
��$ %
$num
��& '
)
��' (
*
��) *
pageSize
��+ 3
;
��3 4
pagedResult
�� 
.
�� 
Results
�� 
=
��  !
await
��" '

resultList
��( 2
.
��2 3
AsNoTracking
��3 ?
(
��? @
)
��@ A
.
��A B
Skip
��B F
(
��F G
skip
��G K
)
��K L
.
��L M
Take
��M Q
(
��Q R
pageSize
��R Z
)
��Z [
.
��[ \
ToListAsync
��\ g
(
��g h
)
��h i
.
��i j
ConfigureAwait
��j x
(
��x y
false
��y ~
)
��~ 
;�� �
return
�� 
pagedResult
�� 
;
�� 
}
�� 	
private
�� 

IQueryable
�� 
<
�� 
T
�� 
>
�� 
SetQuery
�� &
<
��& '
T
��' (
>
��( )
(
��) *
)
��* +
where
��, 1
T
��2 3
:
��4 5
class
��6 ;
{
�� 	!
SetContextBehaviour
�� 
(
��   
DbContextBehaviour
��  2
)
��2 3
;
��3 4
return
�� 
	DbContext
�� 
.
�� 
Set
��  
<
��  !
T
��! "
>
��" #
(
��# $
)
��$ %
.
��% &
AsNoTracking
��& 2
(
��2 3
)
��3 4
;
��4 5
}
�� 	
private
�� 
void
�� !
SetContextBehaviour
�� (
(
��( )
bool
��* .
enabled
��/ 6
)
��6 7
{
�� 	
	DbContext
�� 
.
�� 
ChangeTracker
�� #
.
��# $&
AutoDetectChangesEnabled
��$ <
=
��= >
enabled
��? F
;
��F G
	DbContext
�� 
.
�� 
ChangeTracker
�� #
.
��# $ 
LazyLoadingEnabled
��$ 6
=
��7 8
enabled
��9 @
;
��@ A
	DbContext
�� 
.
�� 
ChangeTracker
�� #
.
��# $#
QueryTrackingBehavior
��$ 9
=
��: ;
enabled
��< C
?
��D E#
QueryTrackingBehavior
��F [
.
��[ \
TrackAll
��\ d
:
��e f#
QueryTrackingBehavior
��g |
.
��| }

NoTracking��} �
;��� �
}
�� 	
internal
�� 
void
�� 

SetContext
��  
(
��  !
	DbContext
��! *
context
��+ 2
)
��2 3
{
�� 	
	DbContext
�� 
=
�� 
context
�� 
??
��  "
throw
��# (
new
��) ,"
ContextNullException
��- A
(
��A B
nameof
��B H
(
��H I
context
��I P
)
��P Q
)
��Q R
;
��R S
}
�� 	
}
�� 
}�� �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\Service\IService.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &
Service& -
{ 
public 

	interface 
IService 
{ 
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\Service\Service.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &
Service& -
{ 
public 

class 
Service 
< 
TContext !
>! "
:# $
IService% -
where. 3
TContext4 <
:= >
	DbContext? H
{ 
public 
IUnitOfWork 
< 
TContext #
># $
UoW% (
{) *
get+ .
;. /
}0 1
public

 
Service

 
(

 
IUnitOfWork

 "
<

" #
TContext

# +
>

+ ,
uoW

- 0
)

0 1
{ 	
UoW 
= 
uoW 
; 
} 	
} 
} �

�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\UnitOfWorkConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
{ 
public 

static 
class #
UnitOfWorkConfiguration /
{ 
public		 
static		 
void		 
SetupUnitOfWork		 *
(		* +
this		+ /
IServiceCollection		0 B
services		C K
)		K L
{

 	
services 
. 
AddTransient !
(! "
typeof" (
(( )
IRepository) 4
<4 5
>5 6
)6 7
,7 8
typeof9 ?
(? @

Repository@ J
<J K
>K L
)L M
)M N
;N O
services 
. 
AddTransient !
(! "
typeof" (
(( )
IUnitOfWork) 4
<4 5
>5 6
)6 7
,7 8
typeof9 ?
(? @

UnitOfWork@ J
<J K
>K L
)L M
)M N
;N O
} 	
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\UnitOfWork\IUnitOfWork.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

UnitOfWork& 0
{ 
public 

	interface 
IUnitOfWork  
<  !
TContext! )
>) *
where+ 0
TContext1 9
:: ;
	DbContext< E
{ 
Task		 
<		 !
IDbContextTransaction		 "
>		" #
BeginTransaction		$ 4
(		4 5
)		5 6
;		6 7
Task

 
Commit

 
(

 !
IDbContextTransaction

 )
transaction

* 5
)

5 6
;

6 7
T 	

Repository
 
< 
T 
> 
( 
) 
where 
T  !
:" #
class$ )
;) *
T 	

Repository
 
< 
T 
, 
TS 
> 
( 
) 
where "
T# $
:% &
class' ,
where- 2
TS3 5
:6 7
class8 =
;= >
Task 
Rollback 
( !
IDbContextTransaction +
transaction, 7
)7 8
;8 9
IExecutionStrategy #
CreateExecutionStrategy 2
(2 3
)3 4
;4 5
} 
} �;
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.UnitOfWork\UnitOfWork\UnitOfWork.cs
	namespace 	
	Devon4Net
 
. 
Domain 
. 

UnitOfWork %
.% &

UnitOfWork& 0
{		 
public

 

class

 

UnitOfWork

 
<

 
TContext

 $
>

$ %
:

& '
IUnitOfWork

( 3
<

3 4
TContext

4 <
>

< =
where

> C
TContext

D L
:

M N
	DbContext

O X
,

X Y
IDisposable

Z e
{ 
private 
TContext 
Context  
{! "
get# &
;& '
}( )
private 
IServiceProvider  
ServiceProvider! 0
{1 2
get3 6
;6 7
}8 9
public 

UnitOfWork 
( 
TContext "
context# *
,* +
IServiceProvider, <
serviceProvider= L
)L M
{ 	
Context 
= 
context 
??  
throw! &
new' * 
ContextNullException+ ?
(? @
nameof@ F
(F G
contextG N
)N O
)O P
;P Q
ServiceProvider 
= 
serviceProvider -
;- .
} 	
public 
Task 
< !
IDbContextTransaction )
>) *
BeginTransaction+ ;
(; <
)< =
{ 	
return 
Context 
. 
Database #
.# $!
BeginTransactionAsync$ 9
(9 :
): ;
;; <
} 	
public 
Task 
Rollback 
( !
IDbContextTransaction 2
transaction3 >
)> ?
{ 	
return 
Task 
. 
Run 
( 
( 
) 
=> !
RollbackTransaction" 5
(5 6
transaction6 A
)A B
)B C
;C D
} 	
public 
IExecutionStrategy !#
CreateExecutionStrategy" 9
(9 :
): ;
{   	
return!! 
Context!! 
.!! 
Database!! #
.!!# $#
CreateExecutionStrategy!!$ ;
(!!; <
)!!< =
;!!= >
}"" 	
public$$ 
Task$$ 
Commit$$ 
($$ !
IDbContextTransaction$$ 0
transaction$$1 <
)$$< =
{%% 	
return&& 
Task&& 
.&& 
Run&& 
(&& 
(&& 
)&& 
=>&& !
{'' 
if(( 
((( 
transaction((  
==((! #
null(($ (
)((( )
{)) 
throw** 
new** $
TransactionNullException** 7
(**7 8
$"**8 :
$str**: w
"**w x
)**x y
;**y z
}++ 
try,, 
{-- 
transaction..  
...  !
Commit..! '
(..' (
)..( )
;..) *
}// 
catch00 
(00 (
DbUpdateConcurrencyException00 4
ex005 7
)007 8
{11 
Console22 
.22 
	WriteLine22 &
(22& '
$"22' )
{22) *
ex22* ,
.22, -
Message22- 4
}224 5
$str225 6
{226 7
ex227 9
.229 :
InnerException22: H
}22H I
"22I J
)22J K
;22K L
RollbackTransaction33 (
(33( )
transaction33) 4
)334 5
;335 6
throw44 
;44 
}55 
catch66 
(66 
	Exception66 !
ex66" $
)66$ %
{77 
Console88 
.88 
	WriteLine88 &
(88& '
$"88' )
{88) *
ex88* ,
.88, -
Message88- 4
}884 5
$str885 6
{886 7
ex887 9
.889 :
InnerException88: H
}88H I
"88I J
)88J K
;88K L
RollbackTransaction99 (
(99( )
transaction99) 4
)994 5
;995 6
throw:: 
;:: 
};; 
}<< 
)<< 
;<< 
}== 	
publicDD 
TDD 

RepositoryDD 
<DD 
TDD 
>DD 
(DD 
)DD  
whereDD! &
TDD' (
:DD) *
classDD+ 0
{EE 	
returnFF 
GetRepositoryFF  
<FF  !
TFF! "
>FF" #
(FF# $
)FF$ %
;FF% &
}GG 	
publicOO 
TOO 

RepositoryOO 
<OO 
TOO 
,OO 
TSOO  
>OO  !
(OO! "
)OO" #
whereOO$ )
TOO* +
:OO, -
classOO. 3
whereOO4 9
TSOO: <
:OO= >
classOO? D
{PP 	
varQQ 

repositoryQQ 
=QQ 
GetRepositoryQQ *
<QQ* +
TQQ+ ,
>QQ, -
(QQ- .
)QQ. /
;QQ/ 0
(SS 

repositorySS 
asSS 

RepositorySS %
<SS% &
TSSS& (
>SS( )
)SS) *
?SS* +
.SS+ ,

SetContextSS, 6
(SS6 7
ContextSS7 >
)SS> ?
;SS? @
returnUU 

repositoryUU 
;UU 
}VV 	
privateXX 
voidXX 
RollbackTransactionXX (
(XX( )!
IDbContextTransactionXX) >
transactionXX? J
)XXJ K
{YY 	
ifZZ 
(ZZ 
transactionZZ 
==ZZ 
nullZZ #
)ZZ# $
{[[ 
throw\\ 
new\\ $
TransactionNullException\\ 2
(\\2 3
$"\\3 5
$str\\5 r
"\\r s
)\\s t
;\\t u
}]] 
transaction__ 
.__ 
Rollback__  
(__  !
)__! "
;__" #
transaction`` 
.`` 
Dispose`` 
(``  
)``  !
;``! "
}aa 	
privatecc 
Tcc 
GetRepositorycc 
<cc  
Tcc  !
>cc! "
(cc" #
)cc# $
wherecc% *
Tcc+ ,
:cc- .
classcc/ 4
{dd 	
varee 
repositoryTypeee 
=ee  
typeofee! '
(ee' (
Tee( )
)ee) *
;ee* +
varff 

repositoryff 
=ff 
ServiceProviderff ,
.ff, -

GetServiceff- 7
(ff7 8
repositoryTypeff8 F
)ffF G
;ffG H
ifhh 
(hh 

repositoryhh 
==hh 
nullhh "
)hh" #
{ii 
throwjj 
newjj '
RepositoryNotFoundExceptionjj 5
(jj5 6
$"jj6 8
$strjj8 G
{jjG H
repositoryTypejjH V
.jjV W
NamejjW [
}jj[ \
$str	jj\ �
"
jj� �
)
jj� �
;
jj� �
}kk 
returnmm 

repositorymm 
asmm  
Tmm! "
;mm" #
}nn 	
}oo 
}pp 