«
ØC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Common\Const\CyberArkEndpointConst.cs
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
} ’
∞C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Common\Const\MemberPermissionsConst.cs
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
} ï
¢C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\CyberArkConfiguration.cs
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
CircuitBreakerName	{ ç
)
ç é
||
è ë
string
í ò
.
ò ô
IsNullOrEmpty
ô ¶
(
¶ ß
cyberArkOptions
ß ∂
.
∂ ∑
UserName
∑ ø
)
ø ¿
||
¡ √
string
ƒ  
.
  À
IsNullOrEmpty
À ÿ
(
ÿ Ÿ
cyberArkOptions
Ÿ Ë
.
Ë È
Password
È Ò
)
Ò Ú
)
Ú Û
return
Ù ˙
;
˙ ˚
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
} π
¶C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Account\AccountDetail.cs
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
} ñ
≠C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Account\AddAccountRequestDto.cs
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
} â
ÆC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Account\AddAccountResponseDto.cs
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
} €
ØC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Account\GetAccountsResponseDto.cs
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
} ‘
≤C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Account\Platformaccountproperties.cs
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
}		 ≈
≠C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Account\Remotemachinesaccess.cs
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
} ≈
©C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Account\Secretmanagement.cs
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
} ó
≤C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Group\AddUserToGroupOldRequestDto.cs
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
} ë
ØC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Group\AddUserToGroupRequestDto.cs
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
} «
¨C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Group\CreateGroupRequestDto.cs
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
}		 ‡
´C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Group\GetGroupsResponseDto.cs
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
 ñ
¢C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Group\GroupDetail.cs
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
} õ
¶C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Logon\LogonRequestDto.cs
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
}		 ™
≠C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\AddSafeMemberRequestDto.cs
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
} Û
ßC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\AddSafeRequestDto.cs
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
} è
®C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\AddSafeResponseDto.cs
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
} ß
£C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\AddSafeResult.cs
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
} ê
®C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\GetSafeResponseDto.cs
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
}		 √
©C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\GetSafesResponseDto.cs
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
 ƒ
§C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\GetSafesResult.cs
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
} î
™C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\UpdateSafeRequestDto.cs
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
}		 õ
´C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\UpdateSafeResponseDto.cs
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
} »
¶C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\Safe\Updatesaferesult.cs
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
} ¿
ßC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\User\AddUserRequestDto.cs
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
} Ÿ
°C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\User\DeletedUser.cs
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
} ≤
®C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\User\GetUserResponseDto.cs
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
} õ
®C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\User\GetUsersRequestDto.cs
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
}		 £
≠C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\User\RestePasswordRequestDto.cs
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
} ˛
™C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Dto\User\UpdateUserRequestDto.cs
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
} «	
πC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Exceptions\AnsibleTowerUnauthorizedException.cs
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
} äß
§C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Handler\CyberArkHandler.cs
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
}	BB Ä
"
BBÄ Å
,
BBÅ Ç
updateSafeRequest
BBÉ î
,
BBî ï
false
BBñ õ
,
BBõ ú
	authToken
BBù ¶
)
BB¶ ß
;
BBß ®
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
)	EE Ä
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
member	GG| Ç
.
GGÇ É

MemberName
GGÉ ç
)
GGç é
)
GGé è
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

MemberName	KKz Ñ
)
KKÑ Ö
,
KKÖ Ü
updateSafeMember
KKá ó
,
KKó ò
false
KKô û
,
KKû ü
	authToken
KK† ©
)
KK© ™
;
KK™ ´
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
	authToken	NN} Ü
=
NNá à
null
NNâ ç
)
NNç é
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
Empty	TT{ Ä
)
TTÄ Å
,
TTÅ Ç
updateSafeMember
TTÉ ì
,
TTì î
false
TTï ö
,
TTö õ
	authToken
TTú •
)
TT• ¶
;
TT¶ ß
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
useSafeFilter	ZZy Ü
=
ZZá à
true
ZZâ ç
,
ZZç é
string
ZZè ï
	authToken
ZZñ ü
=
ZZ† °
null
ZZ¢ ¶
)
ZZ¶ ß
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
AccountsFilter	\\w Ö
;
\\Ö Ü
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
AccountsSearch	]]w Ö
,
]]Ö Ü
searchCriteria
]]á ï
)
]]ï ñ
}
]]ñ ó
"
]]ó ò
;
]]ò ô
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
string	^^~ Ñ
.
^^Ñ Ö
Format
^^Ö ã
(
^^ã å
urlFilterSearch
^^å õ
,
^^õ ú
filterCriteria
^^ù ´
)
^^´ ¨
}
^^¨ ≠
"
^^≠ Æ
;
^^Æ Ø
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
AccountRetrieveSuffix	uun É
}
uuÉ Ñ
"
uuÑ Ö
,
uuÖ Ü
null
uuÜ ä
,
uuä ã
false
uuå ë
,
uuë í
	authToken
uuì ú
)
uuú ù
;
uuù û
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
ÄÄ 	
public
ÇÇ 
Task
ÇÇ 
<
ÇÇ #
AddAccountResponseDto
ÇÇ )
>
ÇÇ) *
DeleteAccount
ÇÇ+ 8
(
ÇÇ8 9
string
ÇÇ9 ?
accountName
ÇÇ@ K
,
ÇÇK L
string
ÇÇM S
	authToken
ÇÇT ]
=
ÇÇ^ _
null
ÇÇ` d
)
ÇÇd e
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
string
ÑÑ 
.
ÑÑ 
IsNullOrEmpty
ÑÑ $
(
ÑÑ$ %
accountName
ÑÑ% 0
)
ÑÑ0 1
)
ÑÑ1 2
{
ÖÖ 
throw
ÜÜ 
new
ÜÜ 
ArgumentException
ÜÜ +
(
ÜÜ+ ,
$str
ÜÜ, M
)
ÜÜM N
;
ÜÜN O
}
áá 
return
ââ 
DeleteCyberArk
ââ !
<
ââ! "#
AddAccountResponseDto
ââ" 7
>
ââ7 8
(
ââ8 9
$"
ââ9 ;
{
ââ; <#
CyberArkEndpointConst
ââ< Q
.
ââQ R
Accounts
ââR Z
}
ââZ [
$str
ââ[ \
{
ââ\ ]
accountName
ââ] h
}
ââh i
"
ââi j
,
ââj k
false
ââl q
,
ââq r
	authToken
ââs |
)
ââ| }
;
ââ} ~
}
ää 	
public
èè 
Task
èè 
<
èè  
GetUserResponseDto
èè &
>
èè& '
GetUser
èè( /
(
èè/ 0
string
èè0 6
userName
èè7 ?
,
èè? @
string
èèA G
	authToken
èèH Q
=
èèR S
null
èèT X
)
èèX Y
{
êê 	
if
ëë 
(
ëë 
string
ëë 
.
ëë 
IsNullOrEmpty
ëë $
(
ëë$ %
userName
ëë% -
)
ëë- .
)
ëë. /
{
íí 
throw
ìì 
new
ìì 
ArgumentException
ìì +
(
ìì+ ,
$str
ìì, J
)
ììJ K
;
ììK L
}
îî 
return
ññ 
GetCyberArk
ññ 
<
ññ  
GetUserResponseDto
ññ 1
>
ññ1 2
(
ññ2 3
$"
ññ3 5
{
ññ5 6#
CyberArkEndpointConst
ññ6 K
.
ññK L
Users
ññL Q
}
ññQ R
$str
ññR S
{
ññS T
userName
ññT \
}
ññ\ ]
"
ññ] ^
,
ññ^ _
false
ññ` e
,
ññe f
	authToken
ññg p
)
ññp q
;
ññq r
}
óó 	
public
ôô 
Task
ôô 
<
ôô  
GetUserResponseDto
ôô &
>
ôô& '
GetUsers
ôô( 0
(
ôô0 1 
GetUsersRequestDto
ôô1 C
usersRequestDto
ôôD S
,
ôôS T
string
ôôU [
	authToken
ôô\ e
=
ôôf g
null
ôôh l
)
ôôl m
{
öö 	
return
õõ 
GetCyberArk
õõ 
<
õõ  
GetUserResponseDto
õõ 1
>
õõ1 2
(
õõ2 3
$"
õõ3 5
{
õõ5 6#
CyberArkEndpointConst
õõ6 K
.
õõK L
GetUsers
õõL T
}
õõT U
$str
õõU V
"
õõV W
,
õõW X
usersRequestDto
õõY h
,
õõh i
false
õõj o
,
õõo p
	authToken
õõq z
)
õõz {
;
õõ{ |
}
úú 	
public
ûû 
Task
ûû 
<
ûû  
GetUserResponseDto
ûû &
>
ûû& '
AddUser
ûû( /
(
ûû/ 0
AddUserRequestDto
ûû0 A
userRequest
ûûB M
,
ûûM N
string
ûûO U
	authToken
ûûV _
=
ûû` a
null
ûûb f
)
ûûf g
{
üü 	
if
†† 
(
†† 
userRequest
†† 
==
†† 
null
†† #
||
††$ &
string
††' -
.
††- .
IsNullOrEmpty
††. ;
(
††; <
userRequest
††< G
.
††G H
UserName
††H P
)
††P Q
)
††Q R
{
°° 
throw
¢¢ 
new
¢¢ 
ArgumentException
¢¢ +
(
¢¢+ ,
$str
¢¢, J
)
¢¢J K
;
¢¢K L
}
££ 
return
•• 
PostCyberArk
•• 
<
••   
GetUserResponseDto
••  2
>
••2 3
(
••3 4#
CyberArkEndpointConst
••4 I
.
••I J
Users
••J O
,
••O P
userRequest
••Q \
,
••\ ]
false
••^ c
,
••c d
	authToken
••e n
)
••n o
;
••o p
}
¶¶ 	
public
®® 
Task
®® 
<
®®  
GetUserResponseDto
®® &
>
®®& '

UpdateUser
®®( 2
(
®®2 3"
UpdateUserRequestDto
®®3 G
userRequest
®®H S
,
®®S T
string
®®U [
userName
®®\ d
,
®®d e
string
®®f l
	authToken
®®m v
=
®®w x
null
®®y }
)
®®} ~
{
©© 	
if
™™ 
(
™™ 
userRequest
™™ 
==
™™ 
null
™™ #
||
™™$ &
string
™™' -
.
™™- .
IsNullOrEmpty
™™. ;
(
™™; <
userName
™™< D
)
™™D E
)
™™E F
{
´´ 
throw
¨¨ 
new
¨¨ 
ArgumentException
¨¨ +
(
¨¨+ ,
$str
¨¨, J
)
¨¨J K
;
¨¨K L
}
≠≠ 
return
ØØ 
PutCyberArk
ØØ 
<
ØØ  
GetUserResponseDto
ØØ 1
>
ØØ1 2
(
ØØ2 3
$"
ØØ3 5
{
ØØ5 6#
CyberArkEndpointConst
ØØ6 K
.
ØØK L
Users
ØØL Q
}
ØØQ R
$str
ØØR S
{
ØØS T
userName
ØØT \
}
ØØ\ ]
"
ØØ] ^
,
ØØ^ _
userRequest
ØØ` k
,
ØØk l
false
ØØm r
,
ØØr s
	authToken
ØØt }
)
ØØ} ~
;
ØØ~ 
}
∞∞ 	
public
¥¥ 
Task
¥¥ 
<
¥¥ 
DeletedUser
¥¥ 
>
¥¥  

DeleteUser
¥¥! +
(
¥¥+ ,
string
¥¥, 2
userName
¥¥3 ;
,
¥¥; <
string
¥¥= C
	authToken
¥¥D M
=
¥¥N O
null
¥¥P T
)
¥¥T U
{
µµ 	
if
∂∂ 
(
∂∂ 
string
∂∂ 
.
∂∂ 
IsNullOrEmpty
∂∂ $
(
∂∂$ %
userName
∂∂% -
)
∂∂- .
)
∂∂. /
{
∑∑ 
throw
∏∏ 
new
∏∏ 
ArgumentException
∏∏ +
(
∏∏+ ,
$str
∏∏, J
)
∏∏J K
;
∏∏K L
}
ππ 
return
ªª 
DeleteCyberArk
ªª !
<
ªª! "
DeletedUser
ªª" -
>
ªª- .
(
ªª. /
$"
ªª/ 1
{
ªª1 2#
CyberArkEndpointConst
ªª2 G
.
ªªG H
Users
ªªH M
}
ªªM N
$str
ªªN O
{
ªªO P
userName
ªªP X
}
ªªX Y
"
ªªY Z
,
ªªZ [
false
ªª\ a
,
ªªa b
	authToken
ªªc l
)
ªªl m
;
ªªm n
}
ºº 	
public
ææ 
Task
ææ 
<
ææ 
string
ææ 
>
ææ 
ResetUserPassword
ææ -
(
ææ- .
string
ææ. 4
idUser
ææ5 ;
,
ææ; <
string
ææ= C
newPassword
ææD O
,
ææO P
string
ææQ W
	authToken
ææX a
=
ææb c
null
ææd h
)
ææh i
{
øø 	
if
¿¿ 
(
¿¿ 
string
¿¿ 
.
¿¿ 
IsNullOrEmpty
¿¿ $
(
¿¿$ %
idUser
¿¿% +
)
¿¿+ ,
||
¿¿- /
string
¿¿0 6
.
¿¿6 7
IsNullOrEmpty
¿¿7 D
(
¿¿D E
newPassword
¿¿E P
)
¿¿P Q
||
¿¿R T
!
¿¿T U
int
¿¿U X
.
¿¿X Y
TryParse
¿¿Y a
(
¿¿a b
idUser
¿¿b h
,
¿¿h i
out
¿¿j m
_
¿¿n o
)
¿¿o p
)
¿¿p q
{
¡¡ 
throw
¬¬ 
new
¬¬ 
ArgumentException
¬¬ +
(
¬¬+ ,
$str
¬¬, k
)
¬¬k l
;
¬¬l m
}
√√ 
return
≈≈ 
PostCyberArk
≈≈ 
<
≈≈  
string
≈≈  &
>
≈≈& '
(
≈≈' (#
CyberArkEndpointConst
≈≈( =
.
≈≈= >
ResetPassword
≈≈> K
,
≈≈K L
new
≈≈M P%
RestePasswordRequestDto
≈≈Q h
{
≈≈h i
Id
≈≈i k
=
≈≈l m
idUser
≈≈n t
,
≈≈t u
Password
≈≈v ~
=≈≈ Ä
newPassword≈≈Å å
}≈≈å ç
,≈≈ç é
false≈≈è î
,≈≈î ï
	authToken≈≈ñ ü
)≈≈ü †
;≈≈† °
}
∆∆ 	
public
ÃÃ 
Task
ÃÃ 
<
ÃÃ "
GetGroupsResponseDto
ÃÃ (
>
ÃÃ( )
GetUserGroups
ÃÃ* 7
(
ÃÃ7 8
string
ÃÃ8 >
	authToken
ÃÃ? H
=
ÃÃI J
null
ÃÃK O
)
ÃÃO P
{
ÕÕ 	
return
ŒŒ 
GetCyberArk
ŒŒ 
<
ŒŒ "
GetGroupsResponseDto
ŒŒ 3
>
ŒŒ3 4
(
ŒŒ4 5#
CyberArkEndpointConst
ŒŒ5 J
.
ŒŒJ K
GetUserGroups
ŒŒK X
,
ŒŒX Y
false
ŒŒZ _
,
ŒŒ_ `
	authToken
ŒŒa j
)
ŒŒj k
;
ŒŒk l
}
œœ 	
public
◊◊ 
Task
◊◊ 
<
◊◊ 
string
◊◊ 
>
◊◊ 
CreateUserGroup
◊◊ +
(
◊◊+ ,#
CreateGroupRequestDto
◊◊, A 
createGroupRequest
◊◊B T
,
◊◊T U
string
◊◊V \
	authToken
◊◊] f
=
◊◊g h
null
◊◊i m
)
◊◊m n
{
ÿÿ 	
return
ŸŸ 
PostCyberArk
ŸŸ 
<
ŸŸ  
string
ŸŸ  &
>
ŸŸ& '
(
ŸŸ' (#
CyberArkEndpointConst
ŸŸ( =
.
ŸŸ= >
GetUserGroups
ŸŸ> K
,
ŸŸK L 
createGroupRequest
ŸŸM _
,
ŸŸ_ `
false
ŸŸa f
,
ŸŸf g
	authToken
ŸŸh q
)
ŸŸq r
;
ŸŸr s
}
⁄⁄ 	
public
‹‹ 
Task
‹‹ 
<
‹‹ 
string
‹‹ 
>
‹‹ 
AddUserToGroup
‹‹ *
(
‹‹* +
string
‹‹+ 1
userName
‹‹2 :
,
‹‹: ;
string
‹‹< B
	groupName
‹‹C L
,
‹‹L M
string
‹‹N T
	authToken
‹‹U ^
=
‹‹_ `
null
‹‹a e
)
‹‹e f
{
›› 	
return
ﬁﬁ 
PostCyberArk
ﬁﬁ 
<
ﬁﬁ  
string
ﬁﬁ  &
>
ﬁﬁ& '
(
ﬁﬁ' (
string
ﬁﬁ( .
.
ﬁﬁ. /
Format
ﬁﬁ/ 5
(
ﬁﬁ5 6#
CyberArkEndpointConst
ﬁﬁ6 K
.
ﬁﬁK L
AddUserToGroup
ﬁﬁL Z
,
ﬁﬁZ [
	groupName
ﬁﬁ\ e
)
ﬁﬁe f
,
ﬁﬁf g
new
ﬁﬁh k'
AddUserToGroupRequestDtoﬁﬁl Ñ
{ﬁﬁÑ Ö
UserNameﬁﬁÜ é
=ﬁﬁè ê
userNameﬁﬁë ô
}ﬁﬁö õ
,ﬁﬁú ù
falseﬁﬁû £
,ﬁﬁ£ §
	authTokenﬁﬁ• Æ
)ﬁﬁÆ Ø
;ﬁﬁØ ∞
}
ﬂﬂ 	
private
‰‰ 
async
‰‰ 
Task
‰‰ 
<
‰‰ 
T
‰‰ 
>
‰‰ 
GetCyberArk
‰‰ )
<
‰‰) *
T
‰‰* +
>
‰‰+ ,
(
‰‰, -
string
‰‰- 3
endpoint
‰‰4 <
,
‰‰< =
bool
‰‰> B
useCamelCase
‰‰C O
,
‰‰O P
string
‰‰Q W
	authToken
‰‰X a
=
‰‰b c
null
‰‰d h
)
‰‰h i
{
ÂÂ 	
if
ÊÊ 
(
ÊÊ 
!
ÊÊ 
CyberArkOptions
ÊÊ  
.
ÊÊ  !
EnableCyberArk
ÊÊ! /
)
ÊÊ/ 0
return
ÊÊ1 7
default
ÊÊ8 ?
;
ÊÊ? @
await
ÁÁ 
Logon
ÁÁ 
(
ÁÁ 
	authToken
ÁÁ !
)
ÁÁ! "
;
ÁÁ" #
return
ËË 
await
ËË 
HttpClientHandler
ËË *
.
ËË* +
Send
ËË+ /
<
ËË/ 0
T
ËË0 1
>
ËË1 2
(
ËË2 3

HttpMethod
ËË3 =
.
ËË= >
Get
ËË> A
,
ËËA B
CyberArkOptions
ËËC R
.
ËËR S 
CircuitBreakerName
ËËS e
,
ËËe f
endpoint
ËËg o
,
ËËo p
null
ËËq u
,
ËËu v
	MediaTypeËËw Ä
.ËËÄ Å
ApplicationJsonËËÅ ê
,ËËê ë'
GetAuthorizationHeadersËËí ©
(ËË© ™
)ËË™ ´
,ËË´ ¨
trueËË≠ ±
,ËË± ≤
useCamelCaseËË≥ ø
)ËËø ¿
;ËË¿ ¡
}
ÈÈ 	
private
ÎÎ 
async
ÎÎ 
Task
ÎÎ 
<
ÎÎ 
T
ÎÎ 
>
ÎÎ 
GetCyberArk
ÎÎ )
<
ÎÎ) *
T
ÎÎ* +
>
ÎÎ+ ,
(
ÎÎ, -
string
ÎÎ- 3
endpoint
ÎÎ4 <
,
ÎÎ< =
object
ÎÎ> D
content
ÎÎE L
,
ÎÎL M
bool
ÎÎN R
useCamelCase
ÎÎS _
,
ÎÎ_ `
string
ÎÎa g
	authToken
ÎÎh q
=
ÎÎr s
null
ÎÎt x
)
ÎÎx y
{
ÏÏ 	
if
ÌÌ 
(
ÌÌ 
!
ÌÌ 
CyberArkOptions
ÌÌ  
.
ÌÌ  !
EnableCyberArk
ÌÌ! /
)
ÌÌ/ 0
return
ÌÌ1 7
default
ÌÌ8 ?
;
ÌÌ? @
await
ÓÓ 
Logon
ÓÓ 
(
ÓÓ 
	authToken
ÓÓ !
)
ÓÓ! "
;
ÓÓ" #
return
ÔÔ 
await
ÔÔ 
HttpClientHandler
ÔÔ *
.
ÔÔ* +
Send
ÔÔ+ /
<
ÔÔ/ 0
T
ÔÔ0 1
>
ÔÔ1 2
(
ÔÔ2 3

HttpMethod
ÔÔ3 =
.
ÔÔ= >
Get
ÔÔ> A
,
ÔÔA B
CyberArkOptions
ÔÔC R
.
ÔÔR S 
CircuitBreakerName
ÔÔS e
,
ÔÔe f
endpoint
ÔÔg o
,
ÔÔo p
content
ÔÔq x
,
ÔÔx y
	MediaTypeÔÔz É
.ÔÔÉ Ñ
ApplicationJsonÔÔÑ ì
,ÔÔì î'
GetAuthorizationHeadersÔÔï ¨
(ÔÔ¨ ≠
)ÔÔ≠ Æ
,ÔÔÆ Ø
trueÔÔ∞ ¥
,ÔÔ¥ µ
useCamelCaseÔÔ∂ ¬
)ÔÔ¬ √
;ÔÔ√ ƒ
}
 	
private
ÚÚ 
async
ÚÚ 
Task
ÚÚ 
<
ÚÚ 
T
ÚÚ 
>
ÚÚ 
PostCyberArk
ÚÚ *
<
ÚÚ* +
T
ÚÚ+ ,
>
ÚÚ, -
(
ÚÚ- .
string
ÚÚ. 4
endpoint
ÚÚ5 =
,
ÚÚ= >
object
ÚÚ? E

dataToSend
ÚÚF P
,
ÚÚP Q
bool
ÚÚR V
useCamelCase
ÚÚW c
,
ÚÚc d
string
ÚÚe k
	authToken
ÚÚl u
=
ÚÚv w
null
ÚÚx |
)
ÚÚ| }
{
ÛÛ 	
if
ÙÙ 
(
ÙÙ 
!
ÙÙ 
CyberArkOptions
ÙÙ  
.
ÙÙ  !
EnableCyberArk
ÙÙ! /
)
ÙÙ/ 0
return
ÙÙ1 7
default
ÙÙ8 ?
;
ÙÙ? @
await
ıı 
Logon
ıı 
(
ıı 
	authToken
ıı !
)
ıı! "
;
ıı" #
return
ˆˆ 
await
ˆˆ 
HttpClientHandler
ˆˆ *
.
ˆˆ* +
Send
ˆˆ+ /
<
ˆˆ/ 0
T
ˆˆ0 1
>
ˆˆ1 2
(
ˆˆ2 3

HttpMethod
ˆˆ3 =
.
ˆˆ= >
Post
ˆˆ> B
,
ˆˆB C
CyberArkOptions
ˆˆD S
.
ˆˆS T 
CircuitBreakerName
ˆˆT f
,
ˆˆf g
endpoint
ˆˆh p
,
ˆˆp q

dataToSend
ˆˆr |
,
ˆˆ| }
	MediaTypeˆˆ~ á
.ˆˆá à
ApplicationJsonˆˆà ó
,ˆˆó ò'
GetAuthorizationHeadersˆˆô ∞
(ˆˆ∞ ±
)ˆˆ± ≤
,ˆˆ≤ ≥
trueˆˆ¥ ∏
,ˆˆ∏ π
useCamelCaseˆˆ∫ ∆
)ˆˆ∆ «
;ˆˆ« »
}
˜˜ 	
private
˘˘ 
async
˘˘ 
Task
˘˘ 
<
˘˘ 
T
˘˘ 
>
˘˘ 
PutCyberArk
˘˘ )
<
˘˘) *
T
˘˘* +
>
˘˘+ ,
(
˘˘, -
string
˘˘- 3
endpoint
˘˘4 <
,
˘˘< =
object
˘˘> D

dataToSend
˘˘E O
,
˘˘O P
bool
˘˘Q U
useCamelCase
˘˘V b
,
˘˘b c
string
˘˘d j
	authToken
˘˘k t
=
˘˘u v
null
˘˘w {
)
˘˘{ |
{
˙˙ 	
if
˚˚ 
(
˚˚ 
!
˚˚ 
CyberArkOptions
˚˚  
.
˚˚  !
EnableCyberArk
˚˚! /
)
˚˚/ 0
return
˚˚1 7
default
˚˚8 ?
;
˚˚? @
await
¸¸ 
Logon
¸¸ 
(
¸¸ 
	authToken
¸¸ !
)
¸¸! "
;
¸¸" #
return
˝˝ 
await
˝˝ 
HttpClientHandler
˝˝ *
.
˝˝* +
Send
˝˝+ /
<
˝˝/ 0
T
˝˝0 1
>
˝˝1 2
(
˝˝2 3

HttpMethod
˝˝3 =
.
˝˝= >
Put
˝˝> A
,
˝˝A B
CyberArkOptions
˝˝C R
.
˝˝R S 
CircuitBreakerName
˝˝S e
,
˝˝e f
endpoint
˝˝g o
,
˝˝o p

dataToSend
˝˝q {
,
˝˝{ |
	MediaType˝˝} Ü
.˝˝Ü á
ApplicationJson˝˝á ñ
,˝˝ñ ó'
GetAuthorizationHeaders˝˝ò Ø
(˝˝Ø ∞
)˝˝∞ ±
,˝˝± ≤
true˝˝≥ ∑
,˝˝∑ ∏
useCamelCase˝˝π ≈
)˝˝≈ ∆
;˝˝∆ «
}
˛˛ 	
private
ÄÄ 
async
ÄÄ 
Task
ÄÄ 
<
ÄÄ 
T
ÄÄ 
>
ÄÄ 
DeleteCyberArk
ÄÄ ,
<
ÄÄ, -
T
ÄÄ- .
>
ÄÄ. /
(
ÄÄ/ 0
string
ÄÄ0 6
endpoint
ÄÄ7 ?
,
ÄÄ? @
bool
ÄÄB F
useCamelCase
ÄÄG S
,
ÄÄS T
string
ÄÄU [
	authToken
ÄÄ\ e
=
ÄÄf g
null
ÄÄh l
)
ÄÄl m
{
ÅÅ 	
if
ÇÇ 
(
ÇÇ 
!
ÇÇ 
CyberArkOptions
ÇÇ  
.
ÇÇ  !
EnableCyberArk
ÇÇ! /
)
ÇÇ/ 0
return
ÇÇ1 7
default
ÇÇ8 ?
;
ÇÇ? @
await
ÉÉ 
Logon
ÉÉ 
(
ÉÉ 
	authToken
ÉÉ !
)
ÉÉ! "
;
ÉÉ" #
return
ÑÑ 
await
ÑÑ 
HttpClientHandler
ÑÑ *
.
ÑÑ* +
Send
ÑÑ+ /
<
ÑÑ/ 0
T
ÑÑ0 1
>
ÑÑ1 2
(
ÑÑ2 3

HttpMethod
ÑÑ3 =
.
ÑÑ= >
Delete
ÑÑ> D
,
ÑÑD E
CyberArkOptions
ÑÑF U
.
ÑÑU V 
CircuitBreakerName
ÑÑV h
,
ÑÑh i
endpoint
ÑÑj r
,
ÑÑr s
null
ÑÑt x
,
ÑÑx y
	MediaTypeÑÑz É
.ÑÑÉ Ñ
ApplicationJsonÑÑÑ ì
,ÑÑì î'
GetAuthorizationHeadersÑÑï ¨
(ÑÑ¨ ≠
)ÑÑ≠ Æ
,ÑÑÆ Ø
trueÑÑ∞ ¥
,ÑÑ¥ µ
useCamelCaseÑÑ∂ ¬
)ÑÑ¬ √
;ÑÑ√ ƒ
}
ÖÖ 	
private
áá 
async
áá 
Task
áá 
Logon
áá  
(
áá  !
string
áá! '
	authToken
áá( 1
=
áá2 3
null
áá4 8
)
áá8 9
{
àà 	
if
ââ 
(
ââ 
!
ââ 
CyberArkOptions
ââ  
.
ââ  !
EnableCyberArk
ââ! /
)
ââ/ 0
return
ââ1 7
;
ââ7 8
if
ãã 
(
ãã 
!
ãã 
string
ãã 
.
ãã 
IsNullOrEmpty
ãã %
(
ãã% &
	authToken
ãã& /
)
ãã/ 0
)
ãã0 1
{
åå 
	AuthToken
çç 
=
çç 
	authToken
çç %
;
çç% &
return
éé 
;
éé 
}
èè 
if
ëë 
(
ëë 
CyberArkOptions
ëë 
==
ëë  "
null
ëë# '
||
ëë( *
string
ëë+ 1
.
ëë1 2
IsNullOrEmpty
ëë2 ?
(
ëë? @
CyberArkOptions
ëë@ O
.
ëëO P
UserName
ëëP X
)
ëëX Y
||
ëëZ \
string
ëë] c
.
ëëc d
IsNullOrEmpty
ëëd q
(
ëëq r
CyberArkOptionsëër Å
.ëëÅ Ç
PasswordëëÇ ä
)ëëä ã
)ëëã å
{
íí 
throw
ìì 
new
ìì +
CyberArkUnauthorizedException
ìì 7
(
ìì7 8
$str
ìì8 h
)
ììh i
;
ììi j
}
îî 
await
ññ 
Logon
ññ 
(
ññ 
CyberArkOptions
ññ '
.
ññ' (
UserName
ññ( 0
,
ññ0 1
CyberArkOptions
ññ2 A
.
ññA B
Password
ññB J
)
ññJ K
.
ññK L
ConfigureAwait
ññL Z
(
ññZ [
false
ññ[ `
)
ññ` a
;
ñña b
}
óó 	
public
ôô 
async
ôô 
Task
ôô 
<
ôô 
string
ôô  
>
ôô  !
Logon
ôô" '
(
ôô' (
string
ôô( .
userName
ôô/ 7
,
ôô7 8
string
ôô9 ?
password
ôô@ H
)
ôôH I
{
öö 	
if
õõ 
(
õõ 
!
õõ 
CyberArkOptions
õõ  
.
õõ  !
EnableCyberArk
õõ! /
)
õõ/ 0
return
õõ1 7
default
õõ8 ?
;
õõ? @
	AuthToken
úú 
=
úú 
await
úú 
HttpClientHandler
úú 0
.
úú0 1
Send
úú1 5
<
úú5 6
string
úú6 <
>
úú< =
(
úú= >

HttpMethod
úú> H
.
úúH I
Post
úúI M
,
úúM N
CyberArkOptions
úúO ^
.
úú^ _ 
CircuitBreakerName
úú_ q
,
úúq r$
CyberArkEndpointConstúús à
.úúà â
Logonúúâ é
,úúé è
newúúê ì
LogonRequestDtoúúî £
{úú§ •
Usernameúú¶ Æ
=úúØ ∞
userNameúú± π
,úúπ ∫
Passwordúúª √
=úúƒ ≈
passwordúú∆ Œ
}úúœ –
,úú– —
	MediaTypeúú“ €
.úú€ ‹
ApplicationJsonúú‹ Î
,úúÎ Ï
nullúúÌ Ò
,úúÒ Ú
trueúúÛ ˜
,úú˜ ¯
trueúú˘ ˝
)úú˝ ˛
;úú˛ ˇ
return
ûû 
	AuthToken
ûû 
;
ûû 
}
üü 	
private
°° 

Dictionary
°° 
<
°° 
string
°° !
,
°°! "
string
°°# )
>
°°) *%
GetAuthorizationHeaders
°°+ B
(
°°B C
)
°°C D
{
¢¢ 	
return
££ 
new
££ 

Dictionary
££ !
<
££! "
string
££" (
,
££( )
string
££* 0
>
££0 1
{
££2 3
{
££3 4
$str
££5 D
,
££D E
	AuthToken
££F O
}
££O P
}
££P Q
;
££Q R
}
§§ 	
}
®® 
}©© Å6
•C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.CyberArk\Handler\ICyberArkHandler.cs
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
Ä Å
true
Ç Ü
,
Ü á
string
à é
	authToken
è ò
=
ô ö
null
õ ü
)
ü †
;
† °
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
Ä Å
null
Ç Ü
)
Ü á
;
á à
}   
}!! 