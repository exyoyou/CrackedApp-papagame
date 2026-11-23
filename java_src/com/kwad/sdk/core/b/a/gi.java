package com.kwad.sdk.core.b.a;

import com.join.mgps.activity.NoticeTopAnimActivityDialog_;
import com.kwad.sdk.commercial.model.HybridLoadMsg;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class gi implements com.kwad.sdk.core.d<HybridLoadMsg> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((HybridLoadMsg) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((HybridLoadMsg) bVar, jSONObject);
    }

    private static void a(HybridLoadMsg hybridLoadMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        hybridLoadMsg.sceneId = jSONObject.optString("scene_id");
        if (JSONObject.NULL.toString().equals(hybridLoadMsg.sceneId)) {
            hybridLoadMsg.sceneId = "";
        }
        hybridLoadMsg.h5Version = jSONObject.optString("h5_version");
        if (JSONObject.NULL.toString().equals(hybridLoadMsg.h5Version)) {
            hybridLoadMsg.h5Version = "";
        }
        hybridLoadMsg.loadType = jSONObject.optInt("load_type");
        hybridLoadMsg.state = jSONObject.optInt(NoticeTopAnimActivityDialog_.STATE_EXTRA);
        hybridLoadMsg.interval = jSONObject.optString("interval");
        if (JSONObject.NULL.toString().equals(hybridLoadMsg.interval)) {
            hybridLoadMsg.interval = "";
        }
        hybridLoadMsg.failState = jSONObject.optInt("fail_state");
        hybridLoadMsg.failReason = jSONObject.optString("fail_reason");
        if (JSONObject.NULL.toString().equals(hybridLoadMsg.failReason)) {
            hybridLoadMsg.failReason = "";
        }
        hybridLoadMsg.url = jSONObject.optString("url");
        if (JSONObject.NULL.toString().equals(hybridLoadMsg.url)) {
            hybridLoadMsg.url = "";
        }
        hybridLoadMsg.packageUrl = jSONObject.optString("package_url");
        if (JSONObject.NULL.toString().equals(hybridLoadMsg.packageUrl)) {
            hybridLoadMsg.packageUrl = "";
        }
    }

    private static JSONObject b(HybridLoadMsg hybridLoadMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = hybridLoadMsg.sceneId;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "scene_id", hybridLoadMsg.sceneId);
        }
        String str2 = hybridLoadMsg.h5Version;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "h5_version", hybridLoadMsg.h5Version);
        }
        int i10 = hybridLoadMsg.loadType;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "load_type", i10);
        }
        int i11 = hybridLoadMsg.state;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, NoticeTopAnimActivityDialog_.STATE_EXTRA, i11);
        }
        String str3 = hybridLoadMsg.interval;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "interval", hybridLoadMsg.interval);
        }
        int i12 = hybridLoadMsg.failState;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "fail_state", i12);
        }
        String str4 = hybridLoadMsg.failReason;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "fail_reason", hybridLoadMsg.failReason);
        }
        String str5 = hybridLoadMsg.url;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "url", hybridLoadMsg.url);
        }
        String str6 = hybridLoadMsg.packageUrl;
        if (str6 != null && !str6.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "package_url", hybridLoadMsg.packageUrl);
        }
        return jSONObject;
    }
}
