//%attributes = {"invisible":true}
$status:=iCal Request permisson 

If ($status.success)
	
	$options:=New object:C1471("color";0x00FF0000)
	
	$options.title:="TEST_Local"
	
	$status:=iCal Create calendar ($options)
	
	If ($status.success)
		
		$options:=$status.calendar
		
		$options.title:="TEST_Local_2"
		$options.color:=0x00FF
		
		$status:=iCal Set calendar property ($options)
		$status:=iCal Get calendar property ($options)
		
		If ($status.success)
			$status:=iCal Remove calendar ($status.calendar)
		End if 
		
	End if 
	
End if 