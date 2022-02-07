�
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\CdkEntity\BucketEntity.cs
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
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\CdkEntity\DatabaseEntity.cs
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
}!! �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\CdkEntity\SecurityGroupEntity.cs
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
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\CdkEntity\VpcEntity.cs
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
} ��
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkDatabaseHandler.cs
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
awsSecurityGroupHandler	 �
,
� �
AwsCdkVpcHandler
� �
awsCdkVpcHandler
� �
,
� �!
AwsCdkSecretHandler
� �!
awsCdkSecretHandler
� �
)
� �
:
� �
base
� �
(
� �
scope
� �
,
� �
applicationName
� �
,
� �
environmentName
� �
)
� �
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
clusterIdentifier	77v �
,
77� �
string
77� �$
instanceIdentifierBase
77� �
,
77� �
string
77� �
databaseName
77� �
,
77� �
double
77� �
?
77� �
port
77� �
,
77� �
double
77� �
?
77� �
	instances
77� �
,
77� �
string
77� �
userName
77� �
,
77� �
string
77� �

secretName
77� �
,
77� �
IVpc
77� �
vpc
77� �
,
77� �
InstanceClass
77� �
instanceClass
77� �
,
77� �
InstanceSize
77� �
instanceSize
77� �
,
77� �
string
77� �

securityId
77� �
,
77� �
string
77� �
securityGroupId
77� �
,
77� �
string
77� �
parameterGroupId
77� �
=
77� �
null
77� �
,
77� �
IRole
77� �
[
77� �
]
77� �
roles
77� �
=
77� �
null
77� �
,
77� �
bool
77� �
storageEncrypted
77� �
=
77� �
true
77� �
,
77� �

SubnetType
77� �

subnetType
77� �
=
77� �

SubnetType
77� �
.
77� �
PRIVATE
77� �
,
77� �
string
77� �*
defaultSubnetDomainSeparator
77� �
=
77� �
$str
77� �
,
77� �
string
77� �
subnets
77� �
=
77� �
$str
77� �
,
77� �
RemovalPolicy
77� �
removalPolicy
77� �
=
77� �
RemovalPolicy
77� �
.
77� �
DESTROY
77� �
,
77� �
int
77� �!
backupRetentionDays
77� �
=
77� �
$num
77� �
,
77� �
bool
77� � 
deletionProtection
77� �
=
77� �
false
77� �
)
77� �
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
99� �
var
99� �
securityGroup
99� �
,
99� �
out
99� �
var
99� �
secret
99� �
,
99� �
out
99� �
var
99� �
subnetSelection
99� �
)
99� �
;
99� �
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
string	YY~ �
userName
YY� �
,
YY� �
string
YY� �

secretName
YY� �
,
YY� �
StorageType
YY� �
storageType
YY� �
,
YY� �
InstanceClass
YY� �
instanceClass
YY� �
,
YY� �
InstanceSize
YY� �
instanceSize
YY� �
,
YY� �
IVpc
YY� �
vpc
YY� �
,
YY� �
string
YY� �

securityId
YY� �
,
YY� �
string
YY� �
securityGroupId
YY� �
,
YY� �
string
YY� �
parameterGroupId
YY� �
=
YY� �
null
YY� �
,
YY� �
IRole
YY� �
[
YY� �
]
YY� �
roles
YY� �
=
YY� �
null
YY� �
,
YY� �
double
YY� �
?
YY� � 
allocatedStorageGb
YY� �
=
YY� �
$num
YY� �
,
YY� �
RemovalPolicy
YY� �
removalPolicy
YY� �
=
YY� �
RemovalPolicy
YY� �
.
YY� �
DESTROY
YY� �
,
YY� �
bool
YY� �$
deleteAutomatedBackups
YY� �
=
YY� �
false
YY� �
,
YY� �
int
YY� �!
backupRetentionDays
YY� �
=
YY� �
$num
YY� �
,
YY� �
bool
YY� � 
deletionProtection
YY� �
=
YY� �
false
YY� �
,
YY� �

SubnetType
YY� �

subnetType
YY� �
=
YY� �

SubnetType
YY� �
.
YY� �
PRIVATE
YY� �
,
YY� �
string
YY� �*
defaultSubnetDomainSeparator
YY� �
=
YY� �
$str
YY� �
,
YY� �
string
YY� �
subnets
YY� �
=
YY� �
$str
YY� �
)
YY� �
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
[[� �
var
[[� �
securityGroup
[[� �
,
[[� �
out
[[� �
var
[[� �
secret
[[� �
,
[[� �
out
[[� �
var
[[� �
subnetSelection
[[� �
)
[[� �
;
[[� �
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
IRole	tt~ �
[
tt� �
]
tt� �
roles
tt� �
)
tt� �
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
)	~~ �
} 
) 
; 
}
�� 	
private
�� 
void
��  
BasicDatabaseInfra
�� '
(
��' (
IVpc
��( ,
vpc
��- 0
,
��0 1
string
��2 8

secretName
��9 C
,
��C D
string
��E K

securityId
��L V
,
��V W
string
��X ^
securityGroupId
��_ n
,
��n o

SubnetType
�� 

subnetType
�� !
,
��! "
string
��# )*
defaultSubnetDomainSeparator
��* F
,
��F G
string
��H N
subnets
��O V
,
��V W
out
��X [
ISecurityGroup
��\ j
securityGroup
��k x
,
��x y
out
�� 
ISecret
�� 
secret
�� 
,
�� 
out
��  #
ISubnetSelection
��$ 4
subnetSelection
��5 D
)
��D E
{
�� 	
if
�� 
(
�� 
vpc
�� 
==
�� 
null
�� 
)
�� 
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$"
��, .
$str
��. b
"
��b c
)
��c d
;
��d e
}
�� 
securityGroup
�� 
=
�� %
AwsSecurityGroupHandler
�� 3
.
��3 4
Locate
��4 :
(
��: ;

securityId
��; E
,
��E F
securityGroupId
��G V
)
��V W
;
��W X
if
�� 
(
�� 
securityGroup
�� 
==
��  
null
��! %
)
��% &
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$"
��, .
$str
��. D
{
��D E
securityGroupId
��E T
}
��T U
$str��U �
"��� �
)��� �
;��� �
}
�� 
secret
�� 
=
�� !
AwsCdkSecretHandler
�� (
.
��( )
Create
��) /
(
��/ 0

secretName
��0 :
)
��: ;
;
��; <
subnetSelection
�� 
=
�� 
AwsCdkVpcHandler
�� .
.
��. /#
GetVpcSubnetSelection
��/ D
(
��D E
vpc
��E H
,
��H I
subnets
��J Q
,
��Q R*
defaultSubnetDomainSeparator
��S o
,
��o p

subnetType
��q {
)
��{ |
;
��| }
}
�� 	
private
�� 
IClusterEngine
�� 
GetClusterEngine
�� /
(
��/ 0

DeputyBase
��0 :#
databaseEngineVersion
��; P
)
��P Q
{
�� 	
var
�� 
databaseType
�� 
=
�� #
databaseEngineVersion
�� 4
.
��4 5
GetType
��5 <
(
��< =
)
��= >
;
��> ?
if
�� 
(
�� 
databaseType
�� 
==
�� 
typeof
��  &
(
��& '&
AuroraMysqlEngineVersion
��' ?
)
��? @
)
��@ A
{
�� 
return
�� #
DatabaseClusterEngine
�� ,
.
��, -
AuroraMysql
��- 8
(
��8 9
new
��9 <+
AuroraMysqlClusterEngineProps
��= Z
{
�� 
Version
�� 
=
�� #
databaseEngineVersion
�� 3
as
��4 6&
AuroraMysqlEngineVersion
��7 O
}
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
�� 
databaseType
�� 
==
�� 
typeof
��  &
(
��& ')
AuroraPostgresEngineVersion
��' B
)
��B C
)
��C D
{
�� 
return
�� #
DatabaseClusterEngine
�� ,
.
��, -
AuroraPostgres
��- ;
(
��; <
new
��< ?.
 AuroraPostgresClusterEngineProps
��@ `
{
�� 
Version
�� 
=
�� #
databaseEngineVersion
�� 3
as
��4 6)
AuroraPostgresEngineVersion
��7 R
}
�� 
)
�� 
;
�� 
}
�� 
throw
�� 
new
�� 
ArgumentException
�� '
(
��' (
$str��( �
)��� �
;��� �
}
�� 	
private
�� 
IInstanceEngine
�� 
GetInstanceEngine
��  1
(
��1 2

DeputyBase
��2 <#
databaseEngineVersion
��= R
)
��R S
{
�� 	
var
�� 
databaseType
�� 
=
�� #
databaseEngineVersion
�� 4
.
��4 5
GetType
��5 <
(
��< =
)
��= >
;
��> ?
if
�� 
(
�� 
databaseType
�� 
==
�� 
typeof
��  &
(
��& ' 
MysqlEngineVersion
��' 9
)
��9 :
)
��: ;
{
�� 
return
�� $
DatabaseInstanceEngine
�� -
.
��- .
Mysql
��. 3
(
��3 4
new
��4 7&
MySqlInstanceEngineProps
��8 P
{
�� 
Version
�� 
=
�� #
databaseEngineVersion
�� 3
as
��4 6 
MysqlEngineVersion
��7 I
}
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
�� 
databaseType
�� 
==
�� 
typeof
��  &
(
��& '#
PostgresEngineVersion
��' <
)
��< =
)
��= >
{
�� 
return
�� $
DatabaseInstanceEngine
�� -
.
��- .
Postgres
��. 6
(
��6 7
new
��7 :)
PostgresInstanceEngineProps
��; V
(
��V W
)
��W X
{
�� 
Version
�� 
=
�� #
databaseEngineVersion
�� 3
as
��4 6#
PostgresEngineVersion
��7 L
}
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
�� 
databaseType
�� 
==
�� 
typeof
��  &
(
��& '"
MariaDbEngineVersion
��' ;
)
��; <
)
��< =
{
�� 
return
�� $
DatabaseInstanceEngine
�� -
.
��- .
MariaDb
��. 5
(
��5 6
new
��6 9(
MariaDbInstanceEngineProps
��: T
(
��T U
)
��U V
{
�� 
Version
�� 
=
�� #
databaseEngineVersion
�� 3
as
��4 6"
MariaDbEngineVersion
��7 K
}
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
�� 
databaseType
�� 
==
�� 
typeof
��  &
(
��& '$
SqlServerEngineVersion
��' =
)
��= >
)
��> ?
{
�� 
return
�� $
DatabaseInstanceEngine
�� -
.
��- .
SqlServerEe
��. 9
(
��9 :
new
��: =,
SqlServerEeInstanceEngineProps
��> \
(
��\ ]
)
��] ^
{
�� 
Version
�� 
=
�� #
databaseEngineVersion
�� 3
as
��4 6$
SqlServerEngineVersion
��7 M
}
�� 
)
�� 
;
�� 
}
�� 
if
�� 
(
�� 
databaseType
�� 
==
�� 
typeof
��  &
(
��& '!
OracleEngineVersion
��' :
)
��: ;
)
��; <
{
�� 
return
�� $
DatabaseInstanceEngine
�� -
.
��- .
OracleEe
��. 6
(
��6 7
new
��7 :)
OracleEeInstanceEngineProps
��; V
(
��V W
)
��W X
{
�� 
Version
�� 
=
�� #
databaseEngineVersion
�� 3
as
��4 6!
OracleEngineVersion
��7 J
}
�� 
)
�� 
;
�� 
}
�� 
throw
�� 
new
�� 
ArgumentException
�� '
(
��' (
$str��( �
)��� �
;��� �
}
�� 	
}
�� 
}�� �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkDefaultHandler.cs
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
} ��
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkHandler.cs
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
null	} �
)
� �
:
� �
base
� �
(
� �
scope
� �
,
� �
id
� �
,
� �
props
� �
)
� �
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
EnvironmentProperties	++t �
?
++� �
.
++� �
Region
++� �
,
++� �#
EnvironmentProperties
++� �
?
++� �
.
++� �
Account
++� �
)
++� �
;
++� �!
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
AwsCdkVpcHandler	,, �
,
,,� �!
AwsCdkSecretHandler
,,� �
)
,,� �
;
,,� �
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
11� �
null
11� �
,
11� �
bool
11� �
enableDnsSupport
11� �
=
11� �
true
11� �
,
11� �
bool
11� � 
enableDnsHostnames
11� �
=
11� �
true
11� �
,
11� �
List
11� �
<
11� �"
ISubnetConfiguration
11� �
>
11� �"
subnetConfigurations
11� �
=
11� �
null
11� �
,
11� �

Dictionary
11� �
<
11� �
string
11� �
,
11� �
string
11� �
>
11� �
tags
11� �
=
11� �
null
11� �
)
11� �
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
33� �
,
33� �
cidr
33� �
,
33� �
maxAzs
33� �
,
33� �$
defaultInstanceTenancy
33� �
,
33� �
enableDnsSupport
33� �
,
33� � 
enableDnsHostnames
33� �
,
33� �"
subnetConfigurations
33� �
,
33� �
tags
33� �
)
33� �
;
33� �
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
IPeer	??| �

egressPeer
??� �
,
??� �
Port
??� �
egreessPort
??� �
,
??� �
IPeer
??� �
ingressPeer
??� �
,
??� �
Port
??� �
ingressPort
??� �
,
??� �
Vpc
??� �
vpc
??� �
)
??� �
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
ingressPort	AA| �
,
AA� �

egressPeer
AA� �
,
AA� �
egreessPort
AA� �
)
AA� �
;
AA� �
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
IPeer	DD| �

egressPeer
DD� �
,
DD� �
Port
DD� �
egreessPort
DD� �
,
DD� �
IPeer
DD� �
ingressPeer
DD� �
,
DD� �
Port
DD� �
ingressPort
DD� �
,
DD� �
IVpc
DD� �
vpcId
DD� �
)
DD� �
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
FF� �
,
FF� �

egressPeer
FF� �
,
FF� �
egreessPort
FF� �
)
FF� �
;
FF� �
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
passwordLength	aa{ �
=
aa� �
$num
aa� �
)
aa� �
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
$num	nn �
)
nn� �
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
BucketEncryption	|| �

encryption
||� �
=
||� �
BucketEncryption
||� �
.
||� �
KMS_MANAGED
||� �
,
||� �
string
||� �!
webSiteRedirectHost
||� �
=
||� �
$str
||� �
,
||� �
bool
||� �
	versioned
||� �
=
||� �
true
||� �
)
||� �
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
)	~~ �
;
~~� �
} 	
public
�� 
IDatabaseCluster
�� 
AddDatabase
��  +
(
��+ ,&
AuroraMysqlEngineVersion
��, D#
databaseEngineVersion
��E Z
,
��Z [
string
��\ b
identification
��c q
,
��q r
string
��s y 
clusterIdentifier��z �
,��� �
string��� �&
instanceIdentifierBase��� �
,��� �
string��� �
databaseName��� �
,��� �
double��� �
?��� �
port��� �
,��� �
double��� �
?��� �
	instances��� �
,��� �
string��� �
userName��� �
,��� �
string��� �

secretName��� �
,��� �
IVpc��� �
vpc��� �
,��� �
InstanceClass��� �
instanceClass��� �
,��� �
InstanceSize��� �
instanceSize��� �
,��� �
string��� �

securityId��� �
,��� �
string��� �
securityGroupId��� �
,��� �
string��� � 
parameterGroupId��� �
=��� �
null��� �
,��� �
IRole��� �
[��� �
]��� �
roles��� �
=��� �
null��� �
,��� �
bool��� � 
storageEncrypted��� �
=��� �
true��� �
,��� �

SubnetType��� �

subnetType��� �
=��� �

SubnetType��� �
.��� �
PRIVATE��� �
,��� �
string��� �
subnets��� �
=��� �
$str��� �
,��� �
RemovalPolicy��� �
removalPolicy��� �
=��� �
RemovalPolicy��� �
.��� �
DESTROY��� �
,��� �
int��� �#
backupRetentionDays��� �
=��� �
$num��� �
,��� �
bool��� �"
deletionProtection��� �
=��� �
false��� �
,��� �
string��� �,
defaultSubnetDomainSeparator��� �
=��� �
$str��� �
)��� �
{
�� 	
return
�� #
AwsCdkDatabaseHandler
�� (
.
��( )#
CreateDatabaseCluster
��) >
(
��> ?#
databaseEngineVersion
��? T
,
��T U
identification
��V d
,
��d e
clusterIdentifier
��f w
,
��w x$
instanceIdentifierBase
�� &
,
��& '
databaseName
��( 4
,
��4 5
port
��6 :
,
��: ;
	instances
��< E
,
��E F
userName
��G O
,
��O P

secretName
��Q [
,
��[ \
vpc
��] `
,
��` a
instanceClass
��b o
,
��o p
instanceSize
�� 
,
�� 

securityId
�� (
,
��( )
securityGroupId
��* 9
,
��9 :
parameterGroupId
��; K
,
��K L
roles
��M R
,
��R S
storageEncrypted
��T d
,
��d e

subnetType
��f p
,
��p q+
defaultSubnetDomainSeparator��r �
,��� �
subnets��� �
,��� �
removalPolicy��� �
,��� �#
backupRetentionDays��� �
)��� �
;��� �
}
�� 	
public
�� 
IDatabaseCluster
�� 
AddDatabase
��  +
(
��+ ,)
AuroraPostgresEngineVersion
��, G#
databaseEngineVersion
��H ]
,
��] ^
string
��_ e
identification
��f t
,
��t u
string
��v | 
clusterIdentifier��} �
,��� �
string��� �&
instanceIdentifierBase��� �
,��� �
string��� �
databaseName��� �
,��� �
double��� �
?��� �
port��� �
,��� �
double��� �
?��� �
	instances��� �
,��� �
string��� �
userName��� �
,��� �
string��� �

secretName��� �
,��� �
IVpc��� �
vpc��� �
,��� �
InstanceClass��� �
instanceClass��� �
,��� �
InstanceSize��� �
instanceSize��� �
,��� �
string��� �

securityId��� �
,��� �
string��� �
securityGroupId��� �
,��� �
string��� � 
parameterGroupId��� �
=��� �
null��� �
,��� �
IRole��� �
[��� �
]��� �
roles��� �
=��� �
null��� �
,��� �
bool��� � 
storageEncrypted��� �
=��� �
true��� �
,��� �

SubnetType��� �

subnetType��� �
=��� �

SubnetType��� �
.��� �
PRIVATE��� �
,��� �
string��� �
subnets��� �
=��� �
$str��� �
,��� �
RemovalPolicy��� �
removalPolicy��� �
=��� �
RemovalPolicy��� �
.��� �
DESTROY��� �
,��� �
int��� �#
backupRetentionDays��� �
=��� �
$num��� �
,��� �
bool��� �"
deletionProtection��� �
=��� �
false��� �
,��� �
string��� �,
defaultSubnetDomainSeparator��� �
=��� �
$str��� �
)��� �
{
�� 	
return
�� #
AwsCdkDatabaseHandler
�� (
.
��( )#
CreateDatabaseCluster
��) >
(
��> ?#
databaseEngineVersion
��? T
,
��T U
identification
��V d
,
��d e
clusterIdentifier
��f w
,
��w x$
instanceIdentifierBase
�� &
,
��& '
databaseName
��( 4
,
��4 5
port
��6 :
,
��: ;
	instances
��< E
,
��E F
userName
��G O
,
��O P

secretName
��Q [
,
��[ \
vpc
��] `
,
��` a
instanceClass
��b o
,
��o p
instanceSize
�� 
,
�� 

securityId
�� (
,
��( )
securityGroupId
��* 9
,
��9 :
parameterGroupId
��; K
,
��K L
roles
��M R
,
��R S
storageEncrypted
��T d
,
��d e

subnetType
��f p
,
��p q+
defaultSubnetDomainSeparator��r �
,��� �
subnets��� �
,��� �
removalPolicy��� �
,��� �#
backupRetentionDays��� �
)��� �
;��� �
}
�� 	
public
�� 
IDatabaseInstance
��  
AddDatabase
��! ,
(
��, -$
SqlServerEngineVersion
��- C#
databaseEngineVersion
��D Y
,
��Y Z
string
��[ a
identification
��b p
,
��p q
string
��r x
databaseName��y �
,��� �
string��� �
userName��� �
,��� �
string��� �
password��� �
,��� �
StorageType��� �
storageType��� �
,��� �
InstanceClass��� �
instanceClass��� �
,��� �
InstanceSize��� �
instanceSize��� �
,��� �
IVpc��� �
vpc��� �
,��� �
string��� �
securityGroupId��� �
,��� �
string��� �!
securityGroupName��� �
,��� �
string��� � 
parameterGroupId��� �
=��� �
null��� �
,��� �
IRole��� �
[��� �
]��� �
roles��� �
=��� �
null��� �
,��� �
double��� �
?��� �"
allocatedStorageGb��� �
=��� �
$num��� �
,��� �
RemovalPolicy��� �
removalPolicy��� �
=��� �
RemovalPolicy��� �
.��� �
DESTROY��� �
,��� �
bool��� �&
deleteAutomatedBackups��� �
=��� �
false��� �
,��� �
int��� �#
backupRetentionDays��� �
=��� �
$num��� �
,��� �
bool��� �"
deletionProtection��� �
=��� �
false��� �
,��� �

SubnetType��� �

subnetType��� �
=��� �

SubnetType��� �
.��� �
PUBLIC��� �
,��� �
bool��� �%
allowGroupAllOutbound��� �
=��� �
true��� �
,��� �
string��� �,
defaultSubnetDomainSeparator��� �
=��� �
$str��� �
)��� �
{
�� 	
return
�� #
AwsCdkDatabaseHandler
�� (
.
��( )
CreateDatabase
��) 7
(
��7 8#
databaseEngineVersion
��8 M
,
��M N
identification
��O ]
,
��] ^
databaseName
��_ k
,
��k l
userName
��m u
,
��u v
password
��w 
,�� �
storageType��� �
,��� �
instanceClass
�� 
,
�� 
instanceSize
�� +
,
��+ ,
vpc
��- 0
,
��0 1
securityGroupId
��2 A
,
��A B
securityGroupName
��C T
,
��T U
parameterGroupId
��V f
,
��f g
roles
��h m
,
��m n!
allocatedStorageGb��o �
,��� �
removalPolicy��� �
,��� �&
deleteAutomatedBackups��� �
,��� �!
backupRetentionDays
�� #
,
��# $ 
deletionProtection
��% 7
,
��7 8

subnetType
��9 C
,
��C D*
defaultSubnetDomainSeparator
��E a
)
��a b
;
��b c
}
�� 	
public
�� 
IDatabaseInstance
��  
AddDatabase
��! ,
(
��, - 
MysqlEngineVersion
��- ?#
databaseEngineVersion
��@ U
,
��U V
string
��W ]
identification
��^ l
,
��l m
string
��n t
databaseName��u �
,��� �
string��� �
userName��� �
,��� �
string��� �
password��� �
,��� �
StorageType��� �
storageType��� �
,��� �
InstanceClass��� �
instanceClass��� �
,��� �
InstanceSize��� �
instanceSize��� �
,��� �
IVpc��� �
vpc��� �
,��� �
string��� �
securityGroupId��� �
,��� �
string��� �!
securityGroupName��� �
,��� �
string��� � 
parameterGroupId��� �
=��� �
null��� �
,��� �
IRole��� �
[��� �
]��� �
roles��� �
=��� �
null��� �
,��� �
double��� �
?��� �"
allocatedStorageGb��� �
=��� �
$num��� �
,��� �
RemovalPolicy��� �
removalPolicy��� �
=��� �
RemovalPolicy��� �
.��� �
DESTROY��� �
,��� �
bool��� �&
deleteAutomatedBackups��� �
=��� �
false��� �
,��� �
int��� �#
backupRetentionDays��� �
=��� �
$num��� �
,��� �
bool��� �"
deletionProtection��� �
=��� �
false��� �
,��� �

SubnetType��� �

subnetType��� �
=��� �

SubnetType��� �
.��� �
PUBLIC��� �
,��� �
bool��� �%
allowGroupAllOutbound��� �
=��� �
true��� �
,��� �
string��� �,
defaultSubnetDomainSeparator��� �
=��� �
$str��� �
)��� �
{
�� 	
return
�� #
AwsCdkDatabaseHandler
�� (
.
��( )
CreateDatabase
��) 7
(
��7 8#
databaseEngineVersion
��8 M
,
��M N
identification
��O ]
,
��] ^
databaseName
��_ k
,
��k l
userName
��m u
,
��u v
password
��w 
,�� �
storageType��� �
,��� �
instanceClass
�� 
,
�� 
instanceSize
�� +
,
��+ ,
vpc
��- 0
,
��0 1
securityGroupId
��2 A
,
��A B
securityGroupName
��C T
,
��T U
parameterGroupId
��V f
,
��f g
roles
��h m
,
��m n!
allocatedStorageGb��o �
,��� �
removalPolicy��� �
,��� �&
deleteAutomatedBackups��� �
,��� �!
backupRetentionDays
�� #
,
��# $ 
deletionProtection
��% 7
,
��7 8

subnetType
��9 C
,
��C D*
defaultSubnetDomainSeparator
��E a
)
��a b
;
��b c
}
�� 	
public
�� 
IDatabaseInstance
��  
AddDatabase
��! ,
(
��, -!
OracleEngineVersion
��- @#
databaseEngineVersion
��A V
,
��V W
string
��X ^
identification
��_ m
,
��m n
string
��o u
databaseName��v �
,��� �
string��� �
userName��� �
,��� �
string��� �
password��� �
,��� �
StorageType��� �
storageType��� �
,��� �
InstanceClass��� �
instanceClass��� �
,��� �
InstanceSize��� �
instanceSize��� �
,��� �
IVpc��� �
vpc��� �
,��� �
string��� �
securityGroupId��� �
,��� �
string��� �!
securityGroupName��� �
,��� �
string��� � 
parameterGroupId��� �
=��� �
null��� �
,��� �
IRole��� �
[��� �
]��� �
roles��� �
=��� �
null��� �
,��� �
double��� �
?��� �"
allocatedStorageGb��� �
=��� �
$num��� �
,��� �
RemovalPolicy��� �
removalPolicy��� �
=��� �
RemovalPolicy��� �
.��� �
DESTROY��� �
,��� �
bool��� �&
deleteAutomatedBackups��� �
=��� �
false��� �
,��� �
int��� �#
backupRetentionDays��� �
=��� �
$num��� �
,��� �
bool��� �"
deletionProtection��� �
=��� �
false��� �
,��� �

SubnetType��� �

subnetType��� �
=��� �

SubnetType��� �
.��� �
PUBLIC��� �
,��� �
bool��� �%
allowGroupAllOutbound��� �
=��� �
true��� �
,��� �
string��� �,
defaultSubnetDomainSeparator��� �
=��� �
$str��� �
)��� �
{
�� 	
return
�� #
AwsCdkDatabaseHandler
�� (
.
��( )
CreateDatabase
��) 7
(
��7 8#
databaseEngineVersion
��8 M
,
��M N
identification
��O ]
,
��] ^
databaseName
��_ k
,
��k l
userName
��m u
,
��u v
password
��w 
,�� �
storageType��� �
,��� �
instanceClass
�� 
,
�� 
instanceSize
�� +
,
��+ ,
vpc
��- 0
,
��0 1
securityGroupId
��2 A
,
��A B
securityGroupName
��C T
,
��T U
parameterGroupId
��V f
,
��f g
roles
��h m
,
��m n!
allocatedStorageGb��o �
,��� �
removalPolicy��� �
,��� �&
deleteAutomatedBackups��� �
,��� �!
backupRetentionDays
�� #
,
��# $ 
deletionProtection
��% 7
,
��7 8

subnetType
��9 C
,
��C D*
defaultSubnetDomainSeparator
��E a
)
��a b
;
��b c
}
�� 	
public
�� 
IDatabaseInstance
��  
AddDatabase
��! ,
(
��, -"
MariaDbEngineVersion
��- A#
databaseEngineVersion
��B W
,
��W X
string
��Y _
identification
��` n
,
��n o
string
��p v
databaseName��w �
,��� �
string��� �
userName��� �
,��� �
string��� �
password��� �
,��� �
StorageType��� �
storageType��� �
,��� �
InstanceClass��� �
instanceClass��� �
,��� �
InstanceSize��� �
instanceSize��� �
,��� �
IVpc��� �
vpc��� �
,��� �
string��� �
securityGroupId��� �
,��� �
string��� �!
securityGroupName��� �
,��� �
string��� � 
parameterGroupId��� �
=��� �
null��� �
,��� �
IRole��� �
[��� �
]��� �
roles��� �
=��� �
null��� �
,��� �
double��� �
?��� �"
allocatedStorageGb��� �
=��� �
$num��� �
,��� �
RemovalPolicy��� �
removalPolicy��� �
=��� �
RemovalPolicy��� �
.��� �
DESTROY��� �
,��� �
bool��� �&
deleteAutomatedBackups��� �
=��� �
false��� �
,��� �
int��� �#
backupRetentionDays��� �
=��� �
$num��� �
,��� �
bool��� �"
deletionProtection��� �
=��� �
false��� �
,��� �

SubnetType��� �

subnetType��� �
=��� �

SubnetType��� �
.��� �
PUBLIC��� �
,��� �
bool��� �%
allowGroupAllOutbound��� �
=��� �
true��� �
,��� �
string��� �,
defaultSubnetDomainSeparator��� �
=��� �
$str��� �
)��� �
{
�� 	
return
�� #
AwsCdkDatabaseHandler
�� (
.
��( )
CreateDatabase
��) 7
(
��7 8#
databaseEngineVersion
��8 M
,
��M N
identification
��O ]
,
��] ^
databaseName
��_ k
,
��k l
userName
��m u
,
��u v
password
��w 
,�� �
storageType��� �
,��� �
instanceClass
�� 
,
�� 
instanceSize
�� +
,
��+ ,
vpc
��- 0
,
��0 1
securityGroupId
��2 A
,
��A B
securityGroupName
��C T
,
��T U
parameterGroupId
��V f
,
��f g
roles
��h m
,
��m n!
allocatedStorageGb��o �
,��� �
removalPolicy��� �
,��� �&
deleteAutomatedBackups��� �
,��� �!
backupRetentionDays
�� #
,
��# $ 
deletionProtection
��% 7
,
��7 8

subnetType
��9 C
,
��C D*
defaultSubnetDomainSeparator
��E a
)
��a b
;
��b c
}
�� 	
public
�� 
IDatabaseInstance
��  
AddDatabase
��! ,
(
��, -#
PostgresEngineVersion
��- B#
databaseEngineVersion
��C X
,
��X Y
string
��Z `
identification
��a o
,
��o p
string
��q w
databaseName��x �
,��� �
string��� �
userName��� �
,��� �
string��� �
password��� �
,��� �
StorageType��� �
storageType��� �
,��� �
InstanceClass��� �
instanceClass��� �
,��� �
InstanceSize��� �
instanceSize��� �
,��� �
IVpc��� �
vpc��� �
,��� �
string��� �
securityGroupId��� �
,��� �
string��� �!
securityGroupName��� �
,��� �
string��� � 
parameterGroupId��� �
=��� �
null��� �
,��� �
IRole��� �
[��� �
]��� �
roles��� �
=��� �
null��� �
,��� �
double��� �
?��� �"
allocatedStorageGb��� �
=��� �
$num��� �
,��� �
RemovalPolicy��� �
removalPolicy��� �
=��� �
RemovalPolicy��� �
.��� �
DESTROY��� �
,��� �
bool��� �&
deleteAutomatedBackups��� �
=��� �
false��� �
,��� �
int��� �#
backupRetentionDays��� �
=��� �
$num��� �
,��� �
bool��� �"
deletionProtection��� �
=��� �
false��� �
,��� �

SubnetType��� �

subnetType��� �
=��� �

SubnetType��� �
.��� �
PUBLIC��� �
,��� �
bool��� �%
allowGroupAllOutbound��� �
=��� �
true��� �
,��� �
string��� �,
defaultSubnetDomainSeparator��� �
=��� �
$str��� �
)��� �
{
�� 	
return
�� #
AwsCdkDatabaseHandler
�� (
.
��( )
CreateDatabase
��) 7
(
��7 8#
databaseEngineVersion
��8 M
,
��M N
identification
��O ]
,
��] ^
databaseName
��_ k
,
��k l
userName
��m u
,
��u v
password
��w 
,�� �
storageType��� �
,��� �
instanceClass
�� 
,
�� 
instanceSize
�� +
,
��+ ,
vpc
��- 0
,
��0 1
securityGroupId
��2 A
,
��A B
securityGroupName
��C T
,
��T U
parameterGroupId
��V f
,
��f g
roles
��h m
,
��m n!
allocatedStorageGb��o �
,��� �
removalPolicy��� �
,��� �&
deleteAutomatedBackups��� �
,��� �!
backupRetentionDays
�� #
,
��# $ 
deletionProtection
��% 7
,
��7 8

subnetType
��9 C
,
��C D*
defaultSubnetDomainSeparator
��E a
)
��a b
;
��b c
}
�� 	
}
�� 
}�� �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkKmsHandler.cs
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
		� �
)
		� �
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
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkQueueHandler.cs
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
applicationName	q �
,
� �
environmentName
� �
)
� �
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
fifo	 �
=
� �
true
� �
,
� �
bool
� �%
contentBasedDuplication
� �
=
� �
true
� �
)
� �
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
$str	E �
)
� �
;
� �
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
}11 �#
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkRoleHandler.cs
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
,	 �
environmentName
� �
)
� �
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
Effect	,,z �
effect
,,� �
=
,,� �
Effect
,,� �
.
,,� �
ALLOW
,,� �
)
,,� �
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
}EE �.
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkS3Handler.cs
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
environmentName			 �
)
		� �
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
BucketEncryption	z �

encryption
� �
=
� �
BucketEncryption
� �
.
� �
KMS_MANAGED
� �
,
� �
string
� �!
webSiteRedirectHost
� �
=
� �
$str
� �
,
� �
bool
� �
	versioned
� �
=
� �
true
� �
)
� �
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
}LL �N
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkSecretHandler.cs
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
awsCdkKmsHandler	u �
,
� �
string
� �
region
� �
,
� �
string
� �
	accountId
� �
)
� �
:
� �
base
� �
(
� �
scope
� �
,
� �
applicationName
� �
,
� �
environmentName
� �
)
� �
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
passwordLength	$${ �
=
$$� �
$num
$$� �
,
$$� �
	IKeyProps
$$� �%
encryptionKeyProperties
$$� �
=
$$� �
null
$$� �
)
$$� �
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
)	++ �
;
++� �
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
passwordLength	00t �
=
00� �
$num
00� �
)
00� �
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
"	ll �
,
ll� �
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
} �7
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsCdkVpcHandler.cs
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
� �
)
� �
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
:	 �
identification
� �
,
� �
new
� �
VpcLookupOptions
� �
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
DefaultInstanceTenancy	%% �
.
%%� �
DEFAULT
%%� �
,
%%� �
bool
%%� �
enableDnsSupport
%%� �
=
%%� �
true
%%� �
,
%%� �
bool
%%� � 
enableDnsHostnames
%%� �
=
%%� �
true
%%� �
,
%%� �
List
%%� �
<
%%� �"
ISubnetConfiguration
%%� �
>
%%� �"
subnetConfigurations
%%� �
=
%%� �
null
%%� �
,
%%� �

Dictionary
%%� �
<
%%� �
string
%%� �
,
%%� �
string
%%� �
>
%%� �
tags
%%� �
=
%%� �
null
%%� �
)
%%� �
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
;;� �
$str
;;� �
,
;;� �

SubnetType
;;� �
defaultSubnetType
;;� �
=
;;� �

SubnetType
;;� �
.
;;� �
PRIVATE
;;� �
)
;;� �
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
}CC �*
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\AwsSecurityGroupHandler.cs
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
awsCdkVpcHandler	y �
)
� �
:
� �
base
� �
(
� �
scope
� �
,
� �
applicationName
� �
,
� �
environmentName
� �
)
� �
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
ingressPeer	z �
,
� �
Port
� �
ingressPort
� �
,
� �
IPeer
� �

egressPeer
� �
,
� �
Port
� �

egressPort
� �
)
� �
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
vpcIdentification	$$ �
,
$$� �
IPeer
$$� �
ingressPeer
$$� �
,
$$� �
Port
$$� �
ingressPort
$$� �
,
$$� �
IPeer
$$� �

egressPeer
$$� �
,
$$� �
Port
$$� �

egressPort
$$� �
)
$$� �
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

egressPort	22w �
)
22� �
;
22� �
}33 	
}44 
}55 �	
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Handlers\TagHandler.cs
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
} ��
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Interfaces\IAwsCdkHandler.cs
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
BucketEncryption	x �

encryption
� �
=
� �
BucketEncryption
� �
.
� �
KMS_MANAGED
� �
,
� �
string
� �!
webSiteRedirectHost
� �
=
� �
$str
� �
,
� �
bool
� �
	versioned
� �
=
� �
true
� �
)
� �
;
� �
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
clusterIdentifier	s �
,
� �
string
� �$
instanceIdentifierBase
� �
,
� �
string
� �
databaseName
� �
,
� �
double
� �
?
� �
port
� �
,
� �
double
� �
?
� �
	instances
� �
,
� �
string
� �
userName
� �
,
� �
string
� �

secretName
� �
,
� �
IVpc
� �
vpc
� �
,
� �
InstanceClass
� �
instanceClass
� �
,
� �
InstanceSize
� �
instanceSize
� �
,
� �
string
� �

securityId
� �
,
� �
string
� �
securityGroupId
� �
,
� �
string
� �
parameterGroupId
� �
=
� �
null
� �
,
� �
IRole
� �
[
� �
]
� �
roles
� �
=
� �
null
� �
,
� �
bool
� �
storageEncrypted
� �
=
� �
true
� �
,
� �

SubnetType
� �

subnetType
� �
=
� �

SubnetType
� �
.
� �
PRIVATE
� �
,
� �
string
� �
subnets
� �
=
� �
$str
� �
,
� �
RemovalPolicy
� �
removalPolicy
� �
=
� �
RemovalPolicy
� �
.
� �
DESTROY
� �
,
� �
int
� �!
backupRetentionDays
� �
=
� �
$num
� �
,
� �
bool
� � 
deletionProtection
� �
=
� �
false
� �
,
� �
string
� �*
defaultSubnetDomainSeparator
� �
=
� �
$str
� �
)
� �
;
� �
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
clusterIdentifier	v �
,
� �
string
� �$
instanceIdentifierBase
� �
,
� �
string
� �
databaseName
� �
,
� �
double
� �
?
� �
port
� �
,
� �
double
� �
?
� �
	instances
� �
,
� �
string
� �
userName
� �
,
� �
string
� �

secretName
� �
,
� �
IVpc
� �
vpc
� �
,
� �
InstanceClass
� �
instanceClass
� �
,
� �
InstanceSize
� �
instanceSize
� �
,
� �
string
� �

securityId
� �
,
� �
string
� �
securityGroupId
� �
,
� �
string
� �
parameterGroupId
� �
=
� �
null
� �
,
� �
IRole
� �
[
� �
]
� �
roles
� �
=
� �
null
� �
,
� �
bool
� �
storageEncrypted
� �
=
� �
true
� �
,
� �

SubnetType
� �

subnetType
� �
=
� �

SubnetType
� �
.
� �
PRIVATE
� �
,
� �
string
� �
subnets
� �
=
� �
$str
� �
,
� �
RemovalPolicy
� �
removalPolicy
� �
=
� �
RemovalPolicy
� �
.
� �
DESTROY
� �
,
� �
int
� �!
backupRetentionDays
� �
=
� �
$num
� �
,
� �
bool
� � 
deletionProtection
� �
=
� �
false
� �
,
� �
string
� �*
defaultSubnetDomainSeparator
� �
=
� �
$str
� �
)
� �
;
� �
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
� �
userName
� �
,
� �
string
� �
password
� �
,
� �
StorageType
� �
storageType
� �
,
� �
InstanceClass
� �
instanceClass
� �
,
� �
InstanceSize
� �
instanceSize
� �
,
� �
IVpc
� �
vpc
� �
,
� �
string
� �
securityGroupId
� �
,
� �
string
� �
securityGroupName
� �
,
� �
string
� �
parameterGroupId
� �
=
� �
null
� �
,
� �
IRole
� �
[
� �
]
� �
roles
� �
=
� �
null
� �
,
� �
double
� �
?
� � 
allocatedStorageGb
� �
=
� �
$num
� �
,
� �
RemovalPolicy
� �
removalPolicy
� �
=
� �
RemovalPolicy
� �
.
� �
DESTROY
� �
,
� �
bool
� �$
deleteAutomatedBackups
� �
=
� �
false
� �
,
� �
int
� �!
backupRetentionDays
� �
=
� �
$num
� �
,
� �
bool
� � 
deletionProtection
� �
=
� �
false
� �
,
� �

SubnetType
� �

subnetType
� �
=
� �

SubnetType
� �
.
� �
PUBLIC
� �
,
� �
bool
� �#
allowGroupAllOutbound
� �
=
� �
true
� �
,
� �
string
� �*
defaultSubnetDomainSeparator
� �
=
� �
$str
� �
)
� �
;
� �
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
string	| �
userName
� �
,
� �
string
� �
password
� �
,
� �
StorageType
� �
storageType
� �
,
� �
InstanceClass
� �
instanceClass
� �
,
� �
InstanceSize
� �
instanceSize
� �
,
� �
IVpc
� �
vpc
� �
,
� �
string
� �
securityGroupId
� �
,
� �
string
� �
securityGroupName
� �
,
� �
string
� �
parameterGroupId
� �
=
� �
null
� �
,
� �
IRole
� �
[
� �
]
� �
roles
� �
=
� �
null
� �
,
� �
double
� �
?
� � 
allocatedStorageGb
� �
=
� �
$num
� �
,
� �
RemovalPolicy
� �
removalPolicy
� �
=
� �
RemovalPolicy
� �
.
� �
DESTROY
� �
,
� �
bool
� �$
deleteAutomatedBackups
� �
=
� �
false
� �
,
� �
int
� �!
backupRetentionDays
� �
=
� �
$num
� �
,
� �
bool
� � 
deletionProtection
� �
=
� �
false
� �
,
� �

SubnetType
� �

subnetType
� �
=
� �

SubnetType
� �
.
� �
PUBLIC
� �
,
� �
bool
� �#
allowGroupAllOutbound
� �
=
� �
true
� �
,
� �
string
� �*
defaultSubnetDomainSeparator
� �
=
� �
$str
� �
)
� �
;
� �
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
string	} �
userName
� �
,
� �
string
� �
password
� �
,
� �
StorageType
� �
storageType
� �
,
� �
InstanceClass
� �
instanceClass
� �
,
� �
InstanceSize
� �
instanceSize
� �
,
� �
IVpc
� �
vpc
� �
,
� �
string
� �
securityGroupId
� �
,
� �
string
� �
securityGroupName
� �
,
� �
string
� �
parameterGroupId
� �
=
� �
null
� �
,
� �
IRole
� �
[
� �
]
� �
roles
� �
=
� �
null
� �
,
� �
double
� �
?
� � 
allocatedStorageGb
� �
=
� �
$num
� �
,
� �
RemovalPolicy
� �
removalPolicy
� �
=
� �
RemovalPolicy
� �
.
� �
DESTROY
� �
,
� �
bool
� �$
deleteAutomatedBackups
� �
=
� �
false
� �
,
� �
int
� �!
backupRetentionDays
� �
=
� �
$num
� �
,
� �
bool
� � 
deletionProtection
� �
=
� �
false
� �
,
� �

SubnetType
� �

subnetType
� �
=
� �

SubnetType
� �
.
� �
PUBLIC
� �
,
� �
bool
� �#
allowGroupAllOutbound
� �
=
� �
true
� �
,
� �
string
� �*
defaultSubnetDomainSeparator
� �
=
� �
$str
� �
)
� �
;
� �
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
string	~ �
userName
� �
,
� �
string
� �
password
� �
,
� �
StorageType
� �
storageType
� �
,
� �
InstanceClass
� �
instanceClass
� �
,
� �
InstanceSize
� �
instanceSize
� �
,
� �
IVpc
� �
vpc
� �
,
� �
string
� �
securityGroupId
� �
,
� �
string
� �
securityGroupName
� �
,
� �
string
� �
parameterGroupId
� �
=
� �
null
� �
,
� �
IRole
� �
[
� �
]
� �
roles
� �
=
� �
null
� �
,
� �
double
� �
?
� � 
allocatedStorageGb
� �
=
� �
$num
� �
,
� �
RemovalPolicy
� �
removalPolicy
� �
=
� �
RemovalPolicy
� �
.
� �
DESTROY
� �
,
� �
bool
� �$
deleteAutomatedBackups
� �
=
� �
false
� �
,
� �
int
� �!
backupRetentionDays
� �
=
� �
$num
� �
,
� �
bool
� � 
deletionProtection
� �
=
� �
false
� �
,
� �

SubnetType
� �

subnetType
� �
=
� �

SubnetType
� �
.
� �
PUBLIC
� �
,
� �
bool
� �#
allowGroupAllOutbound
� �
=
� �
true
� �
,
� �
string
� �*
defaultSubnetDomainSeparator
� �
=
� �
$str
� �
)
� �
;
� �
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
string	 �
userName
� �
,
� �
string
� �
password
� �
,
� �
StorageType
� �
storageType
� �
,
� �
InstanceClass
� �
instanceClass
� �
,
� �
InstanceSize
� �
instanceSize
� �
,
� �
IVpc
� �
vpc
� �
,
� �
string
� �
securityGroupId
� �
,
� �
string
� �
securityGroupName
� �
,
� �
string
� �
parameterGroupId
� �
=
� �
null
� �
,
� �
IRole
� �
[
� �
]
� �
roles
� �
=
� �
null
� �
,
� �
double
� �
?
� � 
allocatedStorageGb
� �
=
� �
$num
� �
,
� �
RemovalPolicy
� �
removalPolicy
� �
=
� �
RemovalPolicy
� �
.
� �
DESTROY
� �
,
� �
bool
� �$
deleteAutomatedBackups
� �
=
� �
false
� �
,
� �
int
� �!
backupRetentionDays
� �
=
� �
$num
� �
,
� �
bool
� � 
deletionProtection
� �
=
� �
false
� �
,
� �

SubnetType
� �

subnetType
� �
=
� �

SubnetType
� �
.
� �
PUBLIC
� �
,
� �
bool
� �#
allowGroupAllOutbound
� �
=
� �
true
� �
,
� �
string
� �*
defaultSubnetDomainSeparator
� �
=
� �
$str
� �
)
� �
;
� �
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

egressPeer	{ �
,
� �
Port
� �
egreessPort
� �
,
� �
IPeer
� �
ingressPeer
� �
,
� �
Port
� �
ingressPort
� �
,
� �
Vpc
� �
vpc
� �
)
� �
;
� �
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
,	 �
bool
� �
enableDnsSupport
� �
=
� �
true
� �
,
� �
bool
� � 
enableDnsHostnames
� �
=
� �
true
� �
,
� �
List
� �
<
� �"
ISubnetConfiguration
� �
>
� �"
subnetConfigurations
� �
=
� �
null
� �
,
� �

Dictionary
� �
<
� �
string
� �
,
� �
string
� �
>
� �
tags
� �
=
� �
null
� �
)
� �
;
� �
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
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Interfaces\IAwsSecurityGroupHandler.cs
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
� �
ingressPort
� �
,
� �
IPeer
� �

egressPeer
� �
,
� �
Port
� �

egressPort
� �
)
� �
;
� �
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
vpcIdentification	x �
,
� �
IPeer
� �
ingressPeer
� �
,
� �
Port
� �
ingressPort
� �
,
� �
IPeer
� �

egressPeer
� �
,
� �
Port
� �

egressPort
� �
)
� �
;
� �
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
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AWS.CDK\Interfaces\IAwsVpcHandler.cs
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
DefaultInstanceTenancy	x �
.
� �
DEFAULT
� �
,
� �
bool
� �
enableDnsSupport
� �
=
� �
true
� �
,
� �
bool
� � 
enableDnsHostnames
� �
=
� �
true
� �
,
� �
List
� �
<
� �"
ISubnetConfiguration
� �
>
� �"
subnetConfigurations
� �
=
� �
null
� �
,
� �

Dictionary
� �
<
� �
string
� �
,
� �
string
� �
>
� �
tags
� �
=
� �
null
� �
)
� �
;
� �
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
� �
defaultSubnetType


� �
=


� �

SubnetType


� �
.


� �
PRIVATE
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
} 