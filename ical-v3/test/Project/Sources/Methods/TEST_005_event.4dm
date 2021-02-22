//%attributes = {}
$status:=iCal Request permisson 

If ($status.success)
	
	$status:=iCal GET CALENDAR LIST 
	
	If ($status.success)
		$calendars:=$status.calendars
		$calendars:=$calendars.query("title == :1";"販売")
		
		
	End if 
	
	
	$status:=iCal Get default calendar 
	
	If ($status.success)
		
		$calendar:=$status.calendar
		
		$options:=New object:C1471
		$options.calendar:=$calendar
		$options.title:="TEST EVENT"
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
			
			$event:=New object:C1471("uid";$status.event.uid)  //clear other properties
			
			$event.recurrenceRule:=New object:C1471
			$event.recurrenceRule.recurrenceType:=0  //Daily
			$event.recurrenceRule.recurrenceInterval:=1  //every day
			$event.recurrenceRule.recurrenceEnd:=New object:C1471
			$event.recurrenceRule.recurrenceEnd.occurrenceCount:=3
			
			$status:=iCal Set event property ($event)
			
		End if 
		
	End if 
	
End if 
