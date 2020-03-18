//%attributes = {}
$status:=iCal Request permisson 

If ($status.success)
	
	$options:=New object:C1471
	$options.calendar:=New object:C1471("title";"TEST")
	$options.title:="TEST EVENT"
	$options.startDate:=Current date:C33
	$options.endDate:=Current date:C33+1
	$options.isAllDay:=True:C214
	
	$status:=iCal Create event ($options)
	
	If ($status.success)
		  //OB REMOVE($status.event;"occurrence")
		$status:=iCal Get event property ($status.event)
	End if 
	
End if 