ScriptName HRQ01QuestScript Extends Quest  

Quest Property HRQ01Quest Auto
Actor Property PlayerRef Auto
GlobalVariable Property HRQ01OfferingTotal Auto
GlobalVariable Property HRQ01BearPeltCount Auto Conditional
GlobalVariable Property HRQ01BearSnowPeltCount Auto Conditional
GlobalVariable Property HRQ01SabreCatPeltCount Auto Conditional
GlobalVariable Property HRQ01SabreCatSnowPeltCount Auto Conditional
GlobalVariable Property HRQ01WolfPeltCount Auto Conditional
GlobalVariable Property HRQ01WolfIcePeltCount Auto Conditional
MiscObject Property BearPelt Auto
MiscObject Property BearSnowPelt Auto
MiscObject Property SabreCatPelt Auto
MiscObject Property SabreCatSnowPelt Auto
MiscObject Property WolfPelt Auto
MiscObject Property WolfIcePelt Auto

Function BearPeltCount()
	Int total = HRQ01OfferingTotal.GetValue() As Int
	Int currentCount = PlayerRef.GetItemCount(BearPelt)
	Int display = currentCount
	If display > 3
		display = 3
	EndIf
	HRQ01BearPeltCount.SetValue(display)
	UpdateCurrentInstanceGlobal(HRQ01BearPeltCount)
	If currentCount >= total
		HRQ01Quest.SetObjectiveCompleted(10,True)
		HRQ01Quest.SetObjectiveDisplayed(15,True,True)
	ElseIf currentCount < total
		HRQ01Quest.SetObjectiveCompleted(10,False)
		HRQ01Quest.SetObjectiveDisplayed(15,False)
		HRQ01Quest.SetObjectiveDisplayed(10,True,True)	
	EndIf
EndFunction

Function BearSnowPeltCount()
	Int total = HRQ01OfferingTotal.GetValue() As Int
	Int currentCount = PlayerRef.GetItemCount(BearSnowPelt)
	Int display = currentCount
	If display > 3
		display = 3
	EndIf
	HRQ01BearSnowPeltCount.SetValue(display)
	UpdateCurrentInstanceGlobal(HRQ01BearSnowPeltCount)
	If currentCount >= total
		HRQ01Quest.SetObjectiveCompleted(20,True)
		HRQ01Quest.SetObjectiveDisplayed(25,True,True)
	ElseIf currentCount < total
		HRQ01Quest.SetObjectiveCompleted(20,False)
		HRQ01Quest.SetObjectiveDisplayed(25,False)
		HRQ01Quest.SetObjectiveDisplayed(20,True,True)	
	EndIf
EndFunction

Function SabreCatPeltCount()
	Int total = HRQ01OfferingTotal.GetValue() As Int
	Int currentCount = PlayerRef.GetItemCount(SabreCatPelt)
	Int display = currentCount
	If display > 3
		display = 3
	EndIf
	HRQ01SabreCatPeltCount.SetValue(display)
	UpdateCurrentInstanceGlobal(HRQ01SabreCatPeltCount)
	If currentCount >= total
		HRQ01Quest.SetObjectiveCompleted(30,True)
		HRQ01Quest.SetObjectiveDisplayed(35,True,True)
	ElseIf currentCount < total
		HRQ01Quest.SetObjectiveCompleted(30,False)
		HRQ01Quest.SetObjectiveDisplayed(35,False)
		HRQ01Quest.SetObjectiveDisplayed(30,True,True)	
	EndIf
EndFunction

Function SabreCatSnowPeltCount()
	Int total = HRQ01OfferingTotal.GetValue() As Int
	Int currentCount = PlayerRef.GetItemCount(SabreCatSnowPelt)
	Int display = currentCount
	If display > 3
		display = 3
	EndIf
	HRQ01SabreCatSnowPeltCount.SetValue(display)
	UpdateCurrentInstanceGlobal(HRQ01SabreCatSnowPeltCount)
	If currentCount >= total
		HRQ01Quest.SetObjectiveCompleted(40,True)
		HRQ01Quest.SetObjectiveDisplayed(45,True,True)
	ElseIf currentCount < total
		HRQ01Quest.SetObjectiveCompleted(40,False)
		HRQ01Quest.SetObjectiveDisplayed(45,False)
		HRQ01Quest.SetObjectiveDisplayed(40,True,True)	
	EndIf
EndFunction

Function WolfPeltCount()
	Int total = HRQ01OfferingTotal.GetValue() As Int
	Int currentCount = PlayerRef.GetItemCount(WolfPelt)
	Int display = currentCount
	If display > 3
		display = 3
	EndIf
	HRQ01WolfPeltCount.SetValue(display)
	UpdateCurrentInstanceGlobal(HRQ01WolfPeltCount)
	If currentCount >= total
		HRQ01Quest.SetObjectiveCompleted(50,True)
		HRQ01Quest.SetObjectiveDisplayed(55,True,True)
	ElseIf currentCount < total
		HRQ01Quest.SetObjectiveCompleted(50,False)
		HRQ01Quest.SetObjectiveDisplayed(55,False)
		HRQ01Quest.SetObjectiveDisplayed(50,True,True)	
	EndIf
EndFunction

Function WolfIcePeltCount()
	Int total = HRQ01OfferingTotal.GetValue() As Int
	Int currentCount = PlayerRef.GetItemCount(WolfIcePelt)
	Int display = currentCount
	If display > 3
		display = 3
	EndIf
	HRQ01WolfIcePeltCount.SetValue(display)
	UpdateCurrentInstanceGlobal(HRQ01WolfIcePeltCount)
	If currentCount >= total
		HRQ01Quest.SetObjectiveCompleted(60,True)
		HRQ01Quest.SetObjectiveDisplayed(65,True,True)
	ElseIf currentCount < total
		HRQ01Quest.SetObjectiveCompleted(60,False)
		HRQ01Quest.SetObjectiveDisplayed(65,False)
		HRQ01Quest.SetObjectiveDisplayed(60,True,True)	
	EndIf
EndFunction