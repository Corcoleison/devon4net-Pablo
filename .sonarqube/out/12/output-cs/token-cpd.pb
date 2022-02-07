ÃJ
†C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Swagger\SwaggerConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Application 
.  
WebAPI  &
.& '
Configuration' 4
{ 
public 

static 
class  
SwaggerConfiguration ,
{ 
public 
static 
void 
SetupSwagger '
(' (
this( ,
IServiceCollection- ?
services@ H
,H I
refJ M
IConfigurationN \
configuration] j
,j k
booll p

useSwaggerq {
=| }
true	~ Ç
)
Ç É
{ 	
var 
swaggerOptions 
=  
services! )
.) *
GetTypedOptions* 9
<9 :
SwaggerOptions: H
>H I
(I J
configurationJ W
,W X
$strY b
)b c
;c d
if 
( 
! 

useSwagger 
) 
return #
;# $
if 
( 
swaggerOptions 
? 
.  
Endpoint  (
==) +
null, 0
)0 1
return2 8
;8 9
SetupSwaggerService 
(  
ref  #
services$ ,
,, -
swaggerOptions. <
)< =
;= >
} 	
private 
static 
void 
SetupSwaggerService /
(/ 0
ref0 3
IServiceCollection4 F
servicesG O
,O P
SwaggerOptionsQ _
swaggerOptions` n
)n o
{ 	
if 
( 
swaggerOptions 
== !
null" &
)& '
return( .
;. /
services 
. 
AddSwaggerGen "
(" #
c# $
=>% '
{ 
c   
.   

SwaggerDoc   
(   
swaggerOptions   +
.  + ,
Version  , 3
,  3 4
new  5 8
OpenApiInfo  9 D
{!! 
Version"" 
="" 
swaggerOptions"" ,
."", -
Version""- 4
,""4 5
Title## 
=## 
swaggerOptions## *
.##* +
Title##+ 0
,##0 1
Description$$ 
=$$  !
swaggerOptions$$" 0
.$$0 1
Description$$1 <
,$$< =
TermsOfService%% "
=%%# $
new%%% (
Uri%%) ,
(%%, -
swaggerOptions%%- ;
.%%; <
Terms%%< A
)%%A B
,%%B C
Contact&& 
=&& 
new&& !
OpenApiContact&&" 0
{&&1 2
Name&&3 7
=&&8 9
swaggerOptions&&: H
.&&H I
Contact&&I P
.&&P Q
Name&&Q U
,&&U V
Email&&W \
=&&] ^
swaggerOptions&&_ m
.&&m n
Contact&&n u
.&&u v
Email&&v {
,&&{ |
Url	&&} Ä
=
&&Å Ç
new
&&É Ü
Uri
&&á ä
(
&&ä ã
swaggerOptions
&&ã ô
.
&&ô ö
Contact
&&ö °
.
&&° ¢
Url
&&¢ •
)
&&• ¶
}
&&ß ®
,
&&® ©
License'' 
='' 
new'' !
OpenApiLicense''" 0
{''1 2
Name''3 7
=''8 9
swaggerOptions'': H
.''H I
License''I P
.''P Q
Name''Q U
,''U V
Url''W Z
=''[ \
new''] `
Uri''a d
(''d e
swaggerOptions''e s
.''s t
License''t {
.''{ |
Url''| 
)	'' Ä
}
''Å Ç
}(( 
)(( 
;(( 
foreach** 
(** 
var** 
doc**  
in**! #%
GetXmlDocumentsForSwagger**$ =
(**= >
)**> ?
)**? @
c++ 
.++ 
IncludeXmlComments++ (
(++( )
GetXmlCommentsPath++) ;
(++; <
doc++< ?
)++? @
)++@ A
;++A B
},, 
),, 
;,, 
services.. 
... 
AddSwaggerGen.. "
(.." #
options..# *
=>..+ -
{// 
options00 
.00 !
AddSecurityDefinition00 -
(00- .
	AuthConst00. 7
.007 8 
AuthenticationScheme008 L
,00L M
new00N Q!
OpenApiSecurityScheme00R g
{11 
Description22 
=22  !
$str	22" å
,
22å ç
Name33 
=33 
$str33 *
,33* +
In44 
=44 
ParameterLocation44 *
.44* +
Header44+ 1
,441 2
Type55 
=55 
SecuritySchemeType55 -
.55- .
ApiKey55. 4
,554 5
Scheme66 
=66 
	AuthConst66 &
.66& ' 
AuthenticationScheme66' ;
}77 
)77 
;77 
options88 
.88 "
AddSecurityRequirement88 .
(88. /
new88/ 2&
OpenApiSecurityRequirement883 M
{99 
{:: 
new;; !
OpenApiSecurityScheme;; 1
{<< 
	Reference== %
===& '
new==( +
OpenApiReference==, <
{=== >
Type>>  $
=>>% &
ReferenceType>>' 4
.>>4 5
SecurityScheme>>5 C
,>>C D
Id??  "
=??# $
	AuthConst??% .
.??. / 
AuthenticationScheme??/ C
}??D E
,??E F
Scheme@@  &
=@@' (
	AuthConst@@) 2
.@@2 3 
AuthenticationScheme@@3 G
,@@G H
NameAA  $
=AA% &
	AuthConstAA' 0
.AA0 1 
AuthenticationSchemeAA1 E
,AAE F
InBB  "
=BB# $
ParameterLocationBB% 6
.BB6 7
HeaderBB7 =
,BB= >
}CC 
,CC 
newCC 
ListCC #
<CC# $
stringCC$ *
>CC* +
(CC+ ,
)CC, -
}CC. /
}DD 
)DD 
;DD 
}EE 
)EE 
;EE 
servicesGG 
.GG 

AddMvcCoreGG 
(GG  
)GG  !
.GG! "
AddApiExplorerGG" 0
(GG0 1
)GG1 2
;GG2 3
}HH 	
publicJJ 
staticJJ 
voidJJ '
ConfigureSwaggerApplicationJJ 6
(JJ6 7
thisJJ7 ;
IApplicationBuilderJJ< O
appJJP S
,JJS T
SwaggerOptionsJJU c
swaggerOptionsJJd r
)JJr s
{KK 	
appLL 
.LL 

UseSwaggerLL 
(LL 
)LL 
;LL 
appMM 
.MM 
UseSwaggerUIMM 
(MM 
cMM 
=>MM !
{MM" #
cMM$ %
.MM% &
SwaggerEndpointMM& 5
(MM5 6
swaggerOptionsMM6 D
.MMD E
EndpointMME M
.MMM N
UrlMMN Q
,MMQ R
swaggerOptionsMMS a
.MMa b
EndpointMMb j
.MMj k
NameMMk o
)MMo p
;MMp q
}MMr s
)MMs t
;MMt u
}NN 	
publicPP 
staticPP 
voidPP '
ConfigureSwaggerApplicationPP 6
(PP6 7
thisPP7 ;
IApplicationBuilderPP< O
appPPP S
,PPS T
stringPPU [
urlPP\ _
,PP_ `
stringPPa g
namePPh l
)PPl m
{QQ 	
appRR 
.RR 

UseSwaggerRR 
(RR 
)RR 
;RR 
appSS 
.SS 
UseSwaggerUISS 
(SS 
cSS 
=>SS !
{SS" #
cSS$ %
.SS% &
SwaggerEndpointSS& 5
(SS5 6
urlSS6 9
,SS9 :
nameSS; ?
)SS? @
;SS@ A
}SSB C
)SSC D
;SSD E
}TT 	
privateWW 
staticWW 
stringWW 
GetXmlCommentsPathWW 0
(WW0 1
stringWW1 7
assemblyNameWW8 D
)WWD E
{XX 	
varYY 
basePathYY 
=YY 

AppContextYY %
.YY% &
BaseDirectoryYY& 3
;YY3 4
returnZZ 
PathZZ 
.ZZ 
CombineZZ 
(ZZ  
basePathZZ  (
,ZZ( )
assemblyNameZZ* 6
)ZZ6 7
;ZZ7 8
}[[ 	
private]] 
static]] 
List]] 
<]] 
string]] "
>]]" #%
GetXmlDocumentsForSwagger]]$ =
(]]= >
)]]> ?
{^^ 	
var__ 
basePath__ 
=__ 

AppContext__ %
.__% &
BaseDirectory__& 3
;__3 4
return`` 
	Directory`` 
.`` 
GetFiles`` %
(``% &
basePath``& .
,``. /
$str``0 7
,``7 8
SearchOption``9 E
.``E F
AllDirectories``F T
)``T U
.``U V
ToList``V \
(``\ ]
)``] ^
;``^ _
}aa 	
}ee 
}ff 