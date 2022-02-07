·f
óC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.S3\AwsS3Handler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
S3' )
{ 
public 

class 
AwsS3Handler 
: 
IAwsS3Handler  -
{ 
private 
string 
	AwsRegion  
{! "
get# &
;& '
}( )
private 
string  
AwsSecretAccessKeyId +
{, -
get. 1
;1 2
}3 4
private 
string 
AwsSecretAccessKey )
{* +
get, /
;/ 0
}1 2
public 
AwsS3Handler 
( 
string "
	awsRegion# ,
,, -
string. 4 
awsSecretAccessKeyId5 I
,I J
stringK Q
awsSecretAccessKeyR d
)d e
{ 	
	AwsRegion 
= 
	awsRegion !
;! "
AwsSecretAccessKey 
=  
awsSecretAccessKey! 3
;3 4 
AwsSecretAccessKeyId  
=! " 
awsSecretAccessKeyId# 7
;7 8
} 	
public 
async 
Task 
< 
Stream  
>  !
	GetObject" +
(+ ,
string, 2

bucketName3 =
,= >
string? E
	objectKeyF O
)O P
{ 	
var 
request 
= 
new 
GetObjectRequest .
{/ 0

BucketName1 ;
=< =

bucketName> H
,H I
KeyJ M
=N O
	objectKeyP Y
}Z [
;[ \
using 
var 
s3Client 
=  
GetS3Client! ,
(, -
	AwsRegion- 6
,6 7 
AwsSecretAccessKeyId8 L
,L M
AwsSecretAccessKeyN `
)` a
;a b
var 
response 
= 
await  
s3Client! )
.) *
GetObjectAsync* 8
(8 9
request9 @
)@ A
.A B
ConfigureAwaitB P
(P Q
falseQ V
)V W
;W X
return 
response 
. 
ResponseStream *
;* +
}   	
public"" 
async"" 
Task"" 
<"" 
bool"" 
>"" 
UploadObject""  ,
("", -
Stream""- 3

streamFile""4 >
,""> ?
string""@ F
keyName""G N
,""N O
string""P V

bucketName""W a
,""a b
string""c i
contentType""j u
,""u v
bool""w {
autoCloseStream	""| ã
=
""å ç
false
""é ì
,
""ì î
List
""ï ô
<
""ô ö
Tag
""ö ù
>
""ù û
tagList
""ü ¶
=
""ß ®
null
""© ≠
)
""≠ Æ
{## 	
try$$ 
{%% 
if&& 
(&& 

streamFile&& 
==&& !
null&&" &
||&&' )

streamFile&&* 4
.&&4 5
Length&&5 ;
==&&< >
$num&&? @
||&&A C
!&&D E

streamFile&&E O
.&&O P
CanRead&&P W
)&&W X
{'' 
Devon4NetLogger(( #
.((# $
Fatal(($ )
((() *
$str((* R
)((R S
;((S T
throw)) 
new)) 
ArgumentException)) /
())/ 0
$str))0 X
)))X Y
;))Y Z
}** 
if,, 
(,, 
string,, 
.,, 
IsNullOrEmpty,, (
(,,( )
keyName,,) 0
),,0 1
),,1 2
{-- 
Devon4NetLogger.. #
...# $
Fatal..$ )
(..) *
$str..* W
)..W X
;..X Y
throw// 
new// 
ArgumentException// /
(/// 0
$str//0 ]
)//] ^
;//^ _
}00 
if22 
(22 
string22 
.22 
IsNullOrEmpty22 (
(22( )

bucketName22) 3
)223 4
)224 5
{33 
Devon4NetLogger44 #
.44# $
Fatal44$ )
(44) *
$str44* Z
)44Z [
;44[ \
throw55 
new55 
ArgumentException55 /
(55/ 0
$str550 `
)55` a
;55a b
}66 
using88 
var88 
s3Client88 "
=88# $
GetS3Client88% 0
(880 1
	AwsRegion881 :
,88: ; 
AwsSecretAccessKeyId88< P
,88P Q
AwsSecretAccessKey88R d
)88d e
;88e f
using99 
var99 
fileTransferUtility99 -
=99. /
new990 3
TransferUtility994 C
(99C D
s3Client99D L
)99L M
;99M N
var;; (
transferUtilityUploadRequest;; 0
=;;1 2
new;;3 6(
TransferUtilityUploadRequest;;7 S
{<< 
InputStream== 
===  !

streamFile==" ,
,==, -
Key>> 
=>> 
keyName>> !
,>>! "

BucketName?? 
=??  

bucketName??! +
,??+ ,
	CannedACL@@ 
=@@ 
S3CannedACL@@  +
.@@+ ,"
BucketOwnerFullControl@@, B
,@@B C
ContentTypeAA 
=AA  !
contentTypeAA" -
,AA- .
AutoCloseStreamBB #
=BB$ %
autoCloseStreamBB& 5
,BB5 6
TagSetCC 
=CC 
tagListCC $
??CC% '
newCC( +
ListCC, 0
<CC0 1
TagCC1 4
>CC4 5
(CC5 6
)CC6 7
}DD 
;DD 
awaitFF 
fileTransferUtilityFF )
.FF) *
UploadAsyncFF* 5
(FF5 6(
transferUtilityUploadRequestFF6 R
)FFR S
.FFS T
ConfigureAwaitFFT b
(FFb c
falseFFc h
)FFh i
;FFi j
ifGG 
(GG 
autoCloseStreamGG #
==GG$ &
falseGG' ,
)GG, -

streamFileGG. 8
.GG8 9
PositionGG9 A
=GGB C
$numGGD E
;GGE F
}HH 
catchII 
(II 
	ExceptionII 
exII 
)II  
{JJ 
Devon4NetLoggerKK 
.KK  
FatalKK  %
(KK% &
exKK& (
)KK( )
;KK) *
throwLL 
;LL 
}MM 
returnOO 
trueOO 
;OO 
}PP 	
privateRR 
	IAmazonS3RR 
GetS3ClientRR %
(RR% &
stringRR& ,
	awsRegionRR- 6
,RR6 7
stringRR8 > 
awsSecretAccessKeyIdRR? S
,RRS T
stringRRU [
awsSecretAccessKeyRR\ n
)RRn o
{SS 	
ifTT 
(TT 
stringTT 
.TT 
IsNullOrEmptyTT $
(TT$ %
	awsRegionTT% .
)TT. /
)TT/ 0
{UU 
Devon4NetLoggerVV 
.VV  
FatalVV  %
(VV% &
$strVV& R
)VVR S
;VVS T
throwWW 
newWW 
ArgumentExceptionWW +
(WW+ ,
$strWW, X
)WWX Y
;WWY Z
}XX 
ifZZ 
(ZZ 
stringZZ 
.ZZ 
IsNullOrEmptyZZ $
(ZZ$ % 
awsSecretAccessKeyIdZZ% 9
)ZZ9 :
)ZZ: ;
{[[ 
Devon4NetLogger\\ 
.\\  
Fatal\\  %
(\\% &
$str\\& `
)\\` a
;\\a b
throw]] 
new]] 
ArgumentException]] +
(]]+ ,
$str]], f
)]]f g
;]]g h
}^^ 
if`` 
(`` 
string`` 
.`` 
IsNullOrEmpty`` $
(``$ %
awsSecretAccessKey``% 7
)``7 8
)``8 9
{aa 
Devon4NetLoggerbb 
.bb  
Fatalbb  %
(bb% &
$strbb& ^
)bb^ _
;bb_ `
throwcc 
newcc 
ArgumentExceptioncc +
(cc+ ,
$strcc, d
)ccd e
;cce f
}dd 
varff 
regionff 
=ff 
RegionEndpointff '
.ff' (
GetBySystemNameff( 7
(ff7 8
	awsRegionff8 A
)ffA B
;ffB C
returnhh 
newhh 
AmazonS3Clienthh %
(hh% & 
awsSecretAccessKeyIdhh& :
,hh: ;
awsSecretAccessKeyhh< N
,hhN O
regionhhP V
)hhV W
;hhW X
}ii 	
publickk 
asynckk 
Taskkk 
<kk %
GetObjectMetadataResponsekk 3
>kk3 4
GetObjectMetadatakk5 F
(kkF G
stringkkG M
keykkN Q
,kkQ R
stringkkS Y

bucketNamekkZ d
)kkd e
{ll 	
trymm 
{nn 
usingoo 
varoo 
s3Clientoo "
=oo# $
GetS3Clientoo% 0
(oo0 1
	AwsRegionoo1 :
,oo: ; 
AwsSecretAccessKeyIdoo< P
,ooP Q
AwsSecretAccessKeyooR d
)ood e
;ooe f
returnpp 
awaitpp 
s3Clientpp %
.pp% &"
GetObjectMetadataAsyncpp& <
(pp< =
newpp= @$
GetObjectMetadataRequestppA Y
{ppZ [
Keypp[ ^
=pp_ `
keyppa d
,ppd e

BucketNameppf p
=ppq r

bucketNamepps }
}pp} ~
)pp~ 
;	pp Ä
}qq 
catchrr 
(rr 
AmazonS3Exceptionrr $
exrr% '
)rr' (
{ss 
iftt 
(tt 
extt 
.tt 

StatusCodett !
==tt" $
Systemtt% +
.tt+ ,
Nettt, /
.tt/ 0
HttpStatusCodett0 >
.tt> ?
NotFoundtt? G
)ttG H
returnttI O
nullttP T
;ttT U
throwuu 
;uu 
}vv 
}ww 	
publicyy 
asyncyy 
Taskyy 
<yy 
boolyy 
>yy 
CheckObjectExistsyy  1
(yy1 2
stringyy2 8
keyyy9 <
,yy< =
stringyy> D

bucketNameyyE O
)yyO P
{zz 	
try{{ 
{|| 
using}} 
var}} 
s3Client}} "
=}}# $
GetS3Client}}% 0
(}}0 1
	AwsRegion}}1 :
,}}: ; 
AwsSecretAccessKeyId}}< P
,}}P Q
AwsSecretAccessKey}}R d
)}}d e
;}}e f
var~~ 
response~~ 
=~~ 
await~~ $
s3Client~~% -
.~~- ."
GetObjectMetadataAsync~~. D
(~~D E
new~~E H$
GetObjectMetadataRequest~~I a
{~~b c
Key~~d g
=~~h i
key~~j m
,~~m n

BucketName~~o y
=~~z {

bucketName	~~| Ü
}
~~á à
)
~~à â
;
~~â ä
if 
( 
response 
. 
HttpStatusCode +
==, .
System/ 5
.5 6
Net6 9
.9 :
HttpStatusCode: H
.H I
NotFoundI Q
)Q R
returnS Y
falseZ _
;_ `
return
ÄÄ 
response
ÄÄ 
.
ÄÄ  
HttpStatusCode
ÄÄ  .
==
ÄÄ/ 1
System
ÄÄ2 8
.
ÄÄ8 9
Net
ÄÄ9 <
.
ÄÄ< =
HttpStatusCode
ÄÄ= K
.
ÄÄK L
OK
ÄÄL N
&&
ÄÄO Q
response
ÄÄR Z
.
ÄÄZ [
LastModified
ÄÄ[ g
!=
ÄÄh j
DateTime
ÄÄk s
.
ÄÄs t
MinValue
ÄÄt |
&&
ÄÄ} 
responseÄÄÄ à
.ÄÄà â
LastModifiedÄÄâ ï
!=ÄÄñ ò
DateTimeÄÄô °
.ÄÄ° ¢
MaxValueÄÄ¢ ™
&&ÄÄ´ ≠
responseÄÄÆ ∂
.ÄÄ∂ ∑
LastModifiedÄÄ∑ √
!=ÄÄƒ ∆
defaultÄÄ« Œ
;ÄÄŒ œ
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ 
AmazonS3Exception
ÇÇ $
ex
ÇÇ% '
)
ÇÇ' (
{
ÉÉ 
if
ÑÑ 
(
ÑÑ 
ex
ÑÑ 
.
ÑÑ 

StatusCode
ÑÑ !
==
ÑÑ" $
System
ÑÑ% +
.
ÑÑ+ ,
Net
ÑÑ, /
.
ÑÑ/ 0
HttpStatusCode
ÑÑ0 >
.
ÑÑ> ?
NotFound
ÑÑ? G
)
ÑÑG H
return
ÑÑI O
false
ÑÑP U
;
ÑÑU V
throw
ÖÖ 
;
ÖÖ 
}
ÜÜ 
}
áá 	
}
àà 
}ââ Ô
òC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.S3\IAwsS3Handler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
S3' )
{ 
public 

	interface 
IAwsS3Handler "
{		 
Task

 
<

 
bool

 
>

 
UploadObject

 
(

  
Stream

  &

streamFile

' 1
,

1 2
string

3 9
keyName

: A
,

A B
string

C I

bucketName

J T
,

T U
string

V \
contentType

] h
,

h i
bool

j n
autoCloseStream

o ~
=	

 Ä
false


Å Ü
,


Ü á
List


à å
<


å ç
Tag


ç ê
>


ê ë
tagList


í ô
=


ö õ
null


ú †
)


† °
;


° ¢
Task 
< 
Stream 
> 
	GetObject 
( 
string %

bucketName& 0
,0 1
string2 8
	objectKey9 B
)B C
;C D
Task 
< %
GetObjectMetadataResponse &
>& '
GetObjectMetadata( 9
(9 :
string: @
keyA D
,D E
stringF L

bucketNameM W
)W X
;X Y
Task 
< 
bool 
> 
CheckObjectExists $
($ %
string% +
key, /
,/ 0
string1 7

bucketName8 B
)B C
;C D
} 
} 