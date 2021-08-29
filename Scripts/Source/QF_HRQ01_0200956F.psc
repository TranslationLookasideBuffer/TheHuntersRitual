;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 17
Scriptname QF_HRQ01_0200956F Extends Quest Hidden

;BEGIN ALIAS PROPERTY OfferWolfIcePeltActivatorAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_OfferWolfIcePeltActivatorAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY OfferWolfPeltActivatorAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_OfferWolfPeltActivatorAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY PlayerAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_PlayerAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY OfferSabreCatPeltActivatorAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_OfferSabreCatPeltActivatorAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY EntrancePortcullisAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_EntrancePortcullisAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY OfferBearPeltActivatorAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_OfferBearPeltActivatorAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY OfferSabreCatSnowPeltActivatorAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_OfferSabreCatSnowPeltActivatorAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RitualStartTrigger
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RitualStartTrigger Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY JournalAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_JournalAlias Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY OfferBearSnowPeltActivatorAlias
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_OfferBearSnowPeltActivatorAlias Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
;WolfIcePelt Offered
SetObjectiveCompleted(65,True)
If HRQ01OfferingsCompleted < 6
  HRQ01OfferingsCompleted += 1
EndIf
If HRQ01OfferingsCompleted == 6
  SetStage(90)
  HRQ01OfferingsCompleted = 7
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
;Start the hunt
SetObjectiveDisplayed(10,True)
SetObjectiveDisplayed(20,True)
SetObjectiveDisplayed(30,True)
SetObjectiveDisplayed(40,True)
SetObjectiveDisplayed(50,True)
SetObjectiveDisplayed(60,True)
HRQ01QS.BearPeltCount()
HRQ01QS.BearSnowPeltCount()
HRQ01QS.SabreCatPeltCount()
HRQ01QS.SabreCatSnowPeltCount()
HRQ01QS.WolfPeltCount()
HRQ01QS.WolfIcePeltCount()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_16
Function Fragment_16()
;BEGIN CODE
;Ritual ready
SetObjectiveDisplayed(70,True)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
;BearSnowPelt Offered
SetObjectiveCompleted(25,True)
If HRQ01OfferingsCompleted < 6
  HRQ01OfferingsCompleted += 1
EndIf
If HRQ01OfferingsCompleted == 6
  SetStage(90)
  HRQ01OfferingsCompleted = 7
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
;StartUp
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
;All Offerings Complete
SetStage(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
;BearPelt Offered
SetObjectiveCompleted(15,True)
If HRQ01OfferingsCompleted < 6
  HRQ01OfferingsCompleted += 1
EndIf
If HRQ01OfferingsCompleted == 6
  SetStage(90)
  HRQ01OfferingsCompleted = 7
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
;SabreCatPelt Offered
SetObjectiveCompleted(35,True)
If HRQ01OfferingsCompleted < 6
  HRQ01OfferingsCompleted += 1
EndIf
If HRQ01OfferingsCompleted == 6
  SetStage(90)
  HRQ01OfferingsCompleted = 7
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
;SabreCatSnowPelt Offered
SetObjectiveCompleted(45,True)
If HRQ01OfferingsCompleted < 6
  HRQ01OfferingsCompleted += 1
EndIf
If HRQ01OfferingsCompleted == 6
  SetStage(90)
  HRQ01OfferingsCompleted = 7
EndIf
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
;WolfPelt Offered
SetObjectiveCompleted(55,True)
If HRQ01OfferingsCompleted < 6
  HRQ01OfferingsCompleted += 1
EndIf
If HRQ01OfferingsCompleted == 6
  SetStage(90)
  HRQ01OfferingsCompleted = 7
EndIf
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

HRQ01QuestScript Property HRQ01QS  Auto  

Actor Property PlayerRef  Auto  

Int Property HRQ01OfferingsCompleted = 0 Auto  

GlobalVariable Property HRQ01OfferingTotal  Auto  
