//%attributes = {}
$status:=iCal Request permisson 

If ($status.success)
	
	$status:=iCal GET CALENDAR LIST 
	
	If ($status.success)
		
		If ($status.calendars.length#0)
			
			  //date can be 
			  //a. GMT date string : String(Current date;ISO date GMT;Current time)
			  //b. native locale date : Date
			  //to search a day inclusive, set end date to next or specify date string with time
			
			$options:=New object:C1471(\
				"calendars";$status.calendars;\
				"endDate";Current date:C33+1;\
				"startDate";Current date:C33)
			
			$status:=iCal QUERY EVENT ($options)
			
		End if 
		
	End if 
	
End if 