ScriptName HRQ01PlayerScript Extends ReferenceAlias  

HRQ01QuestScript Property HQR01QS Auto
MiscObject Property BearPelt Auto
MiscObject Property BearSnowPelt Auto
MiscObject Property SabreCatPelt Auto
MiscObject Property SabreCatSnowPelt Auto
MiscObject Property WolfPelt Auto
MiscObject Property WolfIcePelt Auto
Armor Property Reward Auto
Quest Property HRQ01Quest Auto

Event OnInit()
	If HRQ01Quest.IsStageDone(90)
		GoToState("Inactive")
	Else
		GoToState("Active")
	EndIf
EndEvent

State Active
	Event OnBeginState()
		AddInventoryEventFilter(BearPelt)
		AddInventoryEventFilter(BearSnowPelt)
		AddInventoryEventFilter(SabreCatPelt)
		AddInventoryEventFilter(SabreCatSnowPelt)
		AddInventoryEventFilter(WolfPelt)
		AddInventoryEventFilter(WolfIcePelt)
		AddInventoryEventFilter(Reward)
	EndEvent

	Event OnItemAdded(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
		GoToState("Inactive")
		If HRQ01Quest.IsStageDone(20)
			If !HRQ01Quest.IsStageDone(30) && akBaseItem == BearPelt
				HQR01QS.BearPeltCount()
			ElseIf !HRQ01Quest.IsStageDone(40) && akBaseItem == BearSnowPelt
				HQR01QS.BearSnowPeltCount()
			ElseIf !HRQ01Quest.IsStageDone(50) && akBaseItem == SabreCatPelt
				HQR01QS.SabreCatPeltCount()
			ElseIf !HRQ01Quest.IsStageDone(60) && akBaseItem == SabreCatSnowPelt
				HQR01QS.SabreCatSnowPeltCount()
			ElseIf !HRQ01Quest.IsStageDone(70) && akBaseItem == WolfPelt
				HQR01QS.WolfPeltCount()
			ElseIf !HRQ01Quest.IsStageDone(80) && akBaseItem == WolfIcePelt
				HQR01QS.WolfIcePeltCount()
			EndIf
	    EndIf
		If !HRQ01Quest.IsStageDone(90)
			GoToState("Active")
		EndIf
	EndEvent

	Event OnItemRemoved(Form akBaseItem, Int aiItemCount, ObjectReference akItemReference, ObjectReference akDestContainer)
		GoToState("Inactive")
		If HRQ01Quest.IsStageDone(20) && !HRQ01Quest.IsStageDone(30)
			If !HRQ01Quest.IsStageDone(30) && akBaseItem == BearPelt
				HQR01QS.BearPeltCount()
			ElseIf !HRQ01Quest.IsStageDone(40) && akBaseItem == BearSnowPelt
				HQR01QS.BearSnowPeltCount()
			ElseIf !HRQ01Quest.IsStageDone(50) && akBaseItem == SabreCatPelt
				HQR01QS.SabreCatPeltCount()
			ElseIf !HRQ01Quest.IsStageDone(60) && akBaseItem == SabreCatSnowPelt
				HQR01QS.SabreCatSnowPeltCount()
			ElseIf !HRQ01Quest.IsStageDone(70) && akBaseItem == WolfPelt
				HQR01QS.WolfPeltCount()
			ElseIf !HRQ01Quest.IsStageDone(80) && akBaseItem == WolfIcePelt
				HQR01QS.WolfIcePeltCount()
			EndIf
		EndIf
		If !HRQ01Quest.IsStageDone(90)
			GoToState("Active")
		EndIf
	EndEvent
EndState

State Inactive
	;Do nothing
EndState