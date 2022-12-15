public class AssetHandler {
    public static void AssetHandler(List<asset> AssestTriggerNew, List<asset> AssestTriggerOld,Map<id, asset> AssestTriggerNewMap, Map<id, asset> AssestTriggerOldMap) {
        for (asset AssetField : AssestTriggerNew) {
            Asset oldAsset = AssestTriggerOldMap.get(AssetField.id);
            if (AssetField.status == 'Shipped'){
                AssetField.description = ('Asset is shipped');
            }
            if (AssetField.status == 'Installed'){
                AssetField.description = ('Asset is installed');
            }
        }
    }

    }

