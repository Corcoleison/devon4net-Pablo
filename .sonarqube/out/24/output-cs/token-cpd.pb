†'
™C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\AnsibleTowerConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Configuration' 4
{ 
public 

static 
class %
AnsibleTowerConfiguration 1
{ 
private 
static 
IHttpClientHandler )
HttpClientHandler* ;
{< =
get> A
;A B
setC F
;F G
}H I
private 
static 
AnsibleTowerOptions *
AnsibleTowerOptions+ >
{? @
getA D
;D E
setF I
;I J
}K L
public 
static 
void 
SetupAnsibleTower ,
(, -
this- 1
IServiceCollection2 D
servicesE M
,M N
refO R
IConfigurationS a
configurationb o
)o p
{ 	
AnsibleTowerOptions 
=  !
services" *
.* +
GetTypedOptions+ :
<: ;
AnsibleTowerOptions; N
>N O
(O P
configurationP ]
,] ^
$str_ m
)m n
;n o
if 
( 
AnsibleTowerOptions #
==$ &
null' +
||, .
string/ 5
.5 6
IsNullOrEmpty6 C
(C D
AnsibleTowerOptionsD W
.W X

ApiUrlBaseX b
)b c
)c d
returne k
;k l
using 
var 
serviceProvider %
=& '
services( 0
.0 1 
BuildServiceProvider1 E
(E F
)F G
;G H
HttpClientHandler 
= 
serviceProvider  /
./ 0

GetService0 :
<: ;
IHttpClientHandler; M
>M N
(N O
)O P
;P Q
var  
ansibleTowerInstance $
=% &$
GetAnsibleTowerInstances' ?
(? @
)@ A
;A B
if 
(  
ansibleTowerInstance $
==% '
null( ,
)- .
return/ 5
;5 6
services   
.   
AddSingleton   !
(  ! "
typeof  " (
(  ( )!
IAnsibleTowerInstance  ) >
)  > ?
,  ? @ 
ansibleTowerInstance  A U
)  U V
;  V W
services!! 
.!! 
AddTransient!! !
(!!! "
typeof!!" (
(!!( ) 
IAnsibleTowerHandler!!) =
)!!= >
,!!> ?
typeof!!@ F
(!!F G
AnsibleTowerHandler!!G Z
)!!Z [
)!![ \
;!!\ ]
}"" 	
private$$ 
static$$ !
IAnsibleTowerInstance$$ ,$
GetAnsibleTowerInstances$$- E
($$E F
)$$F G
{%% 	
if&& 
(&& 
AnsibleTowerOptions&& #
==&&$ &
null&&' +
||&&, .
!&&/ 0
AnsibleTowerOptions&&0 C
.&&C D
EnableAnsible&&D Q
||&&R T
string&&U [
.&&[ \
IsNullOrEmpty&&\ i
(&&i j
AnsibleTowerOptions&&j }
.&&} ~

ApiUrlBase	&&~ à
)
&&à â
)
&&â ä
return
&&ã ë
null
&&í ñ
;
&&ñ ó
var'' 
apiRequestDto'' 
='' 
HttpClientHandler''  1
.''1 2
Send''2 6
<''6 7
ApiRequestDto''7 D
>''D E
(''E F

HttpMethod''F P
.''P Q
Get''Q T
,''T U
AnsibleTowerOptions''V i
.''i j
CircuitBreakerName''j |
,''| } 
AnsibleTowerOptions	''~ ë
.
''ë í

ApiUrlBase
''í ú
,
''ú ù
null
''ù °
,
''° ¢
	MediaType
''£ ¨
.
''¨ ≠
ApplicationJson
''≠ º
)
''º Ω
.
''Ω æ
Result
''æ ƒ
;
''ƒ ≈
return(( 
new((  
AnsibleTowerInstance(( +
(((+ ,
AnsibleTowerOptions((, ?
.((? @
Name((@ D
,((D E
AnsibleTowerOptions((F Y
.((Y Z
CircuitBreakerName((Z l
,((l m 
AnsibleTowerOptions	((n Å
.
((Å Ç

ApiUrlBase
((Ç å
,
((å ç!
AnsibleTowerOptions
((é °
.
((° ¢
Version
((¢ ©
,
((© ™
apiRequestDto
((´ ∏
,
((∏ π!
AnsibleTowerOptions
((∫ Õ
.
((Õ Œ
Username
((Œ ÷
,
((÷ ◊!
AnsibleTowerOptions
((ÿ Î
.
((Î Ï
Password
((Ï Ù
)
((Ù ı
;
((ı ˆ
})) 	
}** 
}++ é
¨C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Common\AnsibleTowerInstance.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Common0 6
{ 
public 

class  
AnsibleTowerInstance %
:& '!
IAnsibleTowerInstance( =
{		 
public

 
ApiRequestDto

 
ApiDefinition
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
public 
string 
Name 
{ 
get  
;  !
}" #
public 
string 
CircuitBreakerName (
{) *
get+ .
;. /
}0 1
public 
string 

ApiUrlBase  
{! "
get# &
;& '
}( )
public 
string 
Version 
{ 
get  #
;# $
}% &
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
public  
AnsibleTowerInstance #
(# $
string$ *
name+ /
,/ 0
string1 7
circuitBreakerName8 J
,J K
stringL R

apiUrlBaseS ]
,] ^
string_ e
versionf m
,m n
ApiRequestDtoo |
apiRequestDto	} ä
,
ä ã
string
å í
username
ì õ
,
õ ú
string
ù £
password
§ ¨
)
¨ ≠
{ 	
ApiDefinition 
= 
apiRequestDto )
;) *
Name 
= 
name 
; 
CircuitBreakerName 
=  
circuitBreakerName! 3
;3 4

ApiUrlBase 
= 

apiUrlBase #
;# $
Version 
= 
version 
; 
Username 
= 
username 
;  
Password 
= 
password 
;  
} 	
} 
} ™
ØC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Common\Const\AnsibleRolesConst.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Common0 6
.6 7
Const7 <
{ 
public 

static 
class 
AnsibleRolesConst )
{ 
public 
const 
string 
Admin !
=" #
$str$ 0
;0 1
public 
const 
string 
Update "
=# $
$str% 2
;2 3
public 
const 
string 
Adhoc !
=" #
$str$ 0
;0 1
public 
const 
string 
Use 
=  !
$str" ,
;, -
public		 
const		 
string		 
Execute		 #
=		$ %
$str		& 4
;		4 5
public

 
const

 
string

 
ProjectAdmin

 (
=

) *
$str

+ ?
;

? @
public 
const 
string 
InventoryAdmin *
=+ ,
$str- C
;C D
public 
const 
string 
CredentialAdmin +
=, -
$str. E
;E F
public 
const 
string 
WorkflowAdmin )
=* +
$str, A
;A B
public 
const 
string 
NotificationAdmin -
=. /
$str0 I
;I J
public 
const 
string 
JobTemplateAdmin ,
=- .
$str/ H
;H I
public 
const 
string 
Auditor #
=$ %
$str& 4
;4 5
public 
const 
string 
Member "
=# $
$str% 2
;2 3
public 
const 
string 
Read  
=! "
$str# .
;. /
public 
const 
string 
Approval $
=% &
$str' 6
;6 7
} 
} ˚
≤C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Common\Const\AnsibleTowerApiConst.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Const0 5
{ 
public 

static 
class  
AnsibleTowerApiConst ,
{ 
public 
const 
string 
LoginUrl $
=% &
$str' 4
;4 5
public 
const 
string 
LoginTokenName *
=+ ,
$str- 8
;8 9
public 
const 
string 
LoginTokenPath *
=+ ,
$str- 3
;3 4
} 
}		 ≥
ªC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Common\Const\OrganizationRelatedLinksConst.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Common0 6
.6 7
Const7 <
{ 
public 

static 
class )
OrganizationRelatedLinksConst 5
{ 
public 
const 
string 
JobTemplates (
=) *
$str+ :
;: ;
public 
const 
string  
WorkflowJobTemplates 0
=1 2
$str3 K
;K L
public 
const 
string &
NotificationTemplatesError 6
=7 8
$str9 W
;W X
public 
const 
string (
NotificationTemplatesSuccess 8
=9 :
$str; [
;[ \
public		 
const		 
string		 *
NotificationTemplatesApprovals		 :
=		; <
$str		= _
;		_ `
public

 
const

 
string

 (
NotificationTemplatesStarted

 8
=

9 :
$str

; [
;

[ \
public 
const 
string 
ObjectRoles '
=( )
$str* 8
;8 9
public 
const 
string 
Teams !
=" #
$str$ +
;+ ,
public 
const 
string 

AccessList &
=' (
$str) 6
;6 7
public 
const 
string !
NotificationTemplates 1
=2 3
$str4 L
;L M
public 
const 
string 
Applications (
=) *
$str+ 9
;9 :
public 
const 
string 
Admins "
=# $
$str% -
;- .
public 
const 
string 
InstanceGroups *
=+ ,
$str- >
;> ?
public 
const 
string 
Credentials '
=( )
$str* 7
;7 8
public 
const 
string 
Inventories '
=( )
$str* 7
;7 8
public 
const 
string 
ActivityStream *
=+ ,
$str- >
;> ?
public 
const 
string 
Projects $
=% &
$str' 1
;1 2
public 
const 
string 
Users !
=" #
$str$ +
;+ ,
} 
} Ñ

≠C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Common\IAnsibleTowerInstance.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Common0 6
{ 
public 

	interface !
IAnsibleTowerInstance *
{ 
string 
Name 
{ 
get 
; 
} 
string		 
CircuitBreakerName		 !
{		" #
get		$ '
;		' (
}		) *
string

 

ApiUrlBase

 
{

 
get

 
;

  
}

! "
string 
Version 
{ 
get 
; 
} 
ApiRequestDto 
ApiDefinition #
{$ %
get& )
;) *
}+ ,
string 
Username 
{ 
get 
; 
set "
;" #
}$ %
string 
Password 
{ 
get 
; 
set "
;" #
}$ %
} 
} £9
¢C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\ApiRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
{ 
public 

class 
ApiRequestDto 
{ 
public 
string 
ping 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
	instances 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
instance_groups %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
config 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
settings		 
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
 
me

 
{

 
get

 
;

 
set

  #
;

# $
}

% &
public 
string 
	dashboard 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
organizations #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
users 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
projects 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
project_updates %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
teams 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
credentials !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
credential_types &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string $
credential_input_sources .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
string 
applications "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
tokens 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
metrics 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	inventory 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
inventory_scripts '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
inventory_sources '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
inventory_updates '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
groups 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
hosts 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
job_templates #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
jobs 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 

job_events  
{! "
get# &
;& '
set( +
;+ ,
}- .
public   
string   
ad_hoc_commands   %
{  & '
get  ( +
;  + ,
set  - 0
;  0 1
}  2 3
public!! 
string!!  
system_job_templates!! *
{!!+ ,
get!!- 0
;!!0 1
set!!2 5
;!!5 6
}!!7 8
public"" 
string"" 
system_jobs"" !
{""" #
get""$ '
;""' (
set"") ,
;"", -
}"". /
public## 
string## 
	schedules## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
public$$ 
string$$ 
roles$$ 
{$$ 
get$$ !
;$$! "
set$$# &
;$$& '
}$$( )
public%% 
string%% "
notification_templates%% ,
{%%- .
get%%/ 2
;%%2 3
set%%4 7
;%%7 8
}%%9 :
public&& 
string&& 
notifications&& #
{&&$ %
get&&& )
;&&) *
set&&+ .
;&&. /
}&&0 1
public'' 
string'' 
labels'' 
{'' 
get'' "
;''" #
set''$ '
;''' (
}'') *
public(( 
string(( !
unified_job_templates(( +
{((, -
get((. 1
;((1 2
set((3 6
;((6 7
}((8 9
public)) 
string)) 
unified_jobs)) "
{))# $
get))% (
;))( )
set))* -
;))- .
}))/ 0
public** 
string** 
activity_stream** %
{**& '
get**( +
;**+ ,
set**- 0
;**0 1
}**2 3
public++ 
string++ "
workflow_job_templates++ ,
{++- .
get++/ 2
;++2 3
set++4 7
;++7 8
}++9 :
public,, 
string,, 
workflow_jobs,, #
{,,$ %
get,,& )
;,,) *
set,,+ .
;,,. /
},,0 1
public-- 
string-- 
workflow_approvals-- (
{--) *
get--+ .
;--. /
set--0 3
;--3 4
}--5 6
public.. 
string.. '
workflow_job_template_nodes.. 1
{..2 3
get..4 7
;..7 8
set..9 <
;..< =
}..> ?
public// 
string// 
workflow_job_nodes// (
{//) *
get//+ .
;//. /
set//0 3
;//3 4
}//5 6
}00 
}11 ñ	
∏C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Applications\ApplicationsRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Applications4 @
{ 
public 

class "
ApplicationsRequestDto '
{ 
public 
int 
? 
organization  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
client_type !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string $
authorization_grant_type .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
}		 
} ‚ 
πC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Applications\ApplicationsResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Applications4 @
{ 
public 

class #
ApplicationsResponseDto (
{ 
public 
string 
redirect_uris #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public		 
string		 
description		 !
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
 
?

 
created

  
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
string 
url 
{ 
get 
;  
set! $
;$ %
}& '
public 
Summary_Fields 
summary_fields ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
DateTime 
? 
modified !
{" #
get$ '
;' (
set) ,
;, -
}. /
public *
RelatedApplicationsResponseDto -
related. 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
client_type !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
	client_id 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
? 
organization  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
skip_authorization &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
string 
client_secret #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
type 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
id 
{ 
get 
; 
set !
;! "
}# $
public 
string $
authorization_grant_type .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
} 
public 

class 
Summary_Fields 
{ 
public 
Tokens 
tokens 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Organization 
organization (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
Common 
. 
UserCapabilities &
user_capabilities' 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
} 
public!! 

class!! *
RelatedApplicationsResponseDto!! /
{"" 
public## 
string## 
tokens## 
{## 
get## "
;##" #
set##$ '
;##' (
}##) *
public$$ 
string$$ 
activity_stream$$ %
{$$& '
get$$( +
;$$+ ,
set$$- 0
;$$0 1
}$$2 3
}%% 
}&& © 
ºC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Applications\GetApplicationsResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Applications4 @
{ 
public 

class 
RelatedApplication #
{ 
public		 
string		 
tokens		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
activity_stream

 %
{

& '
get

( +
;

+ ,
set

- 0
;

0 1
}

2 3
} 
public 

class $
SummaryFieldsApplication )
{ 
public 
Organization 
organization (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
UserCapabilities 
user_capabilities  1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
Tokens 
tokens 
{ 
get "
;" #
set$ '
;' (
}) *
} 
public 

class 
ResultApplication "
{ 
public 
int 
? 
id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
type 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
url 
{ 
get 
;  
set! $
;$ %
}& '
public 
RelatedApplication !
related" )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public $
SummaryFieldsApplication '
summary_fields( 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
DateTime 
created 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
modified  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
	client_id 
{  !
get" %
;% &
set' *
;* +
}, -
public   
string   
client_secret   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public!! 
string!! 
client_type!! !
{!!" #
get!!$ '
;!!' (
set!!) ,
;!!, -
}!!. /
public"" 
string"" 
redirect_uris"" #
{""$ %
get""& )
;"") *
set""+ .
;"". /
}""0 1
public## 
string## $
authorization_grant_type## .
{##/ 0
get##1 4
;##4 5
set##6 9
;##9 :
}##; <
public$$ 
bool$$ 
?$$ 
skip_authorization$$ '
{$$( )
get$$* -
;$$- .
set$$/ 2
;$$2 3
}$$4 5
public%% 
int%% 
?%% 
organization%%  
{%%! "
get%%# &
;%%& '
set%%( +
;%%+ ,
}%%- .
}&& 
}'' ‹
¶C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\Created_By.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Common4 :
{ 
public 

class 

Created_By 
{ 
public 
int 
? 
id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 

first_name  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	last_name 
{  !
get" %
;% &
set' *
;* +
}, -
}		 
}

 ˜	
¨C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\CredentialSubset.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Common4 :
{ 
public 

class 
CredentialSubset !
{ 
public 
int 
? 
id 
{ 
get 
; 
set !
;! "
}# $
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
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
kind 
{ 
get  
;  !
set" %
;% &
}' (
public		 
bool		 
cloud		 
{		 
get		 
;		  
set		! $
;		$ %
}		& '
}

 
} À
¢C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\Labels.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Common4 :
{ 
public 

class 
Labels 
{ 
public 
int 
? 
count 
{ 
get 
;  
set! $
;$ %
}& '
public 
List 
< 
object 
> 
results #
{$ %
get& )
;) *
set+ .
;. /
}0 1
}		 
}

 ﬁ
ßC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\Modified_By.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Common4 :
{ 
public 

class 
Modified_By 
{ 
public 
int 
? 
id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 

first_name  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
	last_name 
{  !
get" %
;% &
set' *
;* +
}, -
}		 
}

 ¿
®C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\Organization.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Common4 :
{ 
public 

class 
Organization 
{ 
public 
int 
? 
id 
{ 
get 
; 
set !
;! "
}# $
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
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
}		 ø	
ÆC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\PaginatedResultDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Common4 :
{ 
public 

class 
PaginatedResultDto #
<# $
T$ %
>% &
{ 
public 
int 
? 
count 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
next 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
previous		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
List

 
<

 
T

 
>

 
results

 
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
} 
} ƒ
´C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\PingResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Common4 :
{ 
public 

class 
PingResponseDto  
{ 
public		 
bool		 
ha		 
{		 
get		 
;		 
set		 !
;		! "
}		# $
public

 
string

 
version
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
public 
string 
active_node !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
install_uuid "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
List 
< 
Instance 
> 
	instances '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
List 
< 
Instance_Groups #
># $
instance_groups% 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
public 

class 
Instance 
{ 
public 
string 
node 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
uuid 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
	heartbeat !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
capacity 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
version 
{ 
get  #
;# $
set% (
;( )
}* +
} 
public 

class 
Instance_Groups  
{ 
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
capacity 
{ 
get !
;! "
set# &
;& '
}( )
public 
List 
< 
string 
> 
	instances %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
}   ∫
•C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\RoleItems.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Common4 :
{ 
public 

class 
	RoleItems 
{ 
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
id 
{ 
get 
; 
set !
;! "
}# $
} 
}		 Ã
¢C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\Tokens.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Common4 :
{ 
public 

class 
Tokens 
{ 
public 
int 
? 
count 
{ 
get 
;  
set! $
;$ %
}& '
public 
IList 
< 
object 
> 
results $
{% &
get' *
;* +
set, /
;/ 0
}1 2
}		 
}

 ˚

¨C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\UserCapabilities.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Common4 :
{ 
public 

class 
UserCapabilities !
{ 
public 
bool 
edit 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
delete 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
copy 
{ 
get 
; 
set  #
;# $
}% &
public 
bool 
adhoc 
{ 
get 
;  
set! $
;$ %
}& '
public		 
bool		 
schedule		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
bool

 
start

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
} 
} ∑
ªC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Credentials\CreateCredentialRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Credentials4 ?
{ 
public 

class &
CreateCredentialRequestDto +
{ 
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
int		 
?		 
organization		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
int

 
?

 
credential_type

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
IDictionary 
< 
string !
,! "
string# )
>) *
inputs+ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
int 
? 
user 
{ 
get 
; 
set  #
;# $
}% &
} 
} ó7
∫C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Credentials\GetCredentialsResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Credentials4 ?
{ 
public 

class %
GetCredentialsResponseDto *
{		 
public

 

Dictionary

 
<

 
string

  
,

  !
string

! '
>

' (
inputs

) /
{

0 1
get

2 5
;

5 6
set

7 :
;

: ;
}

< =
public 
object 
kind 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
? 

kubernetes 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
created 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
url 
{ 
get 
;  
set! $
;$ %
}& '
public #
SummaryFieldsCredential &
summary_fields' 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
public 
DateTime 
modified  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
RelatedCredential  
related! (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
? 
credential_type #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
int 
? 
organization  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
type 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
id 
{ 
get 
; 
set !
;! "
}# $
public 
bool 
? 
cloud 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
} 
public 

class #
SummaryFieldsCredential (
{ 
public 
UserCapabilities 
user_capabilities  1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
Credential_Type 
credential_type .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
Owner 
[ 
] 
owners 
{ 
get  #
;# $
set% (
;( )
}* +
public   
Organization   
organization   (
{  ) *
get  + .
;  . /
set  0 3
;  3 4
}  5 6
public!! 

Dictionary!! 
<!! 
string!!  
,!!  !
	RoleItems!!" +
>!!+ ,
object_roles!!- 9
{!!: ;
get!!< ?
;!!? @
set!!A D
;!!D E
}!!F G
}"" 
public$$ 

class$$ 
Credential_Type$$  
{%% 
public&& 
string&& 
description&& !
{&&" #
get&&$ '
;&&' (
set&&) ,
;&&, -
}&&. /
public'' 
string'' 
name'' 
{'' 
get''  
;''  !
set''" %
;''% &
}''' (
public(( 
int(( 
?(( 
id(( 
{(( 
get(( 
;(( 
set(( !
;((! "
}((# $
})) 
public++ 

class++ 
Owner++ 
{,, 
public-- 
string-- 
url-- 
{-- 
get-- 
;--  
set--! $
;--$ %
}--& '
public.. 
string.. 
type.. 
{.. 
get..  
;..  !
set.." %
;..% &
}..' (
public// 
string// 
description// !
{//" #
get//$ '
;//' (
set//) ,
;//, -
}//. /
public00 
string00 
name00 
{00 
get00  
;00  !
set00" %
;00% &
}00' (
public11 
int11 
?11 
id11 
{11 
get11 
;11 
set11 !
;11! "
}11# $
}22 
public44 

class44 
RelatedCredential44 "
{55 
public66 
string66 
input_sources66 #
{66$ %
get66& )
;66) *
set66+ .
;66. /
}660 1
public77 
string77 
object_roles77 "
{77# $
get77% (
;77( )
set77* -
;77- .
}77/ 0
public88 
string88 
access_list88 !
{88" #
get88$ '
;88' (
set88) ,
;88, -
}88. /
public99 
string99 
credential_type99 %
{99& '
get99( +
;99+ ,
set99- 0
;990 1
}992 3
public:: 
string:: 
owner_users:: !
{::" #
get::$ '
;::' (
set::) ,
;::, -
}::. /
public;; 
string;; 
owner_teams;; !
{;;" #
get;;$ '
;;;' (
set;;) ,
;;;, -
};;. /
public<< 
string<< 
organization<< "
{<<# $
get<<% (
;<<( )
set<<* -
;<<- .
}<</ 0
public== 
string== 
copy== 
{== 
get==  
;==  !
set==" %
;==% &
}==' (
public>> 
string>> 
activity_stream>> %
{>>& '
get>>( +
;>>+ ,
set>>- 0
;>>0 1
}>>2 3
}?? 
}@@ Ü	
∫C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Inventories\CreateInventoryRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Inventories4 ?
{ 
public 

class %
CreateInventoryRequestDto *
{ 
public 
string 
host_filter !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
? 
organization  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
kind 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
}		 
}

 ˜?
∫C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Inventories\GetInventoriesResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Inventories4 ?
{ 
public 

class 
ResultInventoryDto #
{ 
public		 
int		 
?		 
id		 
{		 
get		 
;		 
set		 !
;		! "
}		# $
public

 
string

 
type

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 
url 
{ 
get 
;  
set! $
;$ %
}& '
public 
RelatedInventories !
related" )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public $
SummaryFieldsInventories '
summary_fields( 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
DateTime 
? 
created  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTime 
? 
modified !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
? 
organization  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
kind 
{ 
get  
;  !
set" %
;% &
}' (
public 
object 
host_filter !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
	variables 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
has_active_failures '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
int 
? 
total_hosts 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
? &
hosts_with_active_failures .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
int 
? 
total_groups  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool !
has_inventory_sources )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
int 
? #
total_inventory_sources +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
int 
? +
inventory_sources_with_failures 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
object 
insights_credential )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
bool 
pending_deletion $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
public!! 

class!! 
RelatedInventories!! #
{"" 
public## 
string## 

created_by##  
{##! "
get### &
;##& '
set##( +
;##+ ,
}##- .
public$$ 
string$$ 
modified_by$$ !
{$$" #
get$$$ '
;$$' (
set$$) ,
;$$, -
}$$. /
public%% 
string%% 
hosts%% 
{%% 
get%% !
;%%! "
set%%# &
;%%& '
}%%( )
public&& 
string&& 
groups&& 
{&& 
get&& "
;&&" #
set&&$ '
;&&' (
}&&) *
public'' 
string'' 
root_groups'' !
{''" #
get''$ '
;''' (
set'') ,
;'', -
}''. /
public(( 
string(( 
variable_data(( #
{(($ %
get((& )
;(() *
set((+ .
;((. /
}((0 1
public)) 
string)) 
script)) 
{)) 
get)) "
;))" #
set))$ '
;))' (
}))) *
public** 
string** 
tree** 
{** 
get**  
;**  !
set**" %
;**% &
}**' (
public++ 
string++ 
inventory_sources++ '
{++( )
get++* -
;++- .
set++/ 2
;++2 3
}++4 5
public,, 
string,, $
update_inventory_sources,, .
{,,/ 0
get,,1 4
;,,4 5
set,,6 9
;,,9 :
},,; <
public-- 
string-- 
activity_stream-- %
{--& '
get--( +
;--+ ,
set--- 0
;--0 1
}--2 3
public.. 
string.. 
job_templates.. #
{..$ %
get..& )
;..) *
set..+ .
;... /
}..0 1
public// 
string// 
ad_hoc_commands// %
{//& '
get//( +
;//+ ,
set//- 0
;//0 1
}//2 3
public00 
string00 
access_list00 !
{00" #
get00$ '
;00' (
set00) ,
;00, -
}00. /
public11 
string11 
object_roles11 "
{11# $
get11% (
;11( )
set11* -
;11- .
}11/ 0
public22 
string22 
instance_groups22 %
{22& '
get22( +
;22+ ,
set22- 0
;220 1
}222 3
public33 
string33 
copy33 
{33 
get33  
;33  !
set33" %
;33% &
}33' (
public44 
string44 
organization44 "
{44# $
get44% (
;44( )
set44* -
;44- .
}44/ 0
}55 
public77 

class77 $
SummaryFieldsInventories77 )
{88 
public99 
Organization99 
organization99 (
{99) *
get99+ .
;99. /
set990 3
;993 4
}995 6
public:: 

Created_By:: 

created_by:: $
{::% &
get::' *
;::* +
set::, /
;::/ 0
}::1 2
public;; 
Modified_By;; 
modified_by;; &
{;;' (
get;;) ,
;;;, -
set;;. 1
;;;1 2
};;3 4
public<< 

Dictionary<< 
<<< 
string<<  
,<<  !
	RoleItems<<" +
><<+ ,
object_roles<<- 9
{<<: ;
get<<< ?
;<<? @
set<<A D
;<<D E
}<<F G
public== 
UserCapabilities== 
user_capabilities==  1
{==2 3
get==4 7
;==7 8
set==9 <
;==< =
}==> ?
}>> 
}?? ï
±C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Jobs\GetCanCancelResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Jobs4 8
{ 
public 

class #
GetCanCancelResponseDto (
{ 
public 
bool 

can_cancel 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ë
≥C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Jobs\GetCanScheduleResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Jobs4 8
{ 
public 

class %
GetCanScheduleResponseDto *
{		 
public

 
bool

 
can_schedule

  
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
public 
Prompts 
prompts 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
public 

class 
Prompts 
{ 
} 
} ¸û
±C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Jobs\GetJobEventsResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Jobs4 8
{ 
public 

class #
GetJobEventsResponseDto (
{ 
public 
int 
? 
id 
{ 
get 
; 
set !
;! "
}# $
public		 
string		 
type		 
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
 
url

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
Related_job_events !
related" )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public %
Summary_Fields_job_events (
summary_fields) 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
DateTime 
created 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
modified  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
? 
job 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
_event 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
? 
counter 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
event_display #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 

Event_Data 

event_data $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
? 
event_level 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
failed 
{ 
get  
;  !
set" %
;% &
}' (
public 
bool 
changed 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
uuid 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
parent_uuid !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
? 
host 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
	host_name 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
playbook 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
play 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
task 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
role 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
stdout 
{ 
get "
;" #
set$ '
;' (
}) *
public   
int   
?   

start_line   
{    
get  ! $
;  $ %
set  & )
;  ) *
}  + ,
public!! 
int!! 
?!! 
end_line!! 
{!! 
get!! "
;!!" #
set!!$ '
;!!' (
}!!) *
public"" 
int"" 
?"" 
	verbosity"" 
{"" 
get""  #
;""# $
set""% (
;""( )
}""* +
}## 
public%% 

class%% 
Related_job_events%% #
{&& 
public'' 
string'' 
job'' 
{'' 
get'' 
;''  
set''! $
;''$ %
}''& '
public(( 
string(( 
children(( 
{((  
get((! $
;(($ %
set((& )
;(() *
}((+ ,
public)) 
string)) 
host)) 
{)) 
get))  
;))  !
set))" %
;))% &
}))' (
}** 
public,, 

class,, %
Summary_Fields_job_events,, *
{-- 
public.. 
Job.. 
job.. 
{.. 
get.. 
;.. 
set.. !
;..! "
}..# $
public// 
object// 
role// 
{// 
get//  
;//  !
set//" %
;//% &
}//' (
public00 
Host00 
host00 
{00 
get00 
;00 
set00  #
;00# $
}00% &
}11 
public33 

class33 
Job33 
{44 
public55 
int55 
?55 
id55 
{55 
get55 
;55 
set55 !
;55! "
}55# $
public66 
string66 
name66 
{66 
get66  
;66  !
set66" %
;66% &
}66' (
public77 
string77 
description77 !
{77" #
get77$ '
;77' (
set77) ,
;77, -
}77. /
public88 
string88 
status88 
{88 
get88 "
;88" #
set88$ '
;88' (
}88) *
public99 
bool99 
failed99 
{99 
get99  
;99  !
set99" %
;99% &
}99' (
public:: 
float:: 
?:: 
elapsed:: 
{:: 
get::  #
;::# $
set::% (
;::( )
}::* +
public;; 
string;; 
type;; 
{;; 
get;;  
;;;  !
set;;" %
;;;% &
};;' (
public<< 
int<< 
?<< 
job_template_id<< #
{<<$ %
get<<& )
;<<) *
set<<+ .
;<<. /
}<<0 1
public== 
string== 
job_template_name== '
{==( )
get==* -
;==- .
set==/ 2
;==2 3
}==4 5
}>> 
publicAA 

classAA 
HostAA 
{BB 
publicCC 
intCC 
?CC 
idCC 
{CC 
getCC 
;CC 
setCC !
;CC! "
}CC# $
publicDD 
stringDD 
nameDD 
{DD 
getDD  
;DD  !
setDD" %
;DD% &
}DD' (
publicEE 
stringEE 
descriptionEE !
{EE" #
getEE$ '
;EE' (
setEE) ,
;EE, -
}EE. /
}FF 
publicHH 

classHH 

Event_DataHH 
{II 
publicJJ 
stringJJ 
playbookJJ 
{JJ  
getJJ! $
;JJ$ %
setJJ& )
;JJ) *
}JJ+ ,
publicKK 
stringKK 
playbook_uuidKK #
{KK$ %
getKK& )
;KK) *
setKK+ .
;KK. /
}KK0 1
publicLL 
stringLL 
uuidLL 
{LL 
getLL  
;LL  !
setLL" %
;LL% &
}LL' (
publicMM 
stringMM 
playMM 
{MM 
getMM  
;MM  !
setMM" %
;MM% &
}MM' (
publicNN 
stringNN 
	play_uuidNN 
{NN  !
getNN" %
;NN% &
setNN' *
;NN* +
}NN, -
publicOO 
stringOO 
play_patternOO "
{OO# $
getOO% (
;OO( )
setOO* -
;OO- .
}OO/ 0
publicPP 
stringPP 
namePP 
{PP 
getPP  
;PP  !
setPP" %
;PP% &
}PP' (
publicQQ 
stringQQ 
patternQQ 
{QQ 
getQQ  #
;QQ# $
setQQ% (
;QQ( )
}QQ* +
publicRR 
stringRR 
taskRR 
{RR 
getRR  
;RR  !
setRR" %
;RR% &
}RR' (
publicSS 
stringSS 
	task_uuidSS 
{SS  !
getSS" %
;SS% &
setSS' *
;SS* +
}SS, -
publicTT 
stringTT 
task_actionTT !
{TT" #
getTT$ '
;TT' (
setTT) ,
;TT, -
}TT. /
publicUU 
stringUU 
	task_argsUU 
{UU  !
getUU" %
;UU% &
setUU' *
;UU* +
}UU, -
publicVV 
stringVV 
	task_pathVV 
{VV  !
getVV" %
;VV% &
setVV' *
;VV* +
}VV, -
publicWW 
stringWW 
hostWW 
{WW 
getWW  
;WW  !
setWW" %
;WW% &
}WW' (
publicXX 
boolXX 
is_conditionalXX "
{XX# $
getXX% (
;XX( )
setXX* -
;XX- .
}XX/ 0
publicYY 
stringYY 
remote_addrYY !
{YY" #
getYY$ '
;YY' (
setYY) ,
;YY, -
}YY. /
publicZZ 
ResZZ 
resZZ 
{ZZ 
getZZ 
;ZZ 
setZZ !
;ZZ! "
}ZZ# $
public[[ 
DateTime[[ 
start[[ 
{[[ 
get[[  #
;[[# $
set[[% (
;[[( )
}[[* +
public\\ 
DateTime\\ 
end\\ 
{\\ 
get\\ !
;\\! "
set\\# &
;\\& '
}\\( )
public]] 
float]] 
?]] 
duration]] 
{]]  
get]]! $
;]]$ %
set]]& )
;]]) *
}]]+ ,
public^^ 
object^^ 

event_loop^^  
{^^! "
get^^# &
;^^& '
set^^( +
;^^+ ,
}^^- .
public__ 
object__ 
changed__ 
{__ 
get__  #
;__# $
set__% (
;__( )
}__* +
public`` 
object`` 
dark`` 
{`` 
get``  
;``  !
set``" %
;``% &
}``' (
publicaa 
objectaa 
failuresaa 
{aa  
getaa! $
;aa$ %
setaa& )
;aa) *
}aa+ ,
publicbb 
objectbb 
ignoredbb 
{bb 
getbb  #
;bb# $
setbb% (
;bb( )
}bb* +
publiccc 
Okcc 
okcc 
{cc 
getcc 
;cc 
setcc 
;cc  
}cc! "
publicdd 
	Processeddd 
	processeddd "
{dd# $
getdd% (
;dd( )
setdd* -
;dd- .
}dd/ 0
publicee 
objectee 
rescuedee 
{ee 
getee  #
;ee# $
setee% (
;ee( )
}ee* +
publicff 
objectff 
skippedff 
{ff 
getff  #
;ff# $
setff% (
;ff( )
}ff* +
publicgg 
objectgg 
artifact_datagg #
{gg$ %
getgg& )
;gg) *
setgg+ .
;gg. /
}gg0 1
}hh 
publicjj 

classjj 
Resjj 
{kk 
publicll 
stringll 
msgll 
{ll 
getll 
;ll  
setll! $
;ll$ %
}ll& '
publicmm 
boolmm #
_ansible_verbose_alwaysmm +
{mm, -
getmm. 1
;mm1 2
setmm3 6
;mm6 7
}mm8 9
publicnn 
boolnn 
_ansible_no_lognn #
{nn$ %
getnn& )
;nn) *
setnn+ .
;nn. /
}nn0 1
publicoo 
booloo 
changedoo 
{oo 
getoo !
;oo! "
setoo# &
;oo& '
}oo( )
publicpp 
Ansible_Factspp 
ansible_factspp *
{pp+ ,
getpp- 0
;pp0 1
setpp2 5
;pp5 6
}pp7 8
publicqq 
objectqq 
[qq 
]qq 
warningsqq  
{qq! "
getqq# &
;qq& '
setqq( +
;qq+ ,
}qq- .
publicrr 
objectrr 
[rr 
]rr 
deprecationsrr $
{rr% &
getrr' *
;rr* +
setrr, /
;rr/ 0
}rr1 2
publicss 
boolss %
_ansible_verbose_overridess -
{ss. /
getss0 3
;ss3 4
setss5 8
;ss8 9
}ss: ;
}tt 
publicvv 

classvv 
Ansible_Factsvv 
{ww 
publicxx 
stringxx '
ansible_virtualization_typexx 1
{xx2 3
getxx4 7
;xx7 8
setxx9 <
;xx< =
}xx> ?
publicyy 
stringyy '
ansible_virtualization_roleyy 1
{yy2 3
getyy4 7
;yy7 8
setyy9 <
;yy< =
}yy> ?
publiczz 
stringzz 
ansible_systemzz $
{zz% &
getzz' *
;zz* +
setzz, /
;zz/ 0
}zz1 2
public{{ 
string{{ 
ansible_kernel{{ $
{{{% &
get{{' *
;{{* +
set{{, /
;{{/ 0
}{{1 2
public|| 
string|| "
ansible_kernel_version|| ,
{||- .
get||/ 2
;||2 3
set||4 7
;||7 8
}||9 :
public}} 
string}} 
ansible_machine}} %
{}}& '
get}}( +
;}}+ ,
set}}- 0
;}}0 1
}}}2 3
public~~ 
string~~ "
ansible_python_version~~ ,
{~~- .
get~~/ 2
;~~2 3
set~~4 7
;~~7 8
}~~9 :
public 
string 
ansible_fqdn "
{# $
get% (
;( )
set* -
;- .
}/ 0
public
ÄÄ 
string
ÄÄ 
ansible_hostname
ÄÄ &
{
ÄÄ' (
get
ÄÄ) ,
;
ÄÄ, -
set
ÄÄ. 1
;
ÄÄ1 2
}
ÄÄ3 4
public
ÅÅ 
string
ÅÅ 
ansible_nodename
ÅÅ &
{
ÅÅ' (
get
ÅÅ) ,
;
ÅÅ, -
set
ÅÅ. 1
;
ÅÅ1 2
}
ÅÅ3 4
public
ÇÇ 
string
ÇÇ 
ansible_domain
ÇÇ $
{
ÇÇ% &
get
ÇÇ' *
;
ÇÇ* +
set
ÇÇ, /
;
ÇÇ/ 0
}
ÇÇ1 2
public
ÉÉ 
string
ÉÉ $
ansible_userspace_bits
ÉÉ ,
{
ÉÉ- .
get
ÉÉ/ 2
;
ÉÉ2 3
set
ÉÉ4 7
;
ÉÉ7 8
}
ÉÉ9 :
public
ÑÑ 
string
ÑÑ "
ansible_architecture
ÑÑ *
{
ÑÑ+ ,
get
ÑÑ- 0
;
ÑÑ0 1
set
ÑÑ2 5
;
ÑÑ5 6
}
ÑÑ7 8
public
ÖÖ 
string
ÖÖ ,
ansible_userspace_architecture
ÖÖ 4
{
ÖÖ5 6
get
ÖÖ7 :
;
ÖÖ: ;
set
ÖÖ< ?
;
ÖÖ? @
}
ÖÖA B
public
ÜÜ 
string
ÜÜ  
ansible_machine_id
ÜÜ (
{
ÜÜ) *
get
ÜÜ+ .
;
ÜÜ. /
set
ÜÜ0 3
;
ÜÜ3 4
}
ÜÜ5 6
public
áá 
string
áá "
ansible_distribution
áá *
{
áá+ ,
get
áá- 0
;
áá0 1
set
áá2 5
;
áá5 6
}
áá7 8
public
àà 
string
àà *
ansible_distribution_release
àà 2
{
àà3 4
get
àà5 8
;
àà8 9
set
àà: =
;
àà= >
}
àà? @
public
ââ 
string
ââ *
ansible_distribution_version
ââ 2
{
ââ3 4
get
ââ5 8
;
ââ8 9
set
ââ: =
;
ââ= >
}
ââ? @
public
ää 
string
ää 0
"ansible_distribution_major_version
ää 8
{
ää9 :
get
ää; >
;
ää> ?
set
ää@ C
;
ääC D
}
ääE F
public
ãã 
string
ãã ,
ansible_distribution_file_path
ãã 4
{
ãã5 6
get
ãã7 :
;
ãã: ;
set
ãã< ?
;
ãã? @
}
ããA B
public
åå 
string
åå /
!ansible_distribution_file_variety
åå 7
{
åå8 9
get
åå: =
;
åå= >
set
åå? B
;
ååB C
}
ååD E
public
çç 
bool
çç .
 ansible_distribution_file_parsed
çç 4
{
çç5 6
get
çç7 :
;
çç: ;
set
çç< ?
;
çç? @
}
ççA B
public
éé 
string
éé 
ansible_os_family
éé '
{
éé( )
get
éé* -
;
éé- .
set
éé/ 2
;
éé2 3
}
éé4 5
public
èè 
string
èè 
ansible_user_id
èè %
{
èè& '
get
èè( +
;
èè+ ,
set
èè- 0
;
èè0 1
}
èè2 3
public
êê 
int
êê 
?
êê 
ansible_user_uid
êê $
{
êê% &
get
êê' *
;
êê* +
set
êê, /
;
êê/ 0
}
êê1 2
public
ëë 
int
ëë 
?
ëë 
ansible_user_gid
ëë $
{
ëë% &
get
ëë' *
;
ëë* +
set
ëë, /
;
ëë/ 0
}
ëë1 2
public
íí 
string
íí  
ansible_user_gecos
íí (
{
íí) *
get
íí+ .
;
íí. /
set
íí0 3
;
íí3 4
}
íí5 6
public
ìì 
string
ìì 
ansible_user_dir
ìì &
{
ìì' (
get
ìì) ,
;
ìì, -
set
ìì. 1
;
ìì1 2
}
ìì3 4
public
îî 
string
îî  
ansible_user_shell
îî (
{
îî) *
get
îî+ .
;
îî. /
set
îî0 3
;
îî3 4
}
îî5 6
public
ïï 
int
ïï 
?
ïï "
ansible_real_user_id
ïï (
{
ïï) *
get
ïï+ .
;
ïï. /
set
ïï0 3
;
ïï3 4
}
ïï5 6
public
ññ 
int
ññ 
?
ññ '
ansible_effective_user_id
ññ -
{
ññ. /
get
ññ0 3
;
ññ3 4
set
ññ5 8
;
ññ8 9
}
ññ: ;
public
óó 
int
óó 
?
óó #
ansible_real_group_id
óó )
{
óó* +
get
óó, /
;
óó/ 0
set
óó1 4
;
óó4 5
}
óó6 7
public
òò 
int
òò 
?
òò (
ansible_effective_group_id
òò .
{
òò/ 0
get
òò1 4
;
òò4 5
set
òò6 9
;
òò9 :
}
òò; <
public
ôô 
bool
ôô 
ansible_is_chroot
ôô %
{
ôô& '
get
ôô( +
;
ôô+ ,
set
ôô- 0
;
ôô0 1
}
ôô2 3
public
öö 
Ansible_Dns
öö 
ansible_dns
öö &
{
öö' (
get
öö) ,
;
öö, -
set
öö. 1
;
öö1 2
}
öö3 4
public
õõ 
string
õõ 2
$ansible_system_capabilities_enforced
õõ :
{
õõ; <
get
õõ= @
;
õõ@ A
set
õõB E
;
õõE F
}
õõG H
public
úú 
string
úú 
[
úú 
]
úú )
ansible_system_capabilities
úú 3
{
úú4 5
get
úú6 9
;
úú9 :
set
úú; >
;
úú> ?
}
úú@ A
public
ùù 
object
ùù 
[
ùù 
]
ùù '
ansible_fibre_channel_wwn
ùù 1
{
ùù2 3
get
ùù4 7
;
ùù7 8
set
ùù9 <
;
ùù< =
}
ùù> ?
public
ûû 
string
ûû 
[
ûû 
]
ûû 
ansible_processor
ûû )
{
ûû* +
get
ûû, /
;
ûû/ 0
set
ûû1 4
;
ûû4 5
}
ûû6 7
public
üü 
int
üü 
?
üü %
ansible_processor_count
üü +
{
üü, -
get
üü. 1
;
üü1 2
set
üü3 6
;
üü6 7
}
üü8 9
public
†† 
int
†† 
?
†† %
ansible_processor_cores
†† +
{
††, -
get
††. 1
;
††1 2
set
††3 6
;
††6 7
}
††8 9
public
°° 
int
°° 
?
°° 0
"ansible_processor_threads_per_core
°° 6
{
°°7 8
get
°°9 <
;
°°< =
set
°°> A
;
°°A B
}
°°C D
public
¢¢ 
int
¢¢ 
?
¢¢ %
ansible_processor_vcpus
¢¢ +
{
¢¢, -
get
¢¢. 1
;
¢¢1 2
set
¢¢3 6
;
¢¢6 7
}
¢¢8 9
public
££ 
int
££ 
?
££ !
ansible_memtotal_mb
££ '
{
££( )
get
££* -
;
££- .
set
££/ 2
;
££2 3
}
££4 5
public
§§ 
int
§§ 
?
§§  
ansible_memfree_mb
§§ &
{
§§' (
get
§§) ,
;
§§, -
set
§§. 1
;
§§1 2
}
§§3 4
public
•• 
int
•• 
?
•• "
ansible_swaptotal_mb
•• (
{
••) *
get
••+ .
;
••. /
set
••0 3
;
••3 4
}
••5 6
public
¶¶ 
int
¶¶ 
?
¶¶ !
ansible_swapfree_mb
¶¶ '
{
¶¶( )
get
¶¶* -
;
¶¶- .
set
¶¶/ 2
;
¶¶2 3
}
¶¶4 5
public
ßß 
Ansible_Memory_Mb
ßß  
ansible_memory_mb
ßß! 2
{
ßß3 4
get
ßß5 8
;
ßß8 9
set
ßß: =
;
ßß= >
}
ßß? @
public
®® 
string
®® 
ansible_bios_date
®® '
{
®®( )
get
®®* -
;
®®- .
set
®®/ 2
;
®®2 3
}
®®4 5
public
©© 
string
©© "
ansible_bios_version
©© *
{
©©+ ,
get
©©- 0
;
©©0 1
set
©©2 5
;
©©5 6
}
©©7 8
public
™™ 
string
™™ !
ansible_form_factor
™™ )
{
™™* +
get
™™, /
;
™™/ 0
set
™™1 4
;
™™4 5
}
™™6 7
public
´´ 
string
´´ "
ansible_product_name
´´ *
{
´´+ ,
get
´´- 0
;
´´0 1
set
´´2 5
;
´´5 6
}
´´7 8
public
¨¨ 
string
¨¨ $
ansible_product_serial
¨¨ ,
{
¨¨- .
get
¨¨/ 2
;
¨¨2 3
set
¨¨4 7
;
¨¨7 8
}
¨¨9 :
public
≠≠ 
string
≠≠ "
ansible_product_uuid
≠≠ *
{
≠≠+ ,
get
≠≠- 0
;
≠≠0 1
set
≠≠2 5
;
≠≠5 6
}
≠≠7 8
public
ÆÆ 
string
ÆÆ %
ansible_product_version
ÆÆ -
{
ÆÆ. /
get
ÆÆ0 3
;
ÆÆ3 4
set
ÆÆ5 8
;
ÆÆ8 9
}
ÆÆ: ;
public
ØØ 
string
ØØ #
ansible_system_vendor
ØØ +
{
ØØ, -
get
ØØ. 1
;
ØØ1 2
set
ØØ3 6
;
ØØ6 7
}
ØØ8 9
public
∞∞ 
Ansible_Devices
∞∞ 
ansible_devices
∞∞ .
{
∞∞/ 0
get
∞∞1 4
;
∞∞4 5
set
∞∞6 9
;
∞∞9 :
}
∞∞; <
public
±± "
Ansible_Device_Links
±± #"
ansible_device_links
±±$ 8
{
±±9 :
get
±±; >
;
±±> ?
set
±±@ C
;
±±C D
}
±±E F
public
≤≤ 
int
≤≤ 
?
≤≤ $
ansible_uptime_seconds
≤≤ *
{
≤≤+ ,
get
≤≤- 0
;
≤≤0 1
set
≤≤2 5
;
≤≤5 6
}
≤≤7 8
public
≥≥ 
Ansible_Mounts
≥≥ 
[
≥≥ 
]
≥≥ 
ansible_mounts
≥≥  .
{
≥≥/ 0
get
≥≥1 4
;
≥≥4 5
set
≥≥6 9
;
≥≥9 :
}
≥≥; <
public
¥¥ 
string
¥¥ 
[
¥¥ 
]
¥¥  
ansible_interfaces
¥¥ *
{
¥¥+ ,
get
¥¥- 0
;
¥¥0 1
set
¥¥2 5
;
¥¥5 6
}
¥¥7 8
public
µµ 
Ansible_Eth0
µµ 
ansible_eth0
µµ (
{
µµ) *
get
µµ+ .
;
µµ. /
set
µµ0 3
;
µµ3 4
}
µµ5 6
public
∂∂ 

Ansible_Lo
∂∂ 

ansible_lo
∂∂ $
{
∂∂% &
get
∂∂' *
;
∂∂* +
set
∂∂, /
;
∂∂/ 0
}
∂∂1 2
public
∑∑ "
Ansible_Default_Ipv4
∑∑ #"
ansible_default_ipv4
∑∑$ 8
{
∑∑9 :
get
∑∑; >
;
∑∑> ?
set
∑∑@ C
;
∑∑C D
}
∑∑E F
public
∏∏ 
object
∏∏ "
ansible_default_ipv6
∏∏ *
{
∏∏+ ,
get
∏∏- 0
;
∏∏0 1
set
∏∏2 5
;
∏∏5 6
}
∏∏7 8
public
ππ 
string
ππ 
[
ππ 
]
ππ (
ansible_all_ipv4_addresses
ππ 2
{
ππ3 4
get
ππ5 8
;
ππ8 9
set
ππ: =
;
ππ= >
}
ππ? @
public
∫∫ 
object
∫∫ 
[
∫∫ 
]
∫∫ (
ansible_all_ipv6_addresses
∫∫ 2
{
∫∫3 4
get
∫∫5 8
;
∫∫8 9
set
∫∫: =
;
∫∫= >
}
∫∫? @
public
ªª 
string
ªª 
ansible_hostnqn
ªª %
{
ªª& '
get
ªª( +
;
ªª+ ,
set
ªª- 0
;
ªª0 1
}
ªª2 3
public
ºº 
string
ºº 
ansible_iscsi_iqn
ºº '
{
ºº( )
get
ºº* -
;
ºº- .
set
ºº/ 2
;
ºº2 3
}
ºº4 5
public
ΩΩ 
string
ΩΩ !
ansible_service_mgr
ΩΩ )
{
ΩΩ* +
get
ΩΩ, /
;
ΩΩ/ 0
set
ΩΩ1 4
;
ΩΩ4 5
}
ΩΩ6 7
public
ææ 
bool
ææ 
ansible_fips
ææ  
{
ææ! "
get
ææ# &
;
ææ& '
set
ææ( +
;
ææ+ ,
}
ææ- .
public
øø 
Ansible_Python
øø 
ansible_python
øø ,
{
øø- .
get
øø/ 2
;
øø2 3
set
øø4 7
;
øø7 8
}
øø9 :
public
¿¿ 
string
¿¿ 
ansible_pkg_mgr
¿¿ %
{
¿¿& '
get
¿¿( +
;
¿¿+ ,
set
¿¿- 0
;
¿¿0 1
}
¿¿2 3
public
¡¡ 
Ansible_Apparmor
¡¡ 
ansible_apparmor
¡¡  0
{
¡¡1 2
get
¡¡3 6
;
¡¡6 7
set
¡¡8 ;
;
¡¡; <
}
¡¡= >
public
¬¬ 
Ansible_Date_Time
¬¬  
ansible_date_time
¬¬! 2
{
¬¬3 4
get
¬¬5 8
;
¬¬8 9
set
¬¬: =
;
¬¬= >
}
¬¬? @
public
√√ 
Ansible_Cmdline
√√ 
ansible_cmdline
√√ .
{
√√/ 0
get
√√1 4
;
√√4 5
set
√√6 9
;
√√9 :
}
√√; <
public
ƒƒ "
Ansible_Proc_Cmdline
ƒƒ #"
ansible_proc_cmdline
ƒƒ$ 8
{
ƒƒ9 :
get
ƒƒ; >
;
ƒƒ> ?
set
ƒƒ@ C
;
ƒƒC D
}
ƒƒE F
public
≈≈ 
object
≈≈ 
ansible_local
≈≈ #
{
≈≈$ %
get
≈≈& )
;
≈≈) *
set
≈≈+ .
;
≈≈. /
}
≈≈0 1
public
∆∆ 
object
∆∆ 
ansible_lsb
∆∆ !
{
∆∆" #
get
∆∆$ '
;
∆∆' (
set
∆∆) ,
;
∆∆, -
}
∆∆. /
public
«« 
bool
«« ,
ansible_selinux_python_present
«« 2
{
««3 4
get
««5 8
;
««8 9
set
««: =
;
««= >
}
««? @
public
»» 
Ansible_Selinux
»» 
ansible_selinux
»» .
{
»»/ 0
get
»»1 4
;
»»4 5
set
»»6 9
;
»»9 :
}
»»; <
public
…… 
string
…… 
[
…… 
]
…… 
gather_subset
…… %
{
……& '
get
……( +
;
……+ ,
set
……- 0
;
……0 1
}
……2 3
public
   
bool
   
module_setup
    
{
  ! "
get
  # &
;
  & '
set
  ( +
;
  + ,
}
  - .
}
ÀÀ 
public
ÕÕ 

class
ÕÕ 
Ansible_Dns
ÕÕ 
{
ŒŒ 
public
œœ 
string
œœ 
[
œœ 
]
œœ 
search
œœ 
{
œœ  
get
œœ! $
;
œœ$ %
set
œœ& )
;
œœ) *
}
œœ+ ,
public
–– 
string
–– 
[
–– 
]
–– 
nameservers
–– #
{
––$ %
get
––& )
;
––) *
set
––+ .
;
––. /
}
––0 1
public
—— 
Options
—— 
options
—— 
{
——  
get
——! $
;
——$ %
set
——& )
;
——) *
}
——+ ,
}
““ 
public
‘‘ 

class
‘‘ 
Options
‘‘ 
{
’’ 
public
÷÷ 
string
÷÷ 
ndots
÷÷ 
{
÷÷ 
get
÷÷ !
;
÷÷! "
set
÷÷# &
;
÷÷& '
}
÷÷( )
}
◊◊ 
public
ŸŸ 

class
ŸŸ 
Ansible_Memory_Mb
ŸŸ "
{
⁄⁄ 
public
€€ 
Real
€€ 
real
€€ 
{
€€ 
get
€€ 
;
€€ 
set
€€  #
;
€€# $
}
€€% &
public
‹‹ 
Nocache
‹‹ 
nocache
‹‹ 
{
‹‹  
get
‹‹! $
;
‹‹$ %
set
‹‹& )
;
‹‹) *
}
‹‹+ ,
public
›› 
Swap
›› 
swap
›› 
{
›› 
get
›› 
;
›› 
set
››  #
;
››# $
}
››% &
}
ﬁﬁ 
public
‡‡ 

class
‡‡ 
Real
‡‡ 
{
·· 
public
‚‚ 
int
‚‚ 
?
‚‚ 
total
‚‚ 
{
‚‚ 
get
‚‚ 
;
‚‚  
set
‚‚! $
;
‚‚$ %
}
‚‚& '
public
„„ 
int
„„ 
?
„„ 
used
„„ 
{
„„ 
get
„„ 
;
„„ 
set
„„  #
;
„„# $
}
„„% &
public
‰‰ 
int
‰‰ 
?
‰‰ 
free
‰‰ 
{
‰‰ 
get
‰‰ 
;
‰‰ 
set
‰‰  #
;
‰‰# $
}
‰‰% &
}
ÂÂ 
public
ÁÁ 

class
ÁÁ 
Nocache
ÁÁ 
{
ËË 
public
ÈÈ 
int
ÈÈ 
?
ÈÈ 
free
ÈÈ 
{
ÈÈ 
get
ÈÈ 
;
ÈÈ 
set
ÈÈ  #
;
ÈÈ# $
}
ÈÈ% &
public
ÍÍ 
int
ÍÍ 
?
ÍÍ 
used
ÍÍ 
{
ÍÍ 
get
ÍÍ 
;
ÍÍ 
set
ÍÍ  #
;
ÍÍ# $
}
ÍÍ% &
}
ÎÎ 
public
ÌÌ 

class
ÌÌ 
Swap
ÌÌ 
{
ÓÓ 
public
ÔÔ 
int
ÔÔ 
?
ÔÔ 
total
ÔÔ 
{
ÔÔ 
get
ÔÔ 
;
ÔÔ  
set
ÔÔ! $
;
ÔÔ$ %
}
ÔÔ& '
public
 
int
 
?
 
free
 
{
 
get
 
;
 
set
  #
;
# $
}
% &
public
ÒÒ 
int
ÒÒ 
?
ÒÒ 
used
ÒÒ 
{
ÒÒ 
get
ÒÒ 
;
ÒÒ 
set
ÒÒ  #
;
ÒÒ# $
}
ÒÒ% &
public
ÚÚ 
int
ÚÚ 
?
ÚÚ 
cached
ÚÚ 
{
ÚÚ 
get
ÚÚ  
;
ÚÚ  !
set
ÚÚ" %
;
ÚÚ% &
}
ÚÚ' (
}
ÛÛ 
public
ıı 

class
ıı 
Ansible_Devices
ıı  
{
ˆˆ 
public
˜˜ 
Loop1
˜˜ 
loop1
˜˜ 
{
˜˜ 
get
˜˜  
;
˜˜  !
set
˜˜" %
;
˜˜% &
}
˜˜' (
public
¯¯ 
Loop6
¯¯ 
loop6
¯¯ 
{
¯¯ 
get
¯¯  
;
¯¯  !
set
¯¯" %
;
¯¯% &
}
¯¯' (
public
˘˘ 
Loop4
˘˘ 
loop4
˘˘ 
{
˘˘ 
get
˘˘  
;
˘˘  !
set
˘˘" %
;
˘˘% &
}
˘˘' (
public
˙˙ 
Sr0
˙˙ 
sr0
˙˙ 
{
˙˙ 
get
˙˙ 
;
˙˙ 
set
˙˙ !
;
˙˙! "
}
˙˙# $
public
˚˚ 
Loop2
˚˚ 
loop2
˚˚ 
{
˚˚ 
get
˚˚  
;
˚˚  !
set
˚˚" %
;
˚˚% &
}
˚˚' (
public
¸¸ 
Loop0
¸¸ 
loop0
¸¸ 
{
¸¸ 
get
¸¸  
;
¸¸  !
set
¸¸" %
;
¸¸% &
}
¸¸' (
public
˝˝ 
Loop7
˝˝ 
loop7
˝˝ 
{
˝˝ 
get
˝˝  
;
˝˝  !
set
˝˝" %
;
˝˝% &
}
˝˝' (
public
˛˛ 
Sda
˛˛ 
sda
˛˛ 
{
˛˛ 
get
˛˛ 
;
˛˛ 
set
˛˛ !
;
˛˛! "
}
˛˛# $
public
ˇˇ 
Loop5
ˇˇ 
loop5
ˇˇ 
{
ˇˇ 
get
ˇˇ  
;
ˇˇ  !
set
ˇˇ" %
;
ˇˇ% &
}
ˇˇ' (
public
ÄÄ 
Loop3
ÄÄ 
loop3
ÄÄ 
{
ÄÄ 
get
ÄÄ  
;
ÄÄ  !
set
ÄÄ" %
;
ÄÄ% &
}
ÄÄ' (
}
ÅÅ 
public
ÉÉ 

class
ÉÉ 
Loop1
ÉÉ 
{
ÑÑ 
public
ÖÖ 
int
ÖÖ 
?
ÖÖ 
_virtual
ÖÖ 
{
ÖÖ 
get
ÖÖ "
;
ÖÖ" #
set
ÖÖ$ '
;
ÖÖ' (
}
ÖÖ) *
public
ÜÜ 
Links
ÜÜ 
links
ÜÜ 
{
ÜÜ 
get
ÜÜ  
;
ÜÜ  !
set
ÜÜ" %
;
ÜÜ% &
}
ÜÜ' (
public
áá 
object
áá 
vendor
áá 
{
áá 
get
áá "
;
áá" #
set
áá$ '
;
áá' (
}
áá) *
public
àà 
object
àà 
model
àà 
{
àà 
get
àà !
;
àà! "
set
àà# &
;
àà& '
}
àà( )
public
ââ 
object
ââ 
sas_address
ââ !
{
ââ" #
get
ââ$ '
;
ââ' (
set
ââ) ,
;
ââ, -
}
ââ. /
public
ää 
object
ää 
sas_device_handle
ää '
{
ää( )
get
ää* -
;
ää- .
set
ää/ 2
;
ää2 3
}
ää4 5
public
ãã 
string
ãã 
	removable
ãã 
{
ãã  !
get
ãã" %
;
ãã% &
set
ãã' *
;
ãã* +
}
ãã, -
public
åå 
string
åå 
support_discard
åå %
{
åå& '
get
åå( +
;
åå+ ,
set
åå- 0
;
åå0 1
}
åå2 3
public
çç 
object
çç 

partitions
çç  
{
çç! "
get
çç# &
;
çç& '
set
çç( +
;
çç+ ,
}
çç- .
public
éé 
string
éé 

rotational
éé  
{
éé! "
get
éé# &
;
éé& '
set
éé( +
;
éé+ ,
}
éé- .
public
èè 
string
èè 
scheduler_mode
èè $
{
èè% &
get
èè' *
;
èè* +
set
èè, /
;
èè/ 0
}
èè1 2
public
êê 
string
êê 
sectors
êê 
{
êê 
get
êê  #
;
êê# $
set
êê% (
;
êê( )
}
êê* +
public
ëë 
string
ëë 

sectorsize
ëë  
{
ëë! "
get
ëë# &
;
ëë& '
set
ëë( +
;
ëë+ ,
}
ëë- .
public
íí 
string
íí 
size
íí 
{
íí 
get
íí  
;
íí  !
set
íí" %
;
íí% &
}
íí' (
public
ìì 
string
ìì 
host
ìì 
{
ìì 
get
ìì  
;
ìì  !
set
ìì" %
;
ìì% &
}
ìì' (
public
îî 
object
îî 
[
îî 
]
îî 
holders
îî 
{
îî  !
get
îî" %
;
îî% &
set
îî' *
;
îî* +
}
îî, -
}
ïï 
public
óó 

class
óó 
Links
óó 
{
òò 
public
ôô 
object
ôô 
[
ôô 
]
ôô 
ids
ôô 
{
ôô 
get
ôô !
;
ôô! "
set
ôô# &
;
ôô& '
}
ôô( )
public
öö 
object
öö 
[
öö 
]
öö 
uuids
öö 
{
öö 
get
öö  #
;
öö# $
set
öö% (
;
öö( )
}
öö* +
public
õõ 
object
õõ 
[
õõ 
]
õõ 
labels
õõ 
{
õõ  
get
õõ! $
;
õõ$ %
set
õõ& )
;
õõ) *
}
õõ+ ,
public
úú 
object
úú 
[
úú 
]
úú 
masters
úú 
{
úú  !
get
úú" %
;
úú% &
set
úú' *
;
úú* +
}
úú, -
}
ùù 
public
üü 

class
üü 
Loop6
üü 
{
†† 
public
°° 
int
°° 
?
°° 
_virtual
°° 
{
°° 
get
°° "
;
°°" #
set
°°$ '
;
°°' (
}
°°) *
public
¢¢ 
Links1
¢¢ 
links
¢¢ 
{
¢¢ 
get
¢¢ !
;
¢¢! "
set
¢¢# &
;
¢¢& '
}
¢¢( )
public
££ 
object
££ 
vendor
££ 
{
££ 
get
££ "
;
££" #
set
££$ '
;
££' (
}
££) *
public
§§ 
object
§§ 
model
§§ 
{
§§ 
get
§§ !
;
§§! "
set
§§# &
;
§§& '
}
§§( )
public
•• 
object
•• 
sas_address
•• !
{
••" #
get
••$ '
;
••' (
set
••) ,
;
••, -
}
••. /
public
¶¶ 
object
¶¶ 
sas_device_handle
¶¶ '
{
¶¶( )
get
¶¶* -
;
¶¶- .
set
¶¶/ 2
;
¶¶2 3
}
¶¶4 5
public
ßß 
string
ßß 
	removable
ßß 
{
ßß  !
get
ßß" %
;
ßß% &
set
ßß' *
;
ßß* +
}
ßß, -
public
®® 
string
®® 
support_discard
®® %
{
®®& '
get
®®( +
;
®®+ ,
set
®®- 0
;
®®0 1
}
®®2 3
public
©© 
object
©© 

partitions
©©  
{
©©! "
get
©©# &
;
©©& '
set
©©( +
;
©©+ ,
}
©©- .
public
™™ 
string
™™ 

rotational
™™  
{
™™! "
get
™™# &
;
™™& '
set
™™( +
;
™™+ ,
}
™™- .
public
´´ 
string
´´ 
scheduler_mode
´´ $
{
´´% &
get
´´' *
;
´´* +
set
´´, /
;
´´/ 0
}
´´1 2
public
¨¨ 
string
¨¨ 
sectors
¨¨ 
{
¨¨ 
get
¨¨  #
;
¨¨# $
set
¨¨% (
;
¨¨( )
}
¨¨* +
public
≠≠ 
string
≠≠ 

sectorsize
≠≠  
{
≠≠! "
get
≠≠# &
;
≠≠& '
set
≠≠( +
;
≠≠+ ,
}
≠≠- .
public
ÆÆ 
string
ÆÆ 
size
ÆÆ 
{
ÆÆ 
get
ÆÆ  
;
ÆÆ  !
set
ÆÆ" %
;
ÆÆ% &
}
ÆÆ' (
public
ØØ 
string
ØØ 
host
ØØ 
{
ØØ 
get
ØØ  
;
ØØ  !
set
ØØ" %
;
ØØ% &
}
ØØ' (
public
∞∞ 
object
∞∞ 
[
∞∞ 
]
∞∞ 
holders
∞∞ 
{
∞∞  !
get
∞∞" %
;
∞∞% &
set
∞∞' *
;
∞∞* +
}
∞∞, -
}
±± 
public
≥≥ 

class
≥≥ 
Links1
≥≥ 
{
¥¥ 
public
µµ 
object
µµ 
[
µµ 
]
µµ 
ids
µµ 
{
µµ 
get
µµ !
;
µµ! "
set
µµ# &
;
µµ& '
}
µµ( )
public
∂∂ 
object
∂∂ 
[
∂∂ 
]
∂∂ 
uuids
∂∂ 
{
∂∂ 
get
∂∂  #
;
∂∂# $
set
∂∂% (
;
∂∂( )
}
∂∂* +
public
∑∑ 
object
∑∑ 
[
∑∑ 
]
∑∑ 
labels
∑∑ 
{
∑∑  
get
∑∑! $
;
∑∑$ %
set
∑∑& )
;
∑∑) *
}
∑∑+ ,
public
∏∏ 
object
∏∏ 
[
∏∏ 
]
∏∏ 
masters
∏∏ 
{
∏∏  !
get
∏∏" %
;
∏∏% &
set
∏∏' *
;
∏∏* +
}
∏∏, -
}
ππ 
public
ºº 

class
ºº 
Loop4
ºº 
{
ΩΩ 
public
ææ 
int
ææ 
?
ææ 
_virtual
ææ 
{
ææ 
get
ææ "
;
ææ" #
set
ææ$ '
;
ææ' (
}
ææ) *
public
øø 
Links2
øø 
links
øø 
{
øø 
get
øø !
;
øø! "
set
øø# &
;
øø& '
}
øø( )
public
¿¿ 
object
¿¿ 
vendor
¿¿ 
{
¿¿ 
get
¿¿ "
;
¿¿" #
set
¿¿$ '
;
¿¿' (
}
¿¿) *
public
¡¡ 
object
¡¡ 
model
¡¡ 
{
¡¡ 
get
¡¡ !
;
¡¡! "
set
¡¡# &
;
¡¡& '
}
¡¡( )
public
¬¬ 
object
¬¬ 
sas_address
¬¬ !
{
¬¬" #
get
¬¬$ '
;
¬¬' (
set
¬¬) ,
;
¬¬, -
}
¬¬. /
public
√√ 
object
√√ 
sas_device_handle
√√ '
{
√√( )
get
√√* -
;
√√- .
set
√√/ 2
;
√√2 3
}
√√4 5
public
ƒƒ 
string
ƒƒ 
	removable
ƒƒ 
{
ƒƒ  !
get
ƒƒ" %
;
ƒƒ% &
set
ƒƒ' *
;
ƒƒ* +
}
ƒƒ, -
public
≈≈ 
string
≈≈ 
support_discard
≈≈ %
{
≈≈& '
get
≈≈( +
;
≈≈+ ,
set
≈≈- 0
;
≈≈0 1
}
≈≈2 3
public
∆∆ 
object
∆∆ 

partitions
∆∆  
{
∆∆! "
get
∆∆# &
;
∆∆& '
set
∆∆( +
;
∆∆+ ,
}
∆∆- .
public
«« 
string
«« 

rotational
««  
{
««! "
get
««# &
;
««& '
set
««( +
;
««+ ,
}
««- .
public
»» 
string
»» 
scheduler_mode
»» $
{
»»% &
get
»»' *
;
»»* +
set
»», /
;
»»/ 0
}
»»1 2
public
…… 
string
…… 
sectors
…… 
{
…… 
get
……  #
;
……# $
set
……% (
;
……( )
}
……* +
public
   
string
   

sectorsize
    
{
  ! "
get
  # &
;
  & '
set
  ( +
;
  + ,
}
  - .
public
ÀÀ 
string
ÀÀ 
size
ÀÀ 
{
ÀÀ 
get
ÀÀ  
;
ÀÀ  !
set
ÀÀ" %
;
ÀÀ% &
}
ÀÀ' (
public
ÃÃ 
string
ÃÃ 
host
ÃÃ 
{
ÃÃ 
get
ÃÃ  
;
ÃÃ  !
set
ÃÃ" %
;
ÃÃ% &
}
ÃÃ' (
public
ÕÕ 
object
ÕÕ 
[
ÕÕ 
]
ÕÕ 
holders
ÕÕ 
{
ÕÕ  !
get
ÕÕ" %
;
ÕÕ% &
set
ÕÕ' *
;
ÕÕ* +
}
ÕÕ, -
}
ŒŒ 
public
–– 

class
–– 
Links2
–– 
{
—— 
public
““ 
object
““ 
[
““ 
]
““ 
ids
““ 
{
““ 
get
““ !
;
““! "
set
““# &
;
““& '
}
““( )
public
”” 
object
”” 
[
”” 
]
”” 
uuids
”” 
{
”” 
get
””  #
;
””# $
set
””% (
;
””( )
}
””* +
public
‘‘ 
object
‘‘ 
[
‘‘ 
]
‘‘ 
labels
‘‘ 
{
‘‘  
get
‘‘! $
;
‘‘$ %
set
‘‘& )
;
‘‘) *
}
‘‘+ ,
public
’’ 
object
’’ 
[
’’ 
]
’’ 
masters
’’ 
{
’’  !
get
’’" %
;
’’% &
set
’’' *
;
’’* +
}
’’, -
}
÷÷ 
public
ÿÿ 

class
ÿÿ 
Sr0
ÿÿ 
{
ŸŸ 
public
⁄⁄ 
int
⁄⁄ 
?
⁄⁄ 
_virtual
⁄⁄ 
{
⁄⁄ 
get
⁄⁄ "
;
⁄⁄" #
set
⁄⁄$ '
;
⁄⁄' (
}
⁄⁄) *
public
€€ 
Links3
€€ 
links
€€ 
{
€€ 
get
€€ !
;
€€! "
set
€€# &
;
€€& '
}
€€( )
public
‹‹ 
string
‹‹ 
vendor
‹‹ 
{
‹‹ 
get
‹‹ "
;
‹‹" #
set
‹‹$ '
;
‹‹' (
}
‹‹) *
public
›› 
string
›› 
model
›› 
{
›› 
get
›› !
;
››! "
set
››# &
;
››& '
}
››( )
public
ﬁﬁ 
object
ﬁﬁ 
sas_address
ﬁﬁ !
{
ﬁﬁ" #
get
ﬁﬁ$ '
;
ﬁﬁ' (
set
ﬁﬁ) ,
;
ﬁﬁ, -
}
ﬁﬁ. /
public
ﬂﬂ 
object
ﬂﬂ 
sas_device_handle
ﬂﬂ '
{
ﬂﬂ( )
get
ﬂﬂ* -
;
ﬂﬂ- .
set
ﬂﬂ/ 2
;
ﬂﬂ2 3
}
ﬂﬂ4 5
public
‡‡ 
string
‡‡ 
	removable
‡‡ 
{
‡‡  !
get
‡‡" %
;
‡‡% &
set
‡‡' *
;
‡‡* +
}
‡‡, -
public
·· 
string
·· 
support_discard
·· %
{
··& '
get
··( +
;
··+ ,
set
··- 0
;
··0 1
}
··2 3
public
‚‚ 
object
‚‚ 

partitions
‚‚  
{
‚‚! "
get
‚‚# &
;
‚‚& '
set
‚‚( +
;
‚‚+ ,
}
‚‚- .
public
„„ 
string
„„ 

rotational
„„  
{
„„! "
get
„„# &
;
„„& '
set
„„( +
;
„„+ ,
}
„„- .
public
‰‰ 
string
‰‰ 
scheduler_mode
‰‰ $
{
‰‰% &
get
‰‰' *
;
‰‰* +
set
‰‰, /
;
‰‰/ 0
}
‰‰1 2
public
ÂÂ 
string
ÂÂ 
sectors
ÂÂ 
{
ÂÂ 
get
ÂÂ  #
;
ÂÂ# $
set
ÂÂ% (
;
ÂÂ( )
}
ÂÂ* +
public
ÊÊ 
string
ÊÊ 

sectorsize
ÊÊ  
{
ÊÊ! "
get
ÊÊ# &
;
ÊÊ& '
set
ÊÊ( +
;
ÊÊ+ ,
}
ÊÊ- .
public
ÁÁ 
string
ÁÁ 
size
ÁÁ 
{
ÁÁ 
get
ÁÁ  
;
ÁÁ  !
set
ÁÁ" %
;
ÁÁ% &
}
ÁÁ' (
public
ËË 
string
ËË 
host
ËË 
{
ËË 
get
ËË  
;
ËË  !
set
ËË" %
;
ËË% &
}
ËË' (
public
ÈÈ 
object
ÈÈ 
[
ÈÈ 
]
ÈÈ 
holders
ÈÈ 
{
ÈÈ  !
get
ÈÈ" %
;
ÈÈ% &
set
ÈÈ' *
;
ÈÈ* +
}
ÈÈ, -
}
ÍÍ 
public
ÏÏ 

class
ÏÏ 
Links3
ÏÏ 
{
ÌÌ 
public
ÓÓ 
object
ÓÓ 
[
ÓÓ 
]
ÓÓ 
ids
ÓÓ 
{
ÓÓ 
get
ÓÓ !
;
ÓÓ! "
set
ÓÓ# &
;
ÓÓ& '
}
ÓÓ( )
public
ÔÔ 
object
ÔÔ 
[
ÔÔ 
]
ÔÔ 
uuids
ÔÔ 
{
ÔÔ 
get
ÔÔ  #
;
ÔÔ# $
set
ÔÔ% (
;
ÔÔ( )
}
ÔÔ* +
public
 
object
 
[
 
]
 
labels
 
{
  
get
! $
;
$ %
set
& )
;
) *
}
+ ,
public
ÒÒ 
object
ÒÒ 
[
ÒÒ 
]
ÒÒ 
masters
ÒÒ 
{
ÒÒ  !
get
ÒÒ" %
;
ÒÒ% &
set
ÒÒ' *
;
ÒÒ* +
}
ÒÒ, -
}
ÚÚ 
public
ıı 

class
ıı 
Loop2
ıı 
{
ˆˆ 
public
˜˜ 
int
˜˜ 
?
˜˜ 
_virtual
˜˜ 
{
˜˜ 
get
˜˜ "
;
˜˜" #
set
˜˜$ '
;
˜˜' (
}
˜˜) *
public
¯¯ 
Links4
¯¯ 
links
¯¯ 
{
¯¯ 
get
¯¯ !
;
¯¯! "
set
¯¯# &
;
¯¯& '
}
¯¯( )
public
˘˘ 
object
˘˘ 
vendor
˘˘ 
{
˘˘ 
get
˘˘ "
;
˘˘" #
set
˘˘$ '
;
˘˘' (
}
˘˘) *
public
˙˙ 
object
˙˙ 
model
˙˙ 
{
˙˙ 
get
˙˙ !
;
˙˙! "
set
˙˙# &
;
˙˙& '
}
˙˙( )
public
˚˚ 
object
˚˚ 
sas_address
˚˚ !
{
˚˚" #
get
˚˚$ '
;
˚˚' (
set
˚˚) ,
;
˚˚, -
}
˚˚. /
public
¸¸ 
object
¸¸ 
sas_device_handle
¸¸ '
{
¸¸( )
get
¸¸* -
;
¸¸- .
set
¸¸/ 2
;
¸¸2 3
}
¸¸4 5
public
˝˝ 
string
˝˝ 
	removable
˝˝ 
{
˝˝  !
get
˝˝" %
;
˝˝% &
set
˝˝' *
;
˝˝* +
}
˝˝, -
public
˛˛ 
string
˛˛ 
support_discard
˛˛ %
{
˛˛& '
get
˛˛( +
;
˛˛+ ,
set
˛˛- 0
;
˛˛0 1
}
˛˛2 3
public
ˇˇ 
object
ˇˇ 

partitions
ˇˇ  
{
ˇˇ! "
get
ˇˇ# &
;
ˇˇ& '
set
ˇˇ( +
;
ˇˇ+ ,
}
ˇˇ- .
public
ÄÄ 
string
ÄÄ 

rotational
ÄÄ  
{
ÄÄ! "
get
ÄÄ# &
;
ÄÄ& '
set
ÄÄ( +
;
ÄÄ+ ,
}
ÄÄ- .
public
ÅÅ 
string
ÅÅ 
scheduler_mode
ÅÅ $
{
ÅÅ% &
get
ÅÅ' *
;
ÅÅ* +
set
ÅÅ, /
;
ÅÅ/ 0
}
ÅÅ1 2
public
ÇÇ 
string
ÇÇ 
sectors
ÇÇ 
{
ÇÇ 
get
ÇÇ  #
;
ÇÇ# $
set
ÇÇ% (
;
ÇÇ( )
}
ÇÇ* +
public
ÉÉ 
string
ÉÉ 

sectorsize
ÉÉ  
{
ÉÉ! "
get
ÉÉ# &
;
ÉÉ& '
set
ÉÉ( +
;
ÉÉ+ ,
}
ÉÉ- .
public
ÑÑ 
string
ÑÑ 
size
ÑÑ 
{
ÑÑ 
get
ÑÑ  
;
ÑÑ  !
set
ÑÑ" %
;
ÑÑ% &
}
ÑÑ' (
public
ÖÖ 
string
ÖÖ 
host
ÖÖ 
{
ÖÖ 
get
ÖÖ  
;
ÖÖ  !
set
ÖÖ" %
;
ÖÖ% &
}
ÖÖ' (
public
ÜÜ 
object
ÜÜ 
[
ÜÜ 
]
ÜÜ 
holders
ÜÜ 
{
ÜÜ  !
get
ÜÜ" %
;
ÜÜ% &
set
ÜÜ' *
;
ÜÜ* +
}
ÜÜ, -
}
áá 
public
ââ 

class
ââ 
Links4
ââ 
{
ää 
public
ãã 
object
ãã 
[
ãã 
]
ãã 
ids
ãã 
{
ãã 
get
ãã !
;
ãã! "
set
ãã# &
;
ãã& '
}
ãã( )
public
åå 
object
åå 
[
åå 
]
åå 
uuids
åå 
{
åå 
get
åå  #
;
åå# $
set
åå% (
;
åå( )
}
åå* +
public
çç 
object
çç 
[
çç 
]
çç 
labels
çç 
{
çç  
get
çç! $
;
çç$ %
set
çç& )
;
çç) *
}
çç+ ,
public
éé 
object
éé 
[
éé 
]
éé 
masters
éé 
{
éé  !
get
éé" %
;
éé% &
set
éé' *
;
éé* +
}
éé, -
}
èè 
public
ëë 

class
ëë 
Loop0
ëë 
{
íí 
public
ìì 
int
ìì 
?
ìì 
_virtual
ìì 
{
ìì 
get
ìì "
;
ìì" #
set
ìì$ '
;
ìì' (
}
ìì) *
public
îî 
Links5
îî 
links
îî 
{
îî 
get
îî !
;
îî! "
set
îî# &
;
îî& '
}
îî( )
public
ïï 
object
ïï 
vendor
ïï 
{
ïï 
get
ïï "
;
ïï" #
set
ïï$ '
;
ïï' (
}
ïï) *
public
ññ 
object
ññ 
model
ññ 
{
ññ 
get
ññ !
;
ññ! "
set
ññ# &
;
ññ& '
}
ññ( )
public
óó 
object
óó 
sas_address
óó !
{
óó" #
get
óó$ '
;
óó' (
set
óó) ,
;
óó, -
}
óó. /
public
òò 
object
òò 
sas_device_handle
òò '
{
òò( )
get
òò* -
;
òò- .
set
òò/ 2
;
òò2 3
}
òò4 5
public
ôô 
string
ôô 
	removable
ôô 
{
ôô  !
get
ôô" %
;
ôô% &
set
ôô' *
;
ôô* +
}
ôô, -
public
öö 
string
öö 
support_discard
öö %
{
öö& '
get
öö( +
;
öö+ ,
set
öö- 0
;
öö0 1
}
öö2 3
public
õõ 
Partitions5
õõ 

partitions
õõ %
{
õõ& '
get
õõ( +
;
õõ+ ,
set
õõ- 0
;
õõ0 1
}
õõ2 3
public
úú 
string
úú 

rotational
úú  
{
úú! "
get
úú# &
;
úú& '
set
úú( +
;
úú+ ,
}
úú- .
public
ùù 
string
ùù 
scheduler_mode
ùù $
{
ùù% &
get
ùù' *
;
ùù* +
set
ùù, /
;
ùù/ 0
}
ùù1 2
public
ûû 
string
ûû 
sectors
ûû 
{
ûû 
get
ûû  #
;
ûû# $
set
ûû% (
;
ûû( )
}
ûû* +
public
üü 
string
üü 

sectorsize
üü  
{
üü! "
get
üü# &
;
üü& '
set
üü( +
;
üü+ ,
}
üü- .
public
†† 
string
†† 
size
†† 
{
†† 
get
††  
;
††  !
set
††" %
;
††% &
}
††' (
public
°° 
string
°° 
host
°° 
{
°° 
get
°°  
;
°°  !
set
°°" %
;
°°% &
}
°°' (
public
¢¢ 
object
¢¢ 
[
¢¢ 
]
¢¢ 
holders
¢¢ 
{
¢¢  !
get
¢¢" %
;
¢¢% &
set
¢¢' *
;
¢¢* +
}
¢¢, -
}
££ 
public
•• 

class
•• 
Links5
•• 
{
¶¶ 
public
ßß 
object
ßß 
[
ßß 
]
ßß 
ids
ßß 
{
ßß 
get
ßß !
;
ßß! "
set
ßß# &
;
ßß& '
}
ßß( )
public
®® 
object
®® 
[
®® 
]
®® 
uuids
®® 
{
®® 
get
®®  #
;
®®# $
set
®®% (
;
®®( )
}
®®* +
public
©© 
object
©© 
[
©© 
]
©© 
labels
©© 
{
©©  
get
©©! $
;
©©$ %
set
©©& )
;
©©) *
}
©©+ ,
public
™™ 
object
™™ 
[
™™ 
]
™™ 
masters
™™ 
{
™™  !
get
™™" %
;
™™% &
set
™™' *
;
™™* +
}
™™, -
}
´´ 
public
≠≠ 

class
≠≠ 
Partitions5
≠≠ 
{
ÆÆ 
}
ØØ 
public
±± 

class
±± 
Loop7
±± 
{
≤≤ 
public
≥≥ 
int
≥≥ 
?
≥≥ 
_virtual
≥≥ 
{
≥≥ 
get
≥≥ "
;
≥≥" #
set
≥≥$ '
;
≥≥' (
}
≥≥) *
public
¥¥ 
Links6
¥¥ 
links
¥¥ 
{
¥¥ 
get
¥¥ !
;
¥¥! "
set
¥¥# &
;
¥¥& '
}
¥¥( )
public
µµ 
object
µµ 
vendor
µµ 
{
µµ 
get
µµ "
;
µµ" #
set
µµ$ '
;
µµ' (
}
µµ) *
public
∂∂ 
object
∂∂ 
model
∂∂ 
{
∂∂ 
get
∂∂ !
;
∂∂! "
set
∂∂# &
;
∂∂& '
}
∂∂( )
public
∑∑ 
object
∑∑ 
sas_address
∑∑ !
{
∑∑" #
get
∑∑$ '
;
∑∑' (
set
∑∑) ,
;
∑∑, -
}
∑∑. /
public
∏∏ 
object
∏∏ 
sas_device_handle
∏∏ '
{
∏∏( )
get
∏∏* -
;
∏∏- .
set
∏∏/ 2
;
∏∏2 3
}
∏∏4 5
public
ππ 
string
ππ 
	removable
ππ 
{
ππ  !
get
ππ" %
;
ππ% &
set
ππ' *
;
ππ* +
}
ππ, -
public
∫∫ 
string
∫∫ 
support_discard
∫∫ %
{
∫∫& '
get
∫∫( +
;
∫∫+ ,
set
∫∫- 0
;
∫∫0 1
}
∫∫2 3
public
ªª 
Partitions6
ªª 

partitions
ªª %
{
ªª& '
get
ªª( +
;
ªª+ ,
set
ªª- 0
;
ªª0 1
}
ªª2 3
public
ºº 
string
ºº 

rotational
ºº  
{
ºº! "
get
ºº# &
;
ºº& '
set
ºº( +
;
ºº+ ,
}
ºº- .
public
ΩΩ 
string
ΩΩ 
scheduler_mode
ΩΩ $
{
ΩΩ% &
get
ΩΩ' *
;
ΩΩ* +
set
ΩΩ, /
;
ΩΩ/ 0
}
ΩΩ1 2
public
ææ 
string
ææ 
sectors
ææ 
{
ææ 
get
ææ  #
;
ææ# $
set
ææ% (
;
ææ( )
}
ææ* +
public
øø 
string
øø 

sectorsize
øø  
{
øø! "
get
øø# &
;
øø& '
set
øø( +
;
øø+ ,
}
øø- .
public
¿¿ 
string
¿¿ 
size
¿¿ 
{
¿¿ 
get
¿¿  
;
¿¿  !
set
¿¿" %
;
¿¿% &
}
¿¿' (
public
¡¡ 
string
¡¡ 
host
¡¡ 
{
¡¡ 
get
¡¡  
;
¡¡  !
set
¡¡" %
;
¡¡% &
}
¡¡' (
public
¬¬ 
object
¬¬ 
[
¬¬ 
]
¬¬ 
holders
¬¬ 
{
¬¬  !
get
¬¬" %
;
¬¬% &
set
¬¬' *
;
¬¬* +
}
¬¬, -
}
√√ 
public
≈≈ 

class
≈≈ 
Links6
≈≈ 
{
∆∆ 
public
«« 
object
«« 
[
«« 
]
«« 
ids
«« 
{
«« 
get
«« !
;
««! "
set
««# &
;
««& '
}
««( )
public
»» 
object
»» 
[
»» 
]
»» 
uuids
»» 
{
»» 
get
»»  #
;
»»# $
set
»»% (
;
»»( )
}
»»* +
public
…… 
object
…… 
[
…… 
]
…… 
labels
…… 
{
……  
get
……! $
;
……$ %
set
……& )
;
……) *
}
……+ ,
public
   
object
   
[
   
]
   
masters
   
{
    !
get
  " %
;
  % &
set
  ' *
;
  * +
}
  , -
}
ÀÀ 
public
ÕÕ 

class
ÕÕ 
Partitions6
ÕÕ 
{
ŒŒ 
}
œœ 
public
—— 

class
—— 
Sda
—— 
{
““ 
public
”” 
int
”” 
?
”” 
_virtual
”” 
{
”” 
get
”” "
;
””" #
set
””$ '
;
””' (
}
””) *
public
‘‘ 
Links7
‘‘ 
links
‘‘ 
{
‘‘ 
get
‘‘ !
;
‘‘! "
set
‘‘# &
;
‘‘& '
}
‘‘( )
public
’’ 
string
’’ 
vendor
’’ 
{
’’ 
get
’’ "
;
’’" #
set
’’$ '
;
’’' (
}
’’) *
public
÷÷ 
string
÷÷ 
model
÷÷ 
{
÷÷ 
get
÷÷ !
;
÷÷! "
set
÷÷# &
;
÷÷& '
}
÷÷( )
public
◊◊ 
object
◊◊ 
sas_address
◊◊ !
{
◊◊" #
get
◊◊$ '
;
◊◊' (
set
◊◊) ,
;
◊◊, -
}
◊◊. /
public
ÿÿ 
object
ÿÿ 
sas_device_handle
ÿÿ '
{
ÿÿ( )
get
ÿÿ* -
;
ÿÿ- .
set
ÿÿ/ 2
;
ÿÿ2 3
}
ÿÿ4 5
public
ŸŸ 
string
ŸŸ 
	removable
ŸŸ 
{
ŸŸ  !
get
ŸŸ" %
;
ŸŸ% &
set
ŸŸ' *
;
ŸŸ* +
}
ŸŸ, -
public
⁄⁄ 
string
⁄⁄ 
support_discard
⁄⁄ %
{
⁄⁄& '
get
⁄⁄( +
;
⁄⁄+ ,
set
⁄⁄- 0
;
⁄⁄0 1
}
⁄⁄2 3
public
€€ 
Partitions7
€€ 

partitions
€€ %
{
€€& '
get
€€( +
;
€€+ ,
set
€€- 0
;
€€0 1
}
€€2 3
public
‹‹ 
string
‹‹ 

rotational
‹‹  
{
‹‹! "
get
‹‹# &
;
‹‹& '
set
‹‹( +
;
‹‹+ ,
}
‹‹- .
public
›› 
string
›› 
scheduler_mode
›› $
{
››% &
get
››' *
;
››* +
set
››, /
;
››/ 0
}
››1 2
public
ﬁﬁ 
string
ﬁﬁ 
sectors
ﬁﬁ 
{
ﬁﬁ 
get
ﬁﬁ  #
;
ﬁﬁ# $
set
ﬁﬁ% (
;
ﬁﬁ( )
}
ﬁﬁ* +
public
ﬂﬂ 
string
ﬂﬂ 

sectorsize
ﬂﬂ  
{
ﬂﬂ! "
get
ﬂﬂ# &
;
ﬂﬂ& '
set
ﬂﬂ( +
;
ﬂﬂ+ ,
}
ﬂﬂ- .
public
‡‡ 
string
‡‡ 
size
‡‡ 
{
‡‡ 
get
‡‡  
;
‡‡  !
set
‡‡" %
;
‡‡% &
}
‡‡' (
public
·· 
string
·· 
host
·· 
{
·· 
get
··  
;
··  !
set
··" %
;
··% &
}
··' (
public
‚‚ 
object
‚‚ 
[
‚‚ 
]
‚‚ 
holders
‚‚ 
{
‚‚  !
get
‚‚" %
;
‚‚% &
set
‚‚' *
;
‚‚* +
}
‚‚, -
}
„„ 
public
ÂÂ 

class
ÂÂ 
Links7
ÂÂ 
{
ÊÊ 
public
ÁÁ 
object
ÁÁ 
[
ÁÁ 
]
ÁÁ 
ids
ÁÁ 
{
ÁÁ 
get
ÁÁ !
;
ÁÁ! "
set
ÁÁ# &
;
ÁÁ& '
}
ÁÁ( )
public
ËË 
object
ËË 
[
ËË 
]
ËË 
uuids
ËË 
{
ËË 
get
ËË  #
;
ËË# $
set
ËË% (
;
ËË( )
}
ËË* +
public
ÈÈ 
object
ÈÈ 
[
ÈÈ 
]
ÈÈ 
labels
ÈÈ 
{
ÈÈ  
get
ÈÈ! $
;
ÈÈ$ %
set
ÈÈ& )
;
ÈÈ) *
}
ÈÈ+ ,
public
ÍÍ 
object
ÍÍ 
[
ÍÍ 
]
ÍÍ 
masters
ÍÍ 
{
ÍÍ  !
get
ÍÍ" %
;
ÍÍ% &
set
ÍÍ' *
;
ÍÍ* +
}
ÍÍ, -
}
ÎÎ 
public
ÌÌ 

class
ÌÌ 
Partitions7
ÌÌ 
{
ÓÓ 
public
ÔÔ 
Sda2
ÔÔ 
sda2
ÔÔ 
{
ÔÔ 
get
ÔÔ 
;
ÔÔ 
set
ÔÔ  #
;
ÔÔ# $
}
ÔÔ% &
public
 
Sda1
 
sda1
 
{
 
get
 
;
 
set
  #
;
# $
}
% &
}
ÒÒ 
public
ÛÛ 

class
ÛÛ 
Sda2
ÛÛ 
{
ÙÙ 
public
ıı 
Links8
ıı 
links
ıı 
{
ıı 
get
ıı !
;
ıı! "
set
ıı# &
;
ıı& '
}
ıı( )
public
ˆˆ 
string
ˆˆ 
start
ˆˆ 
{
ˆˆ 
get
ˆˆ !
;
ˆˆ! "
set
ˆˆ# &
;
ˆˆ& '
}
ˆˆ( )
public
˜˜ 
string
˜˜ 
sectors
˜˜ 
{
˜˜ 
get
˜˜  #
;
˜˜# $
set
˜˜% (
;
˜˜( )
}
˜˜* +
public
¯¯ 
int
¯¯ 
?
¯¯ 

sectorsize
¯¯ 
{
¯¯  
get
¯¯! $
;
¯¯$ %
set
¯¯& )
;
¯¯) *
}
¯¯+ ,
public
˘˘ 
string
˘˘ 
size
˘˘ 
{
˘˘ 
get
˘˘  
;
˘˘  !
set
˘˘" %
;
˘˘% &
}
˘˘' (
public
˙˙ 
object
˙˙ 
uuid
˙˙ 
{
˙˙ 
get
˙˙  
;
˙˙  !
set
˙˙" %
;
˙˙% &
}
˙˙' (
public
˚˚ 
object
˚˚ 
[
˚˚ 
]
˚˚ 
holders
˚˚ 
{
˚˚  !
get
˚˚" %
;
˚˚% &
set
˚˚' *
;
˚˚* +
}
˚˚, -
}
¸¸ 
public
˛˛ 

class
˛˛ 
Links8
˛˛ 
{
ˇˇ 
public
ÄÄ 
object
ÄÄ 
[
ÄÄ 
]
ÄÄ 
ids
ÄÄ 
{
ÄÄ 
get
ÄÄ !
;
ÄÄ! "
set
ÄÄ# &
;
ÄÄ& '
}
ÄÄ( )
public
ÅÅ 
object
ÅÅ 
[
ÅÅ 
]
ÅÅ 
uuids
ÅÅ 
{
ÅÅ 
get
ÅÅ  #
;
ÅÅ# $
set
ÅÅ% (
;
ÅÅ( )
}
ÅÅ* +
public
ÇÇ 
object
ÇÇ 
[
ÇÇ 
]
ÇÇ 
labels
ÇÇ 
{
ÇÇ  
get
ÇÇ! $
;
ÇÇ$ %
set
ÇÇ& )
;
ÇÇ) *
}
ÇÇ+ ,
public
ÉÉ 
object
ÉÉ 
[
ÉÉ 
]
ÉÉ 
masters
ÉÉ 
{
ÉÉ  !
get
ÉÉ" %
;
ÉÉ% &
set
ÉÉ' *
;
ÉÉ* +
}
ÉÉ, -
}
ÑÑ 
public
ÜÜ 

class
ÜÜ 
Sda1
ÜÜ 
{
áá 
public
àà 
Links9
àà 
links
àà 
{
àà 
get
àà !
;
àà! "
set
àà# &
;
àà& '
}
àà( )
public
ââ 
string
ââ 
start
ââ 
{
ââ 
get
ââ !
;
ââ! "
set
ââ# &
;
ââ& '
}
ââ( )
public
ää 
string
ää 
sectors
ää 
{
ää 
get
ää  #
;
ää# $
set
ää% (
;
ää( )
}
ää* +
public
ãã 
int
ãã 
?
ãã 

sectorsize
ãã 
{
ãã  
get
ãã! $
;
ãã$ %
set
ãã& )
;
ãã) *
}
ãã+ ,
public
åå 
string
åå 
size
åå 
{
åå 
get
åå  
;
åå  !
set
åå" %
;
åå% &
}
åå' (
public
çç 
object
çç 
uuid
çç 
{
çç 
get
çç  
;
çç  !
set
çç" %
;
çç% &
}
çç' (
public
éé 
object
éé 
[
éé 
]
éé 
holders
éé 
{
éé  !
get
éé" %
;
éé% &
set
éé' *
;
éé* +
}
éé, -
}
èè 
public
ëë 

class
ëë 
Links9
ëë 
{
íí 
public
ìì 
object
ìì 
[
ìì 
]
ìì 
ids
ìì 
{
ìì 
get
ìì !
;
ìì! "
set
ìì# &
;
ìì& '
}
ìì( )
public
îî 
object
îî 
[
îî 
]
îî 
uuids
îî 
{
îî 
get
îî  #
;
îî# $
set
îî% (
;
îî( )
}
îî* +
public
ïï 
object
ïï 
[
ïï 
]
ïï 
labels
ïï 
{
ïï  
get
ïï! $
;
ïï$ %
set
ïï& )
;
ïï) *
}
ïï+ ,
public
ññ 
object
ññ 
[
ññ 
]
ññ 
masters
ññ 
{
ññ  !
get
ññ" %
;
ññ% &
set
ññ' *
;
ññ* +
}
ññ, -
}
óó 
public
ôô 

class
ôô 
Loop5
ôô 
{
öö 
public
õõ 
int
õõ 
?
õõ 
_virtual
õõ 
{
õõ 
get
õõ "
;
õõ" #
set
õõ$ '
;
õõ' (
}
õõ) *
public
úú 
Links10
úú 
links
úú 
{
úú 
get
úú "
;
úú" #
set
úú$ '
;
úú' (
}
úú) *
public
ùù 
object
ùù 
vendor
ùù 
{
ùù 
get
ùù "
;
ùù" #
set
ùù$ '
;
ùù' (
}
ùù) *
public
ûû 
object
ûû 
model
ûû 
{
ûû 
get
ûû !
;
ûû! "
set
ûû# &
;
ûû& '
}
ûû( )
public
üü 
object
üü 
sas_address
üü !
{
üü" #
get
üü$ '
;
üü' (
set
üü) ,
;
üü, -
}
üü. /
public
†† 
object
†† 
sas_device_handle
†† '
{
††( )
get
††* -
;
††- .
set
††/ 2
;
††2 3
}
††4 5
public
°° 
string
°° 
	removable
°° 
{
°°  !
get
°°" %
;
°°% &
set
°°' *
;
°°* +
}
°°, -
public
¢¢ 
string
¢¢ 
support_discard
¢¢ %
{
¢¢& '
get
¢¢( +
;
¢¢+ ,
set
¢¢- 0
;
¢¢0 1
}
¢¢2 3
public
££ 
Partitions8
££ 

partitions
££ %
{
££& '
get
££( +
;
££+ ,
set
££- 0
;
££0 1
}
££2 3
public
§§ 
string
§§ 

rotational
§§  
{
§§! "
get
§§# &
;
§§& '
set
§§( +
;
§§+ ,
}
§§- .
public
•• 
string
•• 
scheduler_mode
•• $
{
••% &
get
••' *
;
••* +
set
••, /
;
••/ 0
}
••1 2
public
¶¶ 
string
¶¶ 
sectors
¶¶ 
{
¶¶ 
get
¶¶  #
;
¶¶# $
set
¶¶% (
;
¶¶( )
}
¶¶* +
public
ßß 
string
ßß 

sectorsize
ßß  
{
ßß! "
get
ßß# &
;
ßß& '
set
ßß( +
;
ßß+ ,
}
ßß- .
public
®® 
string
®® 
size
®® 
{
®® 
get
®®  
;
®®  !
set
®®" %
;
®®% &
}
®®' (
public
©© 
string
©© 
host
©© 
{
©© 
get
©©  
;
©©  !
set
©©" %
;
©©% &
}
©©' (
public
™™ 
object
™™ 
[
™™ 
]
™™ 
holders
™™ 
{
™™  !
get
™™" %
;
™™% &
set
™™' *
;
™™* +
}
™™, -
}
´´ 
public
≠≠ 

class
≠≠ 
Links10
≠≠ 
{
ÆÆ 
public
ØØ 
object
ØØ 
[
ØØ 
]
ØØ 
ids
ØØ 
{
ØØ 
get
ØØ !
;
ØØ! "
set
ØØ# &
;
ØØ& '
}
ØØ( )
public
∞∞ 
object
∞∞ 
[
∞∞ 
]
∞∞ 
uuids
∞∞ 
{
∞∞ 
get
∞∞  #
;
∞∞# $
set
∞∞% (
;
∞∞( )
}
∞∞* +
public
±± 
object
±± 
[
±± 
]
±± 
labels
±± 
{
±±  
get
±±! $
;
±±$ %
set
±±& )
;
±±) *
}
±±+ ,
public
≤≤ 
object
≤≤ 
[
≤≤ 
]
≤≤ 
masters
≤≤ 
{
≤≤  !
get
≤≤" %
;
≤≤% &
set
≤≤' *
;
≤≤* +
}
≤≤, -
}
≥≥ 
public
µµ 

class
µµ 
Partitions8
µµ 
{
∂∂ 
}
∑∑ 
public
ππ 

class
ππ 
Loop3
ππ 
{
∫∫ 
public
ªª 
int
ªª 
?
ªª 
_virtual
ªª 
{
ªª 
get
ªª "
;
ªª" #
set
ªª$ '
;
ªª' (
}
ªª) *
public
ºº 
Links11
ºº 
links
ºº 
{
ºº 
get
ºº "
;
ºº" #
set
ºº$ '
;
ºº' (
}
ºº) *
public
ΩΩ 
object
ΩΩ 
vendor
ΩΩ 
{
ΩΩ 
get
ΩΩ "
;
ΩΩ" #
set
ΩΩ$ '
;
ΩΩ' (
}
ΩΩ) *
public
ææ 
object
ææ 
model
ææ 
{
ææ 
get
ææ !
;
ææ! "
set
ææ# &
;
ææ& '
}
ææ( )
public
øø 
object
øø 
sas_address
øø !
{
øø" #
get
øø$ '
;
øø' (
set
øø) ,
;
øø, -
}
øø. /
public
¿¿ 
object
¿¿ 
sas_device_handle
¿¿ '
{
¿¿( )
get
¿¿* -
;
¿¿- .
set
¿¿/ 2
;
¿¿2 3
}
¿¿4 5
public
¡¡ 
string
¡¡ 
	removable
¡¡ 
{
¡¡  !
get
¡¡" %
;
¡¡% &
set
¡¡' *
;
¡¡* +
}
¡¡, -
public
¬¬ 
string
¬¬ 
support_discard
¬¬ %
{
¬¬& '
get
¬¬( +
;
¬¬+ ,
set
¬¬- 0
;
¬¬0 1
}
¬¬2 3
public
√√ 
object
√√ 

partitions
√√  
{
√√! "
get
√√# &
;
√√& '
set
√√( +
;
√√+ ,
}
√√- .
public
ƒƒ 
string
ƒƒ 

rotational
ƒƒ  
{
ƒƒ! "
get
ƒƒ# &
;
ƒƒ& '
set
ƒƒ( +
;
ƒƒ+ ,
}
ƒƒ- .
public
≈≈ 
string
≈≈ 
scheduler_mode
≈≈ $
{
≈≈% &
get
≈≈' *
;
≈≈* +
set
≈≈, /
;
≈≈/ 0
}
≈≈1 2
public
∆∆ 
string
∆∆ 
sectors
∆∆ 
{
∆∆ 
get
∆∆  #
;
∆∆# $
set
∆∆% (
;
∆∆( )
}
∆∆* +
public
«« 
string
«« 

sectorsize
««  
{
««! "
get
««# &
;
««& '
set
««( +
;
««+ ,
}
««- .
public
»» 
string
»» 
size
»» 
{
»» 
get
»»  
;
»»  !
set
»»" %
;
»»% &
}
»»' (
public
…… 
string
…… 
host
…… 
{
…… 
get
……  
;
……  !
set
……" %
;
……% &
}
……' (
public
   
object
   
[
   
]
   
holders
   
{
    !
get
  " %
;
  % &
set
  ' *
;
  * +
}
  , -
}
ÀÀ 
public
ÕÕ 

class
ÕÕ 
Links11
ÕÕ 
{
ŒŒ 
public
œœ 
object
œœ 
[
œœ 
]
œœ 
ids
œœ 
{
œœ 
get
œœ !
;
œœ! "
set
œœ# &
;
œœ& '
}
œœ( )
public
–– 
object
–– 
[
–– 
]
–– 
uuids
–– 
{
–– 
get
––  #
;
––# $
set
––% (
;
––( )
}
––* +
public
—— 
object
—— 
[
—— 
]
—— 
labels
—— 
{
——  
get
——! $
;
——$ %
set
——& )
;
——) *
}
——+ ,
public
““ 
object
““ 
[
““ 
]
““ 
masters
““ 
{
““  !
get
““" %
;
““% &
set
““' *
;
““* +
}
““, -
}
”” 
public
÷÷ 

class
÷÷ "
Ansible_Device_Links
÷÷ %
{
◊◊ 
public
ÿÿ 
object
ÿÿ 
ids
ÿÿ 
{
ÿÿ 
get
ÿÿ 
;
ÿÿ  
set
ÿÿ! $
;
ÿÿ$ %
}
ÿÿ& '
public
ŸŸ 
object
ŸŸ 
uuids
ŸŸ 
{
ŸŸ 
get
ŸŸ !
;
ŸŸ! "
set
ŸŸ# &
;
ŸŸ& '
}
ŸŸ( )
public
⁄⁄ 
Labels
⁄⁄ 
labels
⁄⁄ 
{
⁄⁄ 
get
⁄⁄ "
;
⁄⁄" #
set
⁄⁄$ '
;
⁄⁄' (
}
⁄⁄) *
public
€€ 
object
€€ 
masters
€€ 
{
€€ 
get
€€  #
;
€€# $
set
€€% (
;
€€( )
}
€€* +
}
‹‹ 
public
ﬂﬂ 

class
ﬂﬂ 
Ansible_Eth0
ﬂﬂ 
{
‡‡ 
public
·· 
string
·· 
device
·· 
{
·· 
get
·· "
;
··" #
set
··$ '
;
··' (
}
··) *
public
‚‚ 
string
‚‚ 

macaddress
‚‚  
{
‚‚! "
get
‚‚# &
;
‚‚& '
set
‚‚( +
;
‚‚+ ,
}
‚‚- .
public
„„ 
int
„„ 
?
„„ 
mtu
„„ 
{
„„ 
get
„„ 
;
„„ 
set
„„ "
;
„„" #
}
„„$ %
public
‰‰ 
bool
‰‰ 
active
‰‰ 
{
‰‰ 
get
‰‰  
;
‰‰  !
set
‰‰" %
;
‰‰% &
}
‰‰' (
public
ÂÂ 
string
ÂÂ 
type
ÂÂ 
{
ÂÂ 
get
ÂÂ  
;
ÂÂ  !
set
ÂÂ" %
;
ÂÂ% &
}
ÂÂ' (
public
ÊÊ 
int
ÊÊ 
?
ÊÊ 
speed
ÊÊ 
{
ÊÊ 
get
ÊÊ 
;
ÊÊ  
set
ÊÊ! $
;
ÊÊ$ %
}
ÊÊ& '
public
ÁÁ 
bool
ÁÁ 
promisc
ÁÁ 
{
ÁÁ 
get
ÁÁ !
;
ÁÁ! "
set
ÁÁ# &
;
ÁÁ& '
}
ÁÁ( )
public
ËË 
Ipv4
ËË 
ipv4
ËË 
{
ËË 
get
ËË 
;
ËË 
set
ËË  #
;
ËË# $
}
ËË% &
public
ÈÈ 
Features
ÈÈ 
features
ÈÈ  
{
ÈÈ! "
get
ÈÈ# &
;
ÈÈ& '
set
ÈÈ( +
;
ÈÈ+ ,
}
ÈÈ- .
public
ÍÍ 
string
ÍÍ 
[
ÍÍ 
]
ÍÍ 
timestamping
ÍÍ $
{
ÍÍ% &
get
ÍÍ' *
;
ÍÍ* +
set
ÍÍ, /
;
ÍÍ/ 0
}
ÍÍ1 2
public
ÎÎ 
object
ÎÎ 
[
ÎÎ 
]
ÎÎ "
hw_timestamp_filters
ÎÎ ,
{
ÎÎ- .
get
ÎÎ/ 2
;
ÎÎ2 3
set
ÎÎ4 7
;
ÎÎ7 8
}
ÎÎ9 :
}
ÏÏ 
public
ÓÓ 

class
ÓÓ 
Ipv4
ÓÓ 
{
ÔÔ 
public
 
string
 
address
 
{
 
get
  #
;
# $
set
% (
;
( )
}
* +
public
ÒÒ 
string
ÒÒ 
	broadcast
ÒÒ 
{
ÒÒ  !
get
ÒÒ" %
;
ÒÒ% &
set
ÒÒ' *
;
ÒÒ* +
}
ÒÒ, -
public
ÚÚ 
string
ÚÚ 
netmask
ÚÚ 
{
ÚÚ 
get
ÚÚ  #
;
ÚÚ# $
set
ÚÚ% (
;
ÚÚ( )
}
ÚÚ* +
public
ÛÛ 
string
ÛÛ 
network
ÛÛ 
{
ÛÛ 
get
ÛÛ  #
;
ÛÛ# $
set
ÛÛ% (
;
ÛÛ( )
}
ÛÛ* +
}
ÙÙ 
public
ˆˆ 

class
ˆˆ 
Features
ˆˆ 
{
˜˜ 
public
¯¯ 
string
¯¯ 
rx_checksumming
¯¯ %
{
¯¯& '
get
¯¯( +
;
¯¯+ ,
set
¯¯- 0
;
¯¯0 1
}
¯¯2 3
public
˘˘ 
string
˘˘ 
tx_checksumming
˘˘ %
{
˘˘& '
get
˘˘( +
;
˘˘+ ,
set
˘˘- 0
;
˘˘0 1
}
˘˘2 3
public
˙˙ 
string
˙˙ 
tx_checksum_ipv4
˙˙ &
{
˙˙' (
get
˙˙) ,
;
˙˙, -
set
˙˙. 1
;
˙˙1 2
}
˙˙3 4
public
˚˚ 
string
˚˚ $
tx_checksum_ip_generic
˚˚ ,
{
˚˚- .
get
˚˚/ 2
;
˚˚2 3
set
˚˚4 7
;
˚˚7 8
}
˚˚9 :
public
¸¸ 
string
¸¸ 
tx_checksum_ipv6
¸¸ &
{
¸¸' (
get
¸¸) ,
;
¸¸, -
set
¸¸. 1
;
¸¸1 2
}
¸¸3 4
public
˝˝ 
string
˝˝ "
tx_checksum_fcoe_crc
˝˝ *
{
˝˝+ ,
get
˝˝- 0
;
˝˝0 1
set
˝˝2 5
;
˝˝5 6
}
˝˝7 8
public
˛˛ 
string
˛˛ 
tx_checksum_sctp
˛˛ &
{
˛˛' (
get
˛˛) ,
;
˛˛, -
set
˛˛. 1
;
˛˛1 2
}
˛˛3 4
public
ˇˇ 
string
ˇˇ 
scatter_gather
ˇˇ $
{
ˇˇ% &
get
ˇˇ' *
;
ˇˇ* +
set
ˇˇ, /
;
ˇˇ/ 0
}
ˇˇ1 2
public
ÄÄ 
string
ÄÄ 
tx_scatter_gather
ÄÄ '
{
ÄÄ( )
get
ÄÄ* -
;
ÄÄ- .
set
ÄÄ/ 2
;
ÄÄ2 3
}
ÄÄ4 5
public
ÅÅ 
string
ÅÅ (
tx_scatter_gather_fraglist
ÅÅ 0
{
ÅÅ1 2
get
ÅÅ3 6
;
ÅÅ6 7
set
ÅÅ8 ;
;
ÅÅ; <
}
ÅÅ= >
public
ÇÇ 
string
ÇÇ &
tcp_segmentation_offload
ÇÇ .
{
ÇÇ/ 0
get
ÇÇ1 4
;
ÇÇ4 5
set
ÇÇ6 9
;
ÇÇ9 :
}
ÇÇ; <
public
ÉÉ 
string
ÉÉ !
tx_tcp_segmentation
ÉÉ )
{
ÉÉ* +
get
ÉÉ, /
;
ÉÉ/ 0
set
ÉÉ1 4
;
ÉÉ4 5
}
ÉÉ6 7
public
ÑÑ 
string
ÑÑ %
tx_tcp_ecn_segmentation
ÑÑ -
{
ÑÑ. /
get
ÑÑ0 3
;
ÑÑ3 4
set
ÑÑ5 8
;
ÑÑ8 9
}
ÑÑ: ;
public
ÖÖ 
string
ÖÖ *
tx_tcp_mangleid_segmentation
ÖÖ 2
{
ÖÖ3 4
get
ÖÖ5 8
;
ÖÖ8 9
set
ÖÖ: =
;
ÖÖ= >
}
ÖÖ? @
public
ÜÜ 
string
ÜÜ "
tx_tcp6_segmentation
ÜÜ *
{
ÜÜ+ ,
get
ÜÜ- 0
;
ÜÜ0 1
set
ÜÜ2 5
;
ÜÜ5 6
}
ÜÜ7 8
public
áá 
string
áá *
generic_segmentation_offload
áá 2
{
áá3 4
get
áá5 8
;
áá8 9
set
áá: =
;
áá= >
}
áá? @
public
àà 
string
àà %
generic_receive_offload
àà -
{
àà. /
get
àà0 3
;
àà3 4
set
àà5 8
;
àà8 9
}
àà: ;
public
ââ 
string
ââ #
large_receive_offload
ââ +
{
ââ, -
get
ââ. 1
;
ââ1 2
set
ââ3 6
;
ââ6 7
}
ââ8 9
public
ää 
string
ää 
rx_vlan_offload
ää %
{
ää& '
get
ää( +
;
ää+ ,
set
ää- 0
;
ää0 1
}
ää2 3
public
ãã 
string
ãã 
tx_vlan_offload
ãã %
{
ãã& '
get
ãã( +
;
ãã+ ,
set
ãã- 0
;
ãã0 1
}
ãã2 3
public
åå 
string
åå 
ntuple_filters
åå $
{
åå% &
get
åå' *
;
åå* +
set
åå, /
;
åå/ 0
}
åå1 2
public
çç 
string
çç 
receive_hashing
çç %
{
çç& '
get
çç( +
;
çç+ ,
set
çç- 0
;
çç0 1
}
çç2 3
public
éé 
string
éé 
highdma
éé 
{
éé 
get
éé  #
;
éé# $
set
éé% (
;
éé( )
}
éé* +
public
èè 
string
èè 
rx_vlan_filter
èè $
{
èè% &
get
èè' *
;
èè* +
set
èè, /
;
èè/ 0
}
èè1 2
public
êê 
string
êê 
vlan_challenged
êê %
{
êê& '
get
êê( +
;
êê+ ,
set
êê- 0
;
êê0 1
}
êê2 3
public
ëë 
string
ëë 
tx_lockless
ëë !
{
ëë" #
get
ëë$ '
;
ëë' (
set
ëë) ,
;
ëë, -
}
ëë. /
public
íí 
string
íí 
netns_local
íí !
{
íí" #
get
íí$ '
;
íí' (
set
íí) ,
;
íí, -
}
íí. /
public
ìì 
string
ìì 
tx_gso_robust
ìì #
{
ìì$ %
get
ìì& )
;
ìì) *
set
ìì+ .
;
ìì. /
}
ìì0 1
public
îî 
string
îî "
tx_fcoe_segmentation
îî *
{
îî+ ,
get
îî- 0
;
îî0 1
set
îî2 5
;
îî5 6
}
îî7 8
public
ïï 
string
ïï !
tx_gre_segmentation
ïï )
{
ïï* +
get
ïï, /
;
ïï/ 0
set
ïï1 4
;
ïï4 5
}
ïï6 7
public
ññ 
string
ññ &
tx_gre_csum_segmentation
ññ .
{
ññ/ 0
get
ññ1 4
;
ññ4 5
set
ññ6 9
;
ññ9 :
}
ññ; <
public
óó 
string
óó $
tx_ipxip4_segmentation
óó ,
{
óó- .
get
óó/ 2
;
óó2 3
set
óó4 7
;
óó7 8
}
óó9 :
public
òò 
string
òò $
tx_ipxip6_segmentation
òò ,
{
òò- .
get
òò/ 2
;
òò2 3
set
òò4 7
;
òò7 8
}
òò9 :
public
ôô 
string
ôô %
tx_udp_tnl_segmentation
ôô -
{
ôô. /
get
ôô0 3
;
ôô3 4
set
ôô5 8
;
ôô8 9
}
ôô: ;
public
öö 
string
öö *
tx_udp_tnl_csum_segmentation
öö 2
{
öö3 4
get
öö5 8
;
öö8 9
set
öö: =
;
öö= >
}
öö? @
public
õõ 
string
õõ 
tx_gso_partial
õõ $
{
õõ% &
get
õõ' *
;
õõ* +
set
õõ, /
;
õõ/ 0
}
õõ1 2
public
úú 
string
úú "
tx_sctp_segmentation
úú *
{
úú+ ,
get
úú- 0
;
úú0 1
set
úú2 5
;
úú5 6
}
úú7 8
public
ùù 
string
ùù !
tx_esp_segmentation
ùù )
{
ùù* +
get
ùù, /
;
ùù/ 0
set
ùù1 4
;
ùù4 5
}
ùù6 7
public
ûû 
string
ûû !
tx_udp_segmentation
ûû )
{
ûû* +
get
ûû, /
;
ûû/ 0
set
ûû1 4
;
ûû4 5
}
ûû6 7
public
üü 
string
üü 
fcoe_mtu
üü 
{
üü  
get
üü! $
;
üü$ %
set
üü& )
;
üü) *
}
üü+ ,
public
†† 
string
†† 
tx_nocache_copy
†† %
{
††& '
get
††( +
;
††+ ,
set
††- 0
;
††0 1
}
††2 3
public
°° 
string
°° 
loopback
°° 
{
°°  
get
°°! $
;
°°$ %
set
°°& )
;
°°) *
}
°°+ ,
public
¢¢ 
string
¢¢ 
rx_fcs
¢¢ 
{
¢¢ 
get
¢¢ "
;
¢¢" #
set
¢¢$ '
;
¢¢' (
}
¢¢) *
public
££ 
string
££ 
rx_all
££ 
{
££ 
get
££ "
;
££" #
set
££$ '
;
££' (
}
££) *
public
§§ 
string
§§ $
tx_vlan_stag_hw_insert
§§ ,
{
§§- .
get
§§/ 2
;
§§2 3
set
§§4 7
;
§§7 8
}
§§9 :
public
•• 
string
•• #
rx_vlan_stag_hw_parse
•• +
{
••, -
get
••. 1
;
••1 2
set
••3 6
;
••6 7
}
••8 9
public
¶¶ 
string
¶¶ !
rx_vlan_stag_filter
¶¶ )
{
¶¶* +
get
¶¶, /
;
¶¶/ 0
set
¶¶1 4
;
¶¶4 5
}
¶¶6 7
public
ßß 
string
ßß 
l2_fwd_offload
ßß $
{
ßß% &
get
ßß' *
;
ßß* +
set
ßß, /
;
ßß/ 0
}
ßß1 2
public
®® 
string
®® 
hw_tc_offload
®® #
{
®®$ %
get
®®& )
;
®®) *
set
®®+ .
;
®®. /
}
®®0 1
public
©© 
string
©© 
esp_hw_offload
©© $
{
©©% &
get
©©' *
;
©©* +
set
©©, /
;
©©/ 0
}
©©1 2
public
™™ 
string
™™ $
esp_tx_csum_hw_offload
™™ ,
{
™™- .
get
™™/ 2
;
™™2 3
set
™™4 7
;
™™7 8
}
™™9 :
public
´´ 
string
´´ (
rx_udp_tunnel_port_offload
´´ 0
{
´´1 2
get
´´3 6
;
´´6 7
set
´´8 ;
;
´´; <
}
´´= >
public
¨¨ 
string
¨¨ 
tls_hw_tx_offload
¨¨ '
{
¨¨( )
get
¨¨* -
;
¨¨- .
set
¨¨/ 2
;
¨¨2 3
}
¨¨4 5
public
≠≠ 
string
≠≠ 
tls_hw_rx_offload
≠≠ '
{
≠≠( )
get
≠≠* -
;
≠≠- .
set
≠≠/ 2
;
≠≠2 3
}
≠≠4 5
public
ÆÆ 
string
ÆÆ 
	rx_gro_hw
ÆÆ 
{
ÆÆ  !
get
ÆÆ" %
;
ÆÆ% &
set
ÆÆ' *
;
ÆÆ* +
}
ÆÆ, -
public
ØØ 
string
ØØ 
tls_hw_record
ØØ #
{
ØØ$ %
get
ØØ& )
;
ØØ) *
set
ØØ+ .
;
ØØ. /
}
ØØ0 1
}
∞∞ 
public
≤≤ 

class
≤≤ 

Ansible_Lo
≤≤ 
{
≥≥ 
public
¥¥ 
string
¥¥ 
device
¥¥ 
{
¥¥ 
get
¥¥ "
;
¥¥" #
set
¥¥$ '
;
¥¥' (
}
¥¥) *
public
µµ 
int
µµ 
?
µµ 
mtu
µµ 
{
µµ 
get
µµ 
;
µµ 
set
µµ "
;
µµ" #
}
µµ$ %
public
∂∂ 
bool
∂∂ 
active
∂∂ 
{
∂∂ 
get
∂∂  
;
∂∂  !
set
∂∂" %
;
∂∂% &
}
∂∂' (
public
∑∑ 
string
∑∑ 
type
∑∑ 
{
∑∑ 
get
∑∑  
;
∑∑  !
set
∑∑" %
;
∑∑% &
}
∑∑' (
public
∏∏ 
bool
∏∏ 
promisc
∏∏ 
{
∏∏ 
get
∏∏ !
;
∏∏! "
set
∏∏# &
;
∏∏& '
}
∏∏( )
public
ππ 
Ipv41
ππ 
ipv4
ππ 
{
ππ 
get
ππ 
;
ππ  
set
ππ! $
;
ππ$ %
}
ππ& '
public
∫∫ 
	Features1
∫∫ 
features
∫∫ !
{
∫∫" #
get
∫∫$ '
;
∫∫' (
set
∫∫) ,
;
∫∫, -
}
∫∫. /
public
ªª 
string
ªª 
[
ªª 
]
ªª 
timestamping
ªª $
{
ªª% &
get
ªª' *
;
ªª* +
set
ªª, /
;
ªª/ 0
}
ªª1 2
public
ºº 
object
ºº 
[
ºº 
]
ºº "
hw_timestamp_filters
ºº ,
{
ºº- .
get
ºº/ 2
;
ºº2 3
set
ºº4 7
;
ºº7 8
}
ºº9 :
}
ΩΩ 
public
øø 

class
øø 
Ipv41
øø 
{
¿¿ 
public
¡¡ 
string
¡¡ 
address
¡¡ 
{
¡¡ 
get
¡¡  #
;
¡¡# $
set
¡¡% (
;
¡¡( )
}
¡¡* +
public
¬¬ 
string
¬¬ 
	broadcast
¬¬ 
{
¬¬  !
get
¬¬" %
;
¬¬% &
set
¬¬' *
;
¬¬* +
}
¬¬, -
public
√√ 
string
√√ 
netmask
√√ 
{
√√ 
get
√√  #
;
√√# $
set
√√% (
;
√√( )
}
√√* +
public
ƒƒ 
string
ƒƒ 
network
ƒƒ 
{
ƒƒ 
get
ƒƒ  #
;
ƒƒ# $
set
ƒƒ% (
;
ƒƒ( )
}
ƒƒ* +
}
≈≈ 
public
«« 

class
«« 
	Features1
«« 
{
»» 
public
…… 
string
…… 
rx_checksumming
…… %
{
……& '
get
……( +
;
……+ ,
set
……- 0
;
……0 1
}
……2 3
public
   
string
   
tx_checksumming
   %
{
  & '
get
  ( +
;
  + ,
set
  - 0
;
  0 1
}
  2 3
public
ÀÀ 
string
ÀÀ 
tx_checksum_ipv4
ÀÀ &
{
ÀÀ' (
get
ÀÀ) ,
;
ÀÀ, -
set
ÀÀ. 1
;
ÀÀ1 2
}
ÀÀ3 4
public
ÃÃ 
string
ÃÃ $
tx_checksum_ip_generic
ÃÃ ,
{
ÃÃ- .
get
ÃÃ/ 2
;
ÃÃ2 3
set
ÃÃ4 7
;
ÃÃ7 8
}
ÃÃ9 :
public
ÕÕ 
string
ÕÕ 
tx_checksum_ipv6
ÕÕ &
{
ÕÕ' (
get
ÕÕ) ,
;
ÕÕ, -
set
ÕÕ. 1
;
ÕÕ1 2
}
ÕÕ3 4
public
ŒŒ 
string
ŒŒ "
tx_checksum_fcoe_crc
ŒŒ *
{
ŒŒ+ ,
get
ŒŒ- 0
;
ŒŒ0 1
set
ŒŒ2 5
;
ŒŒ5 6
}
ŒŒ7 8
public
œœ 
string
œœ 
tx_checksum_sctp
œœ &
{
œœ' (
get
œœ) ,
;
œœ, -
set
œœ. 1
;
œœ1 2
}
œœ3 4
public
–– 
string
–– 
scatter_gather
–– $
{
––% &
get
––' *
;
––* +
set
––, /
;
––/ 0
}
––1 2
public
—— 
string
—— 
tx_scatter_gather
—— '
{
——( )
get
——* -
;
——- .
set
——/ 2
;
——2 3
}
——4 5
public
““ 
string
““ (
tx_scatter_gather_fraglist
““ 0
{
““1 2
get
““3 6
;
““6 7
set
““8 ;
;
““; <
}
““= >
public
”” 
string
”” &
tcp_segmentation_offload
”” .
{
””/ 0
get
””1 4
;
””4 5
set
””6 9
;
””9 :
}
””; <
public
‘‘ 
string
‘‘ !
tx_tcp_segmentation
‘‘ )
{
‘‘* +
get
‘‘, /
;
‘‘/ 0
set
‘‘1 4
;
‘‘4 5
}
‘‘6 7
public
’’ 
string
’’ %
tx_tcp_ecn_segmentation
’’ -
{
’’. /
get
’’0 3
;
’’3 4
set
’’5 8
;
’’8 9
}
’’: ;
public
÷÷ 
string
÷÷ *
tx_tcp_mangleid_segmentation
÷÷ 2
{
÷÷3 4
get
÷÷5 8
;
÷÷8 9
set
÷÷: =
;
÷÷= >
}
÷÷? @
public
◊◊ 
string
◊◊ "
tx_tcp6_segmentation
◊◊ *
{
◊◊+ ,
get
◊◊- 0
;
◊◊0 1
set
◊◊2 5
;
◊◊5 6
}
◊◊7 8
public
ÿÿ 
string
ÿÿ *
generic_segmentation_offload
ÿÿ 2
{
ÿÿ3 4
get
ÿÿ5 8
;
ÿÿ8 9
set
ÿÿ: =
;
ÿÿ= >
}
ÿÿ? @
public
ŸŸ 
string
ŸŸ %
generic_receive_offload
ŸŸ -
{
ŸŸ. /
get
ŸŸ0 3
;
ŸŸ3 4
set
ŸŸ5 8
;
ŸŸ8 9
}
ŸŸ: ;
public
⁄⁄ 
string
⁄⁄ #
large_receive_offload
⁄⁄ +
{
⁄⁄, -
get
⁄⁄. 1
;
⁄⁄1 2
set
⁄⁄3 6
;
⁄⁄6 7
}
⁄⁄8 9
public
€€ 
string
€€ 
rx_vlan_offload
€€ %
{
€€& '
get
€€( +
;
€€+ ,
set
€€- 0
;
€€0 1
}
€€2 3
public
‹‹ 
string
‹‹ 
tx_vlan_offload
‹‹ %
{
‹‹& '
get
‹‹( +
;
‹‹+ ,
set
‹‹- 0
;
‹‹0 1
}
‹‹2 3
public
›› 
string
›› 
ntuple_filters
›› $
{
››% &
get
››' *
;
››* +
set
››, /
;
››/ 0
}
››1 2
public
ﬁﬁ 
string
ﬁﬁ 
receive_hashing
ﬁﬁ %
{
ﬁﬁ& '
get
ﬁﬁ( +
;
ﬁﬁ+ ,
set
ﬁﬁ- 0
;
ﬁﬁ0 1
}
ﬁﬁ2 3
public
ﬂﬂ 
string
ﬂﬂ 
highdma
ﬂﬂ 
{
ﬂﬂ 
get
ﬂﬂ  #
;
ﬂﬂ# $
set
ﬂﬂ% (
;
ﬂﬂ( )
}
ﬂﬂ* +
public
‡‡ 
string
‡‡ 
rx_vlan_filter
‡‡ $
{
‡‡% &
get
‡‡' *
;
‡‡* +
set
‡‡, /
;
‡‡/ 0
}
‡‡1 2
public
·· 
string
·· 
vlan_challenged
·· %
{
··& '
get
··( +
;
··+ ,
set
··- 0
;
··0 1
}
··2 3
public
‚‚ 
string
‚‚ 
tx_lockless
‚‚ !
{
‚‚" #
get
‚‚$ '
;
‚‚' (
set
‚‚) ,
;
‚‚, -
}
‚‚. /
public
„„ 
string
„„ 
netns_local
„„ !
{
„„" #
get
„„$ '
;
„„' (
set
„„) ,
;
„„, -
}
„„. /
public
‰‰ 
string
‰‰ 
tx_gso_robust
‰‰ #
{
‰‰$ %
get
‰‰& )
;
‰‰) *
set
‰‰+ .
;
‰‰. /
}
‰‰0 1
public
ÂÂ 
string
ÂÂ "
tx_fcoe_segmentation
ÂÂ *
{
ÂÂ+ ,
get
ÂÂ- 0
;
ÂÂ0 1
set
ÂÂ2 5
;
ÂÂ5 6
}
ÂÂ7 8
public
ÊÊ 
string
ÊÊ !
tx_gre_segmentation
ÊÊ )
{
ÊÊ* +
get
ÊÊ, /
;
ÊÊ/ 0
set
ÊÊ1 4
;
ÊÊ4 5
}
ÊÊ6 7
public
ÁÁ 
string
ÁÁ &
tx_gre_csum_segmentation
ÁÁ .
{
ÁÁ/ 0
get
ÁÁ1 4
;
ÁÁ4 5
set
ÁÁ6 9
;
ÁÁ9 :
}
ÁÁ; <
public
ËË 
string
ËË $
tx_ipxip4_segmentation
ËË ,
{
ËË- .
get
ËË/ 2
;
ËË2 3
set
ËË4 7
;
ËË7 8
}
ËË9 :
public
ÈÈ 
string
ÈÈ $
tx_ipxip6_segmentation
ÈÈ ,
{
ÈÈ- .
get
ÈÈ/ 2
;
ÈÈ2 3
set
ÈÈ4 7
;
ÈÈ7 8
}
ÈÈ9 :
public
ÍÍ 
string
ÍÍ %
tx_udp_tnl_segmentation
ÍÍ -
{
ÍÍ. /
get
ÍÍ0 3
;
ÍÍ3 4
set
ÍÍ5 8
;
ÍÍ8 9
}
ÍÍ: ;
public
ÎÎ 
string
ÎÎ *
tx_udp_tnl_csum_segmentation
ÎÎ 2
{
ÎÎ3 4
get
ÎÎ5 8
;
ÎÎ8 9
set
ÎÎ: =
;
ÎÎ= >
}
ÎÎ? @
public
ÏÏ 
string
ÏÏ 
tx_gso_partial
ÏÏ $
{
ÏÏ% &
get
ÏÏ' *
;
ÏÏ* +
set
ÏÏ, /
;
ÏÏ/ 0
}
ÏÏ1 2
public
ÌÌ 
string
ÌÌ "
tx_sctp_segmentation
ÌÌ *
{
ÌÌ+ ,
get
ÌÌ- 0
;
ÌÌ0 1
set
ÌÌ2 5
;
ÌÌ5 6
}
ÌÌ7 8
public
ÓÓ 
string
ÓÓ !
tx_esp_segmentation
ÓÓ )
{
ÓÓ* +
get
ÓÓ, /
;
ÓÓ/ 0
set
ÓÓ1 4
;
ÓÓ4 5
}
ÓÓ6 7
public
ÔÔ 
string
ÔÔ !
tx_udp_segmentation
ÔÔ )
{
ÔÔ* +
get
ÔÔ, /
;
ÔÔ/ 0
set
ÔÔ1 4
;
ÔÔ4 5
}
ÔÔ6 7
public
 
string
 
fcoe_mtu
 
{
  
get
! $
;
$ %
set
& )
;
) *
}
+ ,
public
ÒÒ 
string
ÒÒ 
tx_nocache_copy
ÒÒ %
{
ÒÒ& '
get
ÒÒ( +
;
ÒÒ+ ,
set
ÒÒ- 0
;
ÒÒ0 1
}
ÒÒ2 3
public
ÚÚ 
string
ÚÚ 
loopback
ÚÚ 
{
ÚÚ  
get
ÚÚ! $
;
ÚÚ$ %
set
ÚÚ& )
;
ÚÚ) *
}
ÚÚ+ ,
public
ÛÛ 
string
ÛÛ 
rx_fcs
ÛÛ 
{
ÛÛ 
get
ÛÛ "
;
ÛÛ" #
set
ÛÛ$ '
;
ÛÛ' (
}
ÛÛ) *
public
ÙÙ 
string
ÙÙ 
rx_all
ÙÙ 
{
ÙÙ 
get
ÙÙ "
;
ÙÙ" #
set
ÙÙ$ '
;
ÙÙ' (
}
ÙÙ) *
public
ıı 
string
ıı $
tx_vlan_stag_hw_insert
ıı ,
{
ıı- .
get
ıı/ 2
;
ıı2 3
set
ıı4 7
;
ıı7 8
}
ıı9 :
public
ˆˆ 
string
ˆˆ #
rx_vlan_stag_hw_parse
ˆˆ +
{
ˆˆ, -
get
ˆˆ. 1
;
ˆˆ1 2
set
ˆˆ3 6
;
ˆˆ6 7
}
ˆˆ8 9
public
˜˜ 
string
˜˜ !
rx_vlan_stag_filter
˜˜ )
{
˜˜* +
get
˜˜, /
;
˜˜/ 0
set
˜˜1 4
;
˜˜4 5
}
˜˜6 7
public
¯¯ 
string
¯¯ 
l2_fwd_offload
¯¯ $
{
¯¯% &
get
¯¯' *
;
¯¯* +
set
¯¯, /
;
¯¯/ 0
}
¯¯1 2
public
˘˘ 
string
˘˘ 
hw_tc_offload
˘˘ #
{
˘˘$ %
get
˘˘& )
;
˘˘) *
set
˘˘+ .
;
˘˘. /
}
˘˘0 1
public
˙˙ 
string
˙˙ 
esp_hw_offload
˙˙ $
{
˙˙% &
get
˙˙' *
;
˙˙* +
set
˙˙, /
;
˙˙/ 0
}
˙˙1 2
public
˚˚ 
string
˚˚ $
esp_tx_csum_hw_offload
˚˚ ,
{
˚˚- .
get
˚˚/ 2
;
˚˚2 3
set
˚˚4 7
;
˚˚7 8
}
˚˚9 :
public
¸¸ 
string
¸¸ (
rx_udp_tunnel_port_offload
¸¸ 0
{
¸¸1 2
get
¸¸3 6
;
¸¸6 7
set
¸¸8 ;
;
¸¸; <
}
¸¸= >
public
˝˝ 
string
˝˝ 
tls_hw_tx_offload
˝˝ '
{
˝˝( )
get
˝˝* -
;
˝˝- .
set
˝˝/ 2
;
˝˝2 3
}
˝˝4 5
public
˛˛ 
string
˛˛ 
tls_hw_rx_offload
˛˛ '
{
˛˛( )
get
˛˛* -
;
˛˛- .
set
˛˛/ 2
;
˛˛2 3
}
˛˛4 5
public
ˇˇ 
string
ˇˇ 
	rx_gro_hw
ˇˇ 
{
ˇˇ  !
get
ˇˇ" %
;
ˇˇ% &
set
ˇˇ' *
;
ˇˇ* +
}
ˇˇ, -
public
ÄÄ 
string
ÄÄ 
tls_hw_record
ÄÄ #
{
ÄÄ$ %
get
ÄÄ& )
;
ÄÄ) *
set
ÄÄ+ .
;
ÄÄ. /
}
ÄÄ0 1
}
ÅÅ 
public
ÉÉ 

class
ÉÉ "
Ansible_Default_Ipv4
ÉÉ %
{
ÑÑ 
public
ÖÖ 
string
ÖÖ 
gateway
ÖÖ 
{
ÖÖ 
get
ÖÖ  #
;
ÖÖ# $
set
ÖÖ% (
;
ÖÖ( )
}
ÖÖ* +
public
ÜÜ 
string
ÜÜ 

_interface
ÜÜ  
{
ÜÜ! "
get
ÜÜ# &
;
ÜÜ& '
set
ÜÜ( +
;
ÜÜ+ ,
}
ÜÜ- .
public
áá 
string
áá 
address
áá 
{
áá 
get
áá  #
;
áá# $
set
áá% (
;
áá( )
}
áá* +
public
àà 
string
àà 
	broadcast
àà 
{
àà  !
get
àà" %
;
àà% &
set
àà' *
;
àà* +
}
àà, -
public
ââ 
string
ââ 
netmask
ââ 
{
ââ 
get
ââ  #
;
ââ# $
set
ââ% (
;
ââ( )
}
ââ* +
public
ää 
string
ää 
network
ää 
{
ää 
get
ää  #
;
ää# $
set
ää% (
;
ää( )
}
ää* +
public
ãã 
string
ãã 

macaddress
ãã  
{
ãã! "
get
ãã# &
;
ãã& '
set
ãã( +
;
ãã+ ,
}
ãã- .
public
åå 
int
åå 
?
åå 
mtu
åå 
{
åå 
get
åå 
;
åå 
set
åå "
;
åå" #
}
åå$ %
public
çç 
string
çç 
type
çç 
{
çç 
get
çç  
;
çç  !
set
çç" %
;
çç% &
}
çç' (
public
éé 
string
éé 
alias
éé 
{
éé 
get
éé !
;
éé! "
set
éé# &
;
éé& '
}
éé( )
}
èè 
public
ëë 

class
ëë 
Ansible_Python
ëë 
{
íí 
public
ìì 
Version
ìì 
version
ìì 
{
ìì  
get
ìì! $
;
ìì$ %
set
ìì& )
;
ìì) *
}
ìì+ ,
public
îî 
object
îî 
[
îî 
]
îî 
version_info
îî $
{
îî% &
get
îî' *
;
îî* +
set
îî, /
;
îî/ 0
}
îî1 2
public
ïï 
string
ïï 

executable
ïï  
{
ïï! "
get
ïï# &
;
ïï& '
set
ïï( +
;
ïï+ ,
}
ïï- .
public
ññ 
bool
ññ 
has_sslcontext
ññ "
{
ññ# $
get
ññ% (
;
ññ( )
set
ññ* -
;
ññ- .
}
ññ/ 0
public
óó 
string
óó 
type
óó 
{
óó 
get
óó  
;
óó  !
set
óó" %
;
óó% &
}
óó' (
}
òò 
public
öö 

class
öö 
Version
öö 
{
õõ 
public
úú 
int
úú 
?
úú 
major
úú 
{
úú 
get
úú 
;
úú  
set
úú! $
;
úú$ %
}
úú& '
public
ùù 
int
ùù 
?
ùù 
minor
ùù 
{
ùù 
get
ùù 
;
ùù  
set
ùù! $
;
ùù$ %
}
ùù& '
public
ûû 
int
ûû 
?
ûû 
micro
ûû 
{
ûû 
get
ûû 
;
ûû  
set
ûû! $
;
ûû$ %
}
ûû& '
public
üü 
string
üü 
releaselevel
üü "
{
üü# $
get
üü% (
;
üü( )
set
üü* -
;
üü- .
}
üü/ 0
public
†† 
int
†† 
?
†† 
serial
†† 
{
†† 
get
††  
;
††  !
set
††" %
;
††% &
}
††' (
}
°° 
public
££ 

class
££ 
Ansible_Apparmor
££ !
{
§§ 
public
•• 
string
•• 
status
•• 
{
•• 
get
•• "
;
••" #
set
••$ '
;
••' (
}
••) *
}
¶¶ 
public
®® 

class
®® 
Ansible_Date_Time
®® "
{
©© 
public
™™ 
string
™™ 
year
™™ 
{
™™ 
get
™™  
;
™™  !
set
™™" %
;
™™% &
}
™™' (
public
´´ 
string
´´ 
month
´´ 
{
´´ 
get
´´ !
;
´´! "
set
´´# &
;
´´& '
}
´´( )
public
¨¨ 
string
¨¨ 
weekday
¨¨ 
{
¨¨ 
get
¨¨  #
;
¨¨# $
set
¨¨% (
;
¨¨( )
}
¨¨* +
public
≠≠ 
string
≠≠ 
weekday_number
≠≠ $
{
≠≠% &
get
≠≠' *
;
≠≠* +
set
≠≠, /
;
≠≠/ 0
}
≠≠1 2
public
ÆÆ 
string
ÆÆ 

weeknumber
ÆÆ  
{
ÆÆ! "
get
ÆÆ# &
;
ÆÆ& '
set
ÆÆ( +
;
ÆÆ+ ,
}
ÆÆ- .
public
ØØ 
string
ØØ 
day
ØØ 
{
ØØ 
get
ØØ 
;
ØØ  
set
ØØ! $
;
ØØ$ %
}
ØØ& '
public
∞∞ 
string
∞∞ 
hour
∞∞ 
{
∞∞ 
get
∞∞  
;
∞∞  !
set
∞∞" %
;
∞∞% &
}
∞∞' (
public
±± 
string
±± 
minute
±± 
{
±± 
get
±± "
;
±±" #
set
±±$ '
;
±±' (
}
±±) *
public
≤≤ 
string
≤≤ 
second
≤≤ 
{
≤≤ 
get
≤≤ "
;
≤≤" #
set
≤≤$ '
;
≤≤' (
}
≤≤) *
public
≥≥ 
string
≥≥ 
epoch
≥≥ 
{
≥≥ 
get
≥≥ !
;
≥≥! "
set
≥≥# &
;
≥≥& '
}
≥≥( )
public
¥¥ 
string
¥¥ 
date
¥¥ 
{
¥¥ 
get
¥¥  
;
¥¥  !
set
¥¥" %
;
¥¥% &
}
¥¥' (
public
µµ 
string
µµ 
time
µµ 
{
µµ 
get
µµ  
;
µµ  !
set
µµ" %
;
µµ% &
}
µµ' (
public
∂∂ 
DateTime
∂∂ 
iso8601_micro
∂∂ %
{
∂∂& '
get
∂∂( +
;
∂∂+ ,
set
∂∂- 0
;
∂∂0 1
}
∂∂2 3
public
∑∑ 
DateTime
∑∑ 
iso8601
∑∑ 
{
∑∑  !
get
∑∑" %
;
∑∑% &
set
∑∑' *
;
∑∑* +
}
∑∑, -
public
∏∏ 
string
∏∏ 
iso8601_basic
∏∏ #
{
∏∏$ %
get
∏∏& )
;
∏∏) *
set
∏∏+ .
;
∏∏. /
}
∏∏0 1
public
ππ 
string
ππ !
iso8601_basic_short
ππ )
{
ππ* +
get
ππ, /
;
ππ/ 0
set
ππ1 4
;
ππ4 5
}
ππ6 7
public
∫∫ 
string
∫∫ 
tz
∫∫ 
{
∫∫ 
get
∫∫ 
;
∫∫ 
set
∫∫  #
;
∫∫# $
}
∫∫% &
public
ªª 
string
ªª 
	tz_offset
ªª 
{
ªª  !
get
ªª" %
;
ªª% &
set
ªª' *
;
ªª* +
}
ªª, -
}
ºº 
public
ææ 

class
ææ 
Ansible_Cmdline
ææ  
{
øø 
public
¿¿ 
string
¿¿ 

BOOT_IMAGE
¿¿  
{
¿¿! "
get
¿¿# &
;
¿¿& '
set
¿¿( +
;
¿¿+ ,
}
¿¿- .
public
¡¡ 
string
¡¡ 
root
¡¡ 
{
¡¡ 
get
¡¡  
;
¡¡  !
set
¡¡" %
;
¡¡% &
}
¡¡' (
public
¬¬ 
bool
¬¬ 
ro
¬¬ 
{
¬¬ 
get
¬¬ 
;
¬¬ 
set
¬¬ !
;
¬¬! "
}
¬¬# $
}
√√ 
public
≈≈ 

class
≈≈ "
Ansible_Proc_Cmdline
≈≈ %
{
∆∆ 
public
«« 
string
«« 

BOOT_IMAGE
««  
{
««! "
get
««# &
;
««& '
set
««( +
;
««+ ,
}
««- .
public
»» 
string
»» 
root
»» 
{
»» 
get
»»  
;
»»  !
set
»»" %
;
»»% &
}
»»' (
public
…… 
bool
…… 
ro
…… 
{
…… 
get
…… 
;
…… 
set
…… !
;
……! "
}
……# $
}
   
public
ÕÕ 

class
ÕÕ 
Ansible_Selinux
ÕÕ  
{
ŒŒ 
public
œœ 
string
œœ 
status
œœ 
{
œœ 
get
œœ "
;
œœ" #
set
œœ$ '
;
œœ' (
}
œœ) *
}
–– 
public
““ 

class
““ 
Ansible_Mounts
““ 
{
”” 
public
‘‘ 
string
‘‘ 
mount
‘‘ 
{
‘‘ 
get
‘‘ !
;
‘‘! "
set
‘‘# &
;
‘‘& '
}
‘‘( )
public
’’ 
string
’’ 
device
’’ 
{
’’ 
get
’’ "
;
’’" #
set
’’$ '
;
’’' (
}
’’) *
public
÷÷ 
string
÷÷ 
fstype
÷÷ 
{
÷÷ 
get
÷÷ "
;
÷÷" #
set
÷÷$ '
;
÷÷' (
}
÷÷) *
public
◊◊ 
string
◊◊ 
options
◊◊ 
{
◊◊ 
get
◊◊  #
;
◊◊# $
set
◊◊% (
;
◊◊( )
}
◊◊* +
public
ÿÿ 
long
ÿÿ 

size_total
ÿÿ 
{
ÿÿ  
get
ÿÿ! $
;
ÿÿ$ %
set
ÿÿ& )
;
ÿÿ) *
}
ÿÿ+ ,
public
ŸŸ 
long
ŸŸ 
size_available
ŸŸ "
{
ŸŸ# $
get
ŸŸ% (
;
ŸŸ( )
set
ŸŸ* -
;
ŸŸ- .
}
ŸŸ/ 0
public
⁄⁄ 
int
⁄⁄ 
?
⁄⁄ 

block_size
⁄⁄ 
{
⁄⁄  
get
⁄⁄! $
;
⁄⁄$ %
set
⁄⁄& )
;
⁄⁄) *
}
⁄⁄+ ,
public
€€ 
int
€€ 
?
€€ 
block_total
€€ 
{
€€  !
get
€€" %
;
€€% &
set
€€' *
;
€€* +
}
€€, -
public
‹‹ 
int
‹‹ 
?
‹‹ 
block_available
‹‹ #
{
‹‹$ %
get
‹‹& )
;
‹‹) *
set
‹‹+ .
;
‹‹. /
}
‹‹0 1
public
›› 
int
›› 
?
›› 

block_used
›› 
{
››  
get
››! $
;
››$ %
set
››& )
;
››) *
}
››+ ,
public
ﬁﬁ 
int
ﬁﬁ 
?
ﬁﬁ 
inode_total
ﬁﬁ 
{
ﬁﬁ  !
get
ﬁﬁ" %
;
ﬁﬁ% &
set
ﬁﬁ' *
;
ﬁﬁ* +
}
ﬁﬁ, -
public
ﬂﬂ 
int
ﬂﬂ 
?
ﬂﬂ 
inode_available
ﬂﬂ #
{
ﬂﬂ$ %
get
ﬂﬂ& )
;
ﬂﬂ) *
set
ﬂﬂ+ .
;
ﬂﬂ. /
}
ﬂﬂ0 1
public
‡‡ 
int
‡‡ 
?
‡‡ 

inode_used
‡‡ 
{
‡‡  
get
‡‡! $
;
‡‡$ %
set
‡‡& )
;
‡‡) *
}
‡‡+ ,
public
·· 
string
·· 
uuid
·· 
{
·· 
get
··  
;
··  !
set
··" %
;
··% &
}
··' (
}
‚‚ 
public
ÂÂ 

class
ÂÂ 
Ok
ÂÂ 
{
ÊÊ 
public
ÁÁ 
int
ÁÁ 
?
ÁÁ 
	localhost
ÁÁ 
{
ÁÁ 
get
ÁÁ  #
;
ÁÁ# $
set
ÁÁ% (
;
ÁÁ( )
}
ÁÁ* +
}
ËË 
public
ÍÍ 

class
ÍÍ 
	Processed
ÍÍ 
{
ÎÎ 
public
ÏÏ 
int
ÏÏ 
?
ÏÏ 
	localhost
ÏÏ 
{
ÏÏ 
get
ÏÏ  #
;
ÏÏ# $
set
ÏÏ% (
;
ÏÏ( )
}
ÏÏ* +
}
ÌÌ 
}ÔÔ ∂å
´C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Jobs\GetJobResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Jobs4 8
{ 
public		 

class		 
GetJobResponseDto		 "
{

 
public 
int 
? 
id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
type 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
url 
{ 
get 
;  
set! $
;$ %
}& '
public 

RelatedJob 
related !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
SummaryFieldsJob 
summary_fields  .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
DateTime 
created 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
modified  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
?  
unified_job_template (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
launch_type !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
status 
{ 
get "
;" #
set$ '
;' (
}) *
public 
bool 
failed 
{ 
get  
;  !
set" %
;% &
}' (
public 
DateTime 
started 
{  !
get" %
;% &
set' *
;* +
}, -
public 
object 
finished 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
object 
canceled_on !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
float 
? 
elapsed 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
job_explanation %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
execution_node $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
controller_node %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
job_type 
{  
get! $
;$ %
set& )
;) *
}+ ,
public   
int   
?   
	inventory   
{   
get    #
;  # $
set  % (
;  ( )
}  * +
public!! 
int!! 
?!! 
project!! 
{!! 
get!! !
;!!! "
set!!# &
;!!& '
}!!( )
public"" 
string"" 
playbook"" 
{""  
get""! $
;""$ %
set""& )
;"") *
}""+ ,
public## 
string## 

scm_branch##  
{##! "
get### &
;##& '
set##( +
;##+ ,
}##- .
public$$ 
int$$ 
?$$ 
forks$$ 
{$$ 
get$$ 
;$$  
set$$! $
;$$$ %
}$$& '
public%% 
string%% 
limit%% 
{%% 
get%% !
;%%! "
set%%# &
;%%& '
}%%( )
public&& 
int&& 
?&& 
	verbosity&& 
{&& 
get&&  #
;&&# $
set&&% (
;&&( )
}&&* +
public'' 
string'' 

extra_vars''  
{''! "
get''# &
;''& '
set''( +
;''+ ,
}''- .
public(( 
string(( 
job_tags(( 
{((  
get((! $
;(($ %
set((& )
;(() *
}((+ ,
public)) 
bool)) 
force_handlers)) "
{))# $
get))% (
;))( )
set))* -
;))- .
}))/ 0
public** 
string** 
	skip_tags** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
public++ 
string++ 
start_at_task++ #
{++$ %
get++& )
;++) *
set+++ .
;++. /
}++0 1
public,, 
int,, 
?,, 
timeout,, 
{,, 
get,, !
;,,! "
set,,# &
;,,& '
},,( )
public-- 
bool-- 
use_fact_cache-- "
{--# $
get--% (
;--( )
set--* -
;--- .
}--/ 0
public.. 
int.. 
?.. 
organization..  
{..! "
get..# &
;..& '
set..( +
;..+ ,
}..- .
public// 
int// 
?// 
job_template//  
{//! "
get//# &
;//& '
set//( +
;//+ ,
}//- .
public00 
object00 
[00 
]00 %
passwords_needed_to_start00 1
{002 3
get004 7
;007 8
set009 <
;00< =
}00> ?
public11 
bool11 
allow_simultaneous11 &
{11' (
get11) ,
;11, -
set11. 1
;111 2
}113 4
public22 
object22 
	artifacts22 
{22  !
get22" %
;22% &
set22' *
;22* +
}22, -
public33 
string33 
scm_revision33 "
{33# $
get33% (
;33( )
set33* -
;33- .
}33/ 0
public44 
int44 
?44 
instance_group44 "
{44# $
get44% (
;44( )
set44* -
;44- .
}44/ 0
public55 
bool55 
	diff_mode55 
{55 
get55  #
;55# $
set55% (
;55( )
}55* +
public66 
int66 
?66 
job_slice_number66 $
{66% &
get66' *
;66* +
set66, /
;66/ 0
}661 2
public77 
int77 
?77 
job_slice_count77 #
{77$ %
get77& )
;77) *
set77+ .
;77. /
}770 1
public88 
string88 
webhook_service88 %
{88& '
get88( +
;88+ ,
set88- 0
;880 1
}882 3
public99 
object99 
webhook_credential99 (
{99) *
get99+ .
;99. /
set990 3
;993 4
}995 6
public:: 
string:: 
webhook_guid:: "
{::# $
get::% (
;::( )
set::* -
;::- .
}::/ 0
};; 
public== 

class== 

RelatedJob== 
{>> 
public?? 
string?? 

created_by??  
{??! "
get??# &
;??& '
set??( +
;??+ ,
}??- .
public@@ 
string@@ 
labels@@ 
{@@ 
get@@ "
;@@" #
set@@$ '
;@@' (
}@@) *
publicAA 
stringAA 
	inventoryAA 
{AA  !
getAA" %
;AA% &
setAA' *
;AA* +
}AA, -
publicBB 
stringBB 
projectBB 
{BB 
getBB  #
;BB# $
setBB% (
;BB( )
}BB* +
publicCC 
stringCC 
organizationCC "
{CC# $
getCC% (
;CC( )
setCC* -
;CC- .
}CC/ 0
publicDD 
stringDD 
extra_credentialsDD '
{DD( )
getDD* -
;DD- .
setDD/ 2
;DD2 3
}DD4 5
publicEE 
stringEE 
credentialsEE !
{EE" #
getEE$ '
;EE' (
setEE) ,
;EE, -
}EE. /
publicFF 
stringFF  
unified_job_templateFF *
{FF+ ,
getFF- 0
;FF0 1
setFF2 5
;FF5 6
}FF7 8
publicGG 
stringGG 
stdoutGG 
{GG 
getGG "
;GG" #
setGG$ '
;GG' (
}GG) *
publicHH 
stringHH 

job_eventsHH  
{HH! "
getHH# &
;HH& '
setHH( +
;HH+ ,
}HH- .
publicII 
stringII 
job_host_summariesII (
{II) *
getII+ .
;II. /
setII0 3
;II3 4
}II5 6
publicJJ 
stringJJ 
activity_streamJJ %
{JJ& '
getJJ( +
;JJ+ ,
setJJ- 0
;JJ0 1
}JJ2 3
publicKK 
stringKK 
notificationsKK #
{KK$ %
getKK& )
;KK) *
setKK+ .
;KK. /
}KK0 1
publicLL 
stringLL 
create_scheduleLL %
{LL& '
getLL( +
;LL+ ,
setLL- 0
;LL0 1
}LL2 3
publicMM 
stringMM 
job_templateMM "
{MM# $
getMM% (
;MM( )
setMM* -
;MM- .
}MM/ 0
publicNN 
stringNN 
cancelNN 
{NN 
getNN "
;NN" #
setNN$ '
;NN' (
}NN) *
publicOO 
stringOO 
relaunchOO 
{OO  
getOO! $
;OO$ %
setOO& )
;OO) *
}OO+ ,
}PP 
publicRR 

classRR 
SummaryFieldsJobRR !
{SS 
publicTT 
OrganizationTT 
organizationTT (
{TT) *
getTT+ .
;TT. /
setTT0 3
;TT3 4
}TT5 6
publicUU 
InventorySubsetUU 
	inventoryUU (
{UU) *
getUU+ .
;UU. /
setUU0 3
;UU3 4
}UU5 6
publicVV 
ProjectSubsetVV 
projectVV $
{VV% &
getVV' *
;VV* +
setVV, /
;VV/ 0
}VV1 2
publicWW 
JobTemplateSubsetWW  
job_templateWW! -
{WW. /
getWW0 3
;WW3 4
setWW5 8
;WW8 9
}WW: ;
publicXX  
Unified_Job_TemplateXX # 
unified_job_templateXX$ 8
{XX9 :
getXX; >
;XX> ?
setXX@ C
;XXC D
}XXE F
publicYY 
InstanceGroupYY 
instance_groupYY +
{YY, -
getYY. 1
;YY1 2
setYY3 6
;YY6 7
}YY8 9
publicZZ 

Created_ByZZ 

created_byZZ $
{ZZ% &
getZZ' *
;ZZ* +
setZZ, /
;ZZ/ 0
}ZZ1 2
public[[ 
UserCapabilities[[ 
user_capabilities[[  1
{[[2 3
get[[4 7
;[[7 8
set[[9 <
;[[< =
}[[> ?
public\\ 
Labels\\ 
labels\\ 
{\\ 
get\\ "
;\\" #
set\\$ '
;\\' (
}\\) *
public]] 
List]] 
<]] 
CredentialSubset]] $
>]]$ %
credentials]]& 1
{]]2 3
get]]4 7
;]]7 8
set]]9 <
;]]< =
}]]> ?
}^^ 
public`` 

class`` 
InventorySubset``  
{aa 
publicbb 
intbb 
?bb 
idbb 
{bb 
getbb 
;bb 
setbb !
;bb! "
}bb# $
publiccc 
stringcc 
namecc 
{cc 
getcc  
;cc  !
setcc" %
;cc% &
}cc' (
publicdd 
stringdd 
descriptiondd !
{dd" #
getdd$ '
;dd' (
setdd) ,
;dd, -
}dd. /
publicee 
boolee 
has_active_failuresee '
{ee( )
getee* -
;ee- .
setee/ 2
;ee2 3
}ee4 5
publicff 
intff 
?ff 
total_hostsff 
{ff  !
getff" %
;ff% &
setff' *
;ff* +
}ff, -
publicgg 
intgg 
?gg &
hosts_with_active_failuresgg .
{gg/ 0
getgg1 4
;gg4 5
setgg6 9
;gg9 :
}gg; <
publichh 
inthh 
?hh 
total_groupshh  
{hh! "
gethh# &
;hh& '
sethh( +
;hh+ ,
}hh- .
publicii 
boolii !
has_inventory_sourcesii )
{ii* +
getii, /
;ii/ 0
setii1 4
;ii4 5
}ii6 7
publicjj 
intjj 
?jj #
total_inventory_sourcesjj +
{jj, -
getjj. 1
;jj1 2
setjj3 6
;jj6 7
}jj8 9
publickk 
intkk 
?kk +
inventory_sources_with_failureskk 3
{kk4 5
getkk6 9
;kk9 :
setkk; >
;kk> ?
}kk@ A
publicll 
intll 
?ll 
organization_idll #
{ll$ %
getll& )
;ll) *
setll+ .
;ll. /
}ll0 1
publicmm 
stringmm 
kindmm 
{mm 
getmm  
;mm  !
setmm" %
;mm% &
}mm' (
}nn 
publicpp 

classpp 
ProjectSubsetpp 
{qq 
publicrr 
intrr 
?rr 
idrr 
{rr 
getrr 
;rr 
setrr !
;rr! "
}rr# $
publicss 
stringss 
namess 
{ss 
getss  
;ss  !
setss" %
;ss% &
}ss' (
publictt 
stringtt 
descriptiontt !
{tt" #
gettt$ '
;tt' (
settt) ,
;tt, -
}tt. /
publicuu 
stringuu 
statusuu 
{uu 
getuu "
;uu" #
setuu$ '
;uu' (
}uu) *
publicvv 
stringvv 
scm_typevv 
{vv  
getvv! $
;vv$ %
setvv& )
;vv) *
}vv+ ,
}ww 
publicyy 

classyy 
JobTemplateSubsetyy "
{zz 
public{{ 
int{{ 
?{{ 
id{{ 
{{{ 
get{{ 
;{{ 
set{{ !
;{{! "
}{{# $
public|| 
string|| 
name|| 
{|| 
get||  
;||  !
set||" %
;||% &
}||' (
public}} 
string}} 
description}} !
{}}" #
get}}$ '
;}}' (
set}}) ,
;}}, -
}}}. /
}~~ 
public
ÄÄ 

class
ÄÄ "
Unified_Job_Template
ÄÄ %
{
ÅÅ 
public
ÇÇ 
int
ÇÇ 
?
ÇÇ 
id
ÇÇ 
{
ÇÇ 
get
ÇÇ 
;
ÇÇ 
set
ÇÇ !
;
ÇÇ! "
}
ÇÇ# $
public
ÉÉ 
string
ÉÉ 
name
ÉÉ 
{
ÉÉ 
get
ÉÉ  
;
ÉÉ  !
set
ÉÉ" %
;
ÉÉ% &
}
ÉÉ' (
public
ÑÑ 
string
ÑÑ 
description
ÑÑ !
{
ÑÑ" #
get
ÑÑ$ '
;
ÑÑ' (
set
ÑÑ) ,
;
ÑÑ, -
}
ÑÑ. /
public
ÖÖ 
string
ÖÖ 
unified_job_type
ÖÖ &
{
ÖÖ' (
get
ÖÖ) ,
;
ÖÖ, -
set
ÖÖ. 1
;
ÖÖ1 2
}
ÖÖ3 4
}
ÜÜ 
public
àà 

class
àà 
InstanceGroup
àà 
{
ââ 
public
ää 
int
ää 
?
ää 
id
ää 
{
ää 
get
ää 
;
ää 
set
ää !
;
ää! "
}
ää# $
public
ãã 
string
ãã 
name
ãã 
{
ãã 
get
ãã  
;
ãã  !
set
ãã" %
;
ãã% &
}
ãã' (
public
åå 
bool
åå 
is_containerized
åå $
{
åå% &
get
åå' *
;
åå* +
set
åå, /
;
åå/ 0
}
åå1 2
}
çç 
}éé †W
ΩC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\JobTemplates\CreateJobTemplateRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
JobTemplates4 @
{ 
public 

class '
CreateJobTemplateRequestDto ,
{ 
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public		 
string		 
description		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
job_type
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
public 
int 
? 
	inventory 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
? 
project 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
playbook 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
limit 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
	verbosity 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
job_tags 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	skip_tags 
{  !
get" %
;% &
set' *
;* +
}, -
public 
object 
custom_virtualenv '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
List 
< #
InstanceGroupsCreateJob +
>+ ,
instance_groups- <
{= >
get? B
;B C
setD G
;G H
}I J
public 
int 
? 
job_slice_count #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
int 
? 
timeout 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
	diff_mode 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
become_enabled "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
allow_callbacks #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
enable_webhook "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
allow_simultaneous &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
bool 
use_fact_cache "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
host_config_key %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
webhook_service %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
object 
webhook_credential (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int 
? 
forks 
{ 
get 
;  
set! $
;$ %
}& '
public   
bool   #
ask_diff_mode_on_launch   +
{  , -
get  . 1
;  1 2
set  3 6
;  6 7
}  8 9
public!! 
bool!! $
ask_scm_branch_on_launch!! ,
{!!- .
get!!/ 2
;!!2 3
set!!4 7
;!!7 8
}!!9 :
public"" 
bool"" 
ask_tags_on_launch"" &
{""' (
get"") ,
;"", -
set"". 1
;""1 2
}""3 4
public## 
bool## #
ask_skip_tags_on_launch## +
{##, -
get##. 1
;##1 2
set##3 6
;##6 7
}##8 9
public$$ 
bool$$ 
ask_limit_on_launch$$ '
{$$( )
get$$* -
;$$- .
set$$/ 2
;$$2 3
}$$4 5
public%% 
bool%% "
ask_job_type_on_launch%% *
{%%+ ,
get%%- 0
;%%0 1
set%%2 5
;%%5 6
}%%7 8
public&& 
bool&& #
ask_verbosity_on_launch&& +
{&&, -
get&&. 1
;&&1 2
set&&3 6
;&&6 7
}&&8 9
public'' 
bool'' #
ask_inventory_on_launch'' +
{'', -
get''. 1
;''1 2
set''3 6
;''6 7
}''8 9
public(( 
bool(( #
ask_variables_on_launch(( +
{((, -
get((. 1
;((1 2
set((3 6
;((6 7
}((8 9
public)) 
bool)) $
ask_credential_on_launch)) ,
{))- .
get))/ 2
;))2 3
set))4 7
;))7 8
}))9 :
public** 
string** 

extra_vars**  
{**! "
get**# &
;**& '
set**( +
;**+ ,
}**- .
public++ 
bool++ 
survey_enabled++ "
{++# $
get++% (
;++( )
set++* -
;++- .
}++/ 0
},, 
public.. 

class.. #
InstanceGroupsCreateJob.. (
{// 
public00 
int00 
?00 
id00 
{00 
get00 
;00 
set00 !
;00! "
}00# $
public11 
string11 
type11 
{11 
get11  
;11  !
set11" %
;11% &
}11' (
public22 
string22 
url22 
{22 
get22 
;22  
set22! $
;22$ %
}22& '
public33 
RelatedCreateJob33 
related33  '
{33( )
get33* -
;33- .
set33/ 2
;332 3
}334 5
public44 
string44 
name44 
{44 
get44  
;44  !
set44" %
;44% &
}44' (
public55 
DateTime55 
created55 
{55  !
get55" %
;55% &
set55' *
;55* +
}55, -
public66 
DateTime66 
modified66  
{66! "
get66# &
;66& '
set66( +
;66+ ,
}66- .
public77 
int77 
?77 
capacity77 
{77 
get77 "
;77" #
set77$ '
;77' (
}77) *
public88 
int88 
?88 
committed_capacity88 &
{88' (
get88) ,
;88, -
set88. 1
;881 2
}883 4
public99 
int99 
?99 
consumed_capacity99 %
{99& '
get99( +
;99+ ,
set99- 0
;990 1
}992 3
public:: 
int:: 
?:: &
percent_capacity_remaining:: .
{::/ 0
get::1 4
;::4 5
set::6 9
;::9 :
}::; <
public;; 
int;; 
?;; 
jobs_running;;  
{;;! "
get;;# &
;;;& '
set;;( +
;;;+ ,
};;- .
public<< 
int<< 
?<< 

jobs_total<< 
{<<  
get<<! $
;<<$ %
set<<& )
;<<) *
}<<+ ,
public== 
int== 
?== 
	instances== 
{== 
get==  #
;==# $
set==% (
;==( )
}==* +
public>> 
object>> 

controller>>  
{>>! "
get>># &
;>>& '
set>>( +
;>>+ ,
}>>- .
public?? 
bool?? 
is_controller?? !
{??" #
get??$ '
;??' (
set??) ,
;??, -
}??. /
public@@ 
bool@@ 
is_isolated@@ 
{@@  !
get@@" %
;@@% &
set@@' *
;@@* +
}@@, -
publicAA 
boolAA 
is_containerizedAA $
{AA% &
getAA' *
;AA* +
setAA, /
;AA/ 0
}AA1 2
publicBB 
objectBB 

credentialBB  
{BB! "
getBB# &
;BB& '
setBB( +
;BB+ ,
}BB- .
publicCC 
intCC 
?CC &
policy_instance_percentageCC .
{CC/ 0
getCC1 4
;CC4 5
setCC6 9
;CC9 :
}CC; <
publicDD 
intDD 
?DD #
policy_instance_minimumDD +
{DD, -
getDD. 1
;DD1 2
setDD3 6
;DD6 7
}DD8 9
publicEE 
ListEE 
<EE 
objectEE 
>EE  
policy_instance_listEE 0
{EE1 2
getEE3 6
;EE6 7
setEE8 ;
;EE; <
}EE= >
publicFF 
stringFF 
pod_spec_overrideFF '
{FF( )
getFF* -
;FF- .
setFF/ 2
;FF2 3
}FF4 5
publicGG 
objectGG 
summary_fieldsGG $
{GG% &
getGG' *
;GG* +
setGG, /
;GG/ 0
}GG1 2
publicHH 
boolHH 

isSelectedHH 
{HH  
getHH! $
;HH$ %
setHH& )
;HH) *
}HH+ ,
}II 
publicKK 

classKK 
RelatedCreateJobKK !
{LL 
publicMM 
stringMM 
jobsMM 
{MM 
getMM  
;MM  !
setMM" %
;MM% &
}MM' (
publicNN 
stringNN 
	instancesNN 
{NN  !
getNN" %
;NN% &
setNN' *
;NN* +
}NN, -
}OO 
}PP ‡å
ºC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\JobTemplates\GetJobTemplatesResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
JobTemplates4 @
{ 
public 

class &
GetJobTemplatesResponseDto +
{		 
public

 
int

 
?

 
id

 
{

 
get

 
;

 
set

 !
;

! "
}

# $
public 
string 
type 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
url 
{ 
get 
;  
set! $
;$ %
}& '
public 
RelatedTemplate 
related &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public $
SummaryFieldsJobTemplate '
summary_fields( 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
DateTime 
created 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
modified  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
job_type 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
? 
	inventory 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
? 
project 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
playbook 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 

scm_branch  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
? 
forks 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
limit 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
? 
	verbosity 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

extra_vars  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
job_tags 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
force_handlers "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
	skip_tags 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
start_at_task #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public   
int   
?   
timeout   
{   
get   !
;  ! "
set  # &
;  & '
}  ( )
public!! 
bool!! 
use_fact_cache!! "
{!!# $
get!!% (
;!!( )
set!!* -
;!!- .
}!!/ 0
public"" 
int"" 
?"" 
organization""  
{""! "
get""# &
;""& '
set""( +
;""+ ,
}""- .
public## 
object## 
last_job_run## "
{### $
get##% (
;##( )
set##* -
;##- .
}##/ 0
public$$ 
bool$$ 
last_job_failed$$ #
{$$$ %
get$$& )
;$$) *
set$$+ .
;$$. /
}$$0 1
public%% 
object%% 
next_job_run%% "
{%%# $
get%%% (
;%%( )
set%%* -
;%%- .
}%%/ 0
public&& 
string&& 
status&& 
{&& 
get&& "
;&&" #
set&&$ '
;&&' (
}&&) *
public'' 
string'' 
host_config_key'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
public(( 
bool(( $
ask_scm_branch_on_launch(( ,
{((- .
get((/ 2
;((2 3
set((4 7
;((7 8
}((9 :
public)) 
bool)) #
ask_diff_mode_on_launch)) +
{)), -
get)). 1
;))1 2
set))3 6
;))6 7
}))8 9
public** 
bool** #
ask_variables_on_launch** +
{**, -
get**. 1
;**1 2
set**3 6
;**6 7
}**8 9
public++ 
bool++ 
ask_limit_on_launch++ '
{++( )
get++* -
;++- .
set++/ 2
;++2 3
}++4 5
public,, 
bool,, 
ask_tags_on_launch,, &
{,,' (
get,,) ,
;,,, -
set,,. 1
;,,1 2
},,3 4
public-- 
bool-- #
ask_skip_tags_on_launch-- +
{--, -
get--. 1
;--1 2
set--3 6
;--6 7
}--8 9
public.. 
bool.. "
ask_job_type_on_launch.. *
{..+ ,
get..- 0
;..0 1
set..2 5
;..5 6
}..7 8
public// 
bool// #
ask_verbosity_on_launch// +
{//, -
get//. 1
;//1 2
set//3 6
;//6 7
}//8 9
public00 
bool00 #
ask_inventory_on_launch00 +
{00, -
get00. 1
;001 2
set003 6
;006 7
}008 9
public11 
bool11 $
ask_credential_on_launch11 ,
{11- .
get11/ 2
;112 3
set114 7
;117 8
}119 :
public22 
bool22 
survey_enabled22 "
{22# $
get22% (
;22( )
set22* -
;22- .
}22/ 0
public33 
bool33 
become_enabled33 "
{33# $
get33% (
;33( )
set33* -
;33- .
}33/ 0
public44 
bool44 
	diff_mode44 
{44 
get44  #
;44# $
set44% (
;44( )
}44* +
public55 
bool55 
allow_simultaneous55 &
{55' (
get55) ,
;55, -
set55. 1
;551 2
}553 4
public66 
object66 
custom_virtualenv66 '
{66( )
get66* -
;66- .
set66/ 2
;662 3
}664 5
public77 
int77 
?77 
job_slice_count77 #
{77$ %
get77& )
;77) *
set77+ .
;77. /
}770 1
public88 
string88 
webhook_service88 %
{88& '
get88( +
;88+ ,
set88- 0
;880 1
}882 3
public99 
object99 
webhook_credential99 (
{99) *
get99+ .
;99. /
set990 3
;993 4
}995 6
}:: 
public<< 

class<< 
RelatedTemplate<<  
{== 
public>> 
string>> 

created_by>>  
{>>! "
get>># &
;>>& '
set>>( +
;>>+ ,
}>>- .
public?? 
string?? 
modified_by?? !
{??" #
get??$ '
;??' (
set??) ,
;??, -
}??. /
public@@ 
string@@ 
labels@@ 
{@@ 
get@@ "
;@@" #
set@@$ '
;@@' (
}@@) *
publicAA 
stringAA 
	inventoryAA 
{AA  !
getAA" %
;AA% &
setAA' *
;AA* +
}AA, -
publicBB 
stringBB 
projectBB 
{BB 
getBB  #
;BB# $
setBB% (
;BB( )
}BB* +
publicCC 
stringCC 
organizationCC "
{CC# $
getCC% (
;CC( )
setCC* -
;CC- .
}CC/ 0
publicDD 
stringDD 
extra_credentialsDD '
{DD( )
getDD* -
;DD- .
setDD/ 2
;DD2 3
}DD4 5
publicEE 
stringEE 
credentialsEE !
{EE" #
getEE$ '
;EE' (
setEE) ,
;EE, -
}EE. /
publicFF 
stringFF 
jobsFF 
{FF 
getFF  
;FF  !
setFF" %
;FF% &
}FF' (
publicGG 
stringGG 
	schedulesGG 
{GG  !
getGG" %
;GG% &
setGG' *
;GG* +
}GG, -
publicHH 
stringHH 
activity_streamHH %
{HH& '
getHH( +
;HH+ ,
setHH- 0
;HH0 1
}HH2 3
publicII 
stringII 
launchII 
{II 
getII "
;II" #
setII$ '
;II' (
}II) *
publicJJ 
stringJJ 
webhook_keyJJ !
{JJ" #
getJJ$ '
;JJ' (
setJJ) ,
;JJ, -
}JJ. /
publicKK 
stringKK 
webhook_receiverKK &
{KK' (
getKK) ,
;KK, -
setKK. 1
;KK1 2
}KK3 4
publicLL 
stringLL *
notification_templates_startedLL 4
{LL5 6
getLL7 :
;LL: ;
setLL< ?
;LL? @
}LLA B
publicMM 
stringMM *
notification_templates_successMM 4
{MM5 6
getMM7 :
;MM: ;
setMM< ?
;MM? @
}MMA B
publicNN 
stringNN (
notification_templates_errorNN 2
{NN3 4
getNN5 8
;NN8 9
setNN: =
;NN= >
}NN? @
publicOO 
stringOO 
access_listOO !
{OO" #
getOO$ '
;OO' (
setOO) ,
;OO, -
}OO. /
publicPP 
stringPP 
survey_specPP !
{PP" #
getPP$ '
;PP' (
setPP) ,
;PP, -
}PP. /
publicQQ 
stringQQ 
object_rolesQQ "
{QQ# $
getQQ% (
;QQ( )
setQQ* -
;QQ- .
}QQ/ 0
publicRR 
stringRR 
instance_groupsRR %
{RR& '
getRR( +
;RR+ ,
setRR- 0
;RR0 1
}RR2 3
publicSS 
stringSS 
slice_workflow_jobsSS )
{SS* +
getSS, /
;SS/ 0
setSS1 4
;SS4 5
}SS6 7
publicTT 
stringTT 
copyTT 
{TT 
getTT  
;TT  !
setTT" %
;TT% &
}TT' (
}UU 
publicWW 

classWW $
SummaryFieldsJobTemplateWW )
{XX 
publicYY 
OrganizationYY 
organizationYY (
{YY) *
getYY+ .
;YY. /
setYY0 3
;YY3 4
}YY5 6
publicZZ 
	InventoryZZ 
	inventoryZZ "
{ZZ# $
getZZ% (
;ZZ( )
setZZ* -
;ZZ- .
}ZZ/ 0
public[[ 
Project[[ 
project[[ 
{[[  
get[[! $
;[[$ %
set[[& )
;[[) *
}[[+ ,
public\\ 

Created_By\\ 

created_by\\ $
{\\% &
get\\' *
;\\* +
set\\, /
;\\/ 0
}\\1 2
public]] 
Modified_By]] 
modified_by]] &
{]]' (
get]]) ,
;]], -
set]]. 1
;]]1 2
}]]3 4
public^^ 

Dictionary^^ 
<^^ 
string^^  
,^^  !
	RoleItems^^! *
>^^* +
object_roles^^, 8
{^^9 :
get^^; >
;^^> ?
set^^@ C
;^^C D
}^^E F
public__ '
UserCapabilitiesJobTemplate__ *
user_capabilities__+ <
{__= >
get__? B
;__B C
set__D G
;__G H
}__I J
public`` 
Labels`` 
labels`` 
{`` 
get`` "
;``" #
set``$ '
;``' (
}``) *
publicaa 
objectaa 
[aa 
]aa 
recent_jobsaa #
{aa$ %
getaa& )
;aa) *
setaa+ .
;aa. /
}aa0 1
publicbb 
Listbb 
<bb 
CredentialSubsetbb $
>bb$ %
credentialsbb& 1
{bb2 3
getbb4 7
;bb7 8
setbb9 <
;bb< =
}bb> ?
}cc 
publicee 

classee 
	Inventoryee 
{ff 
publicgg 
intgg 
?gg 
idgg 
{gg 
getgg 
;gg 
setgg !
;gg! "
}gg# $
publichh 
stringhh 
namehh 
{hh 
gethh  
;hh  !
sethh" %
;hh% &
}hh' (
publicii 
stringii 
descriptionii !
{ii" #
getii$ '
;ii' (
setii) ,
;ii, -
}ii. /
publicjj 
booljj 
has_active_failuresjj '
{jj( )
getjj* -
;jj- .
setjj/ 2
;jj2 3
}jj4 5
publickk 
intkk 
?kk 
total_hostskk 
{kk  !
getkk" %
;kk% &
setkk' *
;kk* +
}kk, -
publicll 
intll 
?ll &
hosts_with_active_failuresll .
{ll/ 0
getll1 4
;ll4 5
setll6 9
;ll9 :
}ll; <
publicmm 
intmm 
?mm 
total_groupsmm  
{mm! "
getmm# &
;mm& '
setmm( +
;mm+ ,
}mm- .
publicnn 
boolnn !
has_inventory_sourcesnn )
{nn* +
getnn, /
;nn/ 0
setnn1 4
;nn4 5
}nn6 7
publicoo 
intoo 
?oo #
total_inventory_sourcesoo +
{oo, -
getoo. 1
;oo1 2
setoo3 6
;oo6 7
}oo8 9
publicpp 
intpp 
?pp +
inventory_sources_with_failurespp 3
{pp4 5
getpp6 9
;pp9 :
setpp; >
;pp> ?
}pp@ A
publicqq 
intqq 
?qq 
organization_idqq #
{qq$ %
getqq& )
;qq) *
setqq+ .
;qq. /
}qq0 1
publicrr 
stringrr 
kindrr 
{rr 
getrr  
;rr  !
setrr" %
;rr% &
}rr' (
}ss 
publicuu 

classuu 
Projectuu 
{vv 
publicww 
intww 
?ww 
idww 
{ww 
getww 
;ww 
setww !
;ww! "
}ww# $
publicxx 
stringxx 
namexx 
{xx 
getxx  
;xx  !
setxx" %
;xx% &
}xx' (
publicyy 
stringyy 
descriptionyy !
{yy" #
getyy$ '
;yy' (
setyy) ,
;yy, -
}yy. /
publiczz 
stringzz 
statuszz 
{zz 
getzz "
;zz" #
setzz$ '
;zz' (
}zz) *
public{{ 
string{{ 
scm_type{{ 
{{{  
get{{! $
;{{$ %
set{{& )
;{{) *
}{{+ ,
}|| 
public 

class '
UserCapabilitiesJobTemplate ,
{
ÄÄ 
public
ÅÅ 
bool
ÅÅ 
edit
ÅÅ 
{
ÅÅ 
get
ÅÅ 
;
ÅÅ 
set
ÅÅ  #
;
ÅÅ# $
}
ÅÅ% &
public
ÇÇ 
bool
ÇÇ 
delete
ÇÇ 
{
ÇÇ 
get
ÇÇ  
;
ÇÇ  !
set
ÇÇ" %
;
ÇÇ% &
}
ÇÇ' (
public
ÉÉ 
bool
ÉÉ 
start
ÉÉ 
{
ÉÉ 
get
ÉÉ 
;
ÉÉ  
set
ÉÉ! $
;
ÉÉ$ %
}
ÉÉ& '
public
ÑÑ 
bool
ÑÑ 
schedule
ÑÑ 
{
ÑÑ 
get
ÑÑ "
;
ÑÑ" #
set
ÑÑ$ '
;
ÑÑ' (
}
ÑÑ) *
public
ÖÖ 
bool
ÖÖ 
copy
ÖÖ 
{
ÖÖ 
get
ÖÖ 
;
ÖÖ 
set
ÖÖ  #
;
ÖÖ# $
}
ÖÖ% &
}
ÜÜ 
}áá –
§C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\LoginRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
{ 
public 

class 
LoginRequestDto  
{ 
public 
int 
id 
{ 
get 
; 
set  
;  !
}" #
public		 
string		 
type		 
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
 
url

 
{

 
get

 
;

  
set

! $
;

$ %
}

& '
public 
Related 
related 
{  
get! $
;$ %
set& )
;) *
}+ ,
public (
SummaryFieldsLoginRequestDto +
summary_fields, :
{; <
get= @
;@ A
setB E
;E F
}G H
public 
DateTime 
created 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
modified  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
int 
user 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
token 
{ 
get !
;! "
set# &
;& '
}( )
public 
object 
refresh_token #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
object 
application !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
DateTime 
expires 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
scope 
{ 
get !
;! "
set# &
;& '
}( )
} 
public 

class 
Related 
{ 
public 
string 
user 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
activity_stream %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
public 

class (
SummaryFieldsLoginRequestDto -
{ 
public   
UserLoginRequestDto   "
user  # '
{  ( )
get  * -
;  - .
set  / 2
;  2 3
}  4 5
}!! 
public## 

class## 
UserLoginRequestDto## $
{$$ 
public%% 
int%% 
id%% 
{%% 
get%% 
;%% 
set%%  
;%%  !
}%%" #
public&& 
string&& 
username&& 
{&&  
get&&! $
;&&$ %
set&&& )
;&&) *
}&&+ ,
public'' 
string'' 

first_name''  
{''! "
get''# &
;''& '
set''( +
;''+ ,
}''- .
public(( 
string(( 
	last_name(( 
{((  !
get((" %
;((% &
set((' *
;((* +
}((, -
})) 
}** Ã
øC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Organizations\CreateOrganizationRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Organizations4 A
{ 
public 

class (
CreateOrganizationRequestDto -
{ 
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
} 
} …&
ªC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Organizations\OrganizationsResponseDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Organizations4 A
{ 
public 

class !
ResultOrganizationDto &
{ 
public		 
string		 
description		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
int

 
?

 
	max_hosts

 
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
public 
string 
url 
{ 
get 
;  
set! $
;$ %
}& '
public %
OrganizationSummaryFields (
summary_fields) 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
DateTime 
created 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
modified  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 

Dictionary 
< 
string  
,  !
string! '
>' (
related) 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
object 
custom_virtualenv '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
string 
type 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
? 
id 
{ 
get 
; 
set !
;! "
}# $
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
} 
public 

class %
OrganizationSummaryFields *
{ 
public 
UserCapabilities 
user_capabilities  1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public  
Related_Field_Counts # 
related_field_counts$ 8
{9 :
get; >
;> ?
set@ C
;C D
}E F
public 

Dictionary 
< 
string  
,  !

ObjectRole" ,
>, -
object_roles. :
{; <
get= @
;@ A
setB E
;E F
}G H
} 
public 

class  
Related_Field_Counts %
{ 
public 
int 
? 
job_templates !
{" #
get$ '
;' (
set) ,
;, -
}. /
public   
int   
?   
users   
{   
get   
;    
set  ! $
;  $ %
}  & '
public!! 
int!! 
?!! 
teams!! 
{!! 
get!! 
;!!  
set!!! $
;!!$ %
}!!& '
public"" 
int"" 
?"" 
admins"" 
{"" 
get""  
;""  !
set""" %
;""% &
}""' (
public## 
int## 
?## 
inventories## 
{##  !
get##" %
;##% &
set##' *
;##* +
}##, -
public$$ 
int$$ 
?$$ 
projects$$ 
{$$ 
get$$ "
;$$" #
set$$$ '
;$$' (
}$$) *
}%% 
public(( 

class(( 

ObjectRole(( 
{)) 
public** 
bool** 
?** 
	user_only** 
{**  
get**! $
;**$ %
set**& )
;**) *
}**+ ,
public++ 
string++ 
description++ !
{++" #
get++$ '
;++' (
set++) ,
;++, -
}++. /
public,, 
string,, 
name,, 
{,, 
get,,  
;,,  !
set,," %
;,,% &
},,' (
public-- 
int-- 
?-- 
id-- 
{-- 
get-- 
;-- 
set-- !
;--! "
}--# $
}.. 
}// ı
µC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Projects\CreateProjectRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Projects4 <
{ 
public 

class #
CreateProjectRequestDto (
{ 
public		 
string		 
name		 
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
 
description

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
public 
string 

local_path  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
scm_type 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
scm_url 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

scm_branch  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
scm_refspec !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
	scm_clean 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool  
scm_delete_on_update (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
object 

credential  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
timeout 
{ 
get  
;  !
set" %
;% &
}' (
public 
object 
organization "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool  
scm_update_on_launch (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
int $
scm_update_cache_timeout +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
bool 
allow_override "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
object 
custom_virtualenv '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
} 
} ÉH
≥C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Projects\GetProjectsRequestDto.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Dto0 3
.3 4
Projects4 <
{ 
public 

class !
GetProjectsRequestDto &
{ 
public		 
int		 
?		 
id		 
{		 
get		 
;		 
set		 !
;		! "
}		# $
public

 
string

 
type

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 
url 
{ 
get 
;  
set! $
;$ %
}& '
public 
RelatedProjects 
related &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public !
SummaryFieldsProjects $
summary_fields% 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
DateTime 
created 
{  !
get" %
;% &
set' *
;* +
}, -
public 
DateTime 
modified  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 

local_path  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
scm_type 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
scm_url 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

scm_branch  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
scm_refspec !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
bool 
	scm_clean 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool  
scm_delete_on_update (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
object 

credential  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
? 
timeout 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
scm_revision "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
object 
last_job_run "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
bool 
last_job_failed #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
object 
next_job_run "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
status 
{ 
get "
;" #
set$ '
;' (
}) *
public   
int   
?   
organization    
{  ! "
get  # &
;  & '
set  ( +
;  + ,
}  - .
public!! 
bool!!  
scm_update_on_launch!! (
{!!) *
get!!+ .
;!!. /
set!!0 3
;!!3 4
}!!5 6
public"" 
int"" 
?"" $
scm_update_cache_timeout"" ,
{""- .
get""/ 2
;""2 3
set""4 7
;""7 8
}""9 :
public## 
bool## 
allow_override## "
{### $
get##% (
;##( )
set##* -
;##- .
}##/ 0
public$$ 
object$$ 
custom_virtualenv$$ '
{$$( )
get$$* -
;$$- .
set$$/ 2
;$$2 3
}$$4 5
public%% 
bool%% 
last_update_failed%% &
{%%' (
get%%) ,
;%%, -
set%%. 1
;%%1 2
}%%3 4
public&& 
object&& 
last_updated&& "
{&&# $
get&&% (
;&&( )
set&&* -
;&&- .
}&&/ 0
}'' 
public)) 

class)) 
RelatedProjects))  
{** 
public++ 
string++ 

created_by++  
{++! "
get++# &
;++& '
set++( +
;+++ ,
}++- .
public,, 
string,, 
modified_by,, !
{,," #
get,,$ '
;,,' (
set,,) ,
;,,, -
},,. /
public-- 
string-- 
teams-- 
{-- 
get-- !
;--! "
set--# &
;--& '
}--( )
public.. 
string.. 
	playbooks.. 
{..  !
get.." %
;..% &
set..' *
;..* +
}.., -
public// 
string// 
inventory_files// %
{//& '
get//( +
;//+ ,
set//- 0
;//0 1
}//2 3
public00 
string00 
update00 
{00 
get00 "
;00" #
set00$ '
;00' (
}00) *
public11 
string11 
project_updates11 %
{11& '
get11( +
;11+ ,
set11- 0
;110 1
}112 3
public22 
string22 !
scm_inventory_sources22 +
{22, -
get22. 1
;221 2
set223 6
;226 7
}228 9
public33 
string33 
	schedules33 
{33  !
get33" %
;33% &
set33' *
;33* +
}33, -
public44 
string44 
activity_stream44 %
{44& '
get44( +
;44+ ,
set44- 0
;440 1
}442 3
public55 
string55 *
notification_templates_started55 4
{555 6
get557 :
;55: ;
set55< ?
;55? @
}55A B
public66 
string66 *
notification_templates_success66 4
{665 6
get667 :
;66: ;
set66< ?
;66? @
}66A B
public77 
string77 (
notification_templates_error77 2
{773 4
get775 8
;778 9
set77: =
;77= >
}77? @
public88 
string88 
access_list88 !
{88" #
get88$ '
;88' (
set88) ,
;88, -
}88. /
public99 
string99 
object_roles99 "
{99# $
get99% (
;99( )
set99* -
;99- .
}99/ 0
public:: 
string:: 
copy:: 
{:: 
get::  
;::  !
set::" %
;::% &
}::' (
public;; 
string;; 
organization;; "
{;;# $
get;;% (
;;;( )
set;;* -
;;;- .
};;/ 0
}<< 
public>> 

class>> !
SummaryFieldsProjects>> &
{?? 
public@@ 
Organization@@ 
organization@@ (
{@@) *
get@@+ .
;@@. /
set@@0 3
;@@3 4
}@@5 6
publicAA 

Created_ByAA 

created_byAA $
{AA% &
getAA' *
;AA* +
setAA, /
;AA/ 0
}AA1 2
publicBB 
Modified_ByBB 
modified_byBB &
{BB' (
getBB) ,
;BB, -
setBB. 1
;BB1 2
}BB3 4
publicCC 

DictionaryCC 
<CC 
stringCC  
,CC  !
	RoleItemsCC! *
>CC* +
object_rolesCC, 8
{CC9 :
getCC; >
;CC> ?
setCC@ C
;CCC D
}CCE F
publicDD 
UserCapabilitiesDD 
user_capabilitiesDD  1
{DD2 3
getDD4 7
;DD7 8
setDD9 <
;DD< =
}DD> ?
}EE 
}FF €	
ΩC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Exceptions\AnsibleTowerUnauthorizedException.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0

Exceptions0 :
{ 
public 

class -
!AnsibleTowerUnauthorizedException 2
:2 3
	Exception4 =
,= >
IWebApiException? O
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
public -
!AnsibleTowerUnauthorizedException 0
(0 1
)1 2
{ 	
} 	
public -
!AnsibleTowerUnauthorizedException 0
(0 1
string1 7
message8 ?
)? @
: 
base 
( 
message 
) 
{ 	
} 	
} 
} ¡Ï
¨C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Handler\AnsibleTowerHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Handler0 7
{ 
public 

class 
AnsibleTowerHandler $
:% & 
IAnsibleTowerHandler' ;
{ 
private 
IHttpClientHandler "
HttpClientHandler# 4
{5 6
get7 :
;: ;
}< =
private !
IAnsibleTowerInstance % 
AnsibleTowerInstance& :
{; <
get= @
;@ A
}B C
private 
string 
	AuthToken  
{! "
get# &
;& '
set( +
;+ ,
}- .
public%% 
AnsibleTowerHandler%% "
(%%" #!
IAnsibleTowerInstance%%# 8 
ansibleTowerInstance%%9 M
,%%M N
IHttpClientHandler%%O a
httpClientHandler%%b s
)%%s t
{&& 	
HttpClientHandler'' 
='' 
httpClientHandler''  1
;''1 2 
AnsibleTowerInstance((  
=((! " 
ansibleTowerInstance((# 7
;((7 8
})) 	
[33 	
Route33	 
(33 
$str33 )
)33) *
]33* +
public44 
async44 
Task44 
<44 
LoginRequestDto44 )
>44) *
Login44+ 0
(440 1
string441 7
userName448 @
,44@ A
string44B H
password44I Q
)44Q R
{55 	
var66 
result66 
=66 
await66 
HttpClientHandler66 0
.660 1
Send661 5
<665 6
LoginRequestDto666 E
>66E F
(66F G

HttpMethod66G Q
.66Q R
Post66R V
,66V W 
AnsibleTowerInstance66X l
.66l m
CircuitBreakerName66m 
,	66 Ä"
AnsibleTowerInstance
66Å ï
.
66ï ñ
ApiDefinition
66ñ £
.
66£ §
tokens
66§ ™
,
66™ ´
null
66¨ ∞
,
66∞ ±
	MediaType
66≤ ª
.
66ª º
ApplicationJson
66º À
,
66À Ã
GetLoginHeaders
66Õ ‹
(
66‹ ›
userName
66› Â
,
66Â Ê
password
66Á Ô
)
66Ô 
)
66 Ò
.
66Ò Ú
ConfigureAwait
66Ú Ä
(
66Ä Å
false
66Å Ü
)
66Ü á
;
66á à
	AuthToken88 
=88 
result88 
.88 
token88 $
;88$ %
return:: 
result:: 
;:: 
};; 	
publicGG 
TaskGG 
<GG #
ApplicationsResponseDtoGG +
>GG+ ,
CreateApplicationGG- >
(GG> ?"
ApplicationsRequestDtoGG? U 
applicationstRequestGGV j
,GGj k
stringGGl r 
authenticationToken	GGs Ü
)
GGÜ á
{HH 	
returnII 
PostAnsibleII 
<II #
ApplicationsResponseDtoII 6
>II6 7
(II7 8
authenticationTokenII8 K
,IIK L 
AnsibleTowerInstanceIIL `
.II` a
ApiDefinitionIIa n
.IIn o
applicationsIIo {
,II{ |!
applicationstRequest	II} ë
)
IIë í
;
IIí ì
}JJ 	
publicQQ 
TaskQQ 
<QQ 
PaginatedResultDtoQQ &
<QQ& '
ResultApplicationQQ' 8
>QQ8 9
>QQ9 :
GetApplicationsQQ; J
(QQJ K
stringQQK Q
authenticationTokenQQR e
)QQe f
{RR 	
returnSS 

GetAnsibleSS 
<SS 
PaginatedResultDtoSS 0
<SS0 1
ResultApplicationSS1 B
>SSB C
>SSC D
(SSD E
authenticationTokenSSE X
,SSX Y 
AnsibleTowerInstanceSSZ n
.SSn o
ApiDefinitionSSo |
.SS| }
applications	SS} â
)
SSâ ä
;
SSä ã
}TT 	
public__ 
Task__ 
<__ !
ResultOrganizationDto__ )
>__) *
GetOrganizationById__+ >
(__> ?
string__? E
authenticationToken__F Y
,__Y Z
string__[ a
organizationId__b p
)__p q
{`` 	
returnaa 

GetAnsibleaa 
<aa !
ResultOrganizationDtoaa 3
>aa3 4
(aa4 5
authenticationTokenaa5 H
,aaH I
$"aaJ L
{aaL M 
AnsibleTowerInstanceaaM a
.aaa b
ApiDefinitionaab o
.aao p
organizationsaap }
}aa} ~
{aa~ 
organizationId	aa ç
}
aaç é
$str
aaé è
"
aaè ê
)
aaê ë
;
aaë í
}bb 	
publicjj 
Taskjj 
<jj !
ResultOrganizationDtojj )
>jj) *
CreateOrganizationjj+ =
(jj= >
stringjj> D
authenticationTokenjjE X
,jjX Y(
CreateOrganizationRequestDtojjZ v 
organizationRequest	jjw ä
)
jjä ã
{kk 	
returnll 
PostAnsiblell 
<ll !
ResultOrganizationDtoll 4
>ll4 5
(ll5 6
authenticationTokenll6 I
,llI J 
AnsibleTowerInstancellK _
.ll_ `
ApiDefinitionll` m
.llm n
organizationslln {
,ll{ | 
organizationRequest	ll} ê
)
llê ë
;
llë í
}mm 	
publicuu 
Taskuu 
<uu 
PaginatedResultDtouu &
<uu& '!
ResultOrganizationDtouu' <
>uu< =
>uu= >
GetOrganizationsuu? O
(uuO P
stringuuP V
authenticationTokenuuW j
,uuj k
stringuul r
searchCriteria	uus Å
=
uuÇ É
null
uuÑ à
)
uuà â
{vv 	
returnww 

GetAnsibleww 
<ww 
PaginatedResultDtoww 0
<ww0 1!
ResultOrganizationDtoww1 F
>wwF G
>wwG H
(wwH I
authenticationTokenwwI \
,ww\ ] 
AnsibleTowerInstanceww^ r
.wwr s
ApiDefinition	wws Ä
.
wwÄ Å
organizations
wwÅ é
,
wwè ê
searchCriteria
wwë ü
)
wwü †
;
ww† °
}xx 	
public
ÅÅ 
Task
ÅÅ 
<
ÅÅ  
PaginatedResultDto
ÅÅ &
<
ÅÅ& ' 
ResultInventoryDto
ÅÅ' 9
>
ÅÅ9 :
>
ÅÅ: ;
GetInventories
ÅÅ< J
(
ÅÅJ K
string
ÅÅK Q!
authenticationToken
ÅÅR e
)
ÅÅe f
{
ÇÇ 	
return
ÉÉ 

GetAnsible
ÉÉ 
<
ÉÉ  
PaginatedResultDto
ÉÉ 0
<
ÉÉ0 1 
ResultInventoryDto
ÉÉ1 C
>
ÉÉC D
>
ÉÉD E
(
ÉÉE F!
authenticationToken
ÉÉF Y
,
ÉÉY Z"
AnsibleTowerInstance
ÉÉZ n
.
ÉÉn o
ApiDefinition
ÉÉo |
.
ÉÉ| }
	inventoryÉÉ} Ü
)ÉÉÜ á
;ÉÉá à
}
ÑÑ 	
public
åå 
Task
åå 
<
åå  
ResultInventoryDto
åå &
>
åå& '
GetInventoryById
åå( 8
(
åå8 9
string
åå9 ?!
authenticationToken
åå@ S
,
ååS T
string
ååU [
inventoryId
åå\ g
)
ååg h
{
çç 	
return
éé 

GetAnsible
éé 
<
éé  
ResultInventoryDto
éé 0
>
éé0 1
(
éé1 2!
authenticationToken
éé2 E
,
ééE F
$"
ééG I
{
ééI J"
AnsibleTowerInstance
ééJ ^
.
éé^ _
ApiDefinition
éé_ l
.
éél m
	inventory
éém v
}
éév w
{
ééw x
inventoryIdééx É
}ééÉ Ñ
$strééÑ Ö
"ééÖ Ü
)ééÜ á
;ééá à
}
èè 	
public
óó 
Task
óó 
<
óó  
ResultInventoryDto
óó &
>
óó& '
CreateInventory
óó( 7
(
óó7 8
string
óó8 >!
authenticationToken
óó? R
,
óóR S'
CreateInventoryRequestDto
óóT m
inventoryRequest
óón ~
)
óó~ 
{
òò 	
return
ôô 
PostAnsible
ôô 
<
ôô  
ResultInventoryDto
ôô 1
>
ôô1 2
(
ôô2 3!
authenticationToken
ôô3 F
,
ôôF G"
AnsibleTowerInstance
ôôH \
.
ôô\ ]
ApiDefinition
ôô] j
.
ôôj k
	inventory
ôôk t
,
ôôt u
inventoryRequestôôv Ü
)ôôÜ á
;ôôá à
}
öö 	
public
££ 
Task
££ 
<
££  
PaginatedResultDto
££ &
<
££& '(
GetJobTemplatesResponseDto
££' A
>
££A B
>
££B C
GetJobTemplates
££D S
(
££S T
string
££T Z!
authenticationToken
££[ n
)
££n o
{
§§ 	
return
•• 

GetAnsible
•• 
<
••  
PaginatedResultDto
•• 0
<
••0 1(
GetJobTemplatesResponseDto
••1 K
>
••K L
>
••L M
(
••M N!
authenticationToken
••N a
,
••a b"
AnsibleTowerInstance
••c w
.
••w x
ApiDefinition••x Ö
.••Ö Ü
job_templates••Ü ì
)••ì î
;••î ï
}
¶¶ 	
public
ÆÆ 
Task
ÆÆ 
<
ÆÆ (
GetJobTemplatesResponseDto
ÆÆ .
>
ÆÆ. /
GetJobTemplate
ÆÆ0 >
(
ÆÆ> ?
string
ÆÆ? E!
authenticationToken
ÆÆF Y
,
ÆÆY Z
string
ÆÆ[ a
jobTemplateId
ÆÆb o
)
ÆÆo p
{
ØØ 	
return
∞∞ 

GetAnsible
∞∞ 
<
∞∞ (
GetJobTemplatesResponseDto
∞∞ 8
>
∞∞8 9
(
∞∞9 :!
authenticationToken
∞∞: M
,
∞∞M N
$"
∞∞O Q
{
∞∞Q R"
AnsibleTowerInstance
∞∞R f
.
∞∞f g
ApiDefinition
∞∞g t
.
∞∞t u
job_templates∞∞u Ç
}∞∞Ç É
{∞∞É Ñ
jobTemplateId∞∞Ñ ë
}∞∞ë í
$str∞∞í ì
"∞∞ì î
)∞∞î ï
;∞∞ï ñ
}
±± 	
public
ππ 
Task
ππ 
<
ππ (
GetJobTemplatesResponseDto
ππ .
>
ππ. /
CreateJobTemplate
ππ0 A
(
ππA B
string
ππB H!
authenticationToken
ππI \
,
ππ\ ])
CreateJobTemplateRequestDto
ππ^ y'
createJobTemplateRequestππz í
)ππí ì
{
∫∫ 	
return
ªª 
PostAnsible
ªª 
<
ªª (
GetJobTemplatesResponseDto
ªª 9
>
ªª9 :
(
ªª: ;!
authenticationToken
ªª; N
,
ªªN O"
AnsibleTowerInstance
ªªP d
.
ªªd e
ApiDefinition
ªªe r
.
ªªr s
job_templatesªªs Ä
,ªªÄ Å(
createJobTemplateRequestªªÇ ö
)ªªö õ
;ªªõ ú
}
ºº 	
public
∆∆ 
Task
∆∆ 
<
∆∆  
PaginatedResultDto
∆∆ &
<
∆∆& ''
GetCredentialsResponseDto
∆∆' @
>
∆∆@ A
>
∆∆A B
GetCredentials
∆∆C Q
(
∆∆Q R
string
∆∆R X!
authenticationToken
∆∆Y l
,
∆∆l m
string
∆∆n t
searchCriteria∆∆u É
=∆∆Ñ Ö
null∆∆Ü ä
)∆∆ä ã
{
«« 	
return
»» 

GetAnsible
»» 
<
»»  
PaginatedResultDto
»» 0
<
»»0 1'
GetCredentialsResponseDto
»»1 J
>
»»J K
>
»»K L
(
»»L M!
authenticationToken
»»M `
,
»»` a"
AnsibleTowerInstance
»»b v
.
»»v w
ApiDefinition»»w Ñ
.»»Ñ Ö
credentials»»Ö ê
,»»ë í
searchCriteria»»ì °
)»»° ¢
;»»¢ £
}
…… 	
public
—— 
Task
—— 
<
—— '
GetCredentialsResponseDto
—— -
>
——- .
CreateCredential
——/ ?
(
——? @
string
——@ F!
authenticationToken
——G Z
,
——Z [(
CreateCredentialRequestDto
——\ v 
credentialRequest——w à
)——à â
{
““ 	
return
”” 
PostAnsible
”” 
<
”” '
GetCredentialsResponseDto
”” 8
>
””8 9
(
””9 :!
authenticationToken
””: M
,
””M N"
AnsibleTowerInstance
””O c
.
””c d
ApiDefinition
””d q
.
””q r
credentials
””r }
,
””} ~ 
credentialRequest”” ê
)””ê ë
;””ë í
}
‘‘ 	
public
ﬁﬁ 
Task
ﬁﬁ 
<
ﬁﬁ  
PaginatedResultDto
ﬁﬁ &
<
ﬁﬁ& '#
GetProjectsRequestDto
ﬁﬁ' <
>
ﬁﬁ< =
>
ﬁﬁ= >
GetProjects
ﬁﬁ? J
(
ﬁﬁJ K
string
ﬁﬁK Q!
authenticationToken
ﬁﬁR e
,
ﬁﬁe f
string
ﬁﬁg m
searchCriteria
ﬁﬁn |
=
ﬁﬁ} ~
nullﬁﬁ É
)ﬁﬁÉ Ñ
{
ﬂﬂ 	
return
‡‡ 

GetAnsible
‡‡ 
<
‡‡  
PaginatedResultDto
‡‡ 0
<
‡‡0 1#
GetProjectsRequestDto
‡‡1 F
>
‡‡F G
>
‡‡G H
(
‡‡H I!
authenticationToken
‡‡I \
,
‡‡\ ]"
AnsibleTowerInstance
‡‡^ r
.
‡‡r s
ApiDefinition‡‡s Ä
.‡‡Ä Å
projects‡‡Å â
,‡‡ä ã
searchCriteria‡‡å ö
)‡‡ö õ
;‡‡õ ú
}
·· 	
public
ÈÈ 
Task
ÈÈ 
<
ÈÈ #
GetProjectsRequestDto
ÈÈ )
>
ÈÈ) *
CreateProject
ÈÈ+ 8
(
ÈÈ8 9
string
ÈÈ9 ?!
authenticationToken
ÈÈ@ S
,
ÈÈS T%
CreateProjectRequestDto
ÈÈU l
credentialRequest
ÈÈm ~
)
ÈÈ~ 
{
ÍÍ 	
return
ÎÎ 
PostAnsible
ÎÎ 
<
ÎÎ #
GetProjectsRequestDto
ÎÎ 4
>
ÎÎ4 5
(
ÎÎ5 6!
authenticationToken
ÎÎ6 I
,
ÎÎI J"
AnsibleTowerInstance
ÎÎK _
.
ÎÎ_ `
ApiDefinition
ÎÎ` m
.
ÎÎm n
credentials
ÎÎn y
,
ÎÎy z 
credentialRequestÎÎ{ å
)ÎÎå ç
;ÎÎç é
}
ÏÏ 	
public
ÙÙ 
Task
ÙÙ 
<
ÙÙ 
string
ÙÙ 
>
ÙÙ 
DeleteProject
ÙÙ )
(
ÙÙ) *
string
ÙÙ* 0!
authenticationToken
ÙÙ1 D
,
ÙÙD E
string
ÙÙF L
	projectId
ÙÙM V
)
ÙÙV W
{
ıı 	
if
ˆˆ 
(
ˆˆ 
string
ˆˆ 
.
ˆˆ 
IsNullOrEmpty
ˆˆ $
(
ˆˆ$ %
	projectId
ˆˆ% .
)
ˆˆ. /
)
ˆˆ/ 0
{
˜˜ 
throw
¯¯ 
new
¯¯ 
ArgumentException
¯¯ +
(
¯¯+ ,
$str
¯¯, K
)
¯¯K L
;
¯¯L M
}
˘˘ 
return
¸¸ 
DeleteAnsible
¸¸  
<
¸¸  !
string
¸¸! '
>
¸¸' (
(
¸¸( )!
authenticationToken
¸¸) <
,
¸¸< =
$"
¸¸> @
{
¸¸@ A"
AnsibleTowerInstance
¸¸A U
.
¸¸U V
ApiDefinition
¸¸V c
.
¸¸c d
projects
¸¸d l
}
¸¸l m
$str
¸¸m n
{
¸¸n o
	projectId
¸¸o x
}
¸¸x y
"
¸¸y z
,
¸¸z {
false¸¸| Å
)¸¸Å Ç
;¸¸Ç É
}
˝˝ 	
public
áá 
Task
áá 
<
áá  
PaginatedResultDto
áá &
<
áá& '
GetJobResponseDto
áá' 8
>
áá8 9
>
áá9 :
GetJobs
áá; B
(
ááB C
string
ááC I!
authenticationToken
ááJ ]
,
áá] ^
string
áá_ e
searchCriteria
ááf t
=
ááu v
null
ááw {
)
áá{ |
{
àà 	
return
ââ 

GetAnsible
ââ 
<
ââ  
PaginatedResultDto
ââ 0
<
ââ0 1
GetJobResponseDto
ââ1 B
>
ââB C
>
ââC D
(
ââD E!
authenticationToken
ââE X
,
ââX Y"
AnsibleTowerInstance
ââZ n
.
âân o
ApiDefinition
ââo |
.
ââ| }
jobsââ} Å
,ââÇ É
searchCriteriaââÑ í
)ââí ì
;ââì î
}
ää 	
public
íí 
Task
íí 
<
íí 
string
íí 
>
íí 
	CancelJob
íí %
(
íí% &
string
íí& ,!
authenticationToken
íí- @
,
íí@ A
int
ííB E
idJob
ííF K
)
ííK L
{
ìì 	
return
îî 
PostAnsible
îî 
<
îî 
string
îî %
>
îî% &
(
îî& '!
authenticationToken
îî' :
,
îî: ;
$"
îî< >
{
îî> ?"
AnsibleTowerInstance
îî? S
.
îîS T
ApiDefinition
îîT a
.
îîa b
jobs
îîb f
}
îîf g
{
îîg h
idJob
îîh m
}
îîm n
$str
îîn v
"
îîv w
,
îîw x
null
îîy }
)
îî} ~
;
îî~ 
}
ïï 	
public
ùù 
Task
ùù 
<
ùù %
GetCanCancelResponseDto
ùù +
>
ùù+ ,
CanCancelJob
ùù- 9
(
ùù9 :
string
ùù: @!
authenticationToken
ùùA T
,
ùùT U
int
ùùV Y
idJob
ùùZ _
)
ùù_ `
{
ûû 	
return
üü 

GetAnsible
üü 
<
üü %
GetCanCancelResponseDto
üü 5
>
üü5 6
(
üü6 7!
authenticationToken
üü7 J
,
üüJ K
$"
üüL N
{
üüN O"
AnsibleTowerInstance
üüO c
.
üüc d
ApiDefinition
üüd q
.
üüq r
jobs
üür v
}
üüv w
{
üüw x
idJob
üüx }
}
üü} ~
$strüü~ Ü
"üüÜ á
)üüá à
;üüà â
}
†† 	
public
®® 
Task
®® 
<
®®  
PaginatedResultDto
®® &
<
®®& '%
GetJobEventsResponseDto
®®' >
>
®®> ?
>
®®? @
GetJobEvents
®®A M
(
®®M N
string
®®N T!
authenticationToken
®®U h
,
®®h i
int
®®j m
idJob
®®n s
)
®®s t
{
©© 	
return
™™ 

GetAnsible
™™ 
<
™™  
PaginatedResultDto
™™ 0
<
™™0 1%
GetJobEventsResponseDto
™™1 H
>
™™H I
>
™™I J
(
™™J K!
authenticationToken
™™K ^
,
™™^ _
$"
™™` b
{
™™b c"
AnsibleTowerInstance
™™c w
.
™™w x
ApiDefinition™™x Ö
.™™Ö Ü
jobs™™Ü ä
}™™ä ã
{™™ã å
idJob™™å ë
}™™ë í
$str™™í û
"™™û ü
)™™ü †
;™™† °
}
´´ 	
public
≥≥ 
Task
≥≥ 
<
≥≥ %
GetCanCancelResponseDto
≥≥ +
>
≥≥+ ,
GetCanJobSchedule
≥≥- >
(
≥≥> ?
string
≥≥? E!
authenticationToken
≥≥F Y
,
≥≥Y Z
int
≥≥[ ^
jobId
≥≥_ d
)
≥≥d e
{
¥¥ 	
return
µµ 

GetAnsible
µµ 
<
µµ %
GetCanCancelResponseDto
µµ 5
>
µµ5 6
(
µµ6 7!
authenticationToken
µµ7 J
,
µµJ K
$"
µµL N
{
µµN O"
AnsibleTowerInstance
µµO c
.
µµc d
ApiDefinition
µµd q
.
µµq r
jobs
µµr v
}
µµv w
{
µµw x
jobId
µµx }
}
µµ} ~
$strµµ~ è
"µµè ê
)µµê ë
;µµë í
}
∂∂ 	
public
¡¡ 
Task
¡¡ 
<
¡¡ 
string
¡¡ 
>
¡¡ 
DeleteJobTemplate
¡¡ -
(
¡¡- .
string
¡¡. 4!
authenticationToken
¡¡5 H
,
¡¡H I
string
¡¡J P
jobTemplateId
¡¡Q ^
)
¡¡^ _
{
¬¬ 	
if
√√ 
(
√√ 
string
√√ 
.
√√ 
IsNullOrEmpty
√√ $
(
√√$ %
jobTemplateId
√√% 2
)
√√2 3
)
√√3 4
{
ƒƒ 
throw
≈≈ 
new
≈≈ 
ArgumentException
≈≈ +
(
≈≈+ ,
$str
≈≈, K
)
≈≈K L
;
≈≈L M
}
∆∆ 
return
»» 
DeleteAnsible
»»  
<
»»  !
string
»»! '
>
»»' (
(
»»( )!
authenticationToken
»») <
,
»»< =
$"
»»> @
{
»»@ A"
AnsibleTowerInstance
»»A U
.
»»U V
ApiDefinition
»»V c
.
»»c d
job_templates
»»d q
}
»»q r
$str
»»r s
{
»»s t
jobTemplateId»»t Å
}»»Å Ç
"»»Ç É
)»»É Ñ
;»»Ñ Ö
}
…… 	
public
““ 
Task
““ 
<
““ 
PingResponseDto
““ #
>
““# $
Ping
““% )
(
““) *
)
““* +
{
”” 	
return
‘‘ 
HttpClientHandler
‘‘ $
.
‘‘$ %
Send
‘‘% )
<
‘‘) *
PingResponseDto
‘‘* 9
>
‘‘9 :
(
‘‘: ;

HttpMethod
‘‘; E
.
‘‘E F
Get
‘‘F I
,
‘‘I J"
AnsibleTowerInstance
‘‘K _
.
‘‘_ ` 
CircuitBreakerName
‘‘` r
,
‘‘r s#
AnsibleTowerInstance‘‘t à
.‘‘à â
ApiDefinition‘‘â ñ
.‘‘ñ ó
ping‘‘ó õ
,‘‘õ ú
null‘‘ù °
,‘‘° ¢
	MediaType‘‘£ ¨
.‘‘¨ ≠
ApplicationJson‘‘≠ º
)‘‘º Ω
;‘‘Ω æ
}
’’ 	
private
€€ 
async
€€ 
Task
€€ )
SetAutehnticationTokenAsync
€€ 6
(
€€6 7
string
€€7 =!
authenticationToken
€€> Q
)
€€Q R
{
‹‹ 	
if
ﬁﬁ 
(
ﬁﬁ 
!
ﬁﬁ 
string
ﬁﬁ 
.
ﬁﬁ 
IsNullOrEmpty
ﬁﬁ %
(
ﬁﬁ% &!
authenticationToken
ﬁﬁ& 9
)
ﬁﬁ9 :
)
ﬁﬁ: ;
{
ﬂﬂ 
	AuthToken
‡‡ 
=
‡‡ !
authenticationToken
‡‡ /
;
‡‡/ 0
return
·· 
;
·· 
}
‚‚ 
if
ÂÂ 
(
ÂÂ 
string
ÂÂ 
.
ÂÂ 
IsNullOrEmpty
ÂÂ $
(
ÂÂ$ %"
AnsibleTowerInstance
ÂÂ% 9
.
ÂÂ9 :
Username
ÂÂ: B
)
ÂÂB C
||
ÂÂD F
string
ÂÂG M
.
ÂÂM N
IsNullOrEmpty
ÂÂN [
(
ÂÂ[ \"
AnsibleTowerInstance
ÂÂ\ p
.
ÂÂp q
Password
ÂÂq y
)
ÂÂy z
)
ÂÂz {
{
ÊÊ 
throw
ÁÁ 
new
ÁÁ /
!AnsibleTowerUnauthorizedException
ÁÁ ;
(
ÁÁ; <
$str
ÁÁ< q
)
ÁÁq r
;
ÁÁr s
}
ËË 
var
ÍÍ 
credentials
ÍÍ 
=
ÍÍ 
await
ÍÍ #
Login
ÍÍ$ )
(
ÍÍ) *"
AnsibleTowerInstance
ÍÍ* >
.
ÍÍ> ?
Username
ÍÍ? G
,
ÍÍG H"
AnsibleTowerInstance
ÍÍI ]
.
ÍÍ] ^
Password
ÍÍ^ f
)
ÍÍf g
;
ÍÍg h
	AuthToken
ÏÏ 
=
ÏÏ 
credentials
ÏÏ #
.
ÏÏ# $
token
ÏÏ$ )
;
ÏÏ) *
}
ÌÌ 	
private
ıı 

Dictionary
ıı 
<
ıı 
string
ıı !
,
ıı! "
string
ıı# )
>
ıı) *
GetLoginHeaders
ıı+ :
(
ıı: ;
string
ıı; A
userName
ııB J
,
ııJ K
string
ııL R
password
ııS [
)
ıı[ \
{
ˆˆ 	
var
˜˜ 
authCredential
˜˜ 
=
˜˜  
Convert
˜˜! (
.
˜˜( )
ToBase64String
˜˜) 7
(
˜˜7 8
Encoding
˜˜8 @
.
˜˜@ A
ASCII
˜˜A F
.
˜˜F G
GetBytes
˜˜G O
(
˜˜O P
$"
˜˜P R
{
˜˜R S
userName
˜˜S [
}
˜˜[ \
$str
˜˜\ ]
{
˜˜] ^
password
˜˜^ f
}
˜˜f g
"
˜˜g h
)
˜˜h i
)
˜˜i j
;
˜˜j k
return
¯¯ 
new
¯¯ 

Dictionary
¯¯ !
<
¯¯! "
string
¯¯" (
,
¯¯( )
string
¯¯* 0
>
¯¯0 1
{
¯¯2 3
{
¯¯4 5
$str
¯¯6 E
,
¯¯E F
$"
¯¯G I
$str
¯¯I O
{
¯¯O P
authCredential
¯¯P ^
}
¯¯^ _
"
¯¯_ `
}
¯¯a b
}
¯¯c d
;
¯¯d e
}
˘˘ 	
private
ˇˇ 

Dictionary
ˇˇ 
<
ˇˇ 
string
ˇˇ !
,
ˇˇ! "
string
ˇˇ# )
>
ˇˇ) *%
GetAuthorizationHeaders
ˇˇ+ B
(
ˇˇB C
)
ˇˇC D
{
ÄÄ 	
return
ÅÅ 
new
ÅÅ 

Dictionary
ÅÅ !
<
ÅÅ! "
string
ÅÅ" (
,
ÅÅ( )
string
ÅÅ* 0
>
ÅÅ0 1
{
ÅÅ2 3
{
ÅÅ4 5
$str
ÅÅ6 E
,
ÅÅE F
$"
ÅÅG I
$str
ÅÅI P
{
ÅÅP Q
	AuthToken
ÅÅQ Z
}
ÅÅZ [
"
ÅÅ[ \
}
ÅÅ] ^
}
ÅÅ_ `
;
ÅÅ` a
}
ÇÇ 	
private
èè 
async
èè 
Task
èè 
<
èè 
T
èè 
>
èè 

GetAnsible
èè (
<
èè( )
T
èè) *
>
èè* +
(
èè+ ,
string
èè, 2!
authenticationToken
èè3 F
,
èèF G
string
èèH N
endpoint
èèO W
,
èèW X
string
èèY _
searchCriteria
èè` n
=
èèo p
null
èèq u
)
èèu v
{
êê 	
await
ëë )
SetAutehnticationTokenAsync
ëë -
(
ëë- .!
authenticationToken
ëë. A
)
ëëA B
;
ëëB C
var
íí 
searchCriteriaUri
íí !
=
íí" #
(
íí$ %
searchCriteria
íí% 3
!=
íí4 6
null
íí7 ;
?
íí< =
$str
íí> H
+
ííI J
searchCriteria
ííK Y
:
ííZ [
string
íí\ b
.
ííb c
Empty
ííc h
)
ííh i
;
ííi j
return
ìì 
await
ìì 
HttpClientHandler
ìì *
.
ìì* +
Send
ìì+ /
<
ìì/ 0
T
ìì0 1
>
ìì1 2
(
ìì2 3

HttpMethod
ìì3 =
.
ìì= >
Get
ìì> A
,
ììA B"
AnsibleTowerInstance
ììC W
.
ììW X 
CircuitBreakerName
ììX j
,
ììj k
endpoint
ììl t
+
ììu v 
searchCriteriaUriììw à
,ììà â
nullììä é
,ììé è
	MediaTypeììê ô
.ììô ö
ApplicationJsonììö ©
,ìì© ™'
GetAuthorizationHeadersìì´ ¬
(ìì¬ √
)ìì√ ƒ
)ììƒ ≈
;ìì≈ ∆
}
îî 	
private
ûû 
async
ûû 
Task
ûû 
<
ûû 
T
ûû 
>
ûû 
PostAnsible
ûû )
<
ûû) *
T
ûû* +
>
ûû+ ,
(
ûû, -
string
ûû- 3!
authenticationToken
ûû4 G
,
ûûG H
string
ûûI O
endpoint
ûûP X
,
ûûX Y
object
ûûZ `

dataToSend
ûûa k
)
ûûk l
{
üü 	
await
†† )
SetAutehnticationTokenAsync
†† -
(
††- .!
authenticationToken
††. A
)
††A B
;
††B C
return
°° 
await
°° 
HttpClientHandler
°° *
.
°°* +
Send
°°+ /
<
°°/ 0
T
°°0 1
>
°°1 2
(
°°2 3

HttpMethod
°°3 =
.
°°= >
Post
°°> B
,
°°B C"
AnsibleTowerInstance
°°D X
.
°°X Y 
CircuitBreakerName
°°Y k
,
°°k l
endpoint
°°m u
,
°°u v

dataToSend°°w Å
,°°Å Ç
	MediaType°°É å
.°°å ç
ApplicationJson°°ç ú
,°°ú ù'
GetAuthorizationHeaders°°û µ
(°°µ ∂
)°°∂ ∑
)°°∑ ∏
;°°∏ π
}
¢¢ 	
private
¨¨ 
async
¨¨ 
Task
¨¨ 
<
¨¨ 
T
¨¨ 
>
¨¨ 
DeleteAnsible
¨¨ +
<
¨¨+ ,
T
¨¨, -
>
¨¨- .
(
¨¨. /
string
¨¨/ 5!
authenticationToken
¨¨6 I
,
¨¨I J
string
¨¨K Q
endpoint
¨¨R Z
,
¨¨Z [
bool
¨¨\ `
useCamelCase
¨¨a m
=
¨¨n o
true
¨¨p t
)
¨¨t u
{
≠≠ 	
await
ÆÆ )
SetAutehnticationTokenAsync
ÆÆ -
(
ÆÆ- .!
authenticationToken
ÆÆ. A
)
ÆÆA B
;
ÆÆB C
return
ØØ 
await
ØØ 
HttpClientHandler
ØØ *
.
ØØ* +
Send
ØØ+ /
<
ØØ/ 0
T
ØØ0 1
>
ØØ1 2
(
ØØ2 3

HttpMethod
ØØ3 =
.
ØØ= >
Delete
ØØ> D
,
ØØD E"
AnsibleTowerInstance
ØØF Z
.
ØØZ [ 
CircuitBreakerName
ØØ[ m
,
ØØm n
endpoint
ØØo w
,
ØØw x
null
ØØy }
,
ØØ} ~
	MediaTypeØØ à
.ØØà â
ApplicationJsonØØâ ò
,ØØò ô'
GetAuthorizationHeadersØØö ±
(ØØ± ≤
)ØØ≤ ≥
,ØØ≥ ¥
trueØØ¥ ∏
,ØØ∏ π
useCamelCaseØØ∫ ∆
)ØØ∆ «
;ØØ« »
}
∞∞ 	
}
≤≤ 
}≥≥ »9
≠C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Handler\IAnsibleTowerHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
AnsibleTower# /
./ 0
Handler0 7
{ 
public 

	interface  
IAnsibleTowerHandler )
{ 
Task 
< 
PingResponseDto 
> 
Ping "
(" #
)# $
;$ %
Task 
< 
LoginRequestDto 
> 
Login #
(# $
string$ *
userName+ 3
,3 4
string5 ;
password< D
)D E
;E F
Task 
< 
PaginatedResultDto 
<  
ResultApplication  1
>1 2
>2 3
GetApplications4 C
(C D
stringD J
authenticationTokenK ^
)^ _
;_ `
Task 
< #
ApplicationsResponseDto $
>$ %
CreateApplication& 7
(7 8"
ApplicationsRequestDto8 N 
applicationstRequestO c
,c d
stringe k
authenticationTokenl 
)	 Ä
;
Ä Å
Task 
< 
PaginatedResultDto 
<  !
ResultOrganizationDto  5
>5 6
>6 7
GetOrganizations8 H
(H I
stringI O
authenticationTokenP c
,c d
stringe k
searchCriterial z
={ |
null	} Å
)
Å Ç
;
Ç É
Task 
< !
ResultOrganizationDto "
>" #
GetOrganizationById$ 7
(7 8
string8 >
authenticationToken? R
,R S
stringT Z
organizationId[ i
)i j
;j k
Task 
< !
ResultOrganizationDto "
>" #
CreateOrganization$ 6
(6 7
string7 =
authenticationToken> Q
,Q R(
CreateOrganizationRequestDtoS o 
organizationRequest	p É
)
É Ñ
;
Ñ Ö
Task 
< 
PaginatedResultDto 
<  
ResultInventoryDto  2
>2 3
>3 4
GetInventories5 C
(C D
stringD J
authenticationTokenK ^
)^ _
;_ `
Task 
< 
ResultInventoryDto 
>  
GetInventoryById! 1
(1 2
string2 8
authenticationToken9 L
,L M
stringN T
inventoryIdU `
)` a
;a b
Task 
< 
ResultInventoryDto 
>  
CreateInventory! 0
(0 1
string1 7
authenticationToken8 K
,K L%
CreateInventoryRequestDtoM f
inventoryRequestg w
)w x
;x y
Task 
< 
PaginatedResultDto 
<  &
GetJobTemplatesResponseDto  :
>: ;
>; <
GetJobTemplates= L
(L M
stringM S
authenticationTokenT g
)g h
;h i
Task 
< &
GetJobTemplatesResponseDto '
>' (
GetJobTemplate) 7
(7 8
string8 >
authenticationToken? R
,R S
stringT Z
jobTemplateId[ h
)h i
;i j
Task 
< &
GetJobTemplatesResponseDto '
>' (
CreateJobTemplate) :
(: ;
string; A
authenticationTokenB U
,U V'
CreateJobTemplateRequestDtoW r%
createJobTemplateRequest	s ã
)
ã å
;
å ç
Task 
< 
PaginatedResultDto 
<  %
GetCredentialsResponseDto  9
>9 :
>: ;
GetCredentials< J
(J K
stringK Q
authenticationTokenR e
,e f
stringg m
searchCriterian |
=} ~
null	 É
)
É Ñ
;
Ñ Ö
Task 
< %
GetCredentialsResponseDto &
>& '
CreateCredential( 8
(8 9
string9 ?
authenticationToken@ S
,S T&
CreateCredentialRequestDtoU o
credentialRequest	p Å
)
Å Ç
;
Ç É
Task 
< 
PaginatedResultDto 
<  !
GetProjectsRequestDto  5
>5 6
>6 7
GetProjects8 C
(C D
stringD J
authenticationTokenK ^
,^ _
string` f
searchCriteriag u
=v w
nullx |
)| }
;} ~
Task   
<   !
GetProjectsRequestDto   "
>  " #
CreateProject  $ 1
(  1 2
string  2 8
authenticationToken  9 L
,  L M#
CreateProjectRequestDto  N e
credentialRequest  f w
)  w x
;  x y
Task!! 
<!! 
PaginatedResultDto!! 
<!!  
GetJobResponseDto!!  1
>!!1 2
>!!2 3
GetJobs!!4 ;
(!!; <
string!!< B
authenticationToken!!C V
,!!V W
string!!X ^
searchCriteria!!_ m
=!!n o
null!!p t
)!!t u
;!!u v
Task"" 
<"" 
string"" 
>"" 
	CancelJob"" 
("" 
string"" %
authenticationToken""& 9
,""9 :
int""; >
idJob""? D
)""D E
;""E F
Task## 
<## 
PaginatedResultDto## 
<##  #
GetJobEventsResponseDto##  7
>##7 8
>##8 9
GetJobEvents##: F
(##F G
string##G M
authenticationToken##N a
,##a b
int##c f
idJob##g l
)##l m
;##m n
Task$$ 
<$$ #
GetCanCancelResponseDto$$ $
>$$$ %
CanCancelJob$$& 2
($$2 3
string$$3 9
authenticationToken$$: M
,$$M N
int$$O R
idJob$$S X
)$$X Y
;$$Y Z
Task%% 
<%% #
GetCanCancelResponseDto%% $
>%%$ %
GetCanJobSchedule%%& 7
(%%7 8
string%%8 >
authenticationToken%%? R
,%%R S
int%%T W
jobId%%X ]
)%%] ^
;%%^ _
Task&& 
<&& 
string&& 
>&& 
DeleteProject&& "
(&&" #
string&&# )
authenticationToken&&* =
,&&= >
string&&? E
	projectId&&F O
)&&O P
;&&P Q
Task'' 
<'' 
string'' 
>'' 
DeleteJobTemplate'' &
(''& '
string''' -
authenticationToken''. A
,''A B
string''C I
jobTemplateId''J W
)''W X
;''X Y
}(( 
})) 