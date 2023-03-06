//%attributes = {"invisible":true}
$status:=iCal Request permisson

If ($status.success)
	
	$status:=iCal Get default calendar
	
	If ($status.success)
		
		$calendar:=$status.calendar
		
		$sources:=$status.sources
		
		//"Local" and "Subscription" are constant types of uid
		
		$iCloud:=$sources.query("type == :1"; "CalDAV").extract("uid")  //iCloud
		$exchange:=$sources.query("type == :1"; "Exchange").extract("uid")
		
	End if 
End if 