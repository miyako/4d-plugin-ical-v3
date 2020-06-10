//%attributes = {}
$options:=New object:C1471("uid";"0E1CAC61-66F9-4C68-A2F8-9CA32A9E5630")
$status:=iCal Get event property ($options)

$status:=iCal Request permisson 

If ($status.success)
	
	$options:=New object:C1471("uid";"6FE5DB91-4D0F-496C-8E02-CC4D108FD838")
	$status:=iCal Get event property ($options)
	
	$options.recurrenceRule:=New object:C1471("recurrenceInterval";1;"recurrenceType";1)
	  //0:Daily, 1:Weekly, 2:Monthly, 3:Yearly
	$status:=iCal Set event property ($options)
	
End if 