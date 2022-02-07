ö
žC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.JWT\Common\Const\AuthConst.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
JWT# &
.& '
Common' -
.- .
Const. 3
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
;; <
public		 
const		 
string		 
DevonSampleUserRole		 /
=		0 1
$str		2 G
;		G H
public

 
const

 
string

 
DevonSamplePolicy

 -
=

. /
$str

0 C
;

C D
} 
} à
£C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.JWT\Common\ServiceConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
JWT# &
.& '
Common' -
{ 
public 

static 
class  
ServiceConfiguration ,
{ 
public 
static 
void 
AddJwtPolicy '
(' (
this( ,
IServiceCollection- ?
services@ H
,H I
stringJ P

policyNameQ [
,[ \
string] c
	claimTyped m
,m n
stringo u

claimValue	v €
)
€ 
{ 	
} 	
} 
} µ

œC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.JWT\Handlers\IJwtHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
JWT# &
.& '
Handlers' /
{ 
public 

	interface 
IJwtHandler  
{ 
string		 
CreateClientToken		  
(		  !
List		! %
<		% &
Claim		& +
>		+ ,
clientClaims		- 9
)		9 :
;		: ;
List

 
<

 
Claim

 
>

 
GetUserClaims

 !
(

! "
string

" (
jwtToken

) 1
)

1 2
;

2 3
string 
GetClaimValue 
( 
List !
<! "
Claim" '
>' (
	claimList) 2
,2 3
string4 :
claim; @
)@ A
;A B
string 
GetClaimValue 
( 
string #
token$ )
,) *
string+ 1
claim2 7
)7 8
;8 9
SecurityKey 
GetIssuerSigningKey '
(' (
)( )
;) *
} 
} à`
›C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.JWT\Handlers\JwtHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
JWT# &
.& '
Handlers' /
{ 
public 

class 

JwtHandler 
: 
IJwtHandler )
{ 
private 
SecurityKey 
IssuerSigningKey ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
private 
SigningCredentials "
SigningCredentials# 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
private 
X509Certificate2  
Certificate! ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
private 
static 
SecurityKey "
SecurityKey# .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
private 

JwtOptions 

JwtOptions %
{& '
get( +
;+ ,
}- .
public 

JwtHandler 
( 

JwtOptions $

jwtOptions% /
)/ 0
{ 	

JwtOptions 
= 

jwtOptions #
;# $
if 
( 

JwtOptions 
!= 
null "
)" #
{ 
SetupJwtSecurity  
(  !
)! "
;" #
}   
else!! 
{"" 
throw## 
new## !
ArgumentNullException## /
(##/ 0
$"##0 2
$str##2 d
"##d e
)##e f
;##f g
}$$ 
}%% 	
public'' 
string'' 
CreateClientToken'' '
(''' (
List''( ,
<'', -
Claim''- 2
>''2 3
clientClaims''4 @
)''@ A
{(( 	$
IdentityModelEventSource)) $
.))$ %
ShowPII))% ,
=))- .
true))/ 3
;))3 4
var** 
tokenDescriptor** 
=**  !
new**" %#
SecurityTokenDescriptor**& =
{++ 
Issuer,, 
=,, 

JwtOptions,, #
.,,# $
Issuer,,$ *
,,,* +
Audience-- 
=-- 

JwtOptions-- %
.--% &
Audience--& .
,--. /
Subject.. 
=.. 
new.. 
ClaimsIdentity.. ,
(.., -
clientClaims..- 9
)..9 :
,..: ;
Expires// 
=// 
DateTime// "
.//" #
UtcNow//# )
.//) *

AddMinutes//* 4
(//4 5
Convert//5 <
.//< =
ToInt16//= D
(//D E

JwtOptions//E O
.//O P
	ClockSkew//P Y
)//Y Z
)//Z [
,//[ \
IssuedAt00 
=00 
DateTime00 #
.00# $
Now00$ '
,00' (
Claims11 
=11 
clientClaims11 %
.11% &
Where11& +
(11+ ,
c11, -
=>11- /
c11/ 0
.110 1
Type111 5
!=116 8

ClaimTypes119 C
.11C D
Role11D H
)11H I
.11I J
ToDictionary11J V
(11V W
x11W X
=>11Y [
x11\ ]
.11] ^
Type11^ b
,11b c
x11d e
=>11f h
x11i j
.11j k
Value11k p
as11q s
object11t z
)11z {
,11{ |
SigningCredentials22 "
=22# $
SigningCredentials22% 7
}33 
;33 
return44 
new44 #
JwtSecurityTokenHandler44 .
(44. /
)44/ 0
.440 1
CreateEncodedJwt441 A
(44A B
tokenDescriptor44B Q
)44Q R
;44R S
}55 	
public77 
List77 
<77 
Claim77 
>77 
GetUserClaims77 (
(77( )
string77) /
jwtToken770 8
)778 9
{88 	
var99 
handler99 
=99 
new99 #
JwtSecurityTokenHandler99 5
(995 6
)996 7
;997 8
var;; 
claimsPrincipal;; 
=;;  !
handler;;" )
.;;) *
ValidateToken;;* 7
(;;7 8
jwtToken;;8 @
,;;@ A
new<< %
TokenValidationParameters<< -
{== 
ValidAudience>> !
=>>" #

JwtOptions>>$ .
.>>. /
Audience>>/ 7
,>>7 8
ValidIssuer?? 
=??  !

JwtOptions??" ,
.??, -
Issuer??- 3
,??3 4
RequireSignedTokens@@ '
=@@( )
false@@* /
,@@/ 0
TokenDecryptionKeyAA &
=AA' (
SecurityKeyAA) 4
,AA4 5
IssuerSigningKeyBB $
=BB% &
SecurityKeyBB' 2
}CC 
,CC 
outCC 
_CC 
)CC 
;CC 
returnEE 
claimsPrincipalEE "
.EE" #
ClaimsEE# )
.EE) *
ToListEE* 0
(EE0 1
)EE1 2
;EE2 3
}FF 	
publicHH 
stringHH 
GetClaimValueHH #
(HH# $
ListHH$ (
<HH( )
ClaimHH) .
>HH. /
	claimListHH0 9
,HH9 :
stringHH; A
claimHHB G
)HHG H
{II 	
ifJJ 
(JJ 
	claimListJJ 
==JJ 
nullJJ !
||JJ" $
!JJ% &
	claimListJJ& /
.JJ/ 0
AnyJJ0 3
(JJ3 4
)JJ4 5
)JJ5 6
returnJJ7 =
stringJJ> D
.JJD E
EmptyJJE J
;JJJ K
returnKK 
	claimListKK 
.KK 
FirstOrDefaultKK +
(KK+ ,
xKK, -
=>KK. 0
xKK1 2
.KK2 3
TypeKK3 7
==KK8 :
claimKK; @
)KK@ A
?KKA B
.KKB C
ValueKKC H
;KKH I
}LL 	
publicNN 
stringNN 
GetClaimValueNN #
(NN# $
stringNN$ *
tokenNN+ 0
,NN0 1
stringNN2 8
claimNN9 >
)NN> ?
{OO 	
ifPP 
(PP 
stringPP 
.PP 
IsNullOrEmptyPP $
(PP$ %
tokenPP% *
)PP* +
)PP+ ,
returnPP- 3
stringPP4 :
.PP: ;
EmptyPP; @
;PP@ A
varQQ 
	claimListQQ 
=QQ 
GetUserClaimsQQ )
(QQ) *
tokenQQ* /
)QQ/ 0
;QQ0 1
returnRR 
GetClaimValueRR  
(RR  !
	claimListRR! *
,RR* +
claimRR, 1
)RR1 2
;RR2 3
}SS 	
publicUU 
SecurityKeyUU 
GetIssuerSigningKeyUU .
(UU. /
)UU/ 0
{VV 	
returnWW 
IssuerSigningKeyWW #
;WW# $
}XX 	
privateZZ 
voidZZ (
GetSigningCredentialsFromKeyZZ 1
(ZZ1 2
stringZZ2 8
	secretKeyZZ9 B
)ZZB C
{[[ 	
var\\ 
key\\ 
=\\ 
new\\  
SymmetricSecurityKey\\ .
(\\. /
Encoding\\/ 7
.\\7 8
Default\\8 ?
.\\? @
GetBytes\\@ H
(\\H I
	secretKey\\I R
)\\R S
)\\S T
;\\T U
SecurityKey]] 
=]] 
key]] 
;]] 
IssuerSigningKey^^ 
=^^ 
new^^ " 
SymmetricSecurityKey^^# 7
(^^7 8
key^^8 ;
.^^; <
Key^^< ?
)^^? @
;^^@ A
SigningCredentials__ 
=__  
new__! $
SigningCredentials__% 7
(__7 8
key__8 ;
,__; <
SecurityAlgorithms__= O
.__O P
HmacSha512Signature__P c
)__c d
;__d e
}`` 	
privatebb 
voidbb 0
$GetSigningCredentialsFromCertificatebb 9
(bb9 :
stringbb: @
certificatebbA L
,bbL M
stringbbN T
passwordbbU ]
)bb] ^
{cc 	
trydd 
{ee 
varff *
certificateEncryptionAlgorithmff 2
=ff3 4

JwtOptionsff5 ?
.ff? @
Securityff@ H
.ffH I*
CertificateEncryptionAlgorithmffI g
??ffh j
SecurityAlgorithmsffk }
.ff} ~
	RsaSha512	ff~ ‡
;
ff‡ ˆ
Certificategg 
=gg 
newgg !
X509Certificate2gg" 2
(gg2 3
Filegg3 7
.gg7 8
ReadAllBytesgg8 D
(ggD E
FileOperationsggE S
.ggS T
GetFileFullPathggT c
(ggc d
certificateggd o
)ggo p
)ggp q
,ggq r
passwordggs {
,gg{ | 
X509KeyStorageFlags	gg~ ‘
.
gg‘ ’
MachineKeySet
gg’ Ÿ
|
gg  ¡!
X509KeyStorageFlags
gg¢ µ
.
ggµ ¶
PersistKeySet
gg¶ Ã
)
ggÃ Ä
;
ggÄ Å
SecurityKeyhh 
=hh 
newhh !
X509SecurityKeyhh" 1
(hh1 2
Certificatehh2 =
)hh= >
;hh> ?
IssuerSigningKeyii  
=ii! "
newii# &
X509SecurityKeyii' 6
(ii6 7
Certificateii7 B
)iiB C
;iiC D
SigningCredentialsjj "
=jj# $
newjj% (
SigningCredentialsjj) ;
(jj; <
IssuerSigningKeyjj< L
,jjL M*
certificateEncryptionAlgorithmjjN l
)jjl m
;jjm n
}kk 
catchll 
(ll "
CryptographicExceptionll )
exll* ,
)ll, -
{mm 
Consolenn 
.nn 
	WriteLinenn !
(nn! "
exnn" $
)nn$ %
;nn% &
throwoo 
;oo 
}pp 
catchqq 
(qq !
ArgumentNullExceptionqq (
exqq) +
)qq+ ,
{rr 
Consoless 
.ss 
	WriteLiness !
(ss! "
exss" $
)ss$ %
;ss% &
throwtt 
;tt 
}uu 
}vv 	
privatexx 
voidxx 
SetupJwtSecurityxx %
(xx% &
)xx& '
{yy 	
ifzz 
(zz 

JwtOptionszz 
?zz 
.zz 
Securityzz $
==zz% '
nullzz( ,
)zz, -
returnzz. 4
;zz4 5
if|| 
(|| 
!|| 
string|| 
.|| 
IsNullOrEmpty|| %
(||% &

JwtOptions||& 0
.||0 1
Security||1 9
.||9 :
	SecretKey||: C
)||C D
)||D E
{}} (
GetSigningCredentialsFromKey~~ ,
(~~, -

JwtOptions~~- 7
.~~7 8
Security~~8 @
.~~@ A
	SecretKey~~A J
)~~J K
;~~K L
} 
else
€€ 
{
 
if
‚‚ 
(
‚‚ 
!
‚‚ 
string
‚‚ 
.
‚‚ 
IsNullOrEmpty
‚‚ )
(
‚‚) *

JwtOptions
‚‚* 4
.
‚‚4 5
Security
‚‚5 =
.
‚‚= >
Certificate
‚‚> I
)
‚‚I J
&&
‚‚K M
!
ƒƒ 
string
ƒƒ 
.
ƒƒ 
IsNullOrEmpty
ƒƒ )
(
ƒƒ) *

JwtOptions
ƒƒ* 4
.
ƒƒ4 5
Security
ƒƒ5 =
.
ƒƒ= >!
CertificatePassword
ƒƒ> Q
)
ƒƒQ R
)
ƒƒR S
{
„„ 2
$GetSigningCredentialsFromCertificate
…… 8
(
……8 9

JwtOptions
……9 C
.
……C D
Security
……D L
.
……L M
Certificate
……M X
,
……X Y

JwtOptions
†† "
.
††" #
Security
††# +
.
††+ ,!
CertificatePassword
††, ?
)
††? @
;
††@ A
}
‡‡ 
}
ˆˆ 
}
‰‰ 	
}
ŠŠ 
}‹‹ ÷
˜C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.JWT\JwtConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Configuration' 4
{ 
public 

static 
class 
JwtConfiguration (
{ 
public 
static 
void 
SetupJwtConf '
(' (
this( ,
IServiceCollection- ?
services@ H
,H I
refJ M
IConfigurationN \
configuration] j
)j k
{ 	
var 

jwtOptions 
= 
services %
.% &
GetTypedOptions& 5
<5 6

JwtOptions6 @
>@ A
(A B
configurationB O
,O P
$strQ V
)V W
;W X
if 
( 

jwtOptions 
== 
null "
)" #
return$ *
;* +
var 

jwtHandler 
= 
new  

JwtHandler! +
(+ ,

jwtOptions, 6
)6 7
;7 8
services 
. 
AddSingleton !
<! "
IJwtHandler" -
>- .
(. /

jwtHandler/ 9
)9 :
;: ;
SetupJwtNetCore 
( 
services $
,$ %

jwtOptions& 0
,0 1

jwtHandler2 <
)< =
;= >
} 	
private 
static 
void 
SetupJwtNetCore +
(+ ,
IServiceCollection, >
services? G
,G H

JwtOptionsI S

jwtOptionsT ^
,^ _

JwtHandler` j

jwtHandlerk u
)u v
{ 	
}33 	
}44 
}55 