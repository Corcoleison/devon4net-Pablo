›
™C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.FluentValidation\CustomFluentValidator.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
FluentValidation# 3
{ 
public 

abstract 
class !
CustomFluentValidator /
</ 0
T0 1
>1 2
:3 4
AbstractValidator5 F
<F G
TG H
>H I
whereJ O
TP Q
:R S
classT Y
{		 
private

 
bool

 $
LaunchExceptionWhenError

 -
{

. /
get

0 3
;

3 4
}

5 6
	protected !
CustomFluentValidator '
(' (
bool( ,$
launchExceptionWhenError- E
)E F
{ 	$
LaunchExceptionWhenError #
=$ %$
launchExceptionWhenError& >
;> ?
CustomValidate 
( 
) 
; 
} 	
public 
abstract 
void 
CustomValidate +
(+ ,
), -
;- .
public 
override 
ValidationResult (
Validate) 1
(1 2
ValidationContext2 C
<C D
TD E
>E F
contextG N
)N O
{ 	
var 
result 
= 
base 
. 
Validate &
(& '
context' .
). /
;/ 0
if 
( 
result 
. 
IsValid 
) 
return  &
result' -
;- .
var 
errorMessage 
= 
$" !
$str! >
{> ?
typeof? E
(E F
TF G
)G H
.H I
FullNameI Q
}Q R
$strR U
{U V
stringV \
.\ ]
Join] a
(a b
$strb e
,e f
resultg m
.m n
Errorsn t
)t u
}u v
"v w
;w x
Devon4NetLogger 
. 
Error !
(! "
errorMessage" .
). /
;/ 0
if 
( $
LaunchExceptionWhenError (
)( )
{ 
throw   
new   
ArgumentException   +
(  + ,
errorMessage  , 8
)  8 9
;  9 :
}!! 
return## 
result## 
;## 
}$$ 	
}%% 
}&& ®
≤C:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.FluentValidation\FluentValidationConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
FluentValidation# 3
{ 
public 

static 
class )
FluentValidationConfiguration 5
{ 
public 
static 
void 
AddFluentValidation .
<. /
T/ 0
>0 1
(1 2
this2 6
IServiceCollection7 I
servicesJ R
,R S
boolT X$
launchExceptionWhenErrorY q
=r s
falset y
)y z
where	{ Ä
T
Å Ç
:
É Ñ
class
Ö ä
{		 	
var

 

memberInfo

 
=

 
typeof

 #
(

# $
T

$ %
)

% &
.

& '
BaseType

' /
;

/ 0
if 
( 

memberInfo 
!= 
null "
&&# %
!& '

memberInfo' 1
.1 2
Name2 6
.6 7
Contains7 ?
(? @
$str@ W
)W X
)X Y
{ 
throw 
new 
ArgumentException +
(+ ,
$", .
$str. @
{@ A
typeofA G
(G H
TH I
)I J
.J K
FullNameK S
}S T
$str	T Ä
"
Ä Å
)
Å Ç
;
Ç É
} 
var 
objValidator 
= 
(  
T  !
)! "
	Activator# ,
., -
CreateInstance- ;
(; <
typeof< B
(B C
TC D
)D E
,E F
argsG K
:K L$
launchExceptionWhenErrorM e
)e f
;f g
services 
. 
AddSingleton !
(! "
objValidator" .
). /
;/ 0
} 	
} 
} 