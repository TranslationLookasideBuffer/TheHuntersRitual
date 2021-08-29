scriptName HRQ01OfferScript Extends ReferenceAlias

Quest Property HRQ01Quest Auto
Actor Property PlayerRef Auto
Int Property ObjectiveID Auto
Int Property StageID Auto
GlobalVariable Property HRQ01OfferingTotal Auto
MiscObject Property Offering Auto


Auto State Active
	Event OnActivate(ObjectReference akTriggerRef)
        If HRQ01Quest.IsObjectiveCompleted(ObjectiveID) && akTriggerRef == PlayerRef
            Int total = HRQ01OfferingTotal.GetValue() As Int
            PlayerRef.RemoveItem(Offering, total)
            Self.GetReference().Disable() ;Disable the underlying activator - this will have the side effect of enabling the offering static objects.
            HRQ01Quest.SetStage(StageID)
			GoToState("Inactive")
		endif
	EndEvent
EndState

State Inactive
	;Do nothing
EndState