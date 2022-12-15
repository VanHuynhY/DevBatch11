trigger AssestTrigger on Asset (before insert, before update) {
    if(Trigger.isBefore && Trigger.isInsert) {
        
        AssetHandler.AssetHandlerUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if(Trigger.isBefore && Trigger.isUpdate) {
        
        AssetHandler.AssetHandlerUpdate(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

}