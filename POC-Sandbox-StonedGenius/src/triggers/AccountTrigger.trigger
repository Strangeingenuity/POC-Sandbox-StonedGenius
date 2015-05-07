trigger AccountTrigger on Account (after update) {
    //After update
        if (Trigger.isAfter && Trigger.isUpdate) {
            AccountTriggerHandlerTyaga.afterUpdate(Trigger.new, Trigger.oldMap);
        }
}