//%attributes = {}
$status:=iCal Request permisson

If ($status.success)
	
	$event:=New object:C1471
	
	$event.uid:="21B79F41-309B-4A7E-9BBF-291C950A8ED0"
	$event.occurrence:=Null:C1517
	
	$status:=iCal Get event property($event)
	
End if 