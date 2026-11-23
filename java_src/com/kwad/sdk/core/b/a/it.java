package com.kwad.sdk.core.b.a;

import com.kwad.sdk.monitor.MediaMessageInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class it implements com.kwad.sdk.core.d<MediaMessageInfo.MediaPermissionInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((MediaMessageInfo.MediaPermissionInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((MediaMessageInfo.MediaPermissionInfo) bVar, jSONObject);
    }

    private static void a(MediaMessageInfo.MediaPermissionInfo mediaPermissionInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        mediaPermissionInfo.canReadLocation = jSONObject.optInt("canReadLocation");
        mediaPermissionInfo.getLocation = jSONObject.optInt("getLocation");
        mediaPermissionInfo.getKsLocation = jSONObject.optInt("getKsLocation");
        mediaPermissionInfo.canUsePhoneState = jSONObject.optInt("canUsePhoneState");
        mediaPermissionInfo.getImei = jSONObject.optInt("getImei");
        mediaPermissionInfo.getImeis = jSONObject.optInt("getImeis");
        mediaPermissionInfo.getAndroidId = jSONObject.optInt("getAndroidId");
        mediaPermissionInfo.canUseOaid = jSONObject.optInt("canUseOaid");
        mediaPermissionInfo.getOaid = jSONObject.optInt("getOaid");
        mediaPermissionInfo.canUseMacAddress = jSONObject.optInt("canUseMacAddress");
        mediaPermissionInfo.getMacAddress = jSONObject.optInt("getMacAddress");
        mediaPermissionInfo.canUseNetworkState = jSONObject.optInt("canUseNetworkState");
        mediaPermissionInfo.canUseStoragePermission = jSONObject.optInt("canUseStoragePermission");
        mediaPermissionInfo.canReadInstalledPackages = jSONObject.optInt("canReadInstalledPackages");
        mediaPermissionInfo.getInstalledPackages = jSONObject.optInt("getInstalledPackages");
        mediaPermissionInfo.canReadMacAddress = jSONObject.optInt("canReadMacAddress");
        mediaPermissionInfo.canReadNearbyWifiList = jSONObject.optInt("canReadNearbyWifiList");
        mediaPermissionInfo.canReadICCID = jSONObject.optInt("canReadICCID");
    }

    private static JSONObject b(MediaMessageInfo.MediaPermissionInfo mediaPermissionInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = mediaPermissionInfo.canReadLocation;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canReadLocation", i10);
        }
        int i11 = mediaPermissionInfo.getLocation;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getLocation", i11);
        }
        int i12 = mediaPermissionInfo.getKsLocation;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getKsLocation", i12);
        }
        int i13 = mediaPermissionInfo.canUsePhoneState;
        if (i13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canUsePhoneState", i13);
        }
        int i14 = mediaPermissionInfo.getImei;
        if (i14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getImei", i14);
        }
        int i15 = mediaPermissionInfo.getImeis;
        if (i15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getImeis", i15);
        }
        int i16 = mediaPermissionInfo.getAndroidId;
        if (i16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getAndroidId", i16);
        }
        int i17 = mediaPermissionInfo.canUseOaid;
        if (i17 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canUseOaid", i17);
        }
        int i18 = mediaPermissionInfo.getOaid;
        if (i18 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getOaid", i18);
        }
        int i19 = mediaPermissionInfo.canUseMacAddress;
        if (i19 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canUseMacAddress", i19);
        }
        int i20 = mediaPermissionInfo.getMacAddress;
        if (i20 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getMacAddress", i20);
        }
        int i21 = mediaPermissionInfo.canUseNetworkState;
        if (i21 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canUseNetworkState", i21);
        }
        int i22 = mediaPermissionInfo.canUseStoragePermission;
        if (i22 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canUseStoragePermission", i22);
        }
        int i23 = mediaPermissionInfo.canReadInstalledPackages;
        if (i23 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canReadInstalledPackages", i23);
        }
        int i24 = mediaPermissionInfo.getInstalledPackages;
        if (i24 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "getInstalledPackages", i24);
        }
        int i25 = mediaPermissionInfo.canReadMacAddress;
        if (i25 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canReadMacAddress", i25);
        }
        int i26 = mediaPermissionInfo.canReadNearbyWifiList;
        if (i26 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canReadNearbyWifiList", i26);
        }
        int i27 = mediaPermissionInfo.canReadICCID;
        if (i27 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "canReadICCID", i27);
        }
        return jSONObject;
    }
}
