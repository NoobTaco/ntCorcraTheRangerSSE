Scriptname nt_FollowerEssential extends ObjectReference  
{This script is used to enable or disable the Essential state of a follower}

Message Property nt_CorcraConfigMenu Auto
Actor Property nt_Actor  Auto

Event OnRead()
    Menu()
EndEvent


Function Menu(int aiButton = 0)
    ActorBase PersonBase = nt_Actor.GetBaseObject() as ActorBase

    aiButton = nt_CorcraConfigMenu.show()
    if aiButton == 0
    
    ElseIf aiButton == 1
        Debug.notification("Essential turned ON.")
        PersonBase.SetEssential()
    ElseIf aiButton == 2
        Debug.notification("Essential turned OFF.")
        PersonBase.SetEssential(false)
    EndIf
EndFunction