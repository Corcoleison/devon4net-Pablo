©

öC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Grpc\GrpcConfiguration.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Grpc# '
{ 
public 

static 
class 
GrpcConfiguration )
{ 
public 
static 
void 
	SetupGrpc $
($ %
this% )
IServiceCollection* <
services= E
,E F
IConfigurationG U
configurationV c
)c d
{ 	
var 
grpcOptions 
= 
services &
.& '
GetTypedOptions' 6
<6 7
GrpcOptions7 B
>B C
(C D
configurationD Q
,Q R
$strS Y
)Y Z
;Z [
if 
( 
! 
grpcOptions 
. 

EnableGrpc '
||( *
string+ 1
.1 2
IsNullOrEmpty2 ?
(? @
grpcOptions@ K
.K L

GrpcServerL V
)V W
)W X
returnY _
;_ `
})) 	
}** 
}++ Œ
ùC:\Users\pcorcole\OneDrive - Capgemini\Desktop\Example\devon4net-net3.1\devon4net-net3.1\source\Modules\Devon4Net.Infrastructure.Grpc\Handlers\GrpcHandler.cs
	namespace 	
	Devon4Net
 
. 
Infrastructure "
." #
Grpc# '
.' (
Handlers( 0
{ 
public 

class 
GrpcHandler 
{ 
private 
GrpcChannel 
GrpcChannel '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public

 
GrpcHandler

 
(

 
GrpcChannel

 &
grpcChannel

' 2
)

2 3
{ 	
if 
( 
grpcChannel 
== 
null #
)# $
{ 
throw 
new 
ArgumentException +
(+ ,
$str, a
)a b
;b c
} 
GrpcChannel 
= 
grpcChannel %
;% &
} 	
} 
} 