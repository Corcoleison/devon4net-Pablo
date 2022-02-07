�'
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\AnsibleTowerConfiguration.cs
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

ApiUrlBase	&&~ �
)
&&� �
)
&&� �
return
&&� �
null
&&� �
;
&&� �
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
AnsibleTowerOptions	''~ �
.
''� �

ApiUrlBase
''� �
,
''� �
null
''� �
,
''� �
	MediaType
''� �
.
''� �
ApplicationJson
''� �
)
''� �
.
''� �
Result
''� �
;
''� �
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
AnsibleTowerOptions	((n �
.
((� �

ApiUrlBase
((� �
,
((� �!
AnsibleTowerOptions
((� �
.
((� �
Version
((� �
,
((� �
apiRequestDto
((� �
,
((� �!
AnsibleTowerOptions
((� �
.
((� �
Username
((� �
,
((� �!
AnsibleTowerOptions
((� �
.
((� �
Password
((� �
)
((� �
;
((� �
})) 	
}** 
}++ �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Common\AnsibleTowerInstance.cs
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
apiRequestDto	} �
,
� �
string
� �
username
� �
,
� �
string
� �
password
� �
)
� �
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
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Common\Const\AnsibleRolesConst.cs
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
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Common\Const\AnsibleTowerApiConst.cs
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
}		 �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Common\Const\OrganizationRelatedLinksConst.cs
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
} �

�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Common\IAnsibleTowerInstance.cs
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
} �9
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\ApiRequestDto.cs
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
}11 �	
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Applications\ApplicationsRequestDto.cs
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
} � 
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Applications\ApplicationsResponseDto.cs
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
}&& � 
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Applications\GetApplicationsResponseDto.cs
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
}'' �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\Created_By.cs
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
 �	
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\CredentialSubset.cs
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
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\Labels.cs
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
 �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\Modified_By.cs
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
 �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\Organization.cs
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
}		 �	
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\PaginatedResultDto.cs
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
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\PingResponseDto.cs
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
}   �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\RoleItems.cs
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
}		 �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\Tokens.cs
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
 �

�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Common\UserCapabilities.cs
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
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Credentials\CreateCredentialRequestDto.cs
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
} �7
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Credentials\GetCredentialsResponseDto.cs
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
}@@ �	
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Inventories\CreateInventoryRequestDto.cs
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
 �?
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Inventories\GetInventoriesResponseDto.cs
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
}?? �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Jobs\GetCanCancelResponseDto.cs
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
} �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Jobs\GetCanScheduleResponseDto.cs
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
} ��
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Jobs\GetJobEventsResponseDto.cs
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
�� 
string
�� 
ansible_hostname
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
public
�� 
string
�� 
ansible_nodename
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
public
�� 
string
�� 
ansible_domain
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� $
ansible_userspace_bits
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
string
�� "
ansible_architecture
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� ,
ansible_userspace_architecture
�� 4
{
��5 6
get
��7 :
;
��: ;
set
��< ?
;
��? @
}
��A B
public
�� 
string
��  
ansible_machine_id
�� (
{
��) *
get
��+ .
;
��. /
set
��0 3
;
��3 4
}
��5 6
public
�� 
string
�� "
ansible_distribution
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� *
ansible_distribution_release
�� 2
{
��3 4
get
��5 8
;
��8 9
set
��: =
;
��= >
}
��? @
public
�� 
string
�� *
ansible_distribution_version
�� 2
{
��3 4
get
��5 8
;
��8 9
set
��: =
;
��= >
}
��? @
public
�� 
string
�� 0
"ansible_distribution_major_version
�� 8
{
��9 :
get
��; >
;
��> ?
set
��@ C
;
��C D
}
��E F
public
�� 
string
�� ,
ansible_distribution_file_path
�� 4
{
��5 6
get
��7 :
;
��: ;
set
��< ?
;
��? @
}
��A B
public
�� 
string
�� /
!ansible_distribution_file_variety
�� 7
{
��8 9
get
��: =
;
��= >
set
��? B
;
��B C
}
��D E
public
�� 
bool
�� .
 ansible_distribution_file_parsed
�� 4
{
��5 6
get
��7 :
;
��: ;
set
��< ?
;
��? @
}
��A B
public
�� 
string
�� 
ansible_os_family
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
ansible_user_id
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
int
�� 
?
�� 
ansible_user_uid
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
int
�� 
?
�� 
ansible_user_gid
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
��  
ansible_user_gecos
�� (
{
��) *
get
��+ .
;
��. /
set
��0 3
;
��3 4
}
��5 6
public
�� 
string
�� 
ansible_user_dir
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
public
�� 
string
��  
ansible_user_shell
�� (
{
��) *
get
��+ .
;
��. /
set
��0 3
;
��3 4
}
��5 6
public
�� 
int
�� 
?
�� "
ansible_real_user_id
�� (
{
��) *
get
��+ .
;
��. /
set
��0 3
;
��3 4
}
��5 6
public
�� 
int
�� 
?
�� '
ansible_effective_user_id
�� -
{
��. /
get
��0 3
;
��3 4
set
��5 8
;
��8 9
}
��: ;
public
�� 
int
�� 
?
�� #
ansible_real_group_id
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
int
�� 
?
�� (
ansible_effective_group_id
�� .
{
��/ 0
get
��1 4
;
��4 5
set
��6 9
;
��9 :
}
��; <
public
�� 
bool
�� 
ansible_is_chroot
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
Ansible_Dns
�� 
ansible_dns
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
public
�� 
string
�� 2
$ansible_system_capabilities_enforced
�� :
{
��; <
get
��= @
;
��@ A
set
��B E
;
��E F
}
��G H
public
�� 
string
�� 
[
�� 
]
�� )
ansible_system_capabilities
�� 3
{
��4 5
get
��6 9
;
��9 :
set
��; >
;
��> ?
}
��@ A
public
�� 
object
�� 
[
�� 
]
�� '
ansible_fibre_channel_wwn
�� 1
{
��2 3
get
��4 7
;
��7 8
set
��9 <
;
��< =
}
��> ?
public
�� 
string
�� 
[
�� 
]
�� 
ansible_processor
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
int
�� 
?
�� %
ansible_processor_count
�� +
{
��, -
get
��. 1
;
��1 2
set
��3 6
;
��6 7
}
��8 9
public
�� 
int
�� 
?
�� %
ansible_processor_cores
�� +
{
��, -
get
��. 1
;
��1 2
set
��3 6
;
��6 7
}
��8 9
public
�� 
int
�� 
?
�� 0
"ansible_processor_threads_per_core
�� 6
{
��7 8
get
��9 <
;
��< =
set
��> A
;
��A B
}
��C D
public
�� 
int
�� 
?
�� %
ansible_processor_vcpus
�� +
{
��, -
get
��. 1
;
��1 2
set
��3 6
;
��6 7
}
��8 9
public
�� 
int
�� 
?
�� !
ansible_memtotal_mb
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
int
�� 
?
��  
ansible_memfree_mb
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
public
�� 
int
�� 
?
�� "
ansible_swaptotal_mb
�� (
{
��) *
get
��+ .
;
��. /
set
��0 3
;
��3 4
}
��5 6
public
�� 
int
�� 
?
�� !
ansible_swapfree_mb
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
Ansible_Memory_Mb
��  
ansible_memory_mb
��! 2
{
��3 4
get
��5 8
;
��8 9
set
��: =
;
��= >
}
��? @
public
�� 
string
�� 
ansible_bios_date
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� "
ansible_bios_version
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� !
ansible_form_factor
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
string
�� "
ansible_product_name
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� $
ansible_product_serial
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
string
�� "
ansible_product_uuid
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� %
ansible_product_version
�� -
{
��. /
get
��0 3
;
��3 4
set
��5 8
;
��8 9
}
��: ;
public
�� 
string
�� #
ansible_system_vendor
�� +
{
��, -
get
��. 1
;
��1 2
set
��3 6
;
��6 7
}
��8 9
public
�� 
Ansible_Devices
�� 
ansible_devices
�� .
{
��/ 0
get
��1 4
;
��4 5
set
��6 9
;
��9 :
}
��; <
public
�� "
Ansible_Device_Links
�� #"
ansible_device_links
��$ 8
{
��9 :
get
��; >
;
��> ?
set
��@ C
;
��C D
}
��E F
public
�� 
int
�� 
?
�� $
ansible_uptime_seconds
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
Ansible_Mounts
�� 
[
�� 
]
�� 
ansible_mounts
��  .
{
��/ 0
get
��1 4
;
��4 5
set
��6 9
;
��9 :
}
��; <
public
�� 
string
�� 
[
�� 
]
��  
ansible_interfaces
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
Ansible_Eth0
�� 
ansible_eth0
�� (
{
��) *
get
��+ .
;
��. /
set
��0 3
;
��3 4
}
��5 6
public
�� 

Ansible_Lo
�� 

ansible_lo
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� "
Ansible_Default_Ipv4
�� #"
ansible_default_ipv4
��$ 8
{
��9 :
get
��; >
;
��> ?
set
��@ C
;
��C D
}
��E F
public
�� 
object
�� "
ansible_default_ipv6
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� 
[
�� 
]
�� (
ansible_all_ipv4_addresses
�� 2
{
��3 4
get
��5 8
;
��8 9
set
��: =
;
��= >
}
��? @
public
�� 
object
�� 
[
�� 
]
�� (
ansible_all_ipv6_addresses
�� 2
{
��3 4
get
��5 8
;
��8 9
set
��: =
;
��= >
}
��? @
public
�� 
string
�� 
ansible_hostnqn
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
ansible_iscsi_iqn
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� !
ansible_service_mgr
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
bool
�� 
ansible_fips
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
Ansible_Python
�� 
ansible_python
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
string
�� 
ansible_pkg_mgr
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
Ansible_Apparmor
�� 
ansible_apparmor
��  0
{
��1 2
get
��3 6
;
��6 7
set
��8 ;
;
��; <
}
��= >
public
�� 
Ansible_Date_Time
��  
ansible_date_time
��! 2
{
��3 4
get
��5 8
;
��8 9
set
��: =
;
��= >
}
��? @
public
�� 
Ansible_Cmdline
�� 
ansible_cmdline
�� .
{
��/ 0
get
��1 4
;
��4 5
set
��6 9
;
��9 :
}
��; <
public
�� "
Ansible_Proc_Cmdline
�� #"
ansible_proc_cmdline
��$ 8
{
��9 :
get
��; >
;
��> ?
set
��@ C
;
��C D
}
��E F
public
�� 
object
�� 
ansible_local
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
public
�� 
object
�� 
ansible_lsb
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
bool
�� ,
ansible_selinux_python_present
�� 2
{
��3 4
get
��5 8
;
��8 9
set
��: =
;
��= >
}
��? @
public
�� 
Ansible_Selinux
�� 
ansible_selinux
�� .
{
��/ 0
get
��1 4
;
��4 5
set
��6 9
;
��9 :
}
��; <
public
�� 
string
�� 
[
�� 
]
�� 
gather_subset
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
bool
�� 
module_setup
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
}
�� 
public
�� 

class
�� 
Ansible_Dns
�� 
{
�� 
public
�� 
string
�� 
[
�� 
]
�� 
search
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
[
�� 
]
�� 
nameservers
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
public
�� 
Options
�� 
options
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
}
�� 
public
�� 

class
�� 
Options
�� 
{
�� 
public
�� 
string
�� 
ndots
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
}
�� 
public
�� 

class
�� 
Ansible_Memory_Mb
�� "
{
�� 
public
�� 
Real
�� 
real
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
public
�� 
Nocache
�� 
nocache
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
Swap
�� 
swap
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
}
�� 
public
�� 

class
�� 
Real
�� 
{
�� 
public
�� 
int
�� 
?
�� 
total
�� 
{
�� 
get
�� 
;
��  
set
��! $
;
��$ %
}
��& '
public
�� 
int
�� 
?
�� 
used
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
public
�� 
int
�� 
?
�� 
free
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
}
�� 
public
�� 

class
�� 
Nocache
�� 
{
�� 
public
�� 
int
�� 
?
�� 
free
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
public
�� 
int
�� 
?
�� 
used
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
}
�� 
public
�� 

class
�� 
Swap
�� 
{
�� 
public
�� 
int
�� 
?
�� 
total
�� 
{
�� 
get
�� 
;
��  
set
��! $
;
��$ %
}
��& '
public
�� 
int
�� 
?
�� 
free
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
public
�� 
int
�� 
?
�� 
used
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
public
�� 
int
�� 
?
�� 
cached
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
}
�� 
public
�� 

class
�� 
Ansible_Devices
��  
{
�� 
public
�� 
Loop1
�� 
loop1
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
Loop6
�� 
loop6
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
Loop4
�� 
loop4
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
Sr0
�� 
sr0
�� 
{
�� 
get
�� 
;
�� 
set
�� !
;
��! "
}
��# $
public
�� 
Loop2
�� 
loop2
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
Loop0
�� 
loop0
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
Loop7
�� 
loop7
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
Sda
�� 
sda
�� 
{
�� 
get
�� 
;
�� 
set
�� !
;
��! "
}
��# $
public
�� 
Loop5
�� 
loop5
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
Loop3
�� 
loop3
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
}
�� 
public
�� 

class
�� 
Loop1
�� 
{
�� 
public
�� 
int
�� 
?
�� 
_virtual
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
Links
�� 
links
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
vendor
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
object
�� 
model
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
sas_address
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
object
�� 
sas_device_handle
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
	removable
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
support_discard
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
object
�� 

partitions
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 

rotational
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
scheduler_mode
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
sectors
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 

sectorsize
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
size
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
host
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
[
�� 
]
�� 
holders
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Links
�� 
{
�� 
public
�� 
object
�� 
[
�� 
]
�� 
ids
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
[
�� 
]
�� 
uuids
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
object
�� 
[
�� 
]
�� 
labels
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
object
�� 
[
�� 
]
�� 
masters
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Loop6
�� 
{
�� 
public
�� 
int
�� 
?
�� 
_virtual
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
Links1
�� 
links
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
vendor
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
object
�� 
model
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
sas_address
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
object
�� 
sas_device_handle
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
	removable
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
support_discard
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
object
�� 

partitions
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 

rotational
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
scheduler_mode
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
sectors
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 

sectorsize
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
size
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
host
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
[
�� 
]
�� 
holders
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Links1
�� 
{
�� 
public
�� 
object
�� 
[
�� 
]
�� 
ids
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
[
�� 
]
�� 
uuids
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
object
�� 
[
�� 
]
�� 
labels
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
object
�� 
[
�� 
]
�� 
masters
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Loop4
�� 
{
�� 
public
�� 
int
�� 
?
�� 
_virtual
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
Links2
�� 
links
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
vendor
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
object
�� 
model
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
sas_address
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
object
�� 
sas_device_handle
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
	removable
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
support_discard
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
object
�� 

partitions
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 

rotational
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
scheduler_mode
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
sectors
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 

sectorsize
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
size
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
host
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
[
�� 
]
�� 
holders
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Links2
�� 
{
�� 
public
�� 
object
�� 
[
�� 
]
�� 
ids
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
[
�� 
]
�� 
uuids
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
object
�� 
[
�� 
]
�� 
labels
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
object
�� 
[
�� 
]
�� 
masters
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Sr0
�� 
{
�� 
public
�� 
int
�� 
?
�� 
_virtual
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
Links3
�� 
links
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
string
�� 
vendor
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
string
�� 
model
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
sas_address
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
object
�� 
sas_device_handle
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
	removable
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
support_discard
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
object
�� 

partitions
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 

rotational
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
scheduler_mode
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
sectors
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 

sectorsize
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
size
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
host
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
[
�� 
]
�� 
holders
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Links3
�� 
{
�� 
public
�� 
object
�� 
[
�� 
]
�� 
ids
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
[
�� 
]
�� 
uuids
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
object
�� 
[
�� 
]
�� 
labels
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
object
�� 
[
�� 
]
�� 
masters
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Loop2
�� 
{
�� 
public
�� 
int
�� 
?
�� 
_virtual
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
Links4
�� 
links
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
vendor
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
object
�� 
model
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
sas_address
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
object
�� 
sas_device_handle
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
	removable
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
support_discard
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
object
�� 

partitions
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 

rotational
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
scheduler_mode
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
sectors
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 

sectorsize
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
size
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
host
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
[
�� 
]
�� 
holders
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Links4
�� 
{
�� 
public
�� 
object
�� 
[
�� 
]
�� 
ids
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
[
�� 
]
�� 
uuids
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
object
�� 
[
�� 
]
�� 
labels
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
object
�� 
[
�� 
]
�� 
masters
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Loop0
�� 
{
�� 
public
�� 
int
�� 
?
�� 
_virtual
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
Links5
�� 
links
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
vendor
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
object
�� 
model
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
sas_address
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
object
�� 
sas_device_handle
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
	removable
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
support_discard
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
Partitions5
�� 

partitions
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 

rotational
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
scheduler_mode
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
sectors
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 

sectorsize
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
size
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
host
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
[
�� 
]
�� 
holders
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Links5
�� 
{
�� 
public
�� 
object
�� 
[
�� 
]
�� 
ids
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
[
�� 
]
�� 
uuids
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
object
�� 
[
�� 
]
�� 
labels
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
object
�� 
[
�� 
]
�� 
masters
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Partitions5
�� 
{
�� 
}
�� 
public
�� 

class
�� 
Loop7
�� 
{
�� 
public
�� 
int
�� 
?
�� 
_virtual
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
Links6
�� 
links
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
vendor
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
object
�� 
model
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
sas_address
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
object
�� 
sas_device_handle
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
	removable
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
support_discard
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
Partitions6
�� 

partitions
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 

rotational
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
scheduler_mode
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
sectors
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 

sectorsize
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
size
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
host
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
[
�� 
]
�� 
holders
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Links6
�� 
{
�� 
public
�� 
object
�� 
[
�� 
]
�� 
ids
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
[
�� 
]
�� 
uuids
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
object
�� 
[
�� 
]
�� 
labels
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
object
�� 
[
�� 
]
�� 
masters
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Partitions6
�� 
{
�� 
}
�� 
public
�� 

class
�� 
Sda
�� 
{
�� 
public
�� 
int
�� 
?
�� 
_virtual
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
Links7
�� 
links
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
string
�� 
vendor
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
string
�� 
model
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
sas_address
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
object
�� 
sas_device_handle
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
	removable
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
support_discard
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
Partitions7
�� 

partitions
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 

rotational
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
scheduler_mode
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
sectors
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 

sectorsize
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
size
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
host
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
[
�� 
]
�� 
holders
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Links7
�� 
{
�� 
public
�� 
object
�� 
[
�� 
]
�� 
ids
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
[
�� 
]
�� 
uuids
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
object
�� 
[
�� 
]
�� 
labels
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
object
�� 
[
�� 
]
�� 
masters
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Partitions7
�� 
{
�� 
public
�� 
Sda2
�� 
sda2
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
public
�� 
Sda1
�� 
sda1
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
}
�� 
public
�� 

class
�� 
Sda2
�� 
{
�� 
public
�� 
Links8
�� 
links
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
string
�� 
start
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
string
�� 
sectors
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
int
�� 
?
�� 

sectorsize
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
size
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
uuid
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
[
�� 
]
�� 
holders
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Links8
�� 
{
�� 
public
�� 
object
�� 
[
�� 
]
�� 
ids
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
[
�� 
]
�� 
uuids
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
object
�� 
[
�� 
]
�� 
labels
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
object
�� 
[
�� 
]
�� 
masters
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Sda1
�� 
{
�� 
public
�� 
Links9
�� 
links
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
string
�� 
start
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
string
�� 
sectors
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
int
�� 
?
�� 

sectorsize
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
size
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
uuid
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
[
�� 
]
�� 
holders
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Links9
�� 
{
�� 
public
�� 
object
�� 
[
�� 
]
�� 
ids
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
[
�� 
]
�� 
uuids
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
object
�� 
[
�� 
]
�� 
labels
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
object
�� 
[
�� 
]
�� 
masters
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Loop5
�� 
{
�� 
public
�� 
int
�� 
?
�� 
_virtual
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
Links10
�� 
links
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
object
�� 
vendor
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
object
�� 
model
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
sas_address
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
object
�� 
sas_device_handle
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
	removable
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
support_discard
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
Partitions8
�� 

partitions
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 

rotational
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
scheduler_mode
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
sectors
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 

sectorsize
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
size
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
host
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
[
�� 
]
�� 
holders
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Links10
�� 
{
�� 
public
�� 
object
�� 
[
�� 
]
�� 
ids
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
[
�� 
]
�� 
uuids
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
object
�� 
[
�� 
]
�� 
labels
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
object
�� 
[
�� 
]
�� 
masters
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Partitions8
�� 
{
�� 
}
�� 
public
�� 

class
�� 
Loop3
�� 
{
�� 
public
�� 
int
�� 
?
�� 
_virtual
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
Links11
�� 
links
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
object
�� 
vendor
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
object
�� 
model
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
sas_address
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
object
�� 
sas_device_handle
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
	removable
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
support_discard
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
object
�� 

partitions
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 

rotational
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
scheduler_mode
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
sectors
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 

sectorsize
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
size
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
host
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
object
�� 
[
�� 
]
�� 
holders
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Links11
�� 
{
�� 
public
�� 
object
�� 
[
�� 
]
�� 
ids
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
object
�� 
[
�� 
]
�� 
uuids
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
object
�� 
[
�� 
]
�� 
labels
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
object
�� 
[
�� 
]
�� 
masters
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� "
Ansible_Device_Links
�� %
{
�� 
public
�� 
object
�� 
ids
�� 
{
�� 
get
�� 
;
��  
set
��! $
;
��$ %
}
��& '
public
�� 
object
�� 
uuids
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
Labels
�� 
labels
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
object
�� 
masters
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
}
�� 
public
�� 

class
�� 
Ansible_Eth0
�� 
{
�� 
public
�� 
string
�� 
device
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
string
�� 

macaddress
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
int
�� 
?
�� 
mtu
�� 
{
�� 
get
�� 
;
�� 
set
�� "
;
��" #
}
��$ %
public
�� 
bool
�� 
active
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
type
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
int
�� 
?
�� 
speed
�� 
{
�� 
get
�� 
;
��  
set
��! $
;
��$ %
}
��& '
public
�� 
bool
�� 
promisc
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
Ipv4
�� 
ipv4
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
public
�� 
Features
�� 
features
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
[
�� 
]
�� 
timestamping
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
object
�� 
[
�� 
]
�� "
hw_timestamp_filters
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
}
�� 
public
�� 

class
�� 
Ipv4
�� 
{
�� 
public
�� 
string
�� 
address
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 
	broadcast
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
netmask
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 
network
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
}
�� 
public
�� 

class
�� 
Features
�� 
{
�� 
public
�� 
string
�� 
rx_checksumming
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
tx_checksumming
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
tx_checksum_ipv4
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
public
�� 
string
�� $
tx_checksum_ip_generic
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
string
�� 
tx_checksum_ipv6
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
public
�� 
string
�� "
tx_checksum_fcoe_crc
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� 
tx_checksum_sctp
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
public
�� 
string
�� 
scatter_gather
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
tx_scatter_gather
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� (
tx_scatter_gather_fraglist
�� 0
{
��1 2
get
��3 6
;
��6 7
set
��8 ;
;
��; <
}
��= >
public
�� 
string
�� &
tcp_segmentation_offload
�� .
{
��/ 0
get
��1 4
;
��4 5
set
��6 9
;
��9 :
}
��; <
public
�� 
string
�� !
tx_tcp_segmentation
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
string
�� %
tx_tcp_ecn_segmentation
�� -
{
��. /
get
��0 3
;
��3 4
set
��5 8
;
��8 9
}
��: ;
public
�� 
string
�� *
tx_tcp_mangleid_segmentation
�� 2
{
��3 4
get
��5 8
;
��8 9
set
��: =
;
��= >
}
��? @
public
�� 
string
�� "
tx_tcp6_segmentation
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� *
generic_segmentation_offload
�� 2
{
��3 4
get
��5 8
;
��8 9
set
��: =
;
��= >
}
��? @
public
�� 
string
�� %
generic_receive_offload
�� -
{
��. /
get
��0 3
;
��3 4
set
��5 8
;
��8 9
}
��: ;
public
�� 
string
�� #
large_receive_offload
�� +
{
��, -
get
��. 1
;
��1 2
set
��3 6
;
��6 7
}
��8 9
public
�� 
string
�� 
rx_vlan_offload
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
tx_vlan_offload
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
ntuple_filters
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
receive_hashing
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
highdma
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 
rx_vlan_filter
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
vlan_challenged
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
tx_lockless
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
string
�� 
netns_local
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
string
�� 
tx_gso_robust
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
public
�� 
string
�� "
tx_fcoe_segmentation
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� !
tx_gre_segmentation
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
string
�� &
tx_gre_csum_segmentation
�� .
{
��/ 0
get
��1 4
;
��4 5
set
��6 9
;
��9 :
}
��; <
public
�� 
string
�� $
tx_ipxip4_segmentation
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
string
�� $
tx_ipxip6_segmentation
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
string
�� %
tx_udp_tnl_segmentation
�� -
{
��. /
get
��0 3
;
��3 4
set
��5 8
;
��8 9
}
��: ;
public
�� 
string
�� *
tx_udp_tnl_csum_segmentation
�� 2
{
��3 4
get
��5 8
;
��8 9
set
��: =
;
��= >
}
��? @
public
�� 
string
�� 
tx_gso_partial
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� "
tx_sctp_segmentation
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� !
tx_esp_segmentation
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
string
�� !
tx_udp_segmentation
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
string
�� 
fcoe_mtu
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
tx_nocache_copy
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
loopback
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
rx_fcs
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
string
�� 
rx_all
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
string
�� $
tx_vlan_stag_hw_insert
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
string
�� #
rx_vlan_stag_hw_parse
�� +
{
��, -
get
��. 1
;
��1 2
set
��3 6
;
��6 7
}
��8 9
public
�� 
string
�� !
rx_vlan_stag_filter
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
string
�� 
l2_fwd_offload
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
hw_tc_offload
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
public
�� 
string
�� 
esp_hw_offload
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� $
esp_tx_csum_hw_offload
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
string
�� (
rx_udp_tunnel_port_offload
�� 0
{
��1 2
get
��3 6
;
��6 7
set
��8 ;
;
��; <
}
��= >
public
�� 
string
�� 
tls_hw_tx_offload
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
tls_hw_rx_offload
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
	rx_gro_hw
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
tls_hw_record
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
}
�� 
public
�� 

class
�� 

Ansible_Lo
�� 
{
�� 
public
�� 
string
�� 
device
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
int
�� 
?
�� 
mtu
�� 
{
�� 
get
�� 
;
�� 
set
�� "
;
��" #
}
��$ %
public
�� 
bool
�� 
active
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
type
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
bool
�� 
promisc
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
Ipv41
�� 
ipv4
�� 
{
�� 
get
�� 
;
��  
set
��! $
;
��$ %
}
��& '
public
�� 
	Features1
�� 
features
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
string
�� 
[
�� 
]
�� 
timestamping
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
object
�� 
[
�� 
]
�� "
hw_timestamp_filters
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
}
�� 
public
�� 

class
�� 
Ipv41
�� 
{
�� 
public
�� 
string
�� 
address
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 
	broadcast
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
netmask
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 
network
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
}
�� 
public
�� 

class
�� 
	Features1
�� 
{
�� 
public
�� 
string
�� 
rx_checksumming
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
tx_checksumming
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
tx_checksum_ipv4
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
public
�� 
string
�� $
tx_checksum_ip_generic
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
string
�� 
tx_checksum_ipv6
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
public
�� 
string
�� "
tx_checksum_fcoe_crc
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� 
tx_checksum_sctp
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
public
�� 
string
�� 
scatter_gather
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
tx_scatter_gather
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� (
tx_scatter_gather_fraglist
�� 0
{
��1 2
get
��3 6
;
��6 7
set
��8 ;
;
��; <
}
��= >
public
�� 
string
�� &
tcp_segmentation_offload
�� .
{
��/ 0
get
��1 4
;
��4 5
set
��6 9
;
��9 :
}
��; <
public
�� 
string
�� !
tx_tcp_segmentation
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
string
�� %
tx_tcp_ecn_segmentation
�� -
{
��. /
get
��0 3
;
��3 4
set
��5 8
;
��8 9
}
��: ;
public
�� 
string
�� *
tx_tcp_mangleid_segmentation
�� 2
{
��3 4
get
��5 8
;
��8 9
set
��: =
;
��= >
}
��? @
public
�� 
string
�� "
tx_tcp6_segmentation
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� *
generic_segmentation_offload
�� 2
{
��3 4
get
��5 8
;
��8 9
set
��: =
;
��= >
}
��? @
public
�� 
string
�� %
generic_receive_offload
�� -
{
��. /
get
��0 3
;
��3 4
set
��5 8
;
��8 9
}
��: ;
public
�� 
string
�� #
large_receive_offload
�� +
{
��, -
get
��. 1
;
��1 2
set
��3 6
;
��6 7
}
��8 9
public
�� 
string
�� 
rx_vlan_offload
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
tx_vlan_offload
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
ntuple_filters
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
receive_hashing
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
highdma
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 
rx_vlan_filter
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
vlan_challenged
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
tx_lockless
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
string
�� 
netns_local
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
string
�� 
tx_gso_robust
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
public
�� 
string
�� "
tx_fcoe_segmentation
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� !
tx_gre_segmentation
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
string
�� &
tx_gre_csum_segmentation
�� .
{
��/ 0
get
��1 4
;
��4 5
set
��6 9
;
��9 :
}
��; <
public
�� 
string
�� $
tx_ipxip4_segmentation
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
string
�� $
tx_ipxip6_segmentation
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
string
�� %
tx_udp_tnl_segmentation
�� -
{
��. /
get
��0 3
;
��3 4
set
��5 8
;
��8 9
}
��: ;
public
�� 
string
�� *
tx_udp_tnl_csum_segmentation
�� 2
{
��3 4
get
��5 8
;
��8 9
set
��: =
;
��= >
}
��? @
public
�� 
string
�� 
tx_gso_partial
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� "
tx_sctp_segmentation
�� *
{
��+ ,
get
��- 0
;
��0 1
set
��2 5
;
��5 6
}
��7 8
public
�� 
string
�� !
tx_esp_segmentation
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
string
�� !
tx_udp_segmentation
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
string
�� 
fcoe_mtu
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
tx_nocache_copy
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
string
�� 
loopback
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
rx_fcs
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
string
�� 
rx_all
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
string
�� $
tx_vlan_stag_hw_insert
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
string
�� #
rx_vlan_stag_hw_parse
�� +
{
��, -
get
��. 1
;
��1 2
set
��3 6
;
��6 7
}
��8 9
public
�� 
string
�� !
rx_vlan_stag_filter
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
string
�� 
l2_fwd_offload
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 
hw_tc_offload
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
public
�� 
string
�� 
esp_hw_offload
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� $
esp_tx_csum_hw_offload
�� ,
{
��- .
get
��/ 2
;
��2 3
set
��4 7
;
��7 8
}
��9 :
public
�� 
string
�� (
rx_udp_tunnel_port_offload
�� 0
{
��1 2
get
��3 6
;
��6 7
set
��8 ;
;
��; <
}
��= >
public
�� 
string
�� 
tls_hw_tx_offload
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
tls_hw_rx_offload
�� '
{
��( )
get
��* -
;
��- .
set
��/ 2
;
��2 3
}
��4 5
public
�� 
string
�� 
	rx_gro_hw
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
tls_hw_record
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
}
�� 
public
�� 

class
�� "
Ansible_Default_Ipv4
�� %
{
�� 
public
�� 
string
�� 
gateway
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 

_interface
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
address
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 
	broadcast
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
netmask
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 
network
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 

macaddress
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
int
�� 
?
�� 
mtu
�� 
{
�� 
get
�� 
;
�� 
set
�� "
;
��" #
}
��$ %
public
�� 
string
�� 
type
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
alias
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
}
�� 
public
�� 

class
�� 
Ansible_Python
�� 
{
�� 
public
�� 
Version
�� 
version
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
object
�� 
[
�� 
]
�� 
version_info
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 

executable
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
bool
�� 
has_sslcontext
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
public
�� 
string
�� 
type
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
}
�� 
public
�� 

class
�� 
Version
�� 
{
�� 
public
�� 
int
�� 
?
�� 
major
�� 
{
�� 
get
�� 
;
��  
set
��! $
;
��$ %
}
��& '
public
�� 
int
�� 
?
�� 
minor
�� 
{
�� 
get
�� 
;
��  
set
��! $
;
��$ %
}
��& '
public
�� 
int
�� 
?
�� 
micro
�� 
{
�� 
get
�� 
;
��  
set
��! $
;
��$ %
}
��& '
public
�� 
string
�� 
releaselevel
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
public
�� 
int
�� 
?
�� 
serial
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
}
�� 
public
�� 

class
�� 
Ansible_Apparmor
�� !
{
�� 
public
�� 
string
�� 
status
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
}
�� 
public
�� 

class
�� 
Ansible_Date_Time
�� "
{
�� 
public
�� 
string
�� 
year
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
month
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
string
�� 
weekday
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
string
�� 
weekday_number
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
public
�� 
string
�� 

weeknumber
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
day
�� 
{
�� 
get
�� 
;
��  
set
��! $
;
��$ %
}
��& '
public
�� 
string
�� 
hour
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
minute
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
string
�� 
second
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
string
�� 
epoch
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
string
�� 
date
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
time
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
DateTime
�� 
iso8601_micro
�� %
{
��& '
get
��( +
;
��+ ,
set
��- 0
;
��0 1
}
��2 3
public
�� 
DateTime
�� 
iso8601
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
iso8601_basic
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
public
�� 
string
�� !
iso8601_basic_short
�� )
{
��* +
get
��, /
;
��/ 0
set
��1 4
;
��4 5
}
��6 7
public
�� 
string
�� 
tz
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
public
�� 
string
�� 
	tz_offset
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
}
�� 
public
�� 

class
�� 
Ansible_Cmdline
��  
{
�� 
public
�� 
string
�� 

BOOT_IMAGE
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
root
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
bool
�� 
ro
�� 
{
�� 
get
�� 
;
�� 
set
�� !
;
��! "
}
��# $
}
�� 
public
�� 

class
�� "
Ansible_Proc_Cmdline
�� %
{
�� 
public
�� 
string
�� 

BOOT_IMAGE
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
root
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
bool
�� 
ro
�� 
{
�� 
get
�� 
;
�� 
set
�� !
;
��! "
}
��# $
}
�� 
public
�� 

class
�� 
Ansible_Selinux
��  
{
�� 
public
�� 
string
�� 
status
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
}
�� 
public
�� 

class
�� 
Ansible_Mounts
�� 
{
�� 
public
�� 
string
�� 
mount
�� 
{
�� 
get
�� !
;
��! "
set
��# &
;
��& '
}
��( )
public
�� 
string
�� 
device
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
string
�� 
fstype
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
string
�� 
options
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
long
�� 

size_total
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
long
�� 
size_available
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
public
�� 
int
�� 
?
�� 

block_size
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
int
�� 
?
�� 
block_total
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
int
�� 
?
�� 
block_available
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
public
�� 
int
�� 
?
�� 

block_used
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
int
�� 
?
�� 
inode_total
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
int
�� 
?
�� 
inode_available
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
public
�� 
int
�� 
?
�� 

inode_used
�� 
{
��  
get
��! $
;
��$ %
set
��& )
;
��) *
}
��+ ,
public
�� 
string
�� 
uuid
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
}
�� 
public
�� 

class
�� 
Ok
�� 
{
�� 
public
�� 
int
�� 
?
�� 
	localhost
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
}
�� 
public
�� 

class
�� 
	Processed
�� 
{
�� 
public
�� 
int
�� 
?
�� 
	localhost
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
}
�� 
}�� ��
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Jobs\GetJobResponseDto.cs
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
�� 

class
�� "
Unified_Job_Template
�� %
{
�� 
public
�� 
int
�� 
?
�� 
id
�� 
{
�� 
get
�� 
;
�� 
set
�� !
;
��! "
}
��# $
public
�� 
string
�� 
name
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
string
�� 
description
�� !
{
��" #
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
string
�� 
unified_job_type
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
}
�� 
public
�� 

class
�� 
InstanceGroup
�� 
{
�� 
public
�� 
int
�� 
?
�� 
id
�� 
{
�� 
get
�� 
;
�� 
set
�� !
;
��! "
}
��# $
public
�� 
string
�� 
name
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
bool
�� 
is_containerized
�� $
{
��% &
get
��' *
;
��* +
set
��, /
;
��/ 0
}
��1 2
}
�� 
}�� �W
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\JobTemplates\CreateJobTemplateRequestDto.cs
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
}PP ��
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\JobTemplates\GetJobTemplatesResponseDto.cs
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
�� 
public
�� 
bool
�� 
edit
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
public
�� 
bool
�� 
delete
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
bool
�� 
start
�� 
{
�� 
get
�� 
;
��  
set
��! $
;
��$ %
}
��& '
public
�� 
bool
�� 
schedule
�� 
{
�� 
get
�� "
;
��" #
set
��$ '
;
��' (
}
��) *
public
�� 
bool
�� 
copy
�� 
{
�� 
get
�� 
;
�� 
set
��  #
;
��# $
}
��% &
}
�� 
}�� �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\LoginRequestDto.cs
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
}** �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Organizations\CreateOrganizationRequestDto.cs
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
} �&
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Organizations\OrganizationsResponseDto.cs
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
}// �
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Projects\CreateProjectRequestDto.cs
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
} �H
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Dto\Projects\GetProjectsRequestDto.cs
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
}FF �	
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Exceptions\AnsibleTowerUnauthorizedException.cs
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
} ��
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Handler\AnsibleTowerHandler.cs
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
,	66 �"
AnsibleTowerInstance
66� �
.
66� �
ApiDefinition
66� �
.
66� �
tokens
66� �
,
66� �
null
66� �
,
66� �
	MediaType
66� �
.
66� �
ApplicationJson
66� �
,
66� �
GetLoginHeaders
66� �
(
66� �
userName
66� �
,
66� �
password
66� �
)
66� �
)
66� �
.
66� �
ConfigureAwait
66� �
(
66� �
false
66� �
)
66� �
;
66� �
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
authenticationToken	GGs �
)
GG� �
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
applicationstRequest	II} �
)
II� �
;
II� �
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
applications	SS} �
)
SS� �
;
SS� �
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
organizationId	aa �
}
aa� �
$str
aa� �
"
aa� �
)
aa� �
;
aa� �
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
organizationRequest	jjw �
)
jj� �
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
organizationRequest	ll} �
)
ll� �
;
ll� �
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
searchCriteria	uus �
=
uu� �
null
uu� �
)
uu� �
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
ApiDefinition	wws �
.
ww� �
organizations
ww� �
,
ww� �
searchCriteria
ww� �
)
ww� �
;
ww� �
}xx 	
public
�� 
Task
�� 
<
��  
PaginatedResultDto
�� &
<
��& ' 
ResultInventoryDto
��' 9
>
��9 :
>
��: ;
GetInventories
��< J
(
��J K
string
��K Q!
authenticationToken
��R e
)
��e f
{
�� 	
return
�� 

GetAnsible
�� 
<
��  
PaginatedResultDto
�� 0
<
��0 1 
ResultInventoryDto
��1 C
>
��C D
>
��D E
(
��E F!
authenticationToken
��F Y
,
��Y Z"
AnsibleTowerInstance
��Z n
.
��n o
ApiDefinition
��o |
.
��| }
	inventory��} �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
��  
ResultInventoryDto
�� &
>
��& '
GetInventoryById
��( 8
(
��8 9
string
��9 ?!
authenticationToken
��@ S
,
��S T
string
��U [
inventoryId
��\ g
)
��g h
{
�� 	
return
�� 

GetAnsible
�� 
<
��  
ResultInventoryDto
�� 0
>
��0 1
(
��1 2!
authenticationToken
��2 E
,
��E F
$"
��G I
{
��I J"
AnsibleTowerInstance
��J ^
.
��^ _
ApiDefinition
��_ l
.
��l m
	inventory
��m v
}
��v w
{
��w x
inventoryId��x �
}��� �
$str��� �
"��� �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
��  
ResultInventoryDto
�� &
>
��& '
CreateInventory
��( 7
(
��7 8
string
��8 >!
authenticationToken
��? R
,
��R S'
CreateInventoryRequestDto
��T m
inventoryRequest
��n ~
)
��~ 
{
�� 	
return
�� 
PostAnsible
�� 
<
��  
ResultInventoryDto
�� 1
>
��1 2
(
��2 3!
authenticationToken
��3 F
,
��F G"
AnsibleTowerInstance
��H \
.
��\ ]
ApiDefinition
��] j
.
��j k
	inventory
��k t
,
��t u
inventoryRequest��v �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
��  
PaginatedResultDto
�� &
<
��& '(
GetJobTemplatesResponseDto
��' A
>
��A B
>
��B C
GetJobTemplates
��D S
(
��S T
string
��T Z!
authenticationToken
��[ n
)
��n o
{
�� 	
return
�� 

GetAnsible
�� 
<
��  
PaginatedResultDto
�� 0
<
��0 1(
GetJobTemplatesResponseDto
��1 K
>
��K L
>
��L M
(
��M N!
authenticationToken
��N a
,
��a b"
AnsibleTowerInstance
��c w
.
��w x
ApiDefinition��x �
.��� �
job_templates��� �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
�� (
GetJobTemplatesResponseDto
�� .
>
��. /
GetJobTemplate
��0 >
(
��> ?
string
��? E!
authenticationToken
��F Y
,
��Y Z
string
��[ a
jobTemplateId
��b o
)
��o p
{
�� 	
return
�� 

GetAnsible
�� 
<
�� (
GetJobTemplatesResponseDto
�� 8
>
��8 9
(
��9 :!
authenticationToken
��: M
,
��M N
$"
��O Q
{
��Q R"
AnsibleTowerInstance
��R f
.
��f g
ApiDefinition
��g t
.
��t u
job_templates��u �
}��� �
{��� �
jobTemplateId��� �
}��� �
$str��� �
"��� �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
�� (
GetJobTemplatesResponseDto
�� .
>
��. /
CreateJobTemplate
��0 A
(
��A B
string
��B H!
authenticationToken
��I \
,
��\ ])
CreateJobTemplateRequestDto
��^ y'
createJobTemplateRequest��z �
)��� �
{
�� 	
return
�� 
PostAnsible
�� 
<
�� (
GetJobTemplatesResponseDto
�� 9
>
��9 :
(
��: ;!
authenticationToken
��; N
,
��N O"
AnsibleTowerInstance
��P d
.
��d e
ApiDefinition
��e r
.
��r s
job_templates��s �
,��� �(
createJobTemplateRequest��� �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
��  
PaginatedResultDto
�� &
<
��& ''
GetCredentialsResponseDto
��' @
>
��@ A
>
��A B
GetCredentials
��C Q
(
��Q R
string
��R X!
authenticationToken
��Y l
,
��l m
string
��n t
searchCriteria��u �
=��� �
null��� �
)��� �
{
�� 	
return
�� 

GetAnsible
�� 
<
��  
PaginatedResultDto
�� 0
<
��0 1'
GetCredentialsResponseDto
��1 J
>
��J K
>
��K L
(
��L M!
authenticationToken
��M `
,
��` a"
AnsibleTowerInstance
��b v
.
��v w
ApiDefinition��w �
.��� �
credentials��� �
,��� �
searchCriteria��� �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
�� '
GetCredentialsResponseDto
�� -
>
��- .
CreateCredential
��/ ?
(
��? @
string
��@ F!
authenticationToken
��G Z
,
��Z [(
CreateCredentialRequestDto
��\ v 
credentialRequest��w �
)��� �
{
�� 	
return
�� 
PostAnsible
�� 
<
�� '
GetCredentialsResponseDto
�� 8
>
��8 9
(
��9 :!
authenticationToken
��: M
,
��M N"
AnsibleTowerInstance
��O c
.
��c d
ApiDefinition
��d q
.
��q r
credentials
��r }
,
��} ~ 
credentialRequest�� �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
��  
PaginatedResultDto
�� &
<
��& '#
GetProjectsRequestDto
��' <
>
��< =
>
��= >
GetProjects
��? J
(
��J K
string
��K Q!
authenticationToken
��R e
,
��e f
string
��g m
searchCriteria
��n |
=
��} ~
null�� �
)��� �
{
�� 	
return
�� 

GetAnsible
�� 
<
��  
PaginatedResultDto
�� 0
<
��0 1#
GetProjectsRequestDto
��1 F
>
��F G
>
��G H
(
��H I!
authenticationToken
��I \
,
��\ ]"
AnsibleTowerInstance
��^ r
.
��r s
ApiDefinition��s �
.��� �
projects��� �
,��� �
searchCriteria��� �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
�� #
GetProjectsRequestDto
�� )
>
��) *
CreateProject
��+ 8
(
��8 9
string
��9 ?!
authenticationToken
��@ S
,
��S T%
CreateProjectRequestDto
��U l
credentialRequest
��m ~
)
��~ 
{
�� 	
return
�� 
PostAnsible
�� 
<
�� #
GetProjectsRequestDto
�� 4
>
��4 5
(
��5 6!
authenticationToken
��6 I
,
��I J"
AnsibleTowerInstance
��K _
.
��_ `
ApiDefinition
��` m
.
��m n
credentials
��n y
,
��y z 
credentialRequest��{ �
)��� �
;��� �
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
�� 
DeleteProject
�� )
(
��) *
string
��* 0!
authenticationToken
��1 D
,
��D E
string
��F L
	projectId
��M V
)
��V W
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
��$ %
	projectId
��% .
)
��. /
)
��/ 0
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
��, K
)
��K L
;
��L M
}
�� 
return
�� 
DeleteAnsible
��  
<
��  !
string
��! '
>
��' (
(
��( )!
authenticationToken
��) <
,
��< =
$"
��> @
{
��@ A"
AnsibleTowerInstance
��A U
.
��U V
ApiDefinition
��V c
.
��c d
projects
��d l
}
��l m
$str
��m n
{
��n o
	projectId
��o x
}
��x y
"
��y z
,
��z {
false��| �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
��  
PaginatedResultDto
�� &
<
��& '
GetJobResponseDto
��' 8
>
��8 9
>
��9 :
GetJobs
��; B
(
��B C
string
��C I!
authenticationToken
��J ]
,
��] ^
string
��_ e
searchCriteria
��f t
=
��u v
null
��w {
)
��{ |
{
�� 	
return
�� 

GetAnsible
�� 
<
��  
PaginatedResultDto
�� 0
<
��0 1
GetJobResponseDto
��1 B
>
��B C
>
��C D
(
��D E!
authenticationToken
��E X
,
��X Y"
AnsibleTowerInstance
��Z n
.
��n o
ApiDefinition
��o |
.
��| }
jobs��} �
,��� �
searchCriteria��� �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
�� 
string
�� 
>
�� 
	CancelJob
�� %
(
��% &
string
��& ,!
authenticationToken
��- @
,
��@ A
int
��B E
idJob
��F K
)
��K L
{
�� 	
return
�� 
PostAnsible
�� 
<
�� 
string
�� %
>
��% &
(
��& '!
authenticationToken
��' :
,
��: ;
$"
��< >
{
��> ?"
AnsibleTowerInstance
��? S
.
��S T
ApiDefinition
��T a
.
��a b
jobs
��b f
}
��f g
{
��g h
idJob
��h m
}
��m n
$str
��n v
"
��v w
,
��w x
null
��y }
)
��} ~
;
��~ 
}
�� 	
public
�� 
Task
�� 
<
�� %
GetCanCancelResponseDto
�� +
>
��+ ,
CanCancelJob
��- 9
(
��9 :
string
��: @!
authenticationToken
��A T
,
��T U
int
��V Y
idJob
��Z _
)
��_ `
{
�� 	
return
�� 

GetAnsible
�� 
<
�� %
GetCanCancelResponseDto
�� 5
>
��5 6
(
��6 7!
authenticationToken
��7 J
,
��J K
$"
��L N
{
��N O"
AnsibleTowerInstance
��O c
.
��c d
ApiDefinition
��d q
.
��q r
jobs
��r v
}
��v w
{
��w x
idJob
��x }
}
��} ~
$str��~ �
"��� �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
��  
PaginatedResultDto
�� &
<
��& '%
GetJobEventsResponseDto
��' >
>
��> ?
>
��? @
GetJobEvents
��A M
(
��M N
string
��N T!
authenticationToken
��U h
,
��h i
int
��j m
idJob
��n s
)
��s t
{
�� 	
return
�� 

GetAnsible
�� 
<
��  
PaginatedResultDto
�� 0
<
��0 1%
GetJobEventsResponseDto
��1 H
>
��H I
>
��I J
(
��J K!
authenticationToken
��K ^
,
��^ _
$"
��` b
{
��b c"
AnsibleTowerInstance
��c w
.
��w x
ApiDefinition��x �
.��� �
jobs��� �
}��� �
{��� �
idJob��� �
}��� �
$str��� �
"��� �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
�� %
GetCanCancelResponseDto
�� +
>
��+ ,
GetCanJobSchedule
��- >
(
��> ?
string
��? E!
authenticationToken
��F Y
,
��Y Z
int
��[ ^
jobId
��_ d
)
��d e
{
�� 	
return
�� 

GetAnsible
�� 
<
�� %
GetCanCancelResponseDto
�� 5
>
��5 6
(
��6 7!
authenticationToken
��7 J
,
��J K
$"
��L N
{
��N O"
AnsibleTowerInstance
��O c
.
��c d
ApiDefinition
��d q
.
��q r
jobs
��r v
}
��v w
{
��w x
jobId
��x }
}
��} ~
$str��~ �
"��� �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
�� 
string
�� 
>
�� 
DeleteJobTemplate
�� -
(
��- .
string
��. 4!
authenticationToken
��5 H
,
��H I
string
��J P
jobTemplateId
��Q ^
)
��^ _
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
jobTemplateId
��% 2
)
��2 3
)
��3 4
{
�� 
throw
�� 
new
�� 
ArgumentException
�� +
(
��+ ,
$str
��, K
)
��K L
;
��L M
}
�� 
return
�� 
DeleteAnsible
��  
<
��  !
string
��! '
>
��' (
(
��( )!
authenticationToken
��) <
,
��< =
$"
��> @
{
��@ A"
AnsibleTowerInstance
��A U
.
��U V
ApiDefinition
��V c
.
��c d
job_templates
��d q
}
��q r
$str
��r s
{
��s t
jobTemplateId��t �
}��� �
"��� �
)��� �
;��� �
}
�� 	
public
�� 
Task
�� 
<
�� 
PingResponseDto
�� #
>
��# $
Ping
��% )
(
��) *
)
��* +
{
�� 	
return
�� 
HttpClientHandler
�� $
.
��$ %
Send
��% )
<
��) *
PingResponseDto
��* 9
>
��9 :
(
��: ;

HttpMethod
��; E
.
��E F
Get
��F I
,
��I J"
AnsibleTowerInstance
��K _
.
��_ ` 
CircuitBreakerName
��` r
,
��r s#
AnsibleTowerInstance��t �
.��� �
ApiDefinition��� �
.��� �
ping��� �
,��� �
null��� �
,��� �
	MediaType��� �
.��� �
ApplicationJson��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� )
SetAutehnticationTokenAsync
�� 6
(
��6 7
string
��7 =!
authenticationToken
��> Q
)
��Q R
{
�� 	
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
��% &!
authenticationToken
��& 9
)
��9 :
)
��: ;
{
�� 
	AuthToken
�� 
=
�� !
authenticationToken
�� /
;
��/ 0
return
�� 
;
�� 
}
�� 
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %"
AnsibleTowerInstance
��% 9
.
��9 :
Username
��: B
)
��B C
||
��D F
string
��G M
.
��M N
IsNullOrEmpty
��N [
(
��[ \"
AnsibleTowerInstance
��\ p
.
��p q
Password
��q y
)
��y z
)
��z {
{
�� 
throw
�� 
new
�� /
!AnsibleTowerUnauthorizedException
�� ;
(
��; <
$str
��< q
)
��q r
;
��r s
}
�� 
var
�� 
credentials
�� 
=
�� 
await
�� #
Login
��$ )
(
��) *"
AnsibleTowerInstance
��* >
.
��> ?
Username
��? G
,
��G H"
AnsibleTowerInstance
��I ]
.
��] ^
Password
��^ f
)
��f g
;
��g h
	AuthToken
�� 
=
�� 
credentials
�� #
.
��# $
token
��$ )
;
��) *
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
��) *
GetLoginHeaders
��+ :
(
��: ;
string
��; A
userName
��B J
,
��J K
string
��L R
password
��S [
)
��[ \
{
�� 	
var
�� 
authCredential
�� 
=
��  
Convert
��! (
.
��( )
ToBase64String
��) 7
(
��7 8
Encoding
��8 @
.
��@ A
ASCII
��A F
.
��F G
GetBytes
��G O
(
��O P
$"
��P R
{
��R S
userName
��S [
}
��[ \
$str
��\ ]
{
��] ^
password
��^ f
}
��f g
"
��g h
)
��h i
)
��i j
;
��j k
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
��4 5
$str
��6 E
,
��E F
$"
��G I
$str
��I O
{
��O P
authCredential
��P ^
}
��^ _
"
��_ `
}
��a b
}
��c d
;
��d e
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
�� 	
return
�� 
new
�� 

Dictionary
�� !
<
��! "
string
��" (
,
��( )
string
��* 0
>
��0 1
{
��2 3
{
��4 5
$str
��6 E
,
��E F
$"
��G I
$str
��I P
{
��P Q
	AuthToken
��Q Z
}
��Z [
"
��[ \
}
��] ^
}
��_ `
;
��` a
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
T
�� 
>
�� 

GetAnsible
�� (
<
��( )
T
��) *
>
��* +
(
��+ ,
string
��, 2!
authenticationToken
��3 F
,
��F G
string
��H N
endpoint
��O W
,
��W X
string
��Y _
searchCriteria
��` n
=
��o p
null
��q u
)
��u v
{
�� 	
await
�� )
SetAutehnticationTokenAsync
�� -
(
��- .!
authenticationToken
��. A
)
��A B
;
��B C
var
�� 
searchCriteriaUri
�� !
=
��" #
(
��$ %
searchCriteria
��% 3
!=
��4 6
null
��7 ;
?
��< =
$str
��> H
+
��I J
searchCriteria
��K Y
:
��Z [
string
��\ b
.
��b c
Empty
��c h
)
��h i
;
��i j
return
�� 
await
�� 
HttpClientHandler
�� *
.
��* +
Send
��+ /
<
��/ 0
T
��0 1
>
��1 2
(
��2 3

HttpMethod
��3 =
.
��= >
Get
��> A
,
��A B"
AnsibleTowerInstance
��C W
.
��W X 
CircuitBreakerName
��X j
,
��j k
endpoint
��l t
+
��u v 
searchCriteriaUri��w �
,��� �
null��� �
,��� �
	MediaType��� �
.��� �
ApplicationJson��� �
,��� �'
GetAuthorizationHeaders��� �
(��� �
)��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
T
�� 
>
�� 
PostAnsible
�� )
<
��) *
T
��* +
>
��+ ,
(
��, -
string
��- 3!
authenticationToken
��4 G
,
��G H
string
��I O
endpoint
��P X
,
��X Y
object
��Z `

dataToSend
��a k
)
��k l
{
�� 	
await
�� )
SetAutehnticationTokenAsync
�� -
(
��- .!
authenticationToken
��. A
)
��A B
;
��B C
return
�� 
await
�� 
HttpClientHandler
�� *
.
��* +
Send
��+ /
<
��/ 0
T
��0 1
>
��1 2
(
��2 3

HttpMethod
��3 =
.
��= >
Post
��> B
,
��B C"
AnsibleTowerInstance
��D X
.
��X Y 
CircuitBreakerName
��Y k
,
��k l
endpoint
��m u
,
��u v

dataToSend��w �
,��� �
	MediaType��� �
.��� �
ApplicationJson��� �
,��� �'
GetAuthorizationHeaders��� �
(��� �
)��� �
)��� �
;��� �
}
�� 	
private
�� 
async
�� 
Task
�� 
<
�� 
T
�� 
>
�� 
DeleteAnsible
�� +
<
��+ ,
T
��, -
>
��- .
(
��. /
string
��/ 5!
authenticationToken
��6 I
,
��I J
string
��K Q
endpoint
��R Z
,
��Z [
bool
��\ `
useCamelCase
��a m
=
��n o
true
��p t
)
��t u
{
�� 	
await
�� )
SetAutehnticationTokenAsync
�� -
(
��- .!
authenticationToken
��. A
)
��A B
;
��B C
return
�� 
await
�� 
HttpClientHandler
�� *
.
��* +
Send
��+ /
<
��/ 0
T
��0 1
>
��1 2
(
��2 3

HttpMethod
��3 =
.
��= >
Delete
��> D
,
��D E"
AnsibleTowerInstance
��F Z
.
��Z [ 
CircuitBreakerName
��[ m
,
��m n
endpoint
��o w
,
��w x
null
��y }
,
��} ~
	MediaType�� �
.��� �
ApplicationJson��� �
,��� �'
GetAuthorizationHeaders��� �
(��� �
)��� �
,��� �
true��� �
,��� �
useCamelCase��� �
)��� �
;��� �
}
�� 	
}
�� 
}�� �9
�C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.AnsibleTower\Handler\IAnsibleTowerHandler.cs
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
)	 �
;
� �
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
null	} �
)
� �
;
� �
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
organizationRequest	p �
)
� �
;
� �
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
createJobTemplateRequest	s �
)
� �
;
� �
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
null	 �
)
� �
;
� �
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
credentialRequest	p �
)
� �
;
� �
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