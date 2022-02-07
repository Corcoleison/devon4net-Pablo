ƒ
ûC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.LiteDb\LiteDbConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Configuration' 4
{ 
public		 

static		 
class		 
LiteDbConfiguration		 +
{

 
public 
static 
void 
SetupLiteDb &
(& '
this' +
IServiceCollection, >
services? G
,G H
refI L
IConfigurationM [
configuration\ i
)i j
{ 	
var 
liteDbOptions 
= 
services  (
.( )
GetTypedOptions) 8
<8 9
LiteDbOptions9 F
>F G
(G H
configurationH U
,U V
$strW _
)_ `
;` a
if 
( 
liteDbOptions 
==  
null! %
||& (
string) /
./ 0
IsNullOrEmpty0 =
(= >
liteDbOptions> K
?K L
.L M
DatabaseLocationM ]
)] ^
)^ _
return` f
;f g
services 
. 
AddSingleton !
<! "
ILiteDbContext" 0
,0 1
LiteDbContext2 ?
>? @
(@ A
)A B
;B C
} 	
} 
} ≠
†C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.LiteDb\LiteDb\ILiteDbContext.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
LiteDb# )
.) *
LiteDb* 0
{ 
public 

	interface 
ILiteDbContext #
{ 
LiteDatabase 
Database 
{ 
get  #
;# $
}% &
} 
}		 ≤
üC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.LiteDb\LiteDb\LiteDbContext.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
LiteDb# )
.) *
LiteDb* 0
{ 
public 

class 
LiteDbContext 
:  
ILiteDbContext! /
{		 
public

 
LiteDatabase

 
Database

 $
{

% &
get

' *
;

* +
}

, -
public 
LiteDbContext 
( 
IOptions %
<% &
LiteDbOptions& 3
>3 4
options5 <
)< =
{ 	
var 
path 
= 
FileOperations %
.% &
GetFileFullPath& 5
(5 6
options6 =
.= >
Value> C
.C D
DatabaseLocationD T
)T U
;U V
var 

connection 
= 
string #
.# $
IsNullOrEmpty$ 1
(1 2
path2 6
)6 7
?8 9
$str: c
:d e
$"f h
$strh q
{q r
pathr v
}v w
$str	w â
"
â ä
;
ä ã
Database 
= 
new 
LiteDatabase '
(' (

connection( 2
)2 3
;3 4
} 	
} 
} ÿ
°C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.LiteDb\Repository\IRepository.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
LiteDb# )
.) *

Repository* 4
{ 
public 

	interface 
IRepository  
<  !
T! "
>" #
{ 
	BsonValue 
Create 
( 
T 
entity !
)! "
;" #
bool		 
Update		 
(		 
T		 
entity		 
)		 
;		 
int

 
Delete

 
(

 
BsonExpression

 !
	predicate

" +
,

+ ,
bool

- 1
deleteAllCheck

2 @
=

A B
false

C H
)

H I
;

I J
IEnumerable 
< 
T 
> 
Get 
( 
) 
; 
IEnumerable 
< 
T 
> 
Get 
( 
BsonExpression )
	predicate* 3
,3 4
int5 8
skip9 =
=> ?
$num@ A
,A B
intC F
limitG L
=M N
intO R
.R S
MaxValueS [
)[ \
;\ ]
T 	
GetFirstOrDefault
 
( 
BsonExpression *
	predicate+ 4
)4 5
;5 6
T 	
GetFirstOrDefault
 
( 
Query !
query" '
)' (
;( )
} 
} ±0
†C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.LiteDb\Repository\Repository.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
LiteDb# )
.) *

Repository* 4
{ 
public		 

class		 

Repository		 
<		 
T		 
>		 
:		  
IRepository		! ,
<		, -
T		- .
>		. /
where		0 5
T		6 7
:		8 9
class		: ?
{

 
private 
LiteDatabase 
LiteDb #
{$ %
get& )
;) *
set+ .
;. /
}0 1
private 
string 
CollectionName %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 

Repository 
( 
ILiteDbContext (
liteDbContext) 6
)6 7
{ 	
LiteDb 
= 
liteDbContext "
?" #
.# $
Database$ ,
??- /
throw0 5
new6 9
ArgumentException: K
(K L
$str	L €
)
€ ‹
;
‹ ›
CollectionName 
= 
typeof #
(# $
T$ %
)% &
.& '
Name' +
;+ ,
} 	
public 
	BsonValue 
Create 
(  
T  !
entity" (
)( )
{ 	
var 
result 
= 
LiteDb 
.  
GetCollection  -
<- .
T. /
>/ 0
(0 1
CollectionName1 ?
)? @
.@ A
InsertA G
(G H
entityH N
)N O
;O P
return 
result 
; 
} 	
public 
bool 
Update 
( 
T 
entity #
)# $
{ 	
return 
LiteDb 
. 
GetCollection '
<' (
T( )
>) *
(* +
CollectionName+ 9
)9 :
.: ;
Update; A
(A B
entityB H
)H I
;I J
} 	
public   
int   
Delete   
(   
BsonExpression   (
	predicate  ) 2
,  2 3
bool  4 8
deleteAllCheck  9 G
=  H I
false  J O
)  O P
{!! 	
if"" 
("" 
	predicate"" 
!="" 
null"" !
&&""" $
!""% &
deleteAllCheck""& 4
)""4 5
{## 
return$$ 
LiteDb$$ 
.$$ 
GetCollection$$ +
<$$+ ,
T$$, -
>$$- .
($$. /
CollectionName$$/ =
)$$= >
.$$> ?

DeleteMany$$? I
($$I J
	predicate$$J S
)$$S T
;$$T U
}%% 
if'' 
('' 
	predicate'' 
=='' 
null'' !
&&''" $
deleteAllCheck''% 3
)''3 4
{(( 
return)) 
LiteDb)) 
.)) 
GetCollection)) +
<))+ ,
T)), -
>))- .
()). /
CollectionName))/ =
)))= >
.))> ?
	DeleteAll))? H
())H I
)))I J
;))J K
}** 
var,, 
errorMessage,, 
=,, 
$str	,, é
;
,,é è
Devon4NetLogger-- 
.-- 
Error-- !
(--! "
errorMessage--" .
)--. /
;--/ 0
throw.. 
new.. 
ArgumentException.. '
(..' (
errorMessage..( 4
)..4 5
;..5 6
}// 	
public11 
IEnumerable11 
<11 
T11 
>11 
Get11 !
(11! "
)11" #
{22 	
return33 
LiteDb33 
.33 
GetCollection33 '
<33' (
T33( )
>33) *
(33* +
CollectionName33+ 9
)339 :
.33: ;
FindAll33; B
(33B C
)33C D
;33D E
}44 	
public66 
IEnumerable66 
<66 
T66 
>66 
Get66 !
(66! "
BsonExpression66" 0
	predicate661 :
,66: ;
int66< ?
skip66@ D
=66E F
$num66G H
,66H I
int66J M
limit66N S
=66T U
int66V Y
.66Y Z
MaxValue66Z b
)66b c
{77 	
return88 
LiteDb88 
.88 
GetCollection88 '
<88' (
T88( )
>88) *
(88* +
CollectionName88+ 9
)889 :
.88: ;
Find88; ?
(88? @
	predicate88@ I
,88I J
skip88J N
,88N O
limit88P U
)88U V
;88V W
}99 	
public;; 
T;; 
GetFirstOrDefault;; "
(;;" #
BsonExpression;;# 1
	predicate;;2 ;
);;; <
{<< 	
return== 
LiteDb== 
.== 
GetCollection== '
<==' (
T==( )
>==) *
(==* +
CollectionName==+ 9
)==9 :
.==: ;
FindOne==; B
(==B C
	predicate==C L
)==L M
;==M N
}>> 	
public?? 
T?? 
GetFirstOrDefault?? "
(??" #
Query??# (
query??) .
)??. /
{@@ 	
returnAA 
LiteDbAA 
.AA 
GetCollectionAA '
<AA' (
TAA( )
>AA) *
(AA* +
CollectionNameAA+ 9
)AA9 :
.AA: ;
FindOneAA; B
(AAB C
queryAAC H
)AAH I
;AAI J
}BB 	
}CC 
}DD 