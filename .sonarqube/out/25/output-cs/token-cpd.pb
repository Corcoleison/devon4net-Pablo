�
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Common\Const\CyberArkEndpointConst.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Common, 2
.2 3
Const3 8
{ 
public 

static 
class !
CyberArkEndpointConst -
{ 
public 
const 
string 
Logon !
=" #
$str$ L
;L M
public 
const 
string 
Safes !
=" #
$str$ V
;V W
public 
const 
string 
UpdateSafes '
=( )
$str* l
;l m
public 
const 
string 
Accounts $
=% &
$str' D
;D E
public		 
const		 
string		 
AccountsSearch		 *
=		+ ,
$str		- 9
;		9 :
public

 
const

 
string

 
AccountsFilter

 *
=

+ ,
$str

- 9
;

9 :
public 
const 
string "
AccountsSafeNameFilter 2
=3 4
$str5 M
;M N
public 
const 
string !
AccountRetrieveSuffix 1
=2 3
$str4 H
;H I
public 
const 
string 
Users !
=" #
$str$ V
;V W
public 
const 
string 
GetUsers $
=% &
$str' A
;A B
public 
const 
string 
ResetPassword )
=* +
$str, T
;T U
public 
const 
string 
GetUserGroups )
=* +
$str, K
;K L
public 
const 
string 
AddUserToGroup *
=+ ,
$str- j
;j k
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Common\Const\MemberPermissionsConst.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Common, 2
{ 
public 

class "
MemberPermissionsConst '
{ 
public 
static 
string 
UseAccounts (
=>) +
$str, 9
;9 :
public 
static 
string 
RetrieveAccounts -
=>. 0
$str1 C
;C D
public 
static 
string 
ListAccounts )
=>* ,
$str- ;
;; <
public 
static 
string 
AddAccounts (
=>) +
$str, 9
;9 :
public		 
static		 
string		  
UpdateAccountContent		 1
=>		2 4
$str		5 K
;		K L
public

 
static

 
string

 #
UpdateAccountProperties

 4
=>

5 7
$str

8 Q
;

Q R
public 
static 
string 2
&InitiateCPMAccountManagementOperations C
=>D F
$strG o
;o p
public 
static 
string %
SpecifyNextAccountContent 6
=>7 9
$str: U
;U V
public 
static 
string 
RenameAccounts +
=>, .
$str/ ?
;? @
public 
static 
string 
DeleteAccounts +
=>, .
$str/ ?
;? @
public 
static 
string 
UnlockAccounts +
=>, .
$str/ ?
;? @
public 
static 
string 

ManageSafe '
=>( *
$str+ 7
;7 8
public 
static 
string 
ManageSafeMembers .
=>/ 1
$str2 E
;E F
public 
static 
string 

BackupSafe '
=>( *
$str+ 7
;7 8
public 
static 
string 
ViewAuditLog )
=>* ,
$str- ;
;; <
public 
static 
string 
ViewSafeMembers ,
=>- /
$str0 A
;A B
public 
static 
string &
RequestsAuthorizationLevel 7
=>8 :
$str; W
;W X
public 
static 
string %
AccessWithoutConfirmation 6
=>7 9
$str: U
;U V
public 
static 
string 
CreateFolders *
=>+ -
$str. =
;= >
public 
static 
string 
DeleteFolders *
=>+ -
$str. =
;= >
public 
static 
string "
MoveAccountsAndFolders 3
=>4 6
$str7 O
;O P
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\CyberArkConfiguration.cs
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
class		 !
CyberArkConfiguration		 -
{

 
public 
static 
void 
SetupCyberArk (
(( )
this) -
IServiceCollection. @
servicesA I
,I J
refK N
IConfigurationO ]
configuration^ k
)k l
{ 	
var 
cyberArkOptions 
=  !
services" *
.* +
GetTypedOptions+ :
<: ;
CyberArkOptions; J
>J K
(K L
configurationL Y
,Y Z
$str[ e
)e f
;f g
if 
( 
cyberArkOptions 
==  "
null# '
||( *
cyberArkOptions+ :
.: ;
EnableCyberArk; I
==J L
falseM R
||S U
stringV \
.\ ]
IsNullOrEmpty] j
(j k
cyberArkOptionsk z
.z {
CircuitBreakerName	{ �
)
� �
||
� �
string
� �
.
� �
IsNullOrEmpty
� �
(
� �
cyberArkOptions
� �
.
� �
UserName
� �
)
� �
||
� �
string
� �
.
� �
IsNullOrEmpty
� �
(
� �
cyberArkOptions
� �
.
� �
Password
� �
)
� �
)
� �
return
� �
;
� �
services 
. 
AddSingleton !
(! "
typeof" (
(( )
ICyberArkHandler) 9
)9 :
,: ;
typeof< B
(B C
CyberArkHandlerC R
)R S
)S T
;T U
} 	
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Account\AccountDetail.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Account0 7
{ 
public 

class 
AccountDetail 
{ 
public 
string 
id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
address 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
userName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 

platformId		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
safeName

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 

secretType  
{! "
get# &
;& '
set( +
;+ ,
}- .
public %
Platformaccountproperties (%
platformAccountProperties) B
{C D
getE H
;H I
setJ M
;M N
}O P
public 
Secretmanagement 
secretManagement  0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
int 
? 
createdTime 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Account\AddAccountRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Account0 7
{ 
public 

class  
AddAccountRequestDto %
{ 
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
address 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
userName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 

platformId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
string		 
safeName		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 

secretType

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
string 
secret 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Secretmanagement 
secretManagement  0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public  
Remotemachinesaccess # 
remoteMachinesAccess$ 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Account\AddAccountResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Account0 7
{ 
public 

class !
AddAccountResponseDto &
{ 
public 
string 
id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
address 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
userName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
string		 

platformId		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
safeName

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 

secretType  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Secretmanagement 
secretManagement  0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
int 
? 
createdTime 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Account\GetAccountsResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Account0 7
{ 
public 

class "
GetAccountsResponseDto '
{ 
public 
List 
< 
AccountDetail !
>! "
value# (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public		 
int		 
count		 
{		 
get		 
;		 
set		  #
;		# $
}		% &
}

 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Account\Platformaccountproperties.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Account0 7
{ 
public 

class %
Platformaccountproperties *
{ 
int 
? 
Index 
{ 
get 
; 
set 
; 
}  
public 
string 
DualAccountStatus '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
VirtualUsername %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
}		 �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Account\Remotemachinesaccess.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Account0 7
{ 
public 

class  
Remotemachinesaccess %
{ 
public 
string 
remoteMachines $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
bool ,
 accessRestrictedToRemoteMachines 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Account\Secretmanagement.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Account0 7
{ 
public 

class 
Secretmanagement !
{ 
public 
bool &
automaticManagementEnabled .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
int 
? 
lastModifiedTime $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Group\AddUserToGroupOldRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Group0 5
{ 
public 

class '
AddUserToGroupOldRequestDto ,
{ 
public 
string 
userName 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Group\AddUserToGroupRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Group0 5
{ 
public 

class $
AddUserToGroupRequestDto )
{ 
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Group\CreateGroupRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Group0 5
{ 
public 

class !
CreateGroupRequestDto &
{ 
public 
string 
	groupName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
location 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
}		 �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Group\GetGroupsResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Group0 5
{ 
public 

class  
GetGroupsResponseDto %
{ 
public 
List 
< 
GroupDetail 
>  
value! &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int 
? 
count 
{ 
get 
;  
set! $
;$ %
}& '
}		 
}

 �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Group\GroupDetail.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Group0 5
{ 
public 

class 
GroupDetail 
{ 
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
	groupName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
	groupType 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
string		 
location		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
	directory

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
string 
dn 
{ 
get 
; 
set  #
;# $
}% &
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Logon\LogonRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Logon0 5
{ 
public 

class 
LogonRequestDto  
{ 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
}		 �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\AddSafeMemberRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Safe0 4
{ 
public 

class #
AddSafeMemberRequestDto (
{ 
public 
Member 
member 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class 
Member 
{ 
public 
string 

MemberName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
SearchIn 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string $
MembershipExpirationDate .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
List 
< 

Permission 
> 
Permissions  +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
public 

class 

Permission 
{ 
public 
string 
Key 
{ 
get 
;  
set! $
;$ %
}& '
public 
object 
Value 
{ 
get !
;! "
set# &
;& '
}( )
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\AddSafeRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Safe0 4
{ 
public 

class 
AddSafeRequestDto "
{ 
public 
Safe 
safe 
{ 
get 
; 
set  #
;# $
}% &
} 
public 

class 
Safe 
{		 
public

 
string

 
SafeName

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
OLACEnabled 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
ManagingCPM !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int %
NumberOfVersionsRetention ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\AddSafeResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Safe0 4
{ 
public 

class 
AddSafeResponseDto #
{ 
public 
AddSafeResult 
AddSafeResult *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\AddSafeResult.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Safe0 4
{ 
public 

class 
AddSafeResult 
{ 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ManagingCPM !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
object !
NumberOfDaysRetention +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
int %
NumberOfVersionsRetention ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public		 
bool		 
OLACEnabled		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
SafeName

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\GetSafeResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Safe0 4
{ 
public 

class 
GetSafeResponseDto #
{ 
public 
Getsafesresult 
GetSafeResult +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
}		 �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\GetSafesResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Safe0 4
{ 
public 

class 
GetSafesResponseDto $
{ 
public 
List 
< 
Getsafesresult "
>" #
GetSafesResult$ 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
}		 
}

 �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\GetSafesResult.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Safe0 4
{ 
public 

class 
Getsafesresult 
{ 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ManagingCPM !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
? !
NumberOfDaysRetention )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
? %
NumberOfVersionsRetention -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public		 
bool		 
OLACEnabled		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
SafeName

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\UpdateSafeRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Safe0 4
{ 
public 

class  
UpdateSafeRequestDto %
{ 
public 
Getsafesresult 
GetSafeResult +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
}		 �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\UpdateSafeResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Safe0 4
{ 
public 

class !
UpdateSafeResponseDto &
{ 
public 
Updatesaferesult 
UpdateSafeResult  0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\Updatesaferesult.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
Safe0 4
{ 
public 

class 
Updatesaferesult !
{ 
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ManagingCPM !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
? !
NumberOfDaysRetention )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
? %
NumberOfVersionsRetention -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public		 
bool		 
OLACEnabled		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
SafeName

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\User\AddUserRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
User0 4
{ 
public 

class 
AddUserRequestDto "
{ 
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
InitialPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
LastName		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
bool

 (
ChangePasswordOnTheNextLogon

 0
{

1 2
get

3 6
;

6 7
set

8 ;
;

; <
}

= >
public 
string 
safeName 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\User\DeletedUser.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
User0 4
{ 
public 

class 
DeletedUser 
{ 
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\User\GetUserResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
User0 4
{ 
public 

class 
GetUserResponseDto #
{ 
public 
bool 
	AgentUser 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
Disabled 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
Expired 
{ 
get !
;! "
set# &
;& '
}( )
public		 
object		 

ExpiryDate		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
	FirstName

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Location 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Source 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
	Suspended 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
UserName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
UserTypeName "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\User\GetUsersRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
User0 4
{ 
public 

class 
GetUsersRequestDto #
{ 
public 
string 
filter 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
search 
{ 
get "
;" #
set$ '
;' (
}) *
} 
}		 �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\User\RestePasswordRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
User0 4
{ 
public 

class #
RestePasswordRequestDto (
{ 
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\User\UpdateUserRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Dto, /
./ 0
User0 4
{ 
public 

class  
UpdateUserRequestDto %
{ 
public 
string 
NewPassword !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	FirstName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
bool		 (
ChangePasswordOnTheNextLogon		 0
{		1 2
get		3 6
;		6 7
set		8 ;
;		; <
}		= >
public

 
string

 

ExpiryDate

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
string 
UserTypeName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
Disabled 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Location 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �	
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Exceptions\AnsibleTowerUnauthorizedException.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,

Exceptions, 6
{ 
public 

class )
CyberArkUnauthorizedException .
:/ 0
	Exception1 :
,: ;
IWebApiException< L
{ 
public		 
int		 

StatusCode		 
=>		  
StatusCodes		! ,
.		, -!
Status401Unauthorized		- B
;		B C
public 
bool 
ShowMessage 
=>  "
false# (
;( )
public )
CyberArkUnauthorizedException ,
(, -
)- .
{ 	
} 	
public )
CyberArkUnauthorizedException ,
(, -
string- 3
message4 ;
); <
: 
base 
( 
message 
) 
{ 	
} 	
} 
} ��
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Handler\CyberArkHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Handler, 3
{ 
public 

class 
CyberArkHandler  
:! "
ICyberArkHandler# 3
{ 
private 
static 
IHttpClientHandler )
HttpClientHandler* ;
{< =
get> A
;A B
setC F
;F G
}H I
private 
CyberArkOptions 
CyberArkOptions  /
{0 1
get2 5
;5 6
}7 8
private 
string 
	AuthToken  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
CyberArkHandler 
( 
IHttpClientHandler 1
httpClientHandler2 C
,C D
IOptionsE M
<M N
CyberArkOptionsN ]
>] ^
cyberArkOptions_ n
)n o
{ 	
HttpClientHandler 
= 
httpClientHandler  1
;1 2
CyberArkOptions 
= 
cyberArkOptions -
?- .
.. /
Value/ 4
??5 7
throw8 =
new> A
ArgumentExceptionB S
(S T
$strT r
)r s
;s t
} 	
public!! 
Task!! 
<!! 
GetSafesResponseDto!! '
>!!' (
GetSafes!!) 1
(!!1 2
string!!2 8
	authToken!!9 B
=!!C D
null!!E I
)!!I J
{"" 	
return## 
GetCyberArk## 
<## 
GetSafesResponseDto## 2
>##2 3
(##3 4!
CyberArkEndpointConst##4 I
.##I J
Safes##J O
,##O P
false##Q V
,##V W
	authToken##X a
)##a b
;##b c
}$$ 	
public&& 
Task&& 
<&& 
GetSafeResponseDto&& &
>&&& '
GetSafe&&( /
(&&/ 0
string&&0 6
idSafe&&7 =
,&&= >
string&&? E
	authToken&&F O
=&&P Q
null&&R V
)&&V W
{'' 	
if(( 
((( 
string(( 
.(( 
IsNullOrEmpty(( $
((($ %
idSafe((% +
)((+ ,
)((, -
{)) 
throw** 
new** 
ArgumentException** +
(**+ ,
$str**, G
)**G H
;**H I
}++ 
return-- 
GetCyberArk-- 
<-- 
GetSafeResponseDto-- 1
>--1 2
(--2 3
$"--3 5
{--5 6!
CyberArkEndpointConst--6 K
.--K L
Safes--L Q
}--Q R
$str--R S
{--S T
idSafe--T Z
}--Z [
"--[ \
,--\ ]
false--^ c
,--c d
	authToken--e n
)--n o
;--o p
}.. 	
public00 
Task00 
<00 
AddSafeResponseDto00 &
>00& '
AddSafe00( /
(00/ 0
AddSafeRequestDto000 A
safeRequest00B M
,00M N
string00O U
	authToken00V _
=00` a
null00b f
)00f g
{11 	
if22 
(22 
safeRequest22 
?22 
.22 
safe22 !
==22" $
null22% )
)22) *
{33 
throw44 
new44 
ArgumentException44 +
(44+ ,
$str44, M
)44M N
;44N O
}55 
return77 
PostCyberArk77 
<77  
AddSafeResponseDto77  2
>772 3
(773 4!
CyberArkEndpointConst774 I
.77I J
Safes77J O
,77O P
safeRequest77Q \
,77\ ]
false77^ c
,77c d
	authToken77e n
)77n o
;77o p
}88 	
public;; 
Task;; 
<;; !
UpdateSafeResponseDto;; )
>;;) *

UpdateSafe;;+ 5
(;;5 6 
UpdateSafeRequestDto;;6 J
updateSafeRequest;;K \
,;;\ ]
string;;^ d
	authToken;;e n
=;;o p
null;;q u
);;u v
{<< 	
if== 
(== 
updateSafeRequest== !
?==! "
.==" #
GetSafeResult==# 0
====1 3
null==4 8
||==9 ;
string==< B
.==B C
IsNullOrEmpty==C P
(==P Q
updateSafeRequest==Q b
.==b c
GetSafeResult==c p
.==p q
SafeName==q y
)==y z
)==z {
{>> 
throw?? 
new?? 
ArgumentException?? +
(??+ ,
$str??, R
)??R S
;??S T
}@@ 
returnBB 
PutCyberArkBB 
<BB !
UpdateSafeResponseDtoBB 4
>BB4 5
(BB5 6
$"BB6 8
{BB8 9!
CyberArkEndpointConstBB9 N
.BBN O
SafesBBO T
}BBT U
$strBBU V
{BBV W
updateSafeRequestBBW h
.BBh i
GetSafeResultBBi v
.BBv w
SafeNameBBw 
}	BB �
"
BB� �
,
BB� �
updateSafeRequest
BB� �
,
BB� �
false
BB� �
,
BB� �
	authToken
BB� �
)
BB� �
;
BB� �
}CC 	
publicEE 
TaskEE 
<EE 
stringEE 
>EE 
UpdateSafeMemberEE ,
(EE, -
stringEE- 3
safeNameEE4 <
,EE< =#
AddSafeMemberRequestDtoEE> U
updateSafeMemberEEV f
,EEf g
stringEEh n
	authTokenEEo x
=EEy z
nullEE{ 
)	EE �
{FF 	
ifGG 
(GG 
updateSafeMemberGG  
?GG  !
.GG! "
memberGG" (
==GG) +
nullGG, 0
||GG1 3
stringGG4 :
.GG: ;
IsNullOrEmptyGG; H
(GGH I
safeNameGGI Q
)GGQ R
||GGS U
stringGGV \
.GG\ ]
IsNullOrEmptyGG] j
(GGj k
updateSafeMemberGGk {
.GG{ |
member	GG| �
.
GG� �

MemberName
GG� �
)
GG� �
)
GG� �
{HH 
throwII 
newII 
ArgumentExceptionII +
(II+ ,
$strII, n
)IIn o
;IIo p
}JJ 
returnKK 
PutCyberArkKK 
<KK 
stringKK %
>KK% &
(KK& '
stringKK' -
.KK- .
FormatKK. 4
(KK4 5!
CyberArkEndpointConstKK5 J
.KKJ K
UpdateSafesKKK V
,KKV W
safeNameKKX `
,KK` a
updateSafeMemberKKb r
.KKr s
memberKKs y
.KKy z

MemberName	KKz �
)
KK� �
,
KK� �
updateSafeMember
KK� �
,
KK� �
false
KK� �
,
KK� �
	authToken
KK� �
)
KK� �
;
KK� �
}LL 	
publicNN 
TaskNN 
<NN #
AddSafeMemberRequestDtoNN +
>NN+ ,
AddSafeMemberNN- :
(NN: ;
stringNN; A
safeNameNNB J
,NNJ K#
AddSafeMemberRequestDtoNNL c
updateSafeMemberNNd t
,NNt u
stringNNv |
	authToken	NN} �
=
NN� �
null
NN� �
)
NN� �
{OO 	
ifPP 
(PP 
updateSafeMemberPP  
?PP  !
.PP! "
memberPP" (
==PP) +
nullPP, 0
||PP1 3
stringPP4 :
.PP: ;
IsNullOrEmptyPP; H
(PPH I
safeNamePPI Q
)PPQ R
)PPR S
{QQ 
throwRR 
newRR 
ArgumentExceptionRR +
(RR+ ,
$strRR, ]
)RR] ^
;RR^ _
}SS 
returnTT 
PostCyberArkTT 
<TT  #
AddSafeMemberRequestDtoTT  7
>TT7 8
(TT8 9
stringTT9 ?
.TT? @
FormatTT@ F
(TTF G!
CyberArkEndpointConstTTG \
.TT\ ]
UpdateSafesTT] h
,TTh i
safeNameTTj r
,TTr s
stringTTt z
.TTz {
Empty	TT{ �
)
TT� �
,
TT� �
updateSafeMember
TT� �
,
TT� �
false
TT� �
,
TT� �
	authToken
TT� �
)
TT� �
;
TT� �
}UU 	
publicZZ 
TaskZZ 
<ZZ "
GetAccountsResponseDtoZZ *
>ZZ* +
GetAccountsZZ, 7
(ZZ7 8
stringZZ8 >
searchCriteriaZZ? M
=ZZN O
nullZZP T
,ZZT U
stringZZV \
filterCriteriaZZ] k
=ZZl m
nullZZn r
,ZZr s
boolZZt x
useSafeFilter	ZZy �
=
ZZ� �
true
ZZ� �
,
ZZ� �
string
ZZ� �
	authToken
ZZ� �
=
ZZ� �
null
ZZ� �
)
ZZ� �
{[[ 	
var\\ 
urlFilterSearch\\ 
=\\  !
useSafeFilter\\" /
?\\0 1!
CyberArkEndpointConst\\2 G
.\\G H"
AccountsSafeNameFilter\\H ^
:\\_ `!
CyberArkEndpointConst\\a v
.\\v w
AccountsFilter	\\w �
;
\\� �
var]] 
search]] 
=]] 
string]] 
.]]  
IsNullOrEmpty]]  -
(]]- .
searchCriteria]]. <
)]]< =
?]]> ?
string]]@ F
.]]F G
Empty]]G L
:]]M N
$"]]O Q
$str]]Q R
{]]R S
string]]S Y
.]]Y Z
Format]]Z `
(]]` a!
CyberArkEndpointConst]]a v
.]]v w
AccountsSearch	]]w �
,
]]� �
searchCriteria
]]� �
)
]]� �
}
]]� �
"
]]� �
;
]]� �
var^^ 
filter^^ 
=^^ 
string^^ 
.^^  
IsNullOrEmpty^^  -
(^^- .
filterCriteria^^. <
)^^< =
?^^> ?
string^^@ F
.^^F G
Empty^^G L
:^^M N
$"^^O Q
{^^Q R
(^^R S
string^^S Y
.^^Y Z
IsNullOrEmpty^^Z g
(^^g h
search^^h n
)^^n o
?^^p q
$char^^r u
:^^v w
$char^^x {
)^^{ |
}^^| }
{^^} ~
string	^^~ �
.
^^� �
Format
^^� �
(
^^� �
urlFilterSearch
^^� �
,
^^� �
filterCriteria
^^� �
)
^^� �
}
^^� �
"
^^� �
;
^^� �
var__ 
url__ 
=__ 
$"__ 
{__ !
CyberArkEndpointConst__ .
.__. /
Accounts__/ 7
}__7 8
{__8 9
search__9 ?
}__? @
{__@ A
filter__A G
}__G H
"__H I
;__I J
returnaa 
GetCyberArkaa 
<aa "
GetAccountsResponseDtoaa 5
>aa5 6
(aa6 7
urlaa7 :
,aa: ;
falseaa< A
,aaA B
	authTokenaaC L
)aaL M
;aaM N
}bb 	
publicdd 
Taskdd 
<dd 
AccountDetaildd !
>dd! "

GetAccountdd# -
(dd- .
stringdd. 4
	idAccountdd5 >
,dd> ?
stringdd@ F
	authTokenddG P
=ddQ R
nullddS W
)ddW X
{ee 	
ifff 
(ff 
stringff 
.ff 
IsNullOrEmptyff $
(ff$ %
	idAccountff% .
)ff. /
)ff/ 0
{gg 
throwhh 
newhh 
ArgumentExceptionhh +
(hh+ ,
$strhh, K
)hhK L
;hhL M
}ii 
returnkk 
GetCyberArkkk 
<kk 
AccountDetailkk ,
>kk, -
(kk- .
$"kk. 0
{kk0 1!
CyberArkEndpointConstkk1 F
.kkF G
AccountskkG O
}kkO P
$strkkP Q
{kkQ R
	idAccountkkR [
}kk[ \
"kk\ ]
,kk] ^
falsekk_ d
,kkd e
	authTokenkkf o
)kko p
;kkp q
}ll 	
publicnn 
Tasknn 
<nn 
stringnn 
>nn 
RetrieveAccountnn +
(nn+ ,
stringnn, 2
	idAccountnn3 <
,nn< =
stringnn> D
	authTokennnE N
=nnO P
nullnnQ U
)nnU V
{oo 	
ifpp 
(pp 
stringpp 
.pp 
IsNullOrEmptypp $
(pp$ %
	idAccountpp% .
)pp. /
)pp/ 0
{qq 
throwrr 
newrr 
ArgumentExceptionrr +
(rr+ ,
$strrr, K
)rrK L
;rrL M
}ss 
returnuu 
PostCyberArkuu 
<uu  
stringuu  &
>uu& '
(uu' (
$"uu( *
{uu* +!
CyberArkEndpointConstuu+ @
.uu@ A
AccountsuuA I
}uuI J
$struuJ K
{uuK L
	idAccountuuL U
}uuU V
$struuV W
{uuW X!
CyberArkEndpointConstuuX m
.uum n"
AccountRetrieveSuffix	uun �
}
uu� �
"
uu� �
,
uu� �
null
uu� �
,
uu� �
false
uu� �
,
uu� �
	authToken
uu� �
)
uu� �
;
uu� �
}vv 	
publicxx 
Taskxx 
<xx !
AddAccountResponseDtoxx )
>xx) *

AddAccountxx+ 5
(xx5 6 
AddAccountRequestDtoxx6 J
addAccountRequestxxK \
,xx\ ]
stringxx^ d
	authTokenxxe n
=xxo p
nullxxq u
)xxu v
{yy 	
ifzz 
(zz 
addAccountRequestzz !
==zz" $
nullzz% )
)zz) *
{{{ 
throw|| 
new|| 
ArgumentException|| +
(||+ ,
$str||, S
)||S T
;||T U
}}} 
return 
PostCyberArk 
<  !
AddAccountResponseDto  5
>5 6
(6 7!
CyberArkEndpointConst7 L
.L M
AccountsM U
,U V
addAccountRequestW h
,h i
falsej o
,o p
	authTokenq z
)z {
;{ |
}
�� 	
public
�� 
Task
�� 
<
�� #
AddAccountResponseDto
�� )
>
��) *
DeleteAccount
��+ 8
(
��8 9
string
��9 ?
accountName
��@ K
,
��K L
string
��M S
	authToken
��T ]
=
��^ _
null
��` d
)
��d e
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
��$ %
accountName
��% 0
)
��0 1
)
��1 2
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, M
)
��M N
;
��N O
}
�� 
return
�� 
DeleteCyberArk
�� !
<
��! "#
AddAccountResponseDto
��" 7
>
��7 8
(
��8 9
$"
��9 ;
{
��; <#
CyberArkEndpointConst
��< Q
.
��Q R
Accounts
��R Z
}
��Z [
$str
��[ \
{
��\ ]
accountName
��] h
}
��h i
"
��i j
,
��j k
false
��l q
,
��q r
	authToken
��s |
)
��| }
;
��} ~
}
�� 	
public
�� 
Task
�� 
<
��  
GetUserResponseDto
�� &
>
��& '
GetUser
��( /
(
��/ 0
string
��0 6
userName
��7 ?
,
��? @
string
��A G
	authToken
��H Q
=
��R S
null
��T X
)
��X Y
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
��$ %
userName
��% -
)
��- .
)
��. /
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, J
)
��J K
;
��K L
}
�� 
return
�� 
GetCyberArk
�� 
<
��  
GetUserResponseDto
�� 1
>
��1 2
(
��2 3
$"
��3 5
{
��5 6#
CyberArkEndpointConst
��6 K
.
��K L
Users
��L Q
}
��Q R
$str
��R S
{
��S T
userName
��T \
}
��\ ]
"
��] ^
,
��^ _
false
��` e
,
��e f
	authToken
��g p
)
��p q
;
��q r
}
�� 	
public
�� 
Task
�� 
<
��  
GetUserResponseDto
�� &
>
��& '
GetUsers
��( 0
(
��0 1 
GetUsersRequestDto
��1 C
usersRequestDto
��D S
,
��S T
string
��U [
	authToken
��\ e
=
��f g
null
��h l
)
��l m
{
�� 	
return
�� 
GetCyberArk
�� 
<
��  
GetUserResponseDto
�� 1
>
��1 2
(
��2 3
$"
��3 5
{
��5 6#
CyberArkEndpointConst
��6 K
.
��K L
GetUsers
��L T
}
��T U
$str
��U V
"
��V W
,
��W X
usersRequestDto
��Y h
,
��h i
false
��j o
,
��o p
	authToken
��q z
)
��z {
;
��{ |
}
�� 	
public
�� 
Task
�� 
<
��  
GetUserResponseDto
�� &
>
��& '
AddUser
��( /
(
��/ 0
AddUserRequestDto
��0 A
userRequest
��B M
,
��M N
string
��O U
	authToken
��V _
=
��` a
null
��b f
)
��f g
{
�� 	
if
�� 
(
�� 
userRequest
�� 
==
�� 
null
�� #
||
��$ &
string
��' -
.
��- .
IsNullOrEmpty
��. ;
(
��; <
userRequest
��< G
.
��G H
UserName
��H P
)
��P Q
)
��Q R
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, J
)
��J K
;
��K L
}
�� 
return
�� 
PostCyberArk
�� 
<
��   
GetUserResponseDto
��  2
>
��2 3
(
��3 4#
CyberArkEndpointConst
��4 I
.
��I J
Users
��J O
,
��O P
userRequest
��Q \
,
��\ ]
false
��^ c
,
��c d
	authToken
��e n
)
��n o
;
��o p
}
�� 	
public
�� 
Task
�� 
<
��  
GetUserResponseDto
�� &
>
��& '

UpdateUser
��( 2
(
��2 3"
UpdateUserRequestDto
��3 G
userRequest
��H S
,
��S T
string
��U [
userName
��\ d
,
��d e
string
��f l
	authToken
��m v
=
��w x
null
��y }
)
��} ~
{
�� 	
if
�� 
(
�� 
userRequest
�� 
==
�� 
null
�� #
||
��$ &
string
��' -
.
��- .
IsNullOrEmpty
��. ;
(
��; <
userName
��< D
)
��D E
)
��E F
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, J
)
��J K
;
��K L
}
�� 
return
�� 
PutCyberArk
�� 
<
��  
GetUserResponseDto
�� 1
>
��1 2
(
��2 3
$"
��3 5
{
��5 6#
CyberArkEndpointConst
��6 K
.
��K L
Users
��L Q
}
��Q R
$str
��R S
{
��S T
userName
��T \
}
��\ ]
"
��] ^
,
��^ _
userRequest
��` k
,
��k l
false
��m r
,
��r s
	authToken
��t }
)
��} ~
;
��~ 
}
�� 	
public
�� 
Task
�� 
<
�� 
DeletedUser
�� 
>
��  

DeleteUser
��! +
(
��+ ,
string
��, 2
userName
��3 ;
,
��; <
string
��= C
	authToken
��D M
=
��N O
null
��P T
)
��T U
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
��$ %
userName
��% -
)
��- .
)
��. /
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, J
)
��J K
;
��K L
}
�� 
return
�� 
DeleteCyberArk
�� !
<
��! "
DeletedUser
��" -
>
��- .
(
��. /
$"
��/ 1
{
��1 2#
CyberArkEndpointConst
��2 G
.
��G H
Users
��H M
}
��M N
$str
��N O
{
��O P
userName
��P X
}
��X Y
"
��Y Z
,
��Z [
false
��\ a
,
��a b
	authToken
��c l
)
��l m
;
��m n
}
�� 	
public
�� 
Task
�� 
<
�� 
string
�� 
>
�� 
ResetUserPassword
�� -
(
��- .
string
��. 4
idUser
��5 ;
,
��; <
string
��= C
newPassword
��D O
,
��O P
string
��Q W
	authToken
��X a
=
��b c
null
��d h
)
��h i
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
��$ %
idUser
��% +
)
��+ ,
||
��- /
string
��0 6
.
��6 7
IsNullOrEmpty
��7 D
(
��D E
newPassword
��E P
)
��P Q
||
��R T
!
��T U
int
��U X
.
��X Y
TryParse
��Y a
(
��a b
idUser
��b h
,
��h i
out
��j m
_
��n o
)
��o p
)
��p q
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, k
)
��k l
;
��l m
}
�� 
return
�� 
PostCyberArk
�� 
<
��  
string
��  &
>
��& '
(
��' (#
CyberArkEndpointConst
��( =
.
��= >
ResetPassword
��> K
,
��K L
new
��M P%
RestePasswordRequestDto
��Q h
{
��h i
Id
��i k
=
��l m
idUser
��n t
,
��t u
Password
��v ~
=�� �
newPassword��� �
}��� �
,��� �
false��� �
,��� �
	authToken��� �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
�� "
GetGroupsResponseDto
�� (
>
��( )
GetUserGroups
��* 7
(
��7 8
string
��8 >
	authToken
��? H
=
��I J
null
��K O
)
��O P
{
�� 	
return
�� 
GetCyberArk
�� 
<
�� "
GetGroupsResponseDto
�� 3
>
��3 4
(
��4 5#
CyberArkEndpointConst
��5 J
.
��J K
GetUserGroups
��K X
,
��X Y
false
��Z _
,
��_ `
	authToken
��a j
)
��j k
;
��k l
}
�� 	
public
�� 
Task
�� 
<
�� 
string
�� 
>
�� 
CreateUserGroup
�� +
(
��+ ,#
CreateGroupRequestDto
��, A 
createGroupRequest
��B T
,
��T U
string
��V \
	authToken
��] f
=
��g h
null
��i m
)
��m n
{
�� 	
return
�� 
PostCyberArk
�� 
<
��  
string
��  &
>
��& '
(
��' (#
CyberArkEndpointConst
��( =
.
��= >
GetUserGroups
��> K
,
��K L 
createGroupRequest
��M _
,
��_ `
false
��a f
,
��f g
	authToken
��h q
)
��q r
;
��r s
}
�� 	
public
�� 
Task
�� 
<
�� 
string
�� 
>
�� 
AddUserToGroup
�� *
(
��* +
string
��+ 1
userName
��2 :
,
��: ;
string
��< B
	groupName
��C L
,
��L M
string
��N T
	authToken
��U ^
=
��_ `
null
��a e
)
��e f
{
�� 	
return
�� 
PostCyberArk
�� 
<
��  
string
��  &
>
��& '
(
��' (
string
��( .
.
��. /
Format
��/ 5
(
��5 6#
CyberArkEndpointConst
��6 K
.
��K L
AddUserToGroup
��L Z
,
��Z [
	groupName
��\ e
)
��e f
,
��f g
new
��h k'
AddUserToGroupRequestDto��l �
{��� �
UserName��� �
=��� �
userName��� �
}��� �
,��� �
false��� �
,��� �
	authToken��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
T
�� 
>
�� 
GetCyberArk
�� )
<
��) *
T
��* +
>
��+ ,
(
��, -
string
��- 3
endpoint
��4 <
,
��< =
bool
��> B
useCamelCase
��C O
,
��O P
string
��Q W
	authToken
��X a
=
��b c
null
��d h
)
��h i
{
�� 	
if
�� 
(
�� 
!
�� 
CyberArkOptions
��  
.
��  !
EnableCyberArk
��! /
)
��/ 0
return
��1 7
default
��8 ?
;
��? @
await
�� 
Logon
�� 
(
�� 
	authToken
�� !
)
��! "
;
��" #
return
�� 
await
�� 
HttpClientHandler
�� *
.
��* +
Send
��+ /
<
��/ 0
T
��0 1
>
��1 2
(
��2 3

HttpMethod
��3 =
.
��= >
Get
��> A
,
��A B
CyberArkOptions
��C R
.
��R S 
CircuitBreakerName
��S e
,
��e f
endpoint
��g o
,
��o p
null
��q u
,
��u v
	MediaType��w �
.��� �
ApplicationJson��� �
,��� �'
GetAuthorizationHeaders��� �
(��� �
)��� �
,��� �
true��� �
,��� �
useCamelCase��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
T
�� 
>
�� 
GetCyberArk
�� )
<
��) *
T
��* +
>
��+ ,
(
��, -
string
��- 3
endpoint
��4 <
,
��< =
object
��> D
content
��E L
,
��L M
bool
��N R
useCamelCase
��S _
,
��_ `
string
��a g
	authToken
��h q
=
��r s
null
��t x
)
��x y
{
�� 	
if
�� 
(
�� 
!
�� 
CyberArkOptions
��  
.
��  !
EnableCyberArk
��! /
)
��/ 0
return
��1 7
default
��8 ?
;
��? @
await
�� 
Logon
�� 
(
�� 
	authToken
�� !
)
��! "
;
��" #
return
�� 
await
�� 
HttpClientHandler
�� *
.
��* +
Send
��+ /
<
��/ 0
T
��0 1
>
��1 2
(
��2 3

HttpMethod
��3 =
.
��= >
Get
��> A
,
��A B
CyberArkOptions
��C R
.
��R S 
CircuitBreakerName
��S e
,
��e f
endpoint
��g o
,
��o p
content
��q x
,
��x y
	MediaType��z �
.��� �
ApplicationJson��� �
,��� �'
GetAuthorizationHeaders��� �
(��� �
)��� �
,��� �
true��� �
,��� �
useCamelCase��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
T
�� 
>
�� 
PostCyberArk
�� *
<
��* +
T
��+ ,
>
��, -
(
��- .
string
��. 4
endpoint
��5 =
,
��= >
object
��? E

dataToSend
��F P
,
��P Q
bool
��R V
useCamelCase
��W c
,
��c d
string
��e k
	authToken
��l u
=
��v w
null
��x |
)
��| }
{
�� 	
if
�� 
(
�� 
!
�� 
CyberArkOptions
��  
.
��  !
EnableCyberArk
��! /
)
��/ 0
return
��1 7
default
��8 ?
;
��? @
await
�� 
Logon
�� 
(
�� 
	authToken
�� !
)
��! "
;
��" #
return
�� 
await
�� 
HttpClientHandler
�� *
.
��* +
Send
��+ /
<
��/ 0
T
��0 1
>
��1 2
(
��2 3

HttpMethod
��3 =
.
��= >
Post
��> B
,
��B C
CyberArkOptions
��D S
.
��S T 
CircuitBreakerName
��T f
,
��f g
endpoint
��h p
,
��p q

dataToSend
��r |
,
��| }
	MediaType��~ �
.��� �
ApplicationJson��� �
,��� �'
GetAuthorizationHeaders��� �
(��� �
)��� �
,��� �
true��� �
,��� �
useCamelCase��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
T
�� 
>
�� 
PutCyberArk
�� )
<
��) *
T
��* +
>
��+ ,
(
��, -
string
��- 3
endpoint
��4 <
,
��< =
object
��> D

dataToSend
��E O
,
��O P
bool
��Q U
useCamelCase
��V b
,
��b c
string
��d j
	authToken
��k t
=
��u v
null
��w {
)
��{ |
{
�� 	
if
�� 
(
�� 
!
�� 
CyberArkOptions
��  
.
��  !
EnableCyberArk
��! /
)
��/ 0
return
��1 7
default
��8 ?
;
��? @
await
�� 
Logon
�� 
(
�� 
	authToken
�� !
)
��! "
;
��" #
return
�� 
await
�� 
HttpClientHandler
�� *
.
��* +
Send
��+ /
<
��/ 0
T
��0 1
>
��1 2
(
��2 3

HttpMethod
��3 =
.
��= >
Put
��> A
,
��A B
CyberArkOptions
��C R
.
��R S 
CircuitBreakerName
��S e
,
��e f
endpoint
��g o
,
��o p

dataToSend
��q {
,
��{ |
	MediaType��} �
.��� �
ApplicationJson��� �
,��� �'
GetAuthorizationHeaders��� �
(��� �
)��� �
,��� �
true��� �
,��� �
useCamelCase��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
T
�� 
>
�� 
DeleteCyberArk
�� ,
<
��, -
T
��- .
>
��. /
(
��/ 0
string
��0 6
endpoint
��7 ?
,
��? @
bool
��B F
useCamelCase
��G S
,
��S T
string
��U [
	authToken
��\ e
=
��f g
null
��h l
)
��l m
{
�� 	
if
�� 
(
�� 
!
�� 
CyberArkOptions
��  
.
��  !
EnableCyberArk
��! /
)
��/ 0
return
��1 7
default
��8 ?
;
��? @
await
�� 
Logon
�� 
(
�� 
	authToken
�� !
)
��! "
;
��" #
return
�� 
await
�� 
HttpClientHandler
�� *
.
��* +
Send
��+ /
<
��/ 0
T
��0 1
>
��1 2
(
��2 3

HttpMethod
��3 =
.
��= >
Delete
��> D
,
��D E
CyberArkOptions
��F U
.
��U V 
CircuitBreakerName
��V h
,
��h i
endpoint
��j r
,
��r s
null
��t x
,
��x y
	MediaType��z �
.��� �
ApplicationJson��� �
,��� �'
GetAuthorizationHeaders��� �
(��� �
)��� �
,��� �
true��� �
,��� �
useCamelCase��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� 
Logon
��  
(
��  !
string
��! '
	authToken
��( 1
=
��2 3
null
��4 8
)
��8 9
{
�� 	
if
�� 
(
�� 
!
�� 
CyberArkOptions
��  
.
��  !
EnableCyberArk
��! /
)
��/ 0
return
��1 7
;
��7 8
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
	authToken
��& /
)
��/ 0
)
��0 1
{
�� 
	AuthToken
�� 
=
�� 
	authToken
�� %
;
��% &
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
CyberArkOptions
�� 
==
��  "
null
��# '
||
��( *
string
��+ 1
.
��1 2
IsNullOrEmpty
��2 ?
(
��? @
CyberArkOptions
��@ O
.
��O P
UserName
��P X
)
��X Y
||
��Z \
string
��] c
.
��c d
IsNullOrEmpty
��d q
(
��q r
CyberArkOptions��r �
.��� �
Password��� �
)��� �
)��� �
{
�� 
throw
�� 
new
�� +
CyberArkUnauthorizedException
�� 7
(
��7 8
$str
��8 h
)
��h i
;
��i j
}
�� 
await
�� 
Logon
�� 
(
�� 
CyberArkOptions
�� '
.
��' (
UserName
��( 0
,
��0 1
CyberArkOptions
��2 A
.
��A B
Password
��B J
)
��J K
.
��K L
ConfigureAwait
��L Z
(
��Z [
false
��[ `
)
��` a
;
��a b
}
�� 	
public
�� 
async
�� 
Task
�� 
<
�� 
string
��  
>
��  !
Logon
��" '
(
��' (
string
��( .
userName
��/ 7
,
��7 8
string
��9 ?
password
��@ H
)
��H I
{
�� 	
if
�� 
(
�� 
!
�� 
CyberArkOptions
��  
.
��  !
EnableCyberArk
��! /
)
��/ 0
return
��1 7
default
��8 ?
;
��? @
	AuthToken
�� 
=
�� 
await
�� 
HttpClientHandler
�� 0
.
��0 1
Send
��1 5
<
��5 6
string
��6 <
>
��< =
(
��= >

HttpMethod
��> H
.
��H I
Post
��I M
,
��M N
CyberArkOptions
��O ^
.
��^ _ 
CircuitBreakerName
��_ q
,
��q r$
CyberArkEndpointConst��s �
.��� �
Logon��� �
,��� �
new��� �
LogonRequestDto��� �
{��� �
Username��� �
=��� �
userName��� �
,��� �
Password��� �
=��� �
password��� �
}��� �
,��� �
	MediaType��� �
.��� �
ApplicationJson��� �
,��� �
null��� �
,��� �
true��� �
,��� �
true��� �
)��� �
;��� �
return
�� 
	AuthToken
�� 
;
�� 
}
�� 	
private
�� 

Dictionary
�� 
<
�� 
string
�� !
,
��! "
string
��# )
>
��) *%
GetAuthorizationHeaders
��+ B
(
��B C
)
��C D
{
�� 	
return
�� 
new
�� 

Dictionary
�� !
<
��! "
string
��" (
,
��( )
string
��* 0
>
��0 1
{
��2 3
{
��3 4
$str
��5 D
,
��D E
	AuthToken
��F O
}
��O P
}
��P Q
;
��Q R
}
�� 	
}
�� 
}�� �6
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Handler\ICyberArkHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
CyberArk# +
.+ ,
Handler, 3
{ 
public		 

	interface		 
ICyberArkHandler		 %
{

 
Task 
< 
string 
> 
Logon 
( 
string !
userName" *
,* +
string, 2
password3 ;
); <
;< =
Task 
< 
GetSafesResponseDto  
>  !
GetSafes" *
(* +
string+ 1
	authToken2 ;
=< =
null> B
)B C
;C D
Task 
< 
GetSafeResponseDto 
>  
GetSafe! (
(( )
string) /
idSafe0 6
,6 7
string8 >
	authToken? H
=I J
nullK O
)O P
;P Q
Task 
< 
AddSafeResponseDto 
>  
AddSafe! (
(( )
AddSafeRequestDto) :
safeRequest; F
,F G
stringH N
	authTokenO X
=Y Z
null[ _
)_ `
;` a
Task 
< !
UpdateSafeResponseDto "
>" #

UpdateSafe$ .
(. / 
UpdateSafeRequestDto/ C
updateSafeRequestD U
,U V
stringW ]
	authToken^ g
=h i
nullj n
)n o
;o p
Task 
< "
GetAccountsResponseDto #
># $
GetAccounts% 0
(0 1
string1 7
searchCriteria8 F
=G H
nullI M
,M N
stringO U
filterCriteriaV d
=e f
nullg k
,k l
boolm q
useSafeFilterr 
=
� �
true
� �
,
� �
string
� �
	authToken
� �
=
� �
null
� �
)
� �
;
� �
Task 
< 
AccountDetail 
> 

GetAccount &
(& '
string' -
	idAccount. 7
,7 8
string9 ?
	authToken@ I
=J K
nullL P
)P Q
;Q R
Task 
< !
AddAccountResponseDto "
>" #

AddAccount$ .
(. / 
AddAccountRequestDto/ C
addAccountRequestD U
,U V
stringW ]
	authToken^ g
=h i
nullj n
)n o
;o p
Task 
< !
AddAccountResponseDto "
>" #
DeleteAccount$ 1
(1 2
string2 8
accountName9 D
,D E
stringF L
	authTokenM V
=W X
nullY ]
)] ^
;^ _
Task 
< 
string 
> 
RetrieveAccount $
($ %
string% +
	idAccount, 5
,5 6
string7 =
	authToken> G
=H I
nullJ N
)N O
;O P
Task 
< 
GetUserResponseDto 
>  
GetUsers! )
() *
GetUsersRequestDto* <
usersRequestDto= L
,L M
stringN T
	authTokenU ^
=_ `
nulla e
)e f
;f g
Task 
< 
GetUserResponseDto 
>  
GetUser! (
(( )
string) /
userName0 8
,8 9
string: @
	authTokenA J
=K L
nullM Q
)Q R
;R S
Task 
< 
GetUserResponseDto 
>  
AddUser! (
(( )
AddUserRequestDto) :
userRequest; F
,F G
stringH N
	authTokenO X
=Y Z
null[ _
)_ `
;` a
Task 
< 
GetUserResponseDto 
>  

UpdateUser! +
(+ , 
UpdateUserRequestDto, @
userRequestA L
,L M
stringN T
userNameU ]
,] ^
string_ e
	authTokenf o
=p q
nullr v
)v w
;w x
Task 
< 
DeletedUser 
> 

DeleteUser $
($ %
string% +
userName, 4
,4 5
string6 <
	authToken= F
=G H
nullI M
)M N
;N O
Task 
< 
string 
> 
UpdateSafeMember %
(% &
string& ,
safeName- 5
,5 6#
AddSafeMemberRequestDto7 N
updateSafeMemberO _
,_ `
stringa g
	authTokenh q
=r s
nullt x
)x y
;y z
Task 
< 
string 
> 
ResetUserPassword &
(& '
string' -
idUser. 4
,4 5
string6 <
newPassword= H
,H I
stringJ P
	authTokenQ Z
=[ \
null] a
)a b
;b c
Task 
<  
GetGroupsResponseDto !
>! "
GetUserGroups# 0
(0 1
string1 7
	authToken8 A
=B C
nullD H
)H I
;I J
Task 
< 
string 
> 
CreateUserGroup $
($ %!
CreateGroupRequestDto% :
createGroupRequest; M
,M N
stringO U
	authTokenV _
=` a
nullb f
)f g
;g h
Task 
< 
string 
> 
AddUserToGroup #
(# $
string$ *
userName+ 3
,3 4
string5 ;
	groupName< E
,E F
stringG M
	authTokenN W
=X Y
nullZ ^
)^ _
;_ `
Task 
< #
AddSafeMemberRequestDto $
>$ %
AddSafeMember& 3
(3 4
string4 :
safeName; C
,C D#
AddSafeMemberRequestDtoE \
updateSafeMember] m
,m n
stringo u
	authTokenv 
=
� �
null
� �
)
� �
;
� �
}   
}!! 