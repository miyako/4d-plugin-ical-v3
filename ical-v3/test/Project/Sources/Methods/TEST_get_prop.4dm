//%attributes = {}
$status:=iCal Request permisson 

If ($status.success)
	
	$event:=New object:C1471
	
	$event.uid:="C9613635-742C-47ED-9CC5-4A3F6D50F374"
	$event.occurrence:=Null:C1517
	
	$status:=iCal Get event property ($event)
	
End if 