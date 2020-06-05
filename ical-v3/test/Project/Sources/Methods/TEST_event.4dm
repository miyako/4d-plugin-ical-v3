//%attributes = {}
$status:=iCal Request permisson 

If ($status.success)
	
	$options:=New object:C1471
	$options.calendar:=New object:C1471("title";"TEST")
	$options.title:="TEST R. EVENT"
	$options.startDate:=Current date:C33
	$options.endDate:=Current date:C33+1
	$options.isAllDay:=True:C214
	$options.recurrenceRule:=New object:C1471
	$options.recurrenceRule.recurrenceType:=0  //Daily
	$options.recurrenceRule.recurrenceInterval:=1  //every day
	$options.recurrenceRule.recurrenceEnd:=New object:C1471
	$options.recurrenceRule.recurrenceEnd.occurrenceCount:=3
	
	$status:=iCal Create event ($options)
	
	If ($status.success)
		  //OB REMOVE($status.event;"occurrence")
		$status:=iCal Get event property ($status.event)
	End if 
	
End if 