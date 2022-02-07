™
¢C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\CdkEntity\BucketEntity.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
	CdkEntity+ 4
{ 
public 

class 
BucketEntity 
{ 
public 
string 

BucketName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
int		 
ExpirationDays		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
RemovalPolicy

 
RemovalPolicy

 *
{

+ ,
get

- 0
;

0 1
set

2 5
;

5 6
}

7 8
public 
bool 
	Versioned 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
WebSiteRedirectHost )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
BucketEncryption 

Encryption  *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} ÷
§C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\CdkEntity\DatabaseEntity.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
	CdkEntity+ 4
{ 
public 

class 
DatabaseEntity 
{		 
public

 

DeputyBase

 
DatabaseVersion

 )
{

* +
get

, /
;

/ 0
set

1 4
;

4 5
}

6 7
public 
string 
Identification $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
DatabaseName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
StorageType 
StorageType &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
InstanceClass 
InstanceClass *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
InstanceSize 
InstanceSize (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
double 
? 
AllocatedStorageGb )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
RemovalPolicy 
RemovalPolicy *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
bool "
DeleteAutomatedBackups *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
int 
BackupRetentionDays &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
DeletionProtection &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 

SubnetType 

SubnetType $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
VpcId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 

SecurityId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
SecurityGroupId %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
bool !
AllowGroupAllOutbound )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
IPeer 
IngressPeer  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Port 
IngressPort 
{  !
get" %
;% &
set' *
;* +
}, -
public 
IPeer 

EgressPeer 
{  !
get" %
;% &
set' *
;* +
}, -
public 
Port 

EgressPort 
{  
get! $
;$ %
set& )
;) *
}+ ,
}   
}!! ÿ
©C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\CdkEntity\SecurityGroupEntity.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
	CdkEntity+ 4
{ 
public 

class 
SecurityGroupEntity $
{ 
public 
string 
Identification $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
	GroupName 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
bool		 !
AllowGroupAllOutbound		 )
{		* +
get		, /
;		/ 0
set		1 4
;		4 5
}		6 7
public

 
IVpc

 
Vpc

 
{

 
get

 
;

 
set

 "
;

" #
}

$ %
public 
IPeer 
IngressPeer  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Port 
IngressPort 
{  !
get" %
;% &
set' *
;* +
}, -
public 
IPeer 

EgressPeer 
{  !
get" %
;% &
set' *
;* +
}, -
public 
Port 

EgressPort 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} è
üC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\CdkEntity\VpcEntity.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
	CdkEntity+ 4
{ 
public 

class 
	VpcEntity 
{ 
public 
string 
Identification $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public		 
string		 
Cidr		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
double

 
?

 
MaxAzs

 
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
public "
DefaultInstanceTenancy %"
DefaultInstanceTenancy& <
{= >
get? B
;B C
setD G
;G H
}I J
public 
bool 
EnableDnsSupport $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool 
EnableDnsHostnames &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
List 
<  
ISubnetConfiguration (
>( ) 
SubnetConfigurations* >
{? @
getA D
;D E
setF I
;I J
}K L
public 

Dictionary 
< 
string  
,  !
string! '
>' (
Tags) -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
} 
} ©∞
™C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkDatabaseHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
Handlers+ 3
{ 
public 

class !
AwsCdkDatabaseHandler &
:' ( 
AwsCdkDefaultHandler) =
{ 
private $
IAwsSecurityGroupHandler (#
AwsSecurityGroupHandler) @
{A B
getC F
;F G
}H I
private 
AwsCdkVpcHandler  
AwsCdkVpcHandler! 1
{2 3
get4 7
;7 8
}9 :
private 
AwsCdkSecretHandler #
AwsCdkSecretHandler$ 7
{8 9
get: =
;= >
}? @
public !
AwsCdkDatabaseHandler $
($ %
	Construct% .
scope/ 4
,4 5
string6 <
applicationName= L
,L M
stringN T
environmentNameU d
,d e$
IAwsSecurityGroupHandlerf ~$
awsSecurityGroupHandler	 ñ
,
ñ ó
AwsCdkVpcHandler
ò ®
awsCdkVpcHandler
© π
,
π ∫!
AwsCdkSecretHandler
ª Œ!
awsCdkSecretHandler
œ ‚
)
‚ „
:
‰ Â
base
Ê Í
(
Í Î
scope
Î 
,
 Ò
applicationName
Ú Å
,
Å Ç
environmentName
É í
)
í ì
{ 	#
AwsSecurityGroupHandler #
=$ %#
awsSecurityGroupHandler& =
;= >
AwsCdkVpcHandler 
= 
awsCdkVpcHandler /
;/ 0
AwsCdkSecretHandler 
=  !
awsCdkSecretHandler" 5
;5 6
} 	
public77 
IDatabaseCluster77 !
CreateDatabaseCluster77  5
(775 6

DeputyBase776 @!
databaseEngineVersion77A V
,77V W
string77X ^
identification77_ m
,77m n
string77o u
clusterIdentifier	77v á
,
77á à
string
77â è$
instanceIdentifierBase
77ê ¶
,
77¶ ß
string
77® Æ
databaseName
77Ø ª
,
77ª º
double
77Ω √
?
77√ ƒ
port
77≈ …
,
77…  
double
77À —
?
77— “
	instances
77” ‹
,
77‹ ›
string
77ﬁ ‰
userName
77Â Ì
,
77Ì Ó
string
77Ô ı

secretName
77ˆ Ä
,
77Ä Å
IVpc
77Ç Ü
vpc
77á ä
,
77ä ã
InstanceClass
77å ô
instanceClass
77ö ß
,
77ß ®
InstanceSize
77© µ
instanceSize
77∂ ¬
,
77¬ √
string
77ƒ  

securityId
77À ’
,
77’ ÷
string
77◊ ›
securityGroupId
77ﬁ Ì
,
77Ì Ó
string
77Ô ı
parameterGroupId
77ˆ Ü
=
77á à
null
77â ç
,
77ç é
IRole
77è î
[
77î ï
]
77ï ñ
roles
77ó ú
=
77ù û
null
77ü £
,
77£ §
bool
77• ©
storageEncrypted
77™ ∫
=
77ª º
true
77Ω ¡
,
77¡ ¬

SubnetType
77√ Õ

subnetType
77Œ ÿ
=
77ÿ Ÿ

SubnetType
77⁄ ‰
.
77‰ Â
PRIVATE
77Â Ï
,
77Ï Ì
string
77Ó Ù*
defaultSubnetDomainSeparator
77ı ë
=
77í ì
$str
77î ó
,
77ó ò
string
77ö †
subnets
77° ®
=
77© ™
$str
77´ ≠
,
77≠ Æ
RemovalPolicy
77∞ Ω
removalPolicy
77æ À
=
77Ã Õ
RemovalPolicy
77Œ €
.
77€ ‹
DESTROY
77‹ „
,
77„ ‰
int
77Â Ë!
backupRetentionDays
77È ¸
=
77˝ ˛
$num
77ˇ Ä
,
77Ä Å
bool
77Ç Ü 
deletionProtection
77á ô
=
77ö õ
false
77ú °
)
77° ¢
{88 	
BasicDatabaseInfra99 
(99 
vpc99 "
,99" #

secretName99$ .
,99. /

securityId990 :
,99: ;
securityGroupId99< K
,99K L

subnetType99M W
,99W X(
defaultSubnetDomainSeparator99Y u
,99u v
subnets99w ~
,99~ 
out
99Ä É
var
99Ñ á
securityGroup
99à ï
,
99ï ñ
out
99ó ö
var
99õ û
secret
99ü •
,
99• ¶
out
99ß ™
var
99´ Æ
subnetSelection
99Ø æ
)
99æ ø
;
99ø ¿
var:: 
engine:: 
=:: 
GetClusterEngine:: )
(::) *!
databaseEngineVersion::* ?
)::? @
;::@ A
return;; 
new;; 
DatabaseCluster;; &
(;;& '
Scope;;' ,
,;;, -
identification;;. <
,;;< =
new;;> A 
DatabaseClusterProps;;B V
{<< 
ClusterIdentifier== !
===" #
clusterIdentifier==$ 5
,==5 6"
InstanceIdentifierBase>> &
=>>' ("
instanceIdentifierBase>>) ?
,>>? @
Engine?? 
=?? 
engine?? 
,??  
RemovalPolicy@@ 
=@@ 
removalPolicy@@  -
,@@- .
DeletionProtectionAA "
=AA# $
deletionProtectionAA% 7
,AA7 8
PortBB 
=BB 
portBB 
,BB 
InstancePropsCC 
=CC 
newCC  #
AmazonCC$ *
.CC* +
CDKCC+ .
.CC. /
AWSCC/ 2
.CC2 3
RDSCC3 6
.CC6 7
InstancePropsCC7 D
{DD 
InstanceTypeEE  
=EE! "
InstanceTypeEE# /
.EE/ 0
OfEE0 2
(EE2 3
instanceClassEE3 @
,EE@ A
instanceSizeEEB N
)EEN O
,EEO P

VpcSubnetsFF 
=FF  
subnetSelectionFF! 0
,FF0 1
VpcGG 
=GG 
vpcGG 
,GG 
SecurityGroupsHH "
=HH# $
newHH% (
[HH( )
]HH) *
{II 
securityGroupJJ %
}KK 
}LL 
,LL 
StorageEncryptedMM  
=MM! "
storageEncryptedMM# 3
,MM3 4
	InstancesNN 
=NN 
	instancesNN %
,NN% &
CredentialsOO 
=OO 
CredentialsOO )
.OO) *
FromPasswordOO* 6
(OO6 7
userNameOO7 ?
,OO? @
secretOOA G
.OOG H
SecretValueOOH S
)OOS T
,OOT U
DefaultDatabaseNamePP #
=PP$ %
databaseNamePP& 2
,PP2 3
ParameterGroupQQ 
=QQ  '
CreateClusterParameterGroupQQ! <
(QQ< =
parameterGroupIdQQ= M
,QQM N
engineQQO U
,QQU V
rolesQQW \
)QQ\ ]
,QQ] ^
BackupRR 
=RR 
newRR 
BackupPropsRR (
{SS 
	RetentionTT 
=TT 
DurationTT  (
.TT( )
DaysTT) -
(TT- .
backupRetentionDaysTT. A
)TTA B
}UU 
}VV 
)VV 
;VV 
}WW 	
publicYY 
IDatabaseInstanceYY  
CreateDatabaseYY! /
(YY/ 0

DeputyBaseYY0 :!
databaseEngineVersionYY; P
,YYP Q
stringYYR X
identificationYYY g
,YYg h
stringYYi o
databaseNameYYp |
,YY| }
string	YY~ Ñ
userName
YYÖ ç
,
YYç é
string
YYè ï

secretName
YYñ †
,
YY† °
StorageType
YY¢ ≠
storageType
YYÆ π
,
YYπ ∫
InstanceClass
YYª »
instanceClass
YY… ÷
,
YY÷ ◊
InstanceSize
YYÿ ‰
instanceSize
YYÂ Ò
,
YYÒ Ú
IVpc
YYÛ ˜
vpc
YY¯ ˚
,
YY˚ ¸
string
YY˝ É

securityId
YYÑ é
,
YYé è
string
YYê ñ
securityGroupId
YYó ¶
,
YY¶ ß
string
YY® Æ
parameterGroupId
YYØ ø
=
YY¿ ¡
null
YY¬ ∆
,
YY∆ «
IRole
YY» Õ
[
YYÕ Œ
]
YYŒ œ
roles
YY– ’
=
YY÷ ◊
null
YYÿ ‹
,
YY‹ ›
double
YYﬁ ‰
?
YY‰ Â 
allocatedStorageGb
YYÊ ¯
=
YY˘ ˙
$num
YY˚ ¸
,
YY¸ ˝
RemovalPolicy
YY˛ ã
removalPolicy
YYå ô
=
YYö õ
RemovalPolicy
YYú ©
.
YY© ™
DESTROY
YY™ ±
,
YY± ≤
bool
YY≥ ∑$
deleteAutomatedBackups
YY∏ Œ
=
YYœ –
false
YY— ÷
,
YY÷ ◊
int
YYÿ €!
backupRetentionDays
YY‹ Ô
=
YY Ò
$num
YYÚ Û
,
YYÛ Ù
bool
YYı ˘ 
deletionProtection
YY˙ å
=
YYç é
false
YYè î
,
YYî ï

SubnetType
YYñ †

subnetType
YY° ´
=
YY¨ ≠

SubnetType
YYÆ ∏
.
YY∏ π
PRIVATE
YYπ ¿
,
YY¿ ¡
string
YY¬ »*
defaultSubnetDomainSeparator
YY… Â
=
YYÊ Á
$str
YYË Î
,
YYÎ Ï
string
YYÌ Û
subnets
YYÙ ˚
=
YY¸ ˝
$str
YY˛ Ä
)
YYÄ Å
{ZZ 	
BasicDatabaseInfra[[ 
([[ 
vpc[[ "
,[[" #

secretName[[$ .
,[[. /

securityId[[0 :
,[[: ;
securityGroupId[[< K
,[[K L

subnetType[[M W
,[[W X(
defaultSubnetDomainSeparator[[Y u
,[[u v
subnets[[w ~
,[[~ 
out
[[Ä É
var
[[Ñ á
securityGroup
[[à ï
,
[[ï ñ
out
[[ó ö
var
[[õ û
secret
[[ü •
,
[[• ¶
out
[[ß ™
var
[[´ Æ
subnetSelection
[[Ø æ
)
[[æ ø
;
[[ø ¿
var\\ 
engine\\ 
=\\ 
GetInstanceEngine\\ *
(\\* +!
databaseEngineVersion\\+ @
)\\@ A
;\\A B
return^^ 
new^^ 
DatabaseInstance^^ '
(^^' (
Scope^^( -
,^^- .
identification^^/ =
,^^= >
new^^? B!
DatabaseInstanceProps^^C X
{__ 
Engine`` 
=`` 
engine`` 
,``  
RemovalPolicyaa 
=aa 
removalPolicyaa  -
,aa- .
DeletionProtectionbb "
=bb# $
deletionProtectionbb% 7
,bb7 8
Credentialscc 
=cc 
Credentialscc )
.cc) *
FromPasswordcc* 6
(cc6 7
userNamecc7 ?
,cc? @
secretccA G
.ccG H
SecretValueccH S
)ccS T
,ccT U
StorageTypedd 
=dd 
storageTypedd )
,dd) *
DatabaseNameee 
=ee 
databaseNameee +
,ee+ ,

VpcSubnetsff 
=ff 
subnetSelectionff ,
,ff, -
Vpcgg 
=gg 
vpcgg 
,gg 
SecurityGroupshh 
=hh  
newhh! $
[hh$ %
]hh% &
{ii 
securityGroupjj !
}kk 
,kk "
DeleteAutomatedBackupsll &
=ll' ("
deleteAutomatedBackupsll) ?
,ll? @
BackupRetentionmm 
=mm  !
Durationmm" *
.mm* +
Daysmm+ /
(mm/ 0
backupRetentionDaysmm0 C
)mmC D
,mmD E
AllocatedStoragenn  
=nn! "
allocatedStorageGbnn# 5
,nn5 6
InstanceTypeoo 
=oo 
InstanceTypeoo +
.oo+ ,
Ofoo, .
(oo. /
instanceClassoo/ <
,oo< =
instanceSizeoo> J
)ooJ K
,ooK L
ParameterGrouppp 
=pp  '
CreateClusterParameterGrouppp! <
(pp< =
parameterGroupIdpp= M
,ppM N
engineppO U
,ppU V
rolesppW \
)pp\ ]
}qq 
)qq 
;qq 
}rr 	
publictt 
ParameterGrouptt '
CreateClusterParameterGrouptt 9
(tt9 :
stringtt: @(
parameterGroupIdentificationttA ]
,tt] ^
IEnginett_ f!
databaseEngineVersionttg |
,tt| }
IRole	tt~ É
[
ttÉ Ñ
]
ttÑ Ö
roles
ttÜ ã
)
ttã å
{uu 	
ifvv 
(vv 
stringvv 
.vv 
IsNullOrEmptyvv $
(vv$ %(
parameterGroupIdentificationvv% A
)vvA B
)vvB C
returnvvD J
nullvvK O
;vvO P
ifww 
(ww 
rolesww 
==ww 
nullww 
||ww  
!ww! "
rolesww" '
.ww' (
Anyww( +
(ww+ ,
)ww, -
)ww- .
returnww/ 5
nullww6 :
;ww: ;
returnyy 
newyy 
ParameterGroupyy %
(yy% &
Scopeyy& +
,yy+ ,
$"yy- /
{yy/ 0
ApplicationNameyy0 ?
}yy? @
{yy@ A
EnvironmentNameyyA P
}yyP Q
{yyQ R(
parameterGroupIdentificationyyR n
}yyn o
"yyo p
,yyp q
newzz 
ParameterGroupPropszz '
{{{ 
Description|| 
=||  !
$"||" $
{||$ %
ApplicationName||% 4
}||4 5
{||5 6
EnvironmentName||6 E
}||E F
{||F G(
parameterGroupIdentification||G c
}||c d
"||d e
,||e f
Engine}} 
=}} !
databaseEngineVersion}} 2
,}}2 3

Parameters~~ 
=~~  
roles~~! &
.~~& '
Select~~' -
(~~- .
t~~. /
=>~~0 2
new~~3 6
{~~7 8
t~~9 :
.~~: ;
RoleName~~; C
,~~C D
t~~E F
.~~F G
RoleArn~~G N
}~~O P
)~~P Q
.~~R S
ToDictionary~~S _
(~~_ `
t~~` a
=>~~b d
t~~e f
.~~f g
RoleName~~g o
,~~o p
t~~q r
=>~~s u
t~~v w
.~~w x
RoleArn~~x 
)	~~ Ä
} 
) 
; 
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ  
BasicDatabaseInfra
ÇÇ '
(
ÇÇ' (
IVpc
ÇÇ( ,
vpc
ÇÇ- 0
,
ÇÇ0 1
string
ÇÇ2 8

secretName
ÇÇ9 C
,
ÇÇC D
string
ÇÇE K

securityId
ÇÇL V
,
ÇÇV W
string
ÇÇX ^
securityGroupId
ÇÇ_ n
,
ÇÇn o

SubnetType
ÉÉ 

subnetType
ÉÉ !
,
ÉÉ! "
string
ÉÉ# )*
defaultSubnetDomainSeparator
ÉÉ* F
,
ÉÉF G
string
ÉÉH N
subnets
ÉÉO V
,
ÉÉV W
out
ÉÉX [
ISecurityGroup
ÉÉ\ j
securityGroup
ÉÉk x
,
ÉÉx y
out
ÑÑ 
ISecret
ÑÑ 
secret
ÑÑ 
,
ÑÑ 
out
ÑÑ  #
ISubnetSelection
ÑÑ$ 4
subnetSelection
ÑÑ5 D
)
ÑÑD E
{
ÖÖ 	
if
ÜÜ 
(
ÜÜ 
vpc
ÜÜ 
==
ÜÜ 
null
ÜÜ 
)
ÜÜ 
{
áá 
throw
àà 
new
àà 
ArgumentException
àà +
(
àà+ ,
$"
àà, .
$str
àà. b
"
ààb c
)
ààc d
;
ààd e
}
ââ 
securityGroup
ãã 
=
ãã %
AwsSecurityGroupHandler
ãã 3
.
ãã3 4
Locate
ãã4 :
(
ãã: ;

securityId
ãã; E
,
ããE F
securityGroupId
ããG V
)
ããV W
;
ããW X
if
çç 
(
çç 
securityGroup
çç 
==
çç  
null
çç! %
)
çç% &
{
éé 
throw
èè 
new
èè 
ArgumentException
èè +
(
èè+ ,
$"
èè, .
$str
èè. D
{
èèD E
securityGroupId
èèE T
}
èèT U
$strèèU Ç
"èèÇ É
)èèÉ Ñ
;èèÑ Ö
}
êê 
secret
íí 
=
íí !
AwsCdkSecretHandler
íí (
.
íí( )
Create
íí) /
(
íí/ 0

secretName
íí0 :
)
íí: ;
;
íí; <
subnetSelection
ìì 
=
ìì 
AwsCdkVpcHandler
ìì .
.
ìì. /#
GetVpcSubnetSelection
ìì/ D
(
ììD E
vpc
ììE H
,
ììH I
subnets
ììJ Q
,
ììQ R*
defaultSubnetDomainSeparator
ììS o
,
ììo p

subnetType
ììq {
)
ìì{ |
;
ìì| }
}
îî 	
private
ññ 
IClusterEngine
ññ 
GetClusterEngine
ññ /
(
ññ/ 0

DeputyBase
ññ0 :#
databaseEngineVersion
ññ; P
)
ññP Q
{
óó 	
var
òò 
databaseType
òò 
=
òò #
databaseEngineVersion
òò 4
.
òò4 5
GetType
òò5 <
(
òò< =
)
òò= >
;
òò> ?
if
öö 
(
öö 
databaseType
öö 
==
öö 
typeof
öö  &
(
öö& '&
AuroraMysqlEngineVersion
öö' ?
)
öö? @
)
öö@ A
{
õõ 
return
úú #
DatabaseClusterEngine
úú ,
.
úú, -
AuroraMysql
úú- 8
(
úú8 9
new
úú9 <+
AuroraMysqlClusterEngineProps
úú= Z
{
ùù 
Version
ûû 
=
ûû #
databaseEngineVersion
ûû 3
as
ûû4 6&
AuroraMysqlEngineVersion
ûû7 O
}
üü 
)
üü 
;
üü 
}
†† 
if
¢¢ 
(
¢¢ 
databaseType
¢¢ 
==
¢¢ 
typeof
¢¢  &
(
¢¢& ')
AuroraPostgresEngineVersion
¢¢' B
)
¢¢B C
)
¢¢C D
{
££ 
return
§§ #
DatabaseClusterEngine
§§ ,
.
§§, -
AuroraPostgres
§§- ;
(
§§; <
new
§§< ?.
 AuroraPostgresClusterEngineProps
§§@ `
{
•• 
Version
¶¶ 
=
¶¶ #
databaseEngineVersion
¶¶ 3
as
¶¶4 6)
AuroraPostgresEngineVersion
¶¶7 R
}
ßß 
)
ßß 
;
ßß 
}
®® 
throw
™™ 
new
™™ 
ArgumentException
™™ '
(
™™' (
$str™™( å
)™™å ç
;™™ç é
}
´´ 	
private
≠≠ 
IInstanceEngine
≠≠ 
GetInstanceEngine
≠≠  1
(
≠≠1 2

DeputyBase
≠≠2 <#
databaseEngineVersion
≠≠= R
)
≠≠R S
{
ÆÆ 	
var
ØØ 
databaseType
ØØ 
=
ØØ #
databaseEngineVersion
ØØ 4
.
ØØ4 5
GetType
ØØ5 <
(
ØØ< =
)
ØØ= >
;
ØØ> ?
if
±± 
(
±± 
databaseType
±± 
==
±± 
typeof
±±  &
(
±±& ' 
MysqlEngineVersion
±±' 9
)
±±9 :
)
±±: ;
{
≤≤ 
return
≥≥ $
DatabaseInstanceEngine
≥≥ -
.
≥≥- .
Mysql
≥≥. 3
(
≥≥3 4
new
≥≥4 7&
MySqlInstanceEngineProps
≥≥8 P
{
¥¥ 
Version
µµ 
=
µµ #
databaseEngineVersion
µµ 3
as
µµ4 6 
MysqlEngineVersion
µµ7 I
}
∂∂ 
)
∂∂ 
;
∂∂ 
}
∑∑ 
if
ππ 
(
ππ 
databaseType
ππ 
==
ππ 
typeof
ππ  &
(
ππ& '#
PostgresEngineVersion
ππ' <
)
ππ< =
)
ππ= >
{
∫∫ 
return
ªª $
DatabaseInstanceEngine
ªª -
.
ªª- .
Postgres
ªª. 6
(
ªª6 7
new
ªª7 :)
PostgresInstanceEngineProps
ªª; V
(
ªªV W
)
ªªW X
{
ºº 
Version
ΩΩ 
=
ΩΩ #
databaseEngineVersion
ΩΩ 3
as
ΩΩ4 6#
PostgresEngineVersion
ΩΩ7 L
}
ææ 
)
ææ 
;
ææ 
}
øø 
if
¡¡ 
(
¡¡ 
databaseType
¡¡ 
==
¡¡ 
typeof
¡¡  &
(
¡¡& '"
MariaDbEngineVersion
¡¡' ;
)
¡¡; <
)
¡¡< =
{
¬¬ 
return
√√ $
DatabaseInstanceEngine
√√ -
.
√√- .
MariaDb
√√. 5
(
√√5 6
new
√√6 9(
MariaDbInstanceEngineProps
√√: T
(
√√T U
)
√√U V
{
ƒƒ 
Version
≈≈ 
=
≈≈ #
databaseEngineVersion
≈≈ 3
as
≈≈4 6"
MariaDbEngineVersion
≈≈7 K
}
∆∆ 
)
∆∆ 
;
∆∆ 
}
«« 
if
…… 
(
…… 
databaseType
…… 
==
…… 
typeof
……  &
(
……& '$
SqlServerEngineVersion
……' =
)
……= >
)
……> ?
{
   
return
ÀÀ $
DatabaseInstanceEngine
ÀÀ -
.
ÀÀ- .
SqlServerEe
ÀÀ. 9
(
ÀÀ9 :
new
ÀÀ: =,
SqlServerEeInstanceEngineProps
ÀÀ> \
(
ÀÀ\ ]
)
ÀÀ] ^
{
ÃÃ 
Version
ÕÕ 
=
ÕÕ #
databaseEngineVersion
ÕÕ 3
as
ÕÕ4 6$
SqlServerEngineVersion
ÕÕ7 M
}
ŒŒ 
)
ŒŒ 
;
ŒŒ 
}
œœ 
if
—— 
(
—— 
databaseType
—— 
==
—— 
typeof
——  &
(
——& '!
OracleEngineVersion
——' :
)
——: ;
)
——; <
{
““ 
return
”” $
DatabaseInstanceEngine
”” -
.
””- .
OracleEe
””. 6
(
””6 7
new
””7 :)
OracleEeInstanceEngineProps
””; V
(
””V W
)
””W X
{
‘‘ 
Version
’’ 
=
’’ #
databaseEngineVersion
’’ 3
as
’’4 6!
OracleEngineVersion
’’7 J
}
÷÷ 
)
÷÷ 
;
÷÷ 
}
◊◊ 
throw
ŸŸ 
new
ŸŸ 
ArgumentException
ŸŸ '
(
ŸŸ' (
$strŸŸ( Ω
)ŸŸΩ æ
;ŸŸæ ø
}
⁄⁄ 	
}
›› 
}ﬁﬁ ∑
©C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkDefaultHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
Handlers+ 3
{ 
public 

class  
AwsCdkDefaultHandler %
{ 
	protected 
	Construct 
Scope !
{" #
get$ '
;' (
set) ,
;, -
}. /
	protected		 
string		 
ApplicationName		 (
{		) *
get		+ .
;		. /
set		0 3
;		3 4
}		5 6
	protected

 
string

 
EnvironmentName

 (
{

) *
get

+ .
;

. /
set

0 3
;

3 4
}

5 6
	protected  
AwsCdkDefaultHandler &
(& '
	Construct' 0
scope1 6
,6 7
string8 >
applicationName? N
,N O
stringP V
environmentNameW f
)f g
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
applicationName% 4
)4 5
||6 8
string9 ?
.? @
IsNullOrEmpty@ M
(M N
environmentNameN ]
)] ^
)^ _
{ 
throw 
new 
ArgumentException +
(+ ,
$str, j
)j k
;k l
} 
Scope 
= 
scope 
; 
ApplicationName 
= 
applicationName -
;- .
EnvironmentName 
= 
environmentName -
;- .
} 	
} 
} ˝•
¢C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
Handlers+ 3
{ 
public 

class 
AwsCdkHandler 
:  
Stack! &
,& '
IAwsCdkHandler( 6
{ 
	protected 
string 
ApplicationName (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
	protected 
string 
EnvironmentName (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
private 
AwsCdkVpcHandler  
AwsCdkVpcHandler! 1
{2 3
get4 7
;7 8
}9 :
private 
AwsCdkS3Handler 
AwsCdkS3Handler  /
{0 1
get2 5
;5 6
}7 8
private !
AwsCdkDatabaseHandler %!
AwsCdkDatabaseHandler& ;
{< =
get> A
;A B
}C D
private $
IAwsSecurityGroupHandler (#
AwsSecurityGroupHandler) @
{A B
getC F
;F G
}H I
private 
AwsCdkSecretHandler #
AwsCdkSecretHandler$ 7
{8 9
get: =
;= >
}? @
private 
AwsCdkKmsHandler  
AwsCdkKmsHandler! 1
{2 3
get4 7
;7 8
}9 :
private 
IEnvironment !
EnvironmentProperties 2
{3 4
get5 8
;8 9
}: ;
public 
AwsCdkHandler 
( 
	Construct &
scope' ,
,, -
string. 4
id5 7
,7 8
string9 ?
applicationName@ O
,O P
stringQ W
environmentNameX g
,g h
IStackPropsi t
propsu z
={ |
null	} Å
)
Å Ç
:
É Ñ
base
Ö â
(
â ä
scope
ä è
,
è ê
id
ë ì
,
ì î
props
ï ö
)
ö õ
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
applicationName% 4
)4 5
||6 8
string9 ?
.? @
IsNullOrEmpty@ M
(M N
environmentNameN ]
)] ^
)^ _
{ 
throw   
new   
ArgumentException   +
(  + ,
$str  , j
)  j k
;  k l
}!! 
ApplicationName## 
=## 
applicationName## -
;##- .
EnvironmentName$$ 
=$$ 
environmentName$$ -
;$$- .
AwsCdkKmsHandler&& 
=&& 
new&& "
AwsCdkKmsHandler&&# 3
(&&3 4
this&&4 8
,&&8 9
ApplicationName&&: I
,&&I J
EnvironmentName&&K Z
)&&Z [
;&&[ \!
EnvironmentProperties'' !
=''" #
props''$ )
?'') *
.''* +
Env''+ .
;''. /
AwsCdkVpcHandler(( 
=(( 
new(( "
AwsCdkVpcHandler((# 3
(((3 4
this((4 8
,((8 9
ApplicationName((: I
,((I J
EnvironmentName((K Z
)((Z [
;(([ \
AwsCdkS3Handler)) 
=)) 
new)) !
AwsCdkS3Handler))" 1
())1 2
this))2 6
,))6 7
ApplicationName))8 G
,))G H
EnvironmentName))I X
)))X Y
;))Y Z#
AwsSecurityGroupHandler** #
=**$ %
new**& )#
AwsSecurityGroupHandler*** A
(**A B
this**B F
,**F G
ApplicationName**H W
,**W X
EnvironmentName**Y h
,**h i
AwsCdkVpcHandler**j z
)**z {
;**{ |
AwsCdkSecretHandler++ 
=++  !
new++" %
AwsCdkSecretHandler++& 9
(++9 :
this++: >
,++> ?
ApplicationName++@ O
,++O P
EnvironmentName++Q `
,++` a
AwsCdkKmsHandler++b r
,++r s"
EnvironmentProperties	++t â
?
++â ä
.
++ä ã
Region
++ã ë
,
++ë í#
EnvironmentProperties
++ì ®
?
++® ©
.
++© ™
Account
++™ ±
)
++± ≤
;
++≤ ≥!
AwsCdkDatabaseHandler,, !
=,," #
new,,$ '!
AwsCdkDatabaseHandler,,( =
(,,= >
this,,> B
,,,B C
ApplicationName,,D S
,,,S T
EnvironmentName,,U d
,,,d e#
AwsSecurityGroupHandler,,f }
,,,} ~
AwsCdkVpcHandler	,, è
,
,,è ê!
AwsCdkSecretHandler
,,ë §
)
,,§ •
;
,,• ¶
}-- 	
public11 
IVpc11 
AddVpc11 
(11 
string11 !
cidr11" &
,11& '
double11( .
?11. /
maxAzs110 6
,116 7"
DefaultInstanceTenancy118 N"
defaultInstanceTenancy11O e
,11e f
string11g m
vpcIdentification11n 
=
11Ä Å
null
11Ç Ü
,
11Ü á
bool
11à å
enableDnsSupport
11ç ù
=
11û ü
true
11† §
,
11§ •
bool
11¶ ™ 
enableDnsHostnames
11´ Ω
=
11æ ø
true
11¿ ƒ
,
11ƒ ≈
List
11∆  
<
11  À"
ISubnetConfiguration
11À ﬂ
>
11ﬂ ‡"
subnetConfigurations
11· ı
=
11ˆ ˜
null
11¯ ¸
,
11¸ ˝

Dictionary
11˛ à
<
11à â
string
11â è
,
11è ê
string
11ë ó
>
11ó ò
tags
11ô ù
=
11û ü
null
11† §
)
11§ •
{22 	
return33 
AwsCdkVpcHandler33 #
.33# $
Create33$ *
(33* +
string33+ 1
.331 2
IsNullOrEmpty332 ?
(33? @
vpcIdentification33@ Q
)33Q R
?33S T
$"33U W
{33W X
ApplicationName33X g
}33g h
{33h i
EnvironmentName33i x
}33x y
$str33y |
"33| }
:33~ 
vpcIdentification
33Ä ë
,
33ë í
cidr
33ì ó
,
33ó ò
maxAzs
33ô ü
,
33ü †$
defaultInstanceTenancy
33° ∑
,
33∑ ∏
enableDnsSupport
33π …
,
33…   
enableDnsHostnames
33À ›
,
33› ﬁ"
subnetConfigurations
33ﬂ Û
,
33Û Ù
tags
33ı ˘
)
33˘ ˙
;
33˙ ˚
}44 	
public66 
IVpc66 
	LocateVpc66 
(66 
string66 $
identification66% 3
,663 4
string665 ;
vpcId66< A
,66A B
bool66C G
	isDefault66H Q
=66R S
true66T X
)66X Y
{77 	
return88 
AwsCdkVpcHandler88 #
.88# $
Locate88$ *
(88* +
identification88+ 9
,889 :
vpcId88: ?
,88? @
	isDefault88@ I
)88I J
;88J K
}99 	
public?? 
ISecurityGroup?? 
AddSecurityGroup?? .
(??. /
string??/ 5
identification??6 D
,??D E
string??F L
securityGroupName??M ^
,??^ _
bool??` d!
allowGroupAllOutbound??e z
,??z {
IPeer	??| Å

egressPeer
??Ç å
,
??å ç
Port
??é í
egreessPort
??ì û
,
??û ü
IPeer
??† •
ingressPeer
??¶ ±
,
??± ≤
Port
??≥ ∑
ingressPort
??∏ √
,
??√ ƒ
Vpc
??≈ »
vpc
??… Ã
)
??Ã Õ
{@@ 	
returnAA #
AwsSecurityGroupHandlerAA *
.AA* +
CreateAA+ 1
(AA1 2
identificationAA2 @
,AA@ A
securityGroupNameAAB S
,AAS T!
allowGroupAllOutboundAAU j
,AAj k
vpcAAk n
,AAn o
ingressPeerAAo z
,AAz {
ingressPort	AA| á
,
AAá à

egressPeer
AAâ ì
,
AAì î
egreessPort
AAî ü
)
AAü †
;
AA† °
}BB 	
publicDD 
ISecurityGroupDD 
AddSecurityGroupDD .
(DD. /
stringDD/ 5
identificationDD6 D
,DDD E
stringDDF L
securityGroupNameDDM ^
,DD^ _
boolDD` d!
allowGroupAllOutboundDDe z
,DDz {
IPeer	DD| Å

egressPeer
DDÇ å
,
DDå ç
Port
DDé í
egreessPort
DDì û
,
DDû ü
IPeer
DD† •
ingressPeer
DD¶ ±
,
DD± ≤
Port
DD≥ ∑
ingressPort
DD∏ √
,
DD√ ƒ
IVpc
DD≈ …
vpcId
DD  œ
)
DDœ –
{EE 	
returnFF #
AwsSecurityGroupHandlerFF *
.FF* +
CreateFF+ 1
(FF1 2
identificationFF2 @
,FF@ A
securityGroupNameFFB S
,FFS T!
allowGroupAllOutboundFFU j
,FFj k
vpcIdFFl q
,FFq r
ingressPeerFFs ~
,FF~ 
ingressPort
FFÄ ã
,
FFã å

egressPeer
FFç ó
,
FFó ò
egreessPort
FFô §
)
FF§ •
;
FF• ¶
}GG 	
publicTT 
ISecretTT 
	AddSecretTT  
(TT  !
stringTT! '

secretNameTT( 2
,TT2 3
stringTT4 :
charsToExcludeTT; I
=TTJ K
$strTTL ]
,TT] ^
intTT_ b
passwordLengthTTc q
=TTr s
$numTTt v
)TTv w
{UU 	
returnVV 
AwsCdkSecretHandlerVV &
.VV& '
CreateVV' -
(VV- .

secretNameVV. 8
,VV8 9
charsToExcludeVV: H
,VVH I
passwordLengthVVJ X
)VVX Y
;VVY Z
}WW 	
publicaa 
ISecretaa 
	AddSecretaa  
(aa  !
stringaa! '

secretNameaa( 2
,aa2 3
stringaa4 :
encryptionKeyIdaa; J
,aaJ K
stringaaL R
charsToExcludeaaS a
=aab c
$straad u
,aau v
intaaw z
passwordLength	aa{ â
=
aaä ã
$num
aaå é
)
aaé è
{bb 	
returncc 
AwsCdkSecretHandlercc &
.cc& '
Createcc' -
(cc- .

secretNamecc. 8
,cc8 9
encryptionKeyIdcc: I
,ccI J
charsToExcludeccK Y
,ccY Z
passwordLengthcc[ i
)cci j
;ccj k
}dd 	
publicnn 
ISecretnn 
	AddSecretnn  
(nn  !
stringnn! '

secretNamenn( 2
,nn2 3
IKeynn4 8
keynn9 <
,nn< =
stringnn? E
charsToExcludennF T
=nnU V
$strnnW h
,nnh i
intnnj m
passwordLengthnnn |
=nn} ~
$num	nn Å
)
nnÅ Ç
{oo 	
returnpp 
AwsCdkSecretHandlerpp &
.pp& '
Createpp' -
(pp- .

secretNamepp. 8
,pp8 9
keypp: =
,pp= >
charsToExcludepp? M
,ppM N
passwordLengthppO ]
)pp] ^
;pp^ _
}qq 	
publicss 
stringss 
GetSecretValuess $
(ss$ %
stringss% +
secretIdss, 4
,ss4 5
stringss6 <

secretNamess= G
,ssG H
stringssI O
secretManagerSuffixssP c
)ssc d
{tt 	
returnuu 
AwsCdkSecretHandleruu &
.uu& '
GetSecretValueuu' 5
(uu5 6
secretIduu6 >
,uu> ?

secretNameuu@ J
,uuJ K
secretManagerSuffixuuL _
)uu_ `
;uu` a
}vv 	
public|| 
IBucket|| 
AddS3Bucket|| "
(||" #
string||# )

bucketName||* 4
,||4 5
int||6 9
expirationDays||: H
,||H I
RemovalPolicy||J W
removalPolicy||X e
=||f g
RemovalPolicy||h u
.||u v
DESTROY||v }
,||} ~
BucketEncryption	|| è

encryption
||ê ö
=
||õ ú
BucketEncryption
||ù ≠
.
||≠ Æ
KMS_MANAGED
||Æ π
,
||π ∫
string
||ª ¡!
webSiteRedirectHost
||¬ ’
=
||÷ ◊
$str
||ÿ ⁄
,
||⁄ €
bool
||‹ ‡
	versioned
||· Í
=
||Î Ï
true
||Ì Ò
)
||Ò Ú
{}} 	
return~~ 
AwsCdkS3Handler~~ "
.~~" #
Create~~# )
(~~) *

bucketName~~* 4
,~~4 5
expirationDays~~6 D
,~~D E
removalPolicy~~F S
,~~S T

encryption~~U _
,~~_ `
webSiteRedirectHost~~a t
,~~t u
	versioned~~v 
)	~~ Ä
;
~~Ä Å
} 	
public
ÖÖ 
IDatabaseCluster
ÖÖ 
AddDatabase
ÖÖ  +
(
ÖÖ+ ,&
AuroraMysqlEngineVersion
ÖÖ, D#
databaseEngineVersion
ÖÖE Z
,
ÖÖZ [
string
ÖÖ\ b
identification
ÖÖc q
,
ÖÖq r
string
ÖÖs y 
clusterIdentifierÖÖz ã
,ÖÖã å
stringÖÖç ì&
instanceIdentifierBaseÖÖî ™
,ÖÖ™ ´
stringÖÖ¨ ≤
databaseNameÖÖ≥ ø
,ÖÖø ¿
doubleÖÖ¡ «
?ÖÖ« »
portÖÖ… Õ
,ÖÖÕ Œ
doubleÖÖœ ’
?ÖÖ’ ÷
	instancesÖÖ◊ ‡
,ÖÖ‡ ·
stringÖÖ‚ Ë
userNameÖÖÈ Ò
,ÖÖÒ Ú
stringÖÖÛ ˘

secretNameÖÖ˙ Ñ
,ÖÖÑ Ö
IVpcÖÖÜ ä
vpcÖÖã é
,ÖÖé è
InstanceClassÖÖê ù
instanceClassÖÖû ´
,ÖÖ´ ¨
InstanceSizeÖÖ≠ π
instanceSizeÖÖ∫ ∆
,ÖÖ∆ «
stringÖÖ» Œ

securityIdÖÖœ Ÿ
,ÖÖŸ ⁄
stringÖÖ€ ·
securityGroupIdÖÖ‚ Ò
,ÖÖÒ Ú
stringÖÖÛ ˘ 
parameterGroupIdÖÖ˙ ä
=ÖÖã å
nullÖÖç ë
,ÖÖë í
IRoleÖÖì ò
[ÖÖò ô
]ÖÖô ö
rolesÖÖõ †
=ÖÖ° ¢
nullÖÖ£ ß
,ÖÖß ®
boolÖÖ© ≠ 
storageEncryptedÖÖÆ æ
=ÖÖø ¿
trueÖÖ¡ ≈
,ÖÖ≈ ∆

SubnetTypeÖÖ« —

subnetTypeÖÖ“ ‹
=ÖÖ› ﬁ

SubnetTypeÖÖﬂ È
.ÖÖÈ Í
PRIVATEÖÖÍ Ò
,ÖÖÒ Ú
stringÖÖÛ ˘
subnetsÖÖ˙ Å
=ÖÖÇ É
$strÖÖÑ Ü
,ÖÖÜ á
RemovalPolicyÖÖà ï
removalPolicyÖÖñ £
=ÖÖ§ •
RemovalPolicyÖÖ¶ ≥
.ÖÖ≥ ¥
DESTROYÖÖ¥ ª
,ÖÖª º
intÖÖΩ ¿#
backupRetentionDaysÖÖ¡ ‘
=ÖÖ’ ÷
$numÖÖ◊ ÿ
,ÖÖÿ Ÿ
boolÖÖ⁄ ﬁ"
deletionProtectionÖÖﬂ Ò
=ÖÖÚ Û
falseÖÖÙ ˘
,ÖÖ˘ ˙
stringÖÖ˚ Å,
defaultSubnetDomainSeparatorÖÖÇ û
=ÖÖü †
$strÖÖ° §
)ÖÖ§ •
{
ÜÜ 	
return
áá #
AwsCdkDatabaseHandler
áá (
.
áá( )#
CreateDatabaseCluster
áá) >
(
áá> ?#
databaseEngineVersion
áá? T
,
ááT U
identification
ááV d
,
áád e
clusterIdentifier
ááf w
,
ááw x$
instanceIdentifierBase
àà &
,
àà& '
databaseName
àà( 4
,
àà4 5
port
àà6 :
,
àà: ;
	instances
àà< E
,
ààE F
userName
ààG O
,
ààO P

secretName
ààQ [
,
àà[ \
vpc
àà] `
,
àà` a
instanceClass
ààb o
,
àào p
instanceSize
ââ 
,
ââ 

securityId
ââ (
,
ââ( )
securityGroupId
ââ* 9
,
ââ9 :
parameterGroupId
ââ; K
,
ââK L
roles
ââM R
,
ââR S
storageEncrypted
ââT d
,
ââd e

subnetType
ââf p
,
ââp q+
defaultSubnetDomainSeparatorââr é
,ââé è
subnetsââê ó
,ââó ò
removalPolicyââô ¶
,ââ¶ ß#
backupRetentionDaysââ® ª
)ââª º
;ââº Ω
}
ää 	
public
åå 
IDatabaseCluster
åå 
AddDatabase
åå  +
(
åå+ ,)
AuroraPostgresEngineVersion
åå, G#
databaseEngineVersion
ååH ]
,
åå] ^
string
åå_ e
identification
ååf t
,
ååt u
string
ååv | 
clusterIdentifieråå} é
,ååé è
stringååê ñ&
instanceIdentifierBaseååó ≠
,åå≠ Æ
stringååØ µ
databaseNameåå∂ ¬
,åå¬ √
doubleååƒ  
?åå  À
portååÃ –
,åå– —
doubleåå“ ÿ
?ååÿ Ÿ
	instancesåå⁄ „
,åå„ ‰
stringååÂ Î
userNameååÏ Ù
,ååÙ ı
stringååˆ ¸

secretNameåå˝ á
,ååá à
IVpcååâ ç
vpcååé ë
,ååë í
InstanceClassååì †
instanceClassåå° Æ
,ååÆ Ø
InstanceSizeåå∞ º
instanceSizeååΩ …
,åå…  
stringååÀ —

securityIdåå“ ‹
,åå‹ ›
stringååﬁ ‰
securityGroupIdååÂ Ù
,ååÙ ı
stringååˆ ¸ 
parameterGroupIdåå˝ ç
=ååé è
nullååê î
,ååî ï
IRoleååñ õ
[ååõ ú
]ååú ù
rolesååû £
=åå§ •
nullåå¶ ™
,åå™ ´
boolåå¨ ∞ 
storageEncryptedåå± ¡
=åå¬ √
trueååƒ »
,åå» …

SubnetTypeåå  ‘

subnetTypeåå’ ﬂ
=åå‡ ·

SubnetTypeåå‚ Ï
.ååÏ Ì
PRIVATEååÌ Ù
,ååÙ ı
stringååˆ ¸
subnetsåå˝ Ñ
=ååÖ Ü
$strååá â
,ååâ ä
RemovalPolicyååã ò
removalPolicyååô ¶
=ååß ®
RemovalPolicyåå© ∂
.åå∂ ∑
DESTROYåå∑ æ
,ååæ ø
intåå¿ √#
backupRetentionDaysååƒ ◊
=ååÿ Ÿ
$numåå⁄ €
,åå€ ‹
boolåå› ·"
deletionProtectionåå‚ Ù
=ååı ˆ
falseåå˜ ¸
,åå¸ ˝
stringåå˛ Ñ,
defaultSubnetDomainSeparatorååÖ °
=åå¢ £
$stråå§ ß
)ååß ®
{
çç 	
return
éé #
AwsCdkDatabaseHandler
éé (
.
éé( )#
CreateDatabaseCluster
éé) >
(
éé> ?#
databaseEngineVersion
éé? T
,
ééT U
identification
ééV d
,
ééd e
clusterIdentifier
ééf w
,
ééw x$
instanceIdentifierBase
èè &
,
èè& '
databaseName
èè( 4
,
èè4 5
port
èè6 :
,
èè: ;
	instances
èè< E
,
èèE F
userName
èèG O
,
èèO P

secretName
èèQ [
,
èè[ \
vpc
èè] `
,
èè` a
instanceClass
èèb o
,
èèo p
instanceSize
êê 
,
êê 

securityId
êê (
,
êê( )
securityGroupId
êê* 9
,
êê9 :
parameterGroupId
êê; K
,
êêK L
roles
êêM R
,
êêR S
storageEncrypted
êêT d
,
êêd e

subnetType
êêf p
,
êêp q+
defaultSubnetDomainSeparatorêêr é
,êêé è
subnetsêêê ó
,êêó ò
removalPolicyêêô ¶
,êê¶ ß#
backupRetentionDaysêê® ª
)êêª º
;êêº Ω
}
ëë 	
public
ìì 
IDatabaseInstance
ìì  
AddDatabase
ìì! ,
(
ìì, -$
SqlServerEngineVersion
ìì- C#
databaseEngineVersion
ììD Y
,
ììY Z
string
ìì[ a
identification
ììb p
,
ììp q
string
ììr x
databaseNameììy Ö
,ììÖ Ü
stringììá ç
userNameììé ñ
,ììñ ó
stringììò û
passwordììü ß
,ììß ®
StorageTypeìì© ¥
storageTypeììµ ¿
,ìì¿ ¡
InstanceClassìì¬ œ
instanceClassìì– ›
,ìì› ﬁ
InstanceSizeììﬂ Î
instanceSizeììÏ ¯
,ìì¯ ˘
IVpcìì˙ ˛
vpcììˇ Ç
,ììÇ É
stringììÑ ä
securityGroupIdììã ö
,ììö õ
stringììú ¢!
securityGroupNameìì£ ¥
,ìì¥ µ
stringìì∂ º 
parameterGroupIdììΩ Õ
=ììŒ œ
nullìì– ‘
,ìì‘ ’
IRoleìì÷ €
[ìì€ ‹
]ìì‹ ›
rolesììﬁ „
=ìì‰ Â
nullììÊ Í
,ììÍ Î
doubleììÏ Ú
?ììÚ Û"
allocatedStorageGbììÙ Ü
=ììá à
$numììâ ä
,ììä ã
RemovalPolicyììå ô
removalPolicyììö ß
=ìì® ©
RemovalPolicyìì™ ∑
.ìì∑ ∏
DESTROYìì∏ ø
,ììø ¿
boolìì¡ ≈&
deleteAutomatedBackupsìì∆ ‹
=ìì› ﬁ
falseììﬂ ‰
,ìì‰ Â
intììÊ È#
backupRetentionDaysììÍ ˝
=ìì˛ ˇ
$numììÄ Å
,ììÅ Ç
boolììÉ á"
deletionProtectionììà ö
=ììõ ú
falseììù ¢
,ìì¢ £

SubnetTypeìì§ Æ

subnetTypeììØ π
=ìì∫ ª

SubnetTypeììº ∆
.ìì∆ «
PUBLICìì« Õ
,ììÕ Œ
boolììœ ”%
allowGroupAllOutboundìì‘ È
=ììÍ Î
trueììÏ 
,ìì Ò
stringììÚ ¯,
defaultSubnetDomainSeparatorìì˘ ï
=ììñ ó
$strììò õ
)ììõ ú
{
îî 	
return
ïï #
AwsCdkDatabaseHandler
ïï (
.
ïï( )
CreateDatabase
ïï) 7
(
ïï7 8#
databaseEngineVersion
ïï8 M
,
ïïM N
identification
ïïO ]
,
ïï] ^
databaseName
ïï_ k
,
ïïk l
userName
ïïm u
,
ïïu v
password
ïïw 
,ïï Ä
storageTypeïïÅ å
,ïïå ç
instanceClass
ññ 
,
ññ 
instanceSize
ññ +
,
ññ+ ,
vpc
ññ- 0
,
ññ0 1
securityGroupId
ññ2 A
,
ññA B
securityGroupName
ññC T
,
ññT U
parameterGroupId
ññV f
,
ññf g
roles
ññh m
,
ññm n!
allocatedStorageGbñño Å
,ññÅ Ç
removalPolicyññÉ ê
,ññê ë&
deleteAutomatedBackupsññí ®
,ññ® ©!
backupRetentionDays
óó #
,
óó# $ 
deletionProtection
óó% 7
,
óó7 8

subnetType
óó9 C
,
óóC D*
defaultSubnetDomainSeparator
óóE a
)
óóa b
;
óób c
}
ôô 	
public
õõ 
IDatabaseInstance
õõ  
AddDatabase
õõ! ,
(
õõ, - 
MysqlEngineVersion
õõ- ?#
databaseEngineVersion
õõ@ U
,
õõU V
string
õõW ]
identification
õõ^ l
,
õõl m
string
õõn t
databaseNameõõu Å
,õõÅ Ç
stringõõÉ â
userNameõõä í
,õõí ì
stringõõî ö
passwordõõõ £
,õõ£ §
StorageTypeõõ• ∞
storageTypeõõ± º
,õõº Ω
InstanceClassõõæ À
instanceClassõõÃ Ÿ
,õõŸ ⁄
InstanceSizeõõ€ Á
instanceSizeõõË Ù
,õõÙ ı
IVpcõõˆ ˙
vpcõõ˚ ˛
,õõ˛ ˇ
stringõõÄ Ü
securityGroupIdõõá ñ
,õõñ ó
stringõõò û!
securityGroupNameõõü ∞
,õõ∞ ±
stringõõ≤ ∏ 
parameterGroupIdõõπ …
=õõ  À
nullõõÃ –
,õõ– —
IRoleõõ“ ◊
[õõ◊ ÿ
]õõÿ Ÿ
rolesõõ⁄ ﬂ
=õõ‡ ·
nullõõ‚ Ê
,õõÊ Á
doubleõõË Ó
?õõÓ Ô"
allocatedStorageGbõõ Ç
=õõÉ Ñ
$numõõÖ Ü
,õõÜ á
RemovalPolicyõõà ï
removalPolicyõõñ £
=õõ§ •
RemovalPolicyõõ¶ ≥
.õõ≥ ¥
DESTROYõõ¥ ª
,õõª º
boolõõΩ ¡&
deleteAutomatedBackupsõõ¬ ÿ
=õõŸ ⁄
falseõõ€ ‡
,õõ‡ ·
intõõ‚ Â#
backupRetentionDaysõõÊ ˘
=õõ˙ ˚
$numõõ¸ ˝
,õõ˝ ˛
boolõõˇ É"
deletionProtectionõõÑ ñ
=õõó ò
falseõõô û
,õõû ü

SubnetTypeõõ† ™

subnetTypeõõ´ µ
=õõ∂ ∑

SubnetTypeõõ∏ ¬
.õõ¬ √
PUBLICõõ√ …
,õõ…  
boolõõÀ œ%
allowGroupAllOutboundõõ– Â
=õõÊ Á
trueõõË Ï
,õõÏ Ì
stringõõÓ Ù,
defaultSubnetDomainSeparatorõõı ë
=õõí ì
$strõõî ó
)õõó ò
{
úú 	
return
ùù #
AwsCdkDatabaseHandler
ùù (
.
ùù( )
CreateDatabase
ùù) 7
(
ùù7 8#
databaseEngineVersion
ùù8 M
,
ùùM N
identification
ùùO ]
,
ùù] ^
databaseName
ùù_ k
,
ùùk l
userName
ùùm u
,
ùùu v
password
ùùw 
,ùù Ä
storageTypeùùÅ å
,ùùå ç
instanceClass
ûû 
,
ûû 
instanceSize
ûû +
,
ûû+ ,
vpc
ûû- 0
,
ûû0 1
securityGroupId
ûû2 A
,
ûûA B
securityGroupName
ûûC T
,
ûûT U
parameterGroupId
ûûV f
,
ûûf g
roles
ûûh m
,
ûûm n!
allocatedStorageGbûûo Å
,ûûÅ Ç
removalPolicyûûÉ ê
,ûûê ë&
deleteAutomatedBackupsûûí ®
,ûû® ©!
backupRetentionDays
üü #
,
üü# $ 
deletionProtection
üü% 7
,
üü7 8

subnetType
üü9 C
,
üüC D*
defaultSubnetDomainSeparator
üüE a
)
üüa b
;
üüb c
}
†† 	
public
¢¢ 
IDatabaseInstance
¢¢  
AddDatabase
¢¢! ,
(
¢¢, -!
OracleEngineVersion
¢¢- @#
databaseEngineVersion
¢¢A V
,
¢¢V W
string
¢¢X ^
identification
¢¢_ m
,
¢¢m n
string
¢¢o u
databaseName¢¢v Ç
,¢¢Ç É
string¢¢Ñ ä
userName¢¢ã ì
,¢¢ì î
string¢¢ï õ
password¢¢ú §
,¢¢§ •
StorageType¢¢¶ ±
storageType¢¢≤ Ω
,¢¢Ω æ
InstanceClass¢¢ø Ã
instanceClass¢¢Õ ⁄
,¢¢⁄ €
InstanceSize¢¢‹ Ë
instanceSize¢¢È ı
,¢¢ı ˆ
IVpc¢¢˜ ˚
vpc¢¢¸ ˇ
,¢¢ˇ Ä
string¢¢Å á
securityGroupId¢¢à ó
,¢¢ó ò
string¢¢ô ü!
securityGroupName¢¢† ±
,¢¢± ≤
string¢¢≥ π 
parameterGroupId¢¢∫  
=¢¢À Ã
null¢¢Õ —
,¢¢— “
IRole¢¢” ÿ
[¢¢ÿ Ÿ
]¢¢Ÿ ⁄
roles¢¢€ ‡
=¢¢· ‚
null¢¢„ Á
,¢¢Á Ë
double¢¢È Ô
?¢¢Ô "
allocatedStorageGb¢¢Ò É
=¢¢Ñ Ö
$num¢¢Ü á
,¢¢á à
RemovalPolicy¢¢â ñ
removalPolicy¢¢ó §
=¢¢• ¶
RemovalPolicy¢¢ß ¥
.¢¢¥ µ
DESTROY¢¢µ º
,¢¢º Ω
bool¢¢æ ¬&
deleteAutomatedBackups¢¢√ Ÿ
=¢¢⁄ €
false¢¢‹ ·
,¢¢· ‚
int¢¢„ Ê#
backupRetentionDays¢¢Á ˙
=¢¢˚ ¸
$num¢¢˝ ˛
,¢¢˛ ˇ
bool¢¢Ä Ñ"
deletionProtection¢¢Ö ó
=¢¢ò ô
false¢¢ö ü
,¢¢ü †

SubnetType¢¢° ´

subnetType¢¢¨ ∂
=¢¢∑ ∏

SubnetType¢¢π √
.¢¢√ ƒ
PUBLIC¢¢ƒ  
,¢¢  À
bool¢¢Ã –%
allowGroupAllOutbound¢¢— Ê
=¢¢Á Ë
true¢¢È Ì
,¢¢Ì Ó
string¢¢Ô ı,
defaultSubnetDomainSeparator¢¢ˆ í
=¢¢ì î
$str¢¢ï ò
)¢¢ò ô
{
££ 	
return
§§ #
AwsCdkDatabaseHandler
§§ (
.
§§( )
CreateDatabase
§§) 7
(
§§7 8#
databaseEngineVersion
§§8 M
,
§§M N
identification
§§O ]
,
§§] ^
databaseName
§§_ k
,
§§k l
userName
§§m u
,
§§u v
password
§§w 
,§§ Ä
storageType§§Å å
,§§å ç
instanceClass
•• 
,
•• 
instanceSize
•• +
,
••+ ,
vpc
••- 0
,
••0 1
securityGroupId
••2 A
,
••A B
securityGroupName
••C T
,
••T U
parameterGroupId
••V f
,
••f g
roles
••h m
,
••m n!
allocatedStorageGb••o Å
,••Å Ç
removalPolicy••É ê
,••ê ë&
deleteAutomatedBackups••í ®
,••® ©!
backupRetentionDays
¶¶ #
,
¶¶# $ 
deletionProtection
¶¶% 7
,
¶¶7 8

subnetType
¶¶9 C
,
¶¶C D*
defaultSubnetDomainSeparator
¶¶E a
)
¶¶a b
;
¶¶b c
}
ßß 	
public
©© 
IDatabaseInstance
©©  
AddDatabase
©©! ,
(
©©, -"
MariaDbEngineVersion
©©- A#
databaseEngineVersion
©©B W
,
©©W X
string
©©Y _
identification
©©` n
,
©©n o
string
©©p v
databaseName©©w É
,©©É Ñ
string©©Ö ã
userName©©å î
,©©î ï
string©©ñ ú
password©©ù •
,©©• ¶
StorageType©©ß ≤
storageType©©≥ æ
,©©æ ø
InstanceClass©©¿ Õ
instanceClass©©Œ €
,©©€ ‹
InstanceSize©©› È
instanceSize©©Í ˆ
,©©ˆ ˜
IVpc©©¯ ¸
vpc©©˝ Ä
,©©Ä Å
string©©Ç à
securityGroupId©©â ò
,©©ò ô
string©©ö †!
securityGroupName©©° ≤
,©©≤ ≥
string©©¥ ∫ 
parameterGroupId©©ª À
=©©Ã Õ
null©©Œ “
,©©“ ”
IRole©©‘ Ÿ
[©©Ÿ ⁄
]©©⁄ €
roles©©‹ ·
=©©‚ „
null©©‰ Ë
,©©Ë È
double©©Í 
?©© Ò"
allocatedStorageGb©©Ú Ñ
=©©Ö Ü
$num©©á à
,©©à â
RemovalPolicy©©ä ó
removalPolicy©©ò •
=©©¶ ß
RemovalPolicy©©® µ
.©©µ ∂
DESTROY©©∂ Ω
,©©Ω æ
bool©©ø √&
deleteAutomatedBackups©©ƒ ⁄
=©©€ ‹
false©©› ‚
,©©‚ „
int©©‰ Á#
backupRetentionDays©©Ë ˚
=©©¸ ˝
$num©©˛ ˇ
,©©ˇ Ä
bool©©Å Ö"
deletionProtection©©Ü ò
=©©ô ö
false©©õ †
,©©† °

SubnetType©©¢ ¨

subnetType©©≠ ∑
=©©∏ π

SubnetType©©∫ ƒ
.©©ƒ ≈
PUBLIC©©≈ À
,©©À Ã
bool©©Õ —%
allowGroupAllOutbound©©“ Á
=©©Ë È
true©©Í Ó
,©©Ó Ô
string©© ˆ,
defaultSubnetDomainSeparator©©˜ ì
=©©î ï
$str©©ñ ô
)©©ô ö
{
™™ 	
return
´´ #
AwsCdkDatabaseHandler
´´ (
.
´´( )
CreateDatabase
´´) 7
(
´´7 8#
databaseEngineVersion
´´8 M
,
´´M N
identification
´´O ]
,
´´] ^
databaseName
´´_ k
,
´´k l
userName
´´m u
,
´´u v
password
´´w 
,´´ Ä
storageType´´Å å
,´´å ç
instanceClass
¨¨ 
,
¨¨ 
instanceSize
¨¨ +
,
¨¨+ ,
vpc
¨¨- 0
,
¨¨0 1
securityGroupId
¨¨2 A
,
¨¨A B
securityGroupName
¨¨C T
,
¨¨T U
parameterGroupId
¨¨V f
,
¨¨f g
roles
¨¨h m
,
¨¨m n!
allocatedStorageGb¨¨o Å
,¨¨Å Ç
removalPolicy¨¨É ê
,¨¨ê ë&
deleteAutomatedBackups¨¨í ®
,¨¨® ©!
backupRetentionDays
≠≠ #
,
≠≠# $ 
deletionProtection
≠≠% 7
,
≠≠7 8

subnetType
≠≠9 C
,
≠≠C D*
defaultSubnetDomainSeparator
≠≠E a
)
≠≠a b
;
≠≠b c
}
ÆÆ 	
public
∞∞ 
IDatabaseInstance
∞∞  
AddDatabase
∞∞! ,
(
∞∞, -#
PostgresEngineVersion
∞∞- B#
databaseEngineVersion
∞∞C X
,
∞∞X Y
string
∞∞Z `
identification
∞∞a o
,
∞∞o p
string
∞∞q w
databaseName∞∞x Ñ
,∞∞Ñ Ö
string∞∞Ü å
userName∞∞ç ï
,∞∞ï ñ
string∞∞ó ù
password∞∞û ¶
,∞∞¶ ß
StorageType∞∞® ≥
storageType∞∞¥ ø
,∞∞ø ¿
InstanceClass∞∞¡ Œ
instanceClass∞∞œ ‹
,∞∞‹ ›
InstanceSize∞∞ﬁ Í
instanceSize∞∞Î ˜
,∞∞˜ ¯
IVpc∞∞˘ ˝
vpc∞∞˛ Å
,∞∞Å Ç
string∞∞É â
securityGroupId∞∞ä ô
,∞∞ô ö
string∞∞õ °!
securityGroupName∞∞¢ ≥
,∞∞≥ ¥
string∞∞µ ª 
parameterGroupId∞∞º Ã
=∞∞Õ Œ
null∞∞œ ”
,∞∞” ‘
IRole∞∞’ ⁄
[∞∞⁄ €
]∞∞€ ‹
roles∞∞› ‚
=∞∞„ ‰
null∞∞Â È
,∞∞È Í
double∞∞Î Ò
?∞∞Ò Ú"
allocatedStorageGb∞∞Û Ö
=∞∞Ü á
$num∞∞à â
,∞∞â ä
RemovalPolicy∞∞ã ò
removalPolicy∞∞ô ¶
=∞∞ß ®
RemovalPolicy∞∞© ∂
.∞∞∂ ∑
DESTROY∞∞∑ æ
,∞∞æ ø
bool∞∞¿ ƒ&
deleteAutomatedBackups∞∞≈ €
=∞∞‹ ›
false∞∞ﬁ „
,∞∞„ ‰
int∞∞Â Ë#
backupRetentionDays∞∞È ¸
=∞∞˝ ˛
$num∞∞ˇ Ä
,∞∞Ä Å
bool∞∞Ç Ü"
deletionProtection∞∞á ô
=∞∞ö õ
false∞∞ú °
,∞∞° ¢

SubnetType∞∞£ ≠

subnetType∞∞Æ ∏
=∞∞π ∫

SubnetType∞∞ª ≈
.∞∞≈ ∆
PUBLIC∞∞∆ Ã
,∞∞Ã Õ
bool∞∞Œ “%
allowGroupAllOutbound∞∞” Ë
=∞∞È Í
true∞∞Î Ô
,∞∞Ô 
string∞∞Ò ˜,
defaultSubnetDomainSeparator∞∞¯ î
=∞∞ï ñ
$str∞∞ó ö
)∞∞ö õ
{
±± 	
return
≤≤ #
AwsCdkDatabaseHandler
≤≤ (
.
≤≤( )
CreateDatabase
≤≤) 7
(
≤≤7 8#
databaseEngineVersion
≤≤8 M
,
≤≤M N
identification
≤≤O ]
,
≤≤] ^
databaseName
≤≤_ k
,
≤≤k l
userName
≤≤m u
,
≤≤u v
password
≤≤w 
,≤≤ Ä
storageType≤≤Å å
,≤≤å ç
instanceClass
≥≥ 
,
≥≥ 
instanceSize
≥≥ +
,
≥≥+ ,
vpc
≥≥- 0
,
≥≥0 1
securityGroupId
≥≥2 A
,
≥≥A B
securityGroupName
≥≥C T
,
≥≥T U
parameterGroupId
≥≥V f
,
≥≥f g
roles
≥≥h m
,
≥≥m n!
allocatedStorageGb≥≥o Å
,≥≥Å Ç
removalPolicy≥≥É ê
,≥≥ê ë&
deleteAutomatedBackups≥≥í ®
,≥≥® ©!
backupRetentionDays
¥¥ #
,
¥¥# $ 
deletionProtection
¥¥% 7
,
¥¥7 8

subnetType
¥¥9 C
,
¥¥C D*
defaultSubnetDomainSeparator
¥¥E a
)
¥¥a b
;
¥¥b c
}
µµ 	
}
∏∏ 
}ππ ‚
•C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkKmsHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
Handlers+ 3
{ 
public 

class 
AwsCdkKmsHandler !
:! " 
AwsCdkDefaultHandler$ 8
{ 
public		 
AwsCdkKmsHandler		 
(		  
	Construct		  )
scope		* /
,		/ 0
string		1 7
applicationName		8 G
,		G H
string		I O
environmentName		P _
)		_ `
:		a b
base		c g
(		g h
scope		h m
,		m n
applicationName		o ~
,		~ 
environmentName
		Ä è
)
		è ê
{

 	
} 	
public 
IKey 
Create 
( 
string !
id" $
,$ %
	IKeyProps& /
keyProps0 8
=9 :
null; ?
)? @
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
id% '
)' (
)( )
{ 
throw 
new 
ArgumentException +
(+ ,
$str, n
)n o
;o p
} 
return 
new 
Key 
( 
Scope  
,  !
id! #
,# $
keyProps% -
)- .
;. /
} 	
public 
IKey 
Locate 
( 
string !
id" $
,$ %
string& ,
keyArn- 3
)3 4
{ 	
return 
Key 
. 

FromKeyArn !
(! "
Scope" '
,' (
id) +
,+ ,
keyArn- 3
)3 4
;4 5
} 	
} 
} ≈
ßC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkQueueHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
Handlers+ 3
{ 
public		 

class		 
AwsCdkQueueHandler		 #
:		$ % 
AwsCdkDefaultHandler		& :
{

 
public 
AwsCdkQueueHandler !
(! "
	Construct" +
scope, 1
,1 2
string3 9
applicationName: I
,I J
stringK Q
environmentNameR a
)a b
:c d
basee i
(i j
scopej o
,o p
applicationName	q Ä
,
Ä Å
environmentName
Ç ë
)
ë í
{ 	
} 	
public 
IQueue 
Create 
( 
string #
id$ &
,& '
string( .
	queueName/ 8
,8 9
int: =$
visibilityTimeoutMinutes> V
=W X
$numY Z
,Z [
int\ _ 
deliveryDelayMinutes` t
=u v
$numw x
,x y
boolz ~
fifo	 É
=
Ñ Ö
true
Ü ä
,
ä ã
bool
å ê%
contentBasedDuplication
ë ®
=
© ™
true
´ Ø
)
Ø ∞
{ 	
if 
(  
deliveryDelayMinutes $
>$ %
$num% '
)' (
throw) .
new/ 2
ArgumentException3 D
(D E
$str	E Å
)
Å Ç
;
Ç É
return 
new 
Queue 
( 
Scope "
," #
$"# %
{% &
ApplicationName& 5
}5 6
{6 7
EnvironmentName7 F
}F G
{G H
idH J
}J K
"K L
,L M
newN Q

QueuePropsR \
{ 
	QueueName 
= 
$" 
{ 
ApplicationName .
}. /
{/ 0
EnvironmentName0 ?
}? @
{@ A
	queueNameA J
}J K
"K L
,L M
Fifo   
=   
fifo   
,   
VisibilityTimeout!! !
=!!" #
Duration!!$ ,
.!!, -
Minutes!!- 4
(!!4 5$
visibilityTimeoutMinutes!!5 M
)!!M N
,!!N O%
ContentBasedDeduplication"" )
=""* +#
contentBasedDuplication"", C
,""C D
DeliveryDelay## 
=## 
Duration##  (
.##( )
Minutes##) 0
(##0 1 
deliveryDelayMinutes##1 E
)##E F
}$$ 
)$$ 
;$$ 
}%% 	
public'' 
IQueue'' 
Locate'' 
('' 
string'' #
id''$ &
,''& '
string''( .
arn''/ 2
)''2 3
{(( 	
if)) 
()) 
string)) 
.)) 
IsNullOrEmpty)) $
())$ %
id))% '
)))' (
||))) +
string)), 2
.))2 3
IsNullOrEmpty))3 @
())@ A
arn))A D
)))D E
)))E F
{** 
throw++ 
new++ 
ArgumentException++ +
(+++ ,
$str++, b
)++b c
;++c d
},, 
return.. 
Queue.. 
... 
FromQueueArn.. %
(..% &
Scope..& +
,..+ ,
id..- /
,../ 0
arn..1 4
)..4 5
;..5 6
}// 	
}00 
}11 ¡#
¶C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkRoleHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
Handlers+ 3
{ 
public 

class 
AwsCdkRoleHandler "
:# $ 
AwsCdkDefaultHandler% 9
{		 
private

 

TagHandler

 

TagHandler

 %
{

& '
get

( +
;

+ ,
}

- .
public 
AwsCdkRoleHandler  
(  !
	Construct! *
scope+ 0
,0 1
string2 8
applicationName9 H
,H I
stringJ P
environmentNameQ `
)` a
:b c
based h
(h i
scopei n
,n o
applicationNamep 
,	 Ä
environmentName
Å ê
)
ê ë
{ 	

TagHandler 
= 
new 

TagHandler '
(' (
)( )
;) *
} 	
public 
IRole 
Create 
( 
string "
identification# 1
,1 2

IRoleProps3 =
roleProperties> L
)L M
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
identification% 3
)3 4
)4 5
{ 
throw 
new 
ArgumentException +
(+ ,
$str, P
)P Q
;Q R
} 
var 
result 
= 
new 
Role !
(! "
Scope" '
,' (
$") +
{+ ,
ApplicationName, ;
}; <
{< =
EnvironmentName= L
}L M
{M N
identificationN \
}\ ]
"] ^
,^ _
roleProperties` n
)n o
;o p

TagHandler 
. 
LogTag 
( 
$"  
{  !
ApplicationName! 0
}0 1
{1 2
EnvironmentName2 A
}A B
{B C
identificationC Q
}Q R
"R S
,S T
resultU [
)[ \
;\ ]
return   
result   
;   
}!! 	
public,, 

IRoleProps,,  
CreateRoleProperties,, .
(,,. /
string,,/ 5
	assumedBy,,6 ?
,,,? @
string,,A G

policyName,,H R
,,,R S
string,,T Z
[,,Z [
],,[ \
actions,,] d
,,,d e
string,,f l
[,,l m
],,m n
	resources,,o x
,,,x y
Effect	,,z Ä
effect
,,Å á
=
,,à â
Effect
,,ä ê
.
,,ê ë
ALLOW
,,ë ñ
)
,,ñ ó
{-- 	
return.. 
new.. 
	RoleProps..  
{// 
	AssumedBy00 
=00 
new00 
ServicePrincipal00  0
(000 1
	assumedBy001 :
)00: ;
,00; <
InlinePolicies11 
=11  
new11! $

Dictionary11% /
<11/ 0
string110 6
,116 7
PolicyDocument118 F
>11F G
{22 
{33 
$"33 
{33 
ApplicationName33 (
}33( )
{33) *
EnvironmentName33* 9
}339 :
{33: ;

policyName33; E
}33E F
"33F G
,33G H
new44 
PolicyDocument44 *
(44* +
new44+ .
PolicyDocumentProps44/ B
{55 

Statements66 &
=66' (
new66) ,
PolicyStatement66- <
[66< =
]66= >
{77 
new88  #
PolicyStatement88$ 3
(883 4
new884 7 
PolicyStatementProps888 L
{99  !
Effect::$ *
=::+ ,
effect::- 3
,::3 4
Actions;;$ +
=;;, -
actions;;. 5
,;;5 6
	Resources<<$ -
=<<. /
	resources<<0 9
}==  !
)==! "
}>> 
}?? 
)?? 
}@@ 
}AA 
}BB 
;BB 
}CC 	
}DD 
}EE ˜.
§C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkS3Handler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
Handlers+ 3
{ 
public 

class 
AwsCdkS3Handler  
:! " 
AwsCdkDefaultHandler# 7
{ 
public		 
AwsCdkS3Handler		 
(		 
	Construct		 (
scope		) .
,		. /
string		0 6
applicationName		7 F
,		F G
string		H N
environmentName		O ^
)		^ _
:		` a
base		b f
(		f g
scope		g l
,		l m
applicationName		n }
,		} ~
environmentName			 é
)
		é è
{

 	
} 	
public 
IBucket 
Create 
( 
string $

bucketName% /
,/ 0
int1 4
expirationDays5 C
,C D
RemovalPolicyE R
removalPolicyS `
=a b
RemovalPolicyc p
.p q
DESTROYq x
,x y
BucketEncryption	z ä

encryption
ã ï
=
ñ ó
BucketEncryption
ò ®
.
® ©
KMS_MANAGED
© ¥
,
¥ µ
string
∂ º!
webSiteRedirectHost
Ω –
=
— “
$str
” ’
,
’ ÷
bool
◊ €
	versioned
‹ Â
=
Ê Á
true
Ë Ï
)
Ï Ì
{ 	
return 
CreateBucket 
(  
new  #
BucketEntity$ 0
{ 
RemovalPolicy 
= 
removalPolicy  -
,- .

BucketName 
= 

bucketName '
,' (
ExpirationDays 
=  
expirationDays! /
,/ 0
	Versioned 
= 
	versioned %
,% &

Encryption 
= 

encryption '
,' (
WebSiteRedirectHost #
=$ %
webSiteRedirectHost& 9
} 
) 
; 
} 	
public 
IBucket 
LocateFromName %
(% &
string& ,
identification- ;
,; <
string= C

bucketNameD N
)N O
{ 	
return 
Bucket 
. 
FromBucketName (
(( )
Scope) .
,. /
identification0 >
,> ?

bucketName@ J
)J K
;K L
} 	
public 
IBucket 
LocateFromArn $
($ %
string% +
identification, :
,: ;
string< B
arnC F
)F G
{   	
return!! 
Bucket!! 
.!! 
FromBucketArn!! '
(!!' (
Scope!!( -
,!!- .
identification!!/ =
,!!= >
arn!!? B
)!!B C
;!!C D
}"" 	
private$$ 
IBucket$$ 
CreateBucket$$ $
($$$ %
BucketEntity$$% 1
bucket$$2 8
)$$8 9
{%% 	
if&& 
(&& 
string&& 
.&& 
IsNullOrEmpty&& $
(&&$ %
bucket&&% +
.&&+ ,
WebSiteRedirectHost&&, ?
)&&? @
)&&@ A
{'' 
return(( 
new(( 
Bucket(( !
(((! "
Scope((" '
,((' (
bucket(() /
.((/ 0

BucketName((0 :
,((: ;
new((< ?
BucketProps((@ K
{)) 
	Versioned** 
=** 
bucket**  &
.**& '
	Versioned**' 0
,**0 1
RemovalPolicy++ !
=++" #
bucket++$ *
.++* +
RemovalPolicy+++ 8
,++8 9

Encryption,, 
=,,  
bucket,,! '
.,,' (

Encryption,,( 2
,,,2 3
LifecycleRules.. "
=..# $
new..% (
ILifecycleRule..) 7
[..7 8
]..8 9
{// 
new00 
LifecycleRule00 )
{11 

Expiration22 &
=22' (
Duration22) 1
.221 2
Days222 6
(226 7
bucket227 =
.22= >
ExpirationDays22> L
)22L M
}33 
}44 
}55 
)55 
;55 
}66 
return88 
new88 
Bucket88 
(88 
Scope88 #
,88# $
bucket88% +
.88+ ,

BucketName88, 6
,886 7
new888 ;
BucketProps88< G
{99 
	Versioned:: 
=:: 
bucket:: "
.::" #
	Versioned::# ,
,::, -
RemovalPolicy;; 
=;; 
bucket;;  &
.;;& '
RemovalPolicy;;' 4
,;;4 5

Encryption<< 
=<< 
bucket<< #
.<<# $

Encryption<<$ .
,<<. /
LifecycleRules>> 
=>>  
new>>! $
ILifecycleRule>>% 3
[>>3 4
]>>4 5
{?? 
new@@ 
LifecycleRule@@ %
{AA 

ExpirationBB "
=BB# $
DurationBB% -
.BB- .
DaysBB. 2
(BB2 3
bucketBB3 9
.BB9 :
ExpirationDaysBB: H
)BBH I
}CC 
}DD 
,DD 
WebsiteRedirectEE 
=EE  !
newEE" %
RedirectTargetEE& 4
{FF 
HostNameGG 
=GG 
bucketGG %
.GG% &
WebSiteRedirectHostGG& 9
}HH 
}II 
)II 
;II 
}JJ 	
}KK 
}LL ÂN
®C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkSecretHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
Handlers+ 3
{ 
public 

class 
AwsCdkSecretHandler $
:$ % 
AwsCdkDefaultHandler& :
{		 
private

 
string

 
Region

 
{

 
get

  #
;

# $
}

% &
private 
string 
	AccountId  
{! "
get# &
;& '
}( )
private 
AwsCdkKmsHandler  
AwsCdkKmsHandler! 1
{2 3
get4 7
;7 8
}9 :
private 

TagHandler 

TagHandler %
{& '
get( +
;+ ,
}- .
public 
AwsCdkSecretHandler "
(" #
	Construct# ,
scope- 2
,2 3
string4 :
applicationName; J
,J K
stringL R
environmentNameS b
,b c
AwsCdkKmsHandlerd t
awsCdkKmsHandler	u Ö
,
Ö Ü
string
á ç
region
é î
,
î ï
string
ñ ú
	accountId
ù ¶
)
¶ ß
:
® ©
base
™ Æ
(
Æ Ø
scope
Ø ¥
,
¥ µ
applicationName
∂ ≈
,
≈ ∆
environmentName
« ÷
)
÷ ◊
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
region% +
)+ ,
||- /
string0 6
.6 7
IsNullOrEmpty7 D
(D E
	accountIdE N
)N O
)O P
{ 
throw 
new 
ArgumentException +
(+ ,
$str, w
)w x
;x y
} 

TagHandler 
= 
new 

TagHandler '
(' (
)( )
;) *
AwsCdkKmsHandler 
= 
awsCdkKmsHandler /
;/ 0
Region 
= 
region 
; 
	AccountId 
= 
	accountId !
;! "
} 	
public$$ 
ISecret$$ 
Create$$ 
($$ 
string$$ $

secretName$$% /
,$$/ 0
string$$1 7
encryptionKeyId$$8 G
,$$G H
string$$I O
charsToExclude$$P ^
=$$_ `
$str$$a u
,$$u v
int$$w z
passwordLength	$${ â
=
$$ä ã
$num
$$å é
,
$$é è
	IKeyProps
$$ê ô%
encryptionKeyProperties
$$ö ±
=
$$≤ ≥
null
$$¥ ∏
)
$$∏ π
{%% 	
if&& 
(&& 
string&& 
.&& 
IsNullOrEmpty&& $
(&&$ %
encryptionKeyId&&% 4
)&&4 5
)&&5 6
{'' 
throw(( 
new(( 
ArgumentException(( +
(((+ ,
$str((, Z
)((Z [
;(([ \
})) 
var++ 
key++ 
=++ 
AwsCdkKmsHandler++ &
.++& '
Locate++' -
(++- .
encryptionKeyId++. =
,++= >
null++? C
)++C D
??++E G
new++H K
Key++L O
(++O P
Scope++P U
,++U V
encryptionKeyId++W f
,++f g#
encryptionKeyProperties++h 
)	++ Ä
;
++Ä Å
return-- 
Create-- 
(-- 

secretName-- $
,--$ %
key--& )
,--) *
charsToExclude--+ 9
,--9 :
passwordLength--; I
)--I J
;--J K
}.. 	
public00 
ISecret00 
Create00 
(00 
string00 $

secretName00% /
,00/ 0
IKey001 5
encryptionKey006 C
,00C D
string00E K
charsToExclude00L Z
=00[ \
$str00] n
,00n o
int00p s
passwordLength	00t Ç
=
00É Ñ
$num
00Ö á
)
00â ä
{11 	
if22 
(22 
encryptionKey22 
==22  
null22! %
)22% &
{33 
return44 
Create44 
(44 

secretName44 (
,44( )
charsToExclude44* 8
,448 9
passwordLength44: H
)44H I
;44I J
}55 
var77 
result77 
=77 
new77 
Secret77 #
(77# $
Scope77$ )
,77) *

secretName77+ 5
,775 6
new777 :
SecretProps77; F
{88 

SecretName99 
=99 

secretName99 '
,99' ( 
GenerateSecretString:: $
=::% &
new::' *!
SecretStringGenerator::+ @
{;; 
ExcludeCharacters<< %
=<<& '
charsToExclude<<( 6
,<<6 7
PasswordLength== "
===# $
passwordLength==% 3
}>> 
,>> 
EncryptionKey?? 
=?? 
encryptionKey??  -
}@@ 
)@@ 
;@@ 

TagHandlerBB 
.BB 
LogTagBB 
(BB 

secretNameBB (
,BB( )
resultBB* 0
)BB0 1
;BB1 2
returnDD 
resultDD 
;DD 
}EE 	
publicGG 
ISecretGG 
CreateGG 
(GG 
stringGG $

secretNameGG% /
,GG/ 0
stringGG1 7
charsToExcludeGG8 F
=GGG H
$strGGI Z
,GGZ [
intGG\ _
passwordLengthGG` n
=GGo p
$numGGq s
)GGs t
{HH 	
varII 
resultII 
=II 
newII 
SecretII #
(II# $
ScopeII$ )
,II) *

secretNameII+ 5
,II5 6
newII7 :
SecretPropsII; F
{JJ 

SecretNameKK 
=KK 

secretNameKK '
,KK' ( 
GenerateSecretStringLL $
=LL% &
newLL' *!
SecretStringGeneratorLL+ @
{MM 
ExcludeCharactersNN %
=NN& '
charsToExcludeNN( 6
,NN6 7
PasswordLengthOO "
=OO# $
passwordLengthOO% 3
}PP 
}QQ 
)QQ 
;QQ 

TagHandlerSS 
.SS 
LogTagSS 
(SS 

secretNameSS (
,SS( )
resultSS* 0
)SS0 1
;SS1 2
returnUU 
resultUU 
;UU 
}VV 	
publicXX 
stringXX 
GetSecretValueXX $
(XX$ %
stringXX% +
secretIdXX, 4
,XX4 5
stringXX6 <

secretNameXX= G
,XXG H
stringXXI O
secretManagerSuffixXXP c
)XXc d
{YY 	
ifZZ 
(ZZ 
stringZZ 
.ZZ 
IsNullOrEmptyZZ $
(ZZ$ %
RegionZZ% +
)ZZ+ ,
||ZZ- /
stringZZ0 6
.ZZ6 7
IsNullOrEmptyZZ7 D
(ZZD E
	AccountIdZZE N
)ZZN O
)ZZO P
{[[ 
throw\\ 
new\\ 
ArgumentException\\ +
(\\+ ,
$str\\, U
)\\U V
;\\V W
}]] 
ISecret__ 
secret__ 
;__ 
ifaa 
(aa 
stringaa 
.aa 
IsNullOrEmptyaa $
(aa$ %
secretManagerSuffixaa% 8
)aa8 9
)aa9 :
{bb 
secretcc 
=cc 
Secretcc 
.cc   
FromSecretAttributescc  4
(cc4 5
Scopecc5 :
,cc: ;
secretIdcc< D
,ccD E
newccF I
SecretAttributesccJ Z
{dd 
SecretPartialArnee $
=ee% &
$"ee' )
$stree) @
{ee@ A
RegioneeA G
}eeG H
$streeH I
{eeI J
	AccountIdeeJ S
}eeS T
$streeT \
{ee\ ]

secretNameee] g
}eeg h
"eeh i
,eei j
}ff 
)ff 
;ff 
}gg 
elsehh 
{ii 
secretjj 
=jj 
Secretjj 
.jj   
FromSecretAttributesjj  4
(jj4 5
Scopejj5 :
,jj: ;
secretIdjj< D
,jjD E
newjjF I
SecretAttributesjjJ Z
{kk 
SecretCompleteArnll %
=ll& '
$"ll( *
$strll* A
{llA B
RegionllB H
}llH I
$strllI J
{llJ K
	AccountIdllK T
}llT U
$strllU ]
{ll] ^

secretNamell^ h
}llh i
$strlli j
{llj k
secretManagerSuffixllk ~
}ll~ 
"	ll Ä
,
llÄ Å
}nn 
)nn 
;nn 
}oo 
returnqq 
GetSecretValueqq !
(qq! "
secretqq" (
)qq( )
;qq) *
}rr 	
publictt 
stringtt 
GetSecretValuett $
(tt$ %
ISecrettt% ,
secrettt- 3
)tt3 4
{uu 	
ifvv 
(vv 
secretvv 
==vv 
nullvv 
)vv 
{ww 
throwxx 
newxx 
ArgumentExceptionxx +
(xx+ ,
$strxx, i
)xxi j
;xxj k
}yy 
return{{ 
secret{{ 
.{{ 
SecretValue{{ %
.{{% &
ToJSON{{& ,
({{, -
){{- .
.{{. /
ToString{{/ 7
({{7 8
){{8 9
;{{9 :
}|| 	
}~~ 
} Ñ7
•C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkVpcHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
Handlers+ 3
{		 
public

 

class

 
AwsCdkVpcHandler

 !
:

" # 
AwsCdkDefaultHandler

$ 8
,

8 9
IAwsVpcHandler

: H
{ 
public 
AwsCdkVpcHandler 
(  
	Construct  )
scope* /
,/ 0
string1 7
applicationName8 G
,G H
stringI O
environmentNameP _
)_ `
:a b
basec g
(g h
scopeh m
,m n
applicationNameo ~
,~ 
environmentName
Ä è
)
è ê
{ 	
} 	
public 
IVpc 
Locate 
( 
string !
identification" 0
,0 1
string2 8
vpcId9 >
,> ?
bool@ D
	isDefaultE N
=O P
trueQ U
)U V
{ 	
if 
( 
string 
. 
IsNullOrEmpty $
($ %
vpcId% *
)* +
)+ ,
{ 
throw 
new 
ArgumentException +
(+ ,
$str, H
)H I
;I J
} 
var 
result 
= 
Vpc 
. 

FromLookup '
(' (
Scope( -
,- .
string/ 5
.5 6
IsNullOrEmpty6 C
(C D
identificationD R
)R S
?T U
$"V X
{X Y
ApplicationNameY h
}h i
{i j
EnvironmentNamej y
}y z
$strz }
"} ~
:	 Ä
identification
Å è
,
è ê
new
ë î
VpcLookupOptions
ï •
{ 
	IsDefault 
= 
	isDefault %
,% &
VpcId 
= 
vpcId 
} 
) 
; 
if 
( 
result 
== 
null 
) 
{ 
throw 
new 
ArgumentException +
(+ ,
$", .
$str. A
{A B
vpcIdB G
}G H
$strH X
"X Y
)Y Z
;Z [
}   
return"" 
result"" 
;"" 
}## 	
public%% 
IVpc%% 
Create%% 
(%% 
string%% !
identification%%" 0
,%%0 1
string%%2 8
cidr%%9 =
,%%= >
double%%? E
?%%E F
maxAzs%%G M
,%%M N"
DefaultInstanceTenancy%%O e"
defaultInstanceTenancy%%f |
=%%} ~#
DefaultInstanceTenancy	%% ï
.
%%ï ñ
DEFAULT
%%ñ ù
,
%%ù û
bool
%%ü £
enableDnsSupport
%%§ ¥
=
%%µ ∂
true
%%∑ ª
,
%%ª º
bool
%%Ω ¡ 
enableDnsHostnames
%%¬ ‘
=
%%’ ÷
true
%%◊ €
,
%%€ ‹
List
%%› ·
<
%%· ‚"
ISubnetConfiguration
%%‚ ˆ
>
%%ˆ ˜"
subnetConfigurations
%%¯ å
=
%%ç é
null
%%è ì
,
%%ì î

Dictionary
%%ï ü
<
%%ü †
string
%%† ¶
,
%%¶ ß
string
%%® Æ
>
%%Æ Ø
tags
%%∞ ¥
=
%%µ ∂
null
%%∑ ª
)
%%ª º
{&& 	
var'' 
vpc'' 
='' 
new'' 
Vpc'' 
('' 
Scope'' #
,''# $
identification''% 3
,''3 4
new''5 8
VpcProps''9 A
{(( 
Cidr)) 
=)) 
cidr)) 
,)) 
MaxAzs** 
=** 
maxAzs** 
,** "
DefaultInstanceTenancy++ &
=++' ("
defaultInstanceTenancy++) ?
,++? @
EnableDnsSupport,,  
=,,! "
enableDnsSupport,,# 3
,,,3 4
EnableDnsHostnames-- "
=--# $
enableDnsHostnames--% 7
,--7 8
SubnetConfiguration.. #
=..$ % 
subnetConfigurations..& :
?..: ;
...; <
ToArray..< C
(..C D
)..D E
}// 
)// 
;// 
if11 
(11 
tags11 
==11 
null11 
)11 
return11 $
vpc11% (
;11( )
foreach33 
(33 
var33 
(33 
key33 
,33 
value33 $
)33$ %
in33& (
tags33) -
)33- .
{44 
Tags55 
.55 
Of55 
(55 
vpc55 
)55 
.55 
Add55  
(55  !
key55! $
,55$ %
value55& +
)55+ ,
;55, -
}66 
return88 
vpc88 
;88 
}99 	
public;; 
ISubnetSelection;; !
GetVpcSubnetSelection;;  5
(;;5 6
IVpc;;6 :
vpc;;; >
,;;> ?
string;;@ F
subnetDomainToCheck;;G Z
,;;Z [
string;;\ b(
defaultSubnetDomainSeparator;;c 
=
;;Ä Å
$str
;;Ç Ö
,
;;Ö Ü

SubnetType
;;á ë
defaultSubnetType
;;í £
=
;;§ •

SubnetType
;;¶ ∞
.
;;∞ ±
PRIVATE
;;± ∏
)
;;∏ π
{<< 	
if== 
(== 
string== 
.== 
IsNullOrEmpty== $
(==$ %
subnetDomainToCheck==% 8
)==8 9
)==9 :
return==; A
new==B E
SubnetSelection==F U
{==V W

SubnetType==W a
===b c
defaultSubnetType==d u
}==u v
;==v w
var?? 
	subnetIds?? 
=?? 
subnetDomainToCheck?? /
.??/ 0
Split??0 5
(??5 6(
defaultSubnetDomainSeparator??6 R
)??R S
.??S T
ToList??T Z
(??Z [
)??[ \
;??\ ]
return@@ 
new@@ 
SubnetSelection@@ &
{@@' (
Subnets@@) 0
=@@1 2
vpc@@3 6
.@@6 7
PrivateSubnets@@7 E
.@@E F
Where@@F K
(@@K L
x@@L M
=>@@N P
	subnetIds@@Q Z
.@@Z [
Contains@@[ c
(@@c d
x@@d e
.@@e f
SubnetId@@f n
)@@n o
)@@o p
.@@p q
ToArray@@q x
(@@x y
)@@y z
}@@{ |
;@@| }
}AA 	
}BB 
}CC Ö*
¨C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsSecurityGroupHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
Handlers+ 3
{ 
public 

class #
AwsSecurityGroupHandler (
:) * 
AwsCdkDefaultHandler+ ?
,? @$
IAwsSecurityGroupHandlerA Y
{		 
private

 
AwsCdkVpcHandler

  
AwsCdkVpcHandler

! 1
{

2 3
get

4 7
;

7 8
}

9 :
public #
AwsSecurityGroupHandler &
(& '
	Construct' 0
scope1 6
,6 7
string8 >
applicationName? N
,N O
stringP V
environmentNameW f
,f g
AwsCdkVpcHandlerh x
awsCdkVpcHandler	y â
)
â ä
:
ã å
base
ç ë
(
ë í
scope
í ó
,
ó ò
applicationName
ô ®
,
® ©
environmentName
™ π
)
π ∫
{ 	
AwsCdkVpcHandler 
= 
awsCdkVpcHandler /
;/ 0
} 	
public 
ISecurityGroup 
Locate $
($ %
string% +

securityId, 6
,6 7
string8 >
securityGroupId? N
)N O
{ 	
return 
SecurityGroup  
.  !

FromLookup! +
(+ ,
Scope, 1
,1 2

securityId3 =
,= >
securityGroupId? N
)N O
;O P
} 	
public 
ISecurityGroup 
Create $
($ %
string% +
identification, :
,: ;
string< B
	groupNameC L
,L M
boolN R!
allowGroupAllOutboundS h
,h i
IVpcj n
vpco r
,r s
IPeert y
ingressPeer	z Ö
,
Ö Ü
Port
á ã
ingressPort
å ó
,
ó ò
IPeer
ô û

egressPeer
ü ©
,
© ™
Port
´ Ø

egressPort
∞ ∫
)
∫ ª
{ 	
var 
securityGroup 
= 
new  #
SecurityGroup$ 1
(1 2
Scope2 7
,7 8
identification9 G
,G H
newI L
SecurityGroupPropsM _
{ 
AllowAllOutbound  
=! "!
allowGroupAllOutbound# 8
,8 9
SecurityGroupName !
=" #
	groupName$ -
,- .
Vpc 
= 
vpc 
} 
) 
; 
securityGroup 
. 
AddIngressRule (
(( )
ingressPeer) 4
,4 5
ingressPort6 A
)A B
;B C
securityGroup   
.   
AddEgressRule   '
(  ' (

egressPeer  ( 2
,  2 3

egressPort  4 >
)  > ?
;  ? @
return!! 
securityGroup!!  
;!!  !
}"" 	
public$$ 
ISecurityGroup$$ 
Create$$ $
($$$ %
string$$% +
identification$$, :
,$$: ;
string$$< B
	groupName$$C L
,$$L M
bool$$N R!
allowGroupAllOutbound$$S h
,$$h i
string$$j p
vpcId$$q v
,$$v w
string$$x ~
vpcIdentification	$$ ê
,
$$ê ë
IPeer
$$í ó
ingressPeer
$$ò £
,
$$£ §
Port
$$• ©
ingressPort
$$™ µ
,
$$µ ∂
IPeer
$$∑ º

egressPeer
$$Ω «
,
$$« »
Port
$$… Õ

egressPort
$$Œ ÿ
)
$$ÿ Ÿ
{%% 	
if&& 
(&& 
string&& 
.&& 
IsNullOrEmpty&& $
(&&$ %
vpcId&&% *
)&&* +
)&&+ ,
{'' 
throw(( 
new(( 
ArgumentException(( +
(((+ ,
$str((, H
)((H I
;((I J
})) 
var++ 
vpc++ 
=++ 
AwsCdkVpcHandler++ &
.++& '
Locate++' -
(++- .
vpcIdentification++. ?
,++? @
vpcId++A F
)++F G
;++G H
if-- 
(-- 
vpc-- 
==-- 
null-- 
)-- 
{.. 
throw// 
new// 
ArgumentException// +
(//+ ,
$"//, .
$str//. A
{//A B
vpcId//B G
}//G H
$str//H X
"//X Y
)//Y Z
;//Z [
}00 
return22 
Create22 
(22 
identification22 (
,22( )
	groupName22* 3
,223 4!
allowGroupAllOutbound225 J
,22J K
vpc22L O
,22O P
ingressPeer22Q \
,22\ ]
ingressPort22^ i
,22i j

egressPeer22k u
,22u v

egressPort	22w Å
)
22Å Ç
;
22Ç É
}33 	
}44 
}55 £	
üC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\TagHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +
Handlers+ 3
{ 
public 

class 

TagHandler 
{ 
public 
void 
LogTag 
( 
string !
name" &
,& '

IConstruct( 2
result3 9
)9 :
{		 	
Tags

 
.

 
Of

 
(

 
result

 
)

 
.

 
Add

 
(

  
$str

  &
,

& '
name

( ,
.

, -
ToLowerInvariant

- =
(

= >
)

> ?
)

? @
;

@ A
Console 
. 
	WriteLine 
( 
$"  
$str  -
{- .
name. 2
}2 3
"3 4
)4 5
;5 6
} 	
} 
} ∞è
•C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Interfaces\IAwsCdkHandler.cs
	namespace		 	
	Devon4Net		
 
.		 
Infrastructure		 "
.		" #
AWS		# &
.		& '
CDK		' *
.		* +

Interfaces		+ 5
{

 
public 

	interface 
IAwsCdkHandler #
{ 
IBucket 
AddS3Bucket 
( 
string "

bucketName# -
,- .
int/ 2
expirationDays3 A
,A B
RemovalPolicyC P
removalPolicyQ ^
=_ `
RemovalPolicya n
.n o
DESTROYo v
,v w
BucketEncryption	x à

encryption
â ì
=
î ï
BucketEncryption
ñ ¶
.
¶ ß
KMS_MANAGED
ß ≤
,
≤ ≥
string
¥ ∫!
webSiteRedirectHost
ª Œ
=
œ –
$str
— ”
,
” ‘
bool
’ Ÿ
	versioned
⁄ „
=
‰ Â
true
Ê Í
)
Í Î
;
Î Ï
IDatabaseCluster 
AddDatabase $
($ %$
AuroraMysqlEngineVersion% =!
databaseEngineVersion> S
,S T
stringU [
identification\ j
,j k
stringl r
clusterIdentifier	s Ñ
,
Ñ Ö
string
Ü å$
instanceIdentifierBase
ç £
,
£ §
string
• ´
databaseName
¨ ∏
,
∏ π
double
∫ ¿
?
¿ ¡
port
¬ ∆
,
∆ «
double
» Œ
?
Œ œ
	instances
– Ÿ
,
Ÿ ⁄
string
€ ·
userName
‚ Í
,
Í Î
string
Ï Ú

secretName
Û ˝
,
˝ ˛
IVpc
ˇ É
vpc
Ñ á
,
á à
InstanceClass
â ñ
instanceClass
ó §
,
§ •
InstanceSize
¶ ≤
instanceSize
≥ ø
,
ø ¿
string
¡ «

securityId
» “
,
“ ”
string
‘ ⁄
securityGroupId
€ Í
,
Í Î
string
Ï Ú
parameterGroupId
Û É
=
Ñ Ö
null
Ü ä
,
ä ã
IRole
å ë
[
ë í
]
í ì
roles
î ô
=
ö õ
null
ú †
,
† °
bool
¢ ¶
storageEncrypted
ß ∑
=
∏ π
true
∫ æ
,
æ ø

SubnetType
¿  

subnetType
À ’
=
÷ ◊

SubnetType
ÿ ‚
.
‚ „
PRIVATE
„ Í
,
Í Î
string
Ï Ú
subnets
Û ˙
=
˚ ¸
$str
˝ ˇ
,
ˇ Ä
RemovalPolicy
Å é
removalPolicy
è ú
=
ù û
RemovalPolicy
ü ¨
.
¨ ≠
DESTROY
≠ ¥
,
¥ µ
int
∂ π!
backupRetentionDays
∫ Õ
=
Œ œ
$num
– —
,
— “
bool
” ◊ 
deletionProtection
ÿ Í
=
Î Ï
false
Ì Ú
,
Ú Û
string
Ù ˙*
defaultSubnetDomainSeparator
˚ ó
=
ò ô
$str
ö ù
)
ù û
;
û ü
IDatabaseCluster 
AddDatabase $
($ %'
AuroraPostgresEngineVersion% @!
databaseEngineVersionA V
,V W
stringX ^
identification_ m
,m n
stringo u
clusterIdentifier	v á
,
á à
string
â è$
instanceIdentifierBase
ê ¶
,
¶ ß
string
® Æ
databaseName
Ø ª
,
ª º
double
Ω √
?
√ ƒ
port
≈ …
,
…  
double
À —
?
— “
	instances
” ‹
,
‹ ›
string
ﬁ ‰
userName
Â Ì
,
Ì Ó
string
Ô ı

secretName
ˆ Ä
,
Ä Å
IVpc
Ç Ü
vpc
á ä
,
ä ã
InstanceClass
å ô
instanceClass
ö ß
,
ß ®
InstanceSize
© µ
instanceSize
∂ ¬
,
¬ √
string
ƒ  

securityId
À ’
,
’ ÷
string
◊ ›
securityGroupId
ﬁ Ì
,
Ì Ó
string
Ô ı
parameterGroupId
ˆ Ü
=
á à
null
â ç
,
ç é
IRole
è î
[
î ï
]
ï ñ
roles
ó ú
=
ù û
null
ü £
,
£ §
bool
• ©
storageEncrypted
™ ∫
=
ª º
true
Ω ¡
,
¡ ¬

SubnetType
√ Õ

subnetType
Œ ÿ
=
Ÿ ⁄

SubnetType
€ Â
.
Â Ê
PRIVATE
Ê Ì
,
Ì Ó
string
Ô ı
subnets
ˆ ˝
=
˛ ˇ
$str
Ä Ç
,
Ç É
RemovalPolicy
Ñ ë
removalPolicy
í ü
=
† °
RemovalPolicy
¢ Ø
.
Ø ∞
DESTROY
∞ ∑
,
∑ ∏
int
π º!
backupRetentionDays
Ω –
=
— “
$num
” ‘
,
‘ ’
bool
÷ ⁄ 
deletionProtection
€ Ì
=
Ó Ô
false
 ı
,
ı ˆ
string
˜ ˝*
defaultSubnetDomainSeparator
˛ ö
=
õ ú
$str
ù †
)
† °
;
° ¢
IDatabaseInstance 
AddDatabase %
(% &"
SqlServerEngineVersion& <!
databaseEngineVersion= R
,R S
stringT Z
identification[ i
,i j
stringk q
databaseNamer ~
,~ 
string
Ä Ü
userName
á è
,
è ê
string
ë ó
password
ò †
,
† °
StorageType
¢ ≠
storageType
Æ π
,
π ∫
InstanceClass
ª »
instanceClass
… ÷
,
÷ ◊
InstanceSize
ÿ ‰
instanceSize
Â Ò
,
Ò Ú
IVpc
Û ˜
vpc
¯ ˚
,
˚ ¸
string
˝ É
securityGroupId
Ñ ì
,
ì î
string
ï õ
securityGroupName
ú ≠
,
≠ Æ
string
Ø µ
parameterGroupId
∂ ∆
=
« »
null
… Õ
,
Õ Œ
IRole
œ ‘
[
‘ ’
]
’ ÷
roles
◊ ‹
=
› ﬁ
null
ﬂ „
,
„ ‰
double
Â Î
?
Î Ï 
allocatedStorageGb
Ì ˇ
=
Ä Å
$num
Ç É
,
É Ñ
RemovalPolicy
Ö í
removalPolicy
ì †
=
° ¢
RemovalPolicy
£ ∞
.
∞ ±
DESTROY
± ∏
,
∏ π
bool
∫ æ$
deleteAutomatedBackups
ø ’
=
÷ ◊
false
ÿ ›
,
› ﬁ
int
ﬂ ‚!
backupRetentionDays
„ ˆ
=
˜ ¯
$num
˘ ˙
,
˙ ˚
bool
¸ Ä 
deletionProtection
Å ì
=
î ï
false
ñ õ
,
õ ú

SubnetType
ù ß

subnetType
® ≤
=
≥ ¥

SubnetType
µ ø
.
ø ¿
PUBLIC
¿ ∆
,
∆ «
bool
» Ã#
allowGroupAllOutbound
Õ ‚
=
„ ‰
true
Â È
,
È Í
string
Î Ò*
defaultSubnetDomainSeparator
Ú é
=
è ê
$str
ë î
)
î ï
;
ï ñ
IDatabaseInstance 
AddDatabase %
(% &
MysqlEngineVersion& 8!
databaseEngineVersion9 N
,N O
stringP V
identificationW e
,e f
stringg m
databaseNamen z
,z {
string	| Ç
userName
É ã
,
ã å
string
ç ì
password
î ú
,
ú ù
StorageType
û ©
storageType
™ µ
,
µ ∂
InstanceClass
∑ ƒ
instanceClass
≈ “
,
“ ”
InstanceSize
‘ ‡
instanceSize
· Ì
,
Ì Ó
IVpc
Ô Û
vpc
Ù ˜
,
˜ ¯
string
˘ ˇ
securityGroupId
Ä è
,
è ê
string
ë ó
securityGroupName
ò ©
,
© ™
string
´ ±
parameterGroupId
≤ ¬
=
√ ƒ
null
≈ …
,
…  
IRole
À –
[
– —
]
— “
roles
” ÿ
=
Ÿ ⁄
null
€ ﬂ
,
ﬂ ‡
double
· Á
?
Á Ë 
allocatedStorageGb
È ˚
=
¸ ˝
$num
˛ ˇ
,
ˇ Ä
RemovalPolicy
Å é
removalPolicy
è ú
=
ù û
RemovalPolicy
ü ¨
.
¨ ≠
DESTROY
≠ ¥
,
¥ µ
bool
∂ ∫$
deleteAutomatedBackups
ª —
=
“ ”
false
‘ Ÿ
,
Ÿ ⁄
int
€ ﬁ!
backupRetentionDays
ﬂ Ú
=
Û Ù
$num
ı ˆ
,
ˆ ˜
bool
¯ ¸ 
deletionProtection
˝ è
=
ê ë
false
í ó
,
ó ò

SubnetType
ô £

subnetType
§ Æ
=
Ø ∞

SubnetType
± ª
.
ª º
PUBLIC
º ¬
,
¬ √
bool
ƒ »#
allowGroupAllOutbound
… ﬁ
=
ﬂ ‡
true
· Â
,
Â Ê
string
Á Ì*
defaultSubnetDomainSeparator
Ó ä
=
ã å
$str
ç ê
)
ê ë
;
ë í
IDatabaseInstance 
AddDatabase %
(% &
OracleEngineVersion& 9!
databaseEngineVersion: O
,O P
stringQ W
identificationX f
,f g
stringh n
databaseNameo {
,{ |
string	} É
userName
Ñ å
,
å ç
string
é î
password
ï ù
,
ù û
StorageType
ü ™
storageType
´ ∂
,
∂ ∑
InstanceClass
∏ ≈
instanceClass
∆ ”
,
” ‘
InstanceSize
’ ·
instanceSize
‚ Ó
,
Ó Ô
IVpc
 Ù
vpc
ı ¯
,
¯ ˘
string
˙ Ä
securityGroupId
Å ê
,
ê ë
string
í ò
securityGroupName
ô ™
,
™ ´
string
¨ ≤
parameterGroupId
≥ √
=
ƒ ≈
null
∆  
,
  À
IRole
Ã —
[
— “
]
“ ”
roles
‘ Ÿ
=
⁄ €
null
‹ ‡
,
‡ ·
double
‚ Ë
?
Ë È 
allocatedStorageGb
Í ¸
=
˝ ˛
$num
ˇ Ä
,
Ä Å
RemovalPolicy
Ç è
removalPolicy
ê ù
=
û ü
RemovalPolicy
† ≠
.
≠ Æ
DESTROY
Æ µ
,
µ ∂
bool
∑ ª$
deleteAutomatedBackups
º “
=
” ‘
false
’ ⁄
,
⁄ €
int
‹ ﬂ!
backupRetentionDays
‡ Û
=
Ù ı
$num
ˆ ˜
,
˜ ¯
bool
˘ ˝ 
deletionProtection
˛ ê
=
ë í
false
ì ò
,
ò ô

SubnetType
ö §

subnetType
• Ø
=
∞ ±

SubnetType
≤ º
.
º Ω
PUBLIC
Ω √
,
√ ƒ
bool
≈ …#
allowGroupAllOutbound
  ﬂ
=
‡ ·
true
‚ Ê
,
Ê Á
string
Ë Ó*
defaultSubnetDomainSeparator
Ô ã
=
å ç
$str
é ë
)
ë í
;
í ì
IDatabaseInstance 
AddDatabase %
(% & 
MariaDbEngineVersion& :!
databaseEngineVersion; P
,P Q
stringR X
identificationY g
,g h
stringi o
databaseNamep |
,| }
string	~ Ñ
userName
Ö ç
,
ç é
string
è ï
password
ñ û
,
û ü
StorageType
† ´
storageType
¨ ∑
,
∑ ∏
InstanceClass
π ∆
instanceClass
« ‘
,
‘ ’
InstanceSize
÷ ‚
instanceSize
„ Ô
,
Ô 
IVpc
Ò ı
vpc
ˆ ˘
,
˘ ˙
string
˚ Å
securityGroupId
Ç ë
,
ë í
string
ì ô
securityGroupName
ö ´
,
´ ¨
string
≠ ≥
parameterGroupId
¥ ƒ
=
≈ ∆
null
« À
,
À Ã
IRole
Õ “
[
“ ”
]
” ‘
roles
’ ⁄
=
€ ‹
null
› ·
,
· ‚
double
„ È
?
È Í 
allocatedStorageGb
Î ˝
=
˛ ˇ
$num
Ä Å
,
Å Ç
RemovalPolicy
É ê
removalPolicy
ë û
=
ü †
RemovalPolicy
° Æ
.
Æ Ø
DESTROY
Ø ∂
,
∂ ∑
bool
∏ º$
deleteAutomatedBackups
Ω ”
=
‘ ’
false
÷ €
,
€ ‹
int
› ‡!
backupRetentionDays
· Ù
=
ı ˆ
$num
˜ ¯
,
¯ ˘
bool
˙ ˛ 
deletionProtection
ˇ ë
=
í ì
false
î ô
,
ô ö

SubnetType
õ •

subnetType
¶ ∞
=
± ≤

SubnetType
≥ Ω
.
Ω æ
PUBLIC
æ ƒ
,
ƒ ≈
bool
∆  #
allowGroupAllOutbound
À ‡
=
· ‚
true
„ Á
,
Á Ë
string
È Ô*
defaultSubnetDomainSeparator
 å
=
ç é
$str
è í
)
í ì
;
ì î
IDatabaseInstance 
AddDatabase %
(% &!
PostgresEngineVersion& ;!
databaseEngineVersion< Q
,Q R
stringS Y
identificationZ h
,h i
stringj p
databaseNameq }
,} ~
string	 Ö
userName
Ü é
,
é è
string
ê ñ
password
ó ü
,
ü †
StorageType
° ¨
storageType
≠ ∏
,
∏ π
InstanceClass
∫ «
instanceClass
» ’
,
’ ÷
InstanceSize
◊ „
instanceSize
‰ 
,
 Ò
IVpc
Ú ˆ
vpc
˜ ˙
,
˙ ˚
string
¸ Ç
securityGroupId
É í
,
í ì
string
î ö
securityGroupName
õ ¨
,
¨ ≠
string
Æ ¥
parameterGroupId
µ ≈
=
∆ «
null
» Ã
,
Ã Õ
IRole
Œ ”
[
” ‘
]
‘ ’
roles
÷ €
=
‹ ›
null
ﬁ ‚
,
‚ „
double
‰ Í
?
Í Î 
allocatedStorageGb
Ï ˛
=
ˇ Ä
$num
Å Ç
,
Ç É
RemovalPolicy
Ñ ë
removalPolicy
í ü
=
† °
RemovalPolicy
¢ Ø
.
Ø ∞
DESTROY
∞ ∑
,
∑ ∏
bool
π Ω$
deleteAutomatedBackups
æ ‘
=
’ ÷
false
◊ ‹
,
‹ ›
int
ﬁ ·!
backupRetentionDays
‚ ı
=
ˆ ˜
$num
¯ ˘
,
˘ ˙
bool
˚ ˇ 
deletionProtection
Ä í
=
ì î
false
ï ö
,
ö õ

SubnetType
ú ¶

subnetType
ß ±
=
≤ ≥

SubnetType
¥ æ
.
æ ø
PUBLIC
ø ≈
,
≈ ∆
bool
« À#
allowGroupAllOutbound
Ã ·
=
‚ „
true
‰ Ë
,
Ë È
string
Í *
defaultSubnetDomainSeparator
Ò ç
=
é è
$str
ê ì
)
ì î
;
î ï
ISecurityGroup 
AddSecurityGroup '
(' (
string( .
identification/ =
,= >
string? E
securityGroupNameF W
,W X
boolY ]!
allowGroupAllOutbound^ s
,s t
IPeeru z

egressPeer	{ Ö
,
Ö Ü
Port
á ã
egreessPort
å ó
,
ó ò
IPeer
ô û
ingressPeer
ü ™
,
™ ´
Port
¨ ∞
ingressPort
± º
,
º Ω
Vpc
æ ¡
vpc
¬ ≈
)
≈ ∆
;
∆ «
IVpc 
AddVpc 
( 
string 
cidr 
,  
double! '
?' (
maxAzs) /
,/ 0"
DefaultInstanceTenancy1 G"
defaultInstanceTenancyH ^
,^ _
string` f
vpcIdentificationg x
=y z
null{ 
,	 Ä
bool
Å Ö
enableDnsSupport
Ü ñ
=
ó ò
true
ô ù
,
ù û
bool
ü £ 
enableDnsHostnames
§ ∂
=
∑ ∏
true
π Ω
,
Ω æ
List
ø √
<
√ ƒ"
ISubnetConfiguration
ƒ ÿ
>
ÿ Ÿ"
subnetConfigurations
⁄ Ó
=
Ô 
null
Ò ı
,
ı ˆ

Dictionary
˜ Å
<
Å Ç
string
Ç à
,
à â
string
ä ê
>
ê ë
tags
í ñ
=
ó ò
null
ô ù
)
ù û
;
û ü
IVpc 
	LocateVpc 
( 
string 
identification ,
,, -
string. 4
vpcId5 :
,: ;
bool< @
	isDefaultA J
=K L
trueM Q
)Q R
;R S
ISecret 
	AddSecret 
( 
string  

secretName! +
,+ ,
string- 3
charsToExclude4 B
=C D
$strE V
,V W
intX [
passwordLength\ j
=k l
$numm o
)o p
;p q
string 
GetSecretValue 
( 
string $
secretId% -
,- .
string/ 5

secretName6 @
,@ A
stringB H
secretManagerSuffixI \
)\ ]
;] ^
} 
} É
ØC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Interfaces\IAwsSecurityGroupHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +

Interfaces+ 5
{ 
public 

	interface $
IAwsSecurityGroupHandler -
{ 
ISecurityGroup 
Create 
( 
string $
identification% 3
,3 4
string5 ;
	groupName< E
,E F
boolG K!
allowGroupAllOutboundL a
,a b
IVpcc g
vpch k
,k l
IPeerm r
ingressPeers ~
,~ 
Port
Ä Ñ
ingressPort
Ö ê
,
ê ë
IPeer
í ó

egressPeer
ò ¢
,
¢ £
Port
§ ®

egressPort
© ≥
)
≥ ¥
;
¥ µ
ISecurityGroup 
Create 
( 
string $
identification% 3
,3 4
string5 ;
	groupName< E
,E F
boolG K!
allowGroupAllOutboundL a
,a b
stringc i
vpcIdj o
,o p
stringq w
vpcIdentification	x â
,
â ä
IPeer
ã ê
ingressPeer
ë ú
,
ú ù
Port
û ¢
ingressPort
£ Æ
,
Æ Ø
IPeer
∞ µ

egressPeer
∂ ¿
,
¿ ¡
Port
¬ ∆

egressPort
« —
)
— “
;
“ ”
ISecurityGroup		 
Locate		 
(		 
string		 $

securityId		% /
,		/ 0
string		1 7
securityGroupId		8 G
)		G H
;		H I
}

 
} ›
•C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Interfaces\IAwsVpcHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AWS# &
.& '
CDK' *
.* +

Interfaces+ 5
{ 
public 

	interface 
IAwsVpcHandler #
{ 
IVpc 
Create 
( 
string 
identification )
,) *
string+ 1
cidr2 6
,6 7
double8 >
?> ?
maxAzs@ F
,F G"
DefaultInstanceTenancyH ^"
defaultInstanceTenancy_ u
=v w#
DefaultInstanceTenancy	x é
.
é è
DEFAULT
è ñ
,
ñ ó
bool
ò ú
enableDnsSupport
ù ≠
=
Æ Ø
true
∞ ¥
,
¥ µ
bool
∂ ∫ 
enableDnsHostnames
ª Õ
=
Œ œ
true
– ‘
,
‘ ’
List
÷ ⁄
<
⁄ €"
ISubnetConfiguration
€ Ô
>
Ô "
subnetConfigurations
Ò Ö
=
Ü á
null
à å
,
å ç

Dictionary
é ò
<
ò ô
string
ô ü
,
ü †
string
° ß
>
ß ®
tags
© ≠
=
Æ Ø
null
∞ ¥
)
¥ µ
;
µ ∂
IVpc		 
Locate		 
(		 
string		 
identification		 )
,		) *
string		+ 1
vpcId		2 7
,		7 8
bool		9 =
	isDefault		> G
=		H I
true		J N
)		N O
;		O P
ISubnetSelection

 !
GetVpcSubnetSelection

 .
(

. /
IVpc

/ 3
vpc

4 7
,

7 8
string

9 ?
subnetDomainToCheck

@ S
,

S T
string

U [(
defaultSubnetDomainSeparator

\ x
=

y z
$str

{ ~
,

~ 

SubnetType


Ä ä
defaultSubnetType


ã ú
=


ù û

SubnetType


ü ©
.


© ™
PRIVATE


™ ±
)


± ≤
;


≤ ≥
} 
} 