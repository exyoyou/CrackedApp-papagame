package com.kwad.sdk.core.b.a;

import androidx.core.app.NotificationCompat;
import com.kwad.components.ad.reward.monitor.RewardWebViewInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ld implements com.kwad.sdk.core.d<RewardWebViewInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((RewardWebViewInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((RewardWebViewInfo) bVar, jSONObject);
    }

    private static void a(RewardWebViewInfo rewardWebViewInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        rewardWebViewInfo.event = jSONObject.optString(NotificationCompat.CATEGORY_EVENT);
        if (JSONObject.NULL.toString().equals(rewardWebViewInfo.event)) {
            rewardWebViewInfo.event = "";
        }
        rewardWebViewInfo.status = jSONObject.optInt("status");
        rewardWebViewInfo.url = jSONObject.optString("url");
        if (JSONObject.NULL.toString().equals(rewardWebViewInfo.url)) {
            rewardWebViewInfo.url = "";
        }
        rewardWebViewInfo.source = jSONObject.optString("source");
        if (JSONObject.NULL.toString().equals(rewardWebViewInfo.source)) {
            rewardWebViewInfo.source = "";
        }
        rewardWebViewInfo.sceneId = jSONObject.optString("scene_id");
        if (JSONObject.NULL.toString().equals(rewardWebViewInfo.sceneId)) {
            rewardWebViewInfo.sceneId = "";
        }
        rewardWebViewInfo.pageType = jSONObject.optString("page_type");
        if (JSONObject.NULL.toString().equals(rewardWebViewInfo.pageType)) {
            rewardWebViewInfo.pageType = "";
        }
        rewardWebViewInfo.durationMs = jSONObject.optLong("duration_ms");
        rewardWebViewInfo.timeType = jSONObject.optInt("time_type");
    }

    private static JSONObject b(RewardWebViewInfo rewardWebViewInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = rewardWebViewInfo.event;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, NotificationCompat.CATEGORY_EVENT, rewardWebViewInfo.event);
        }
        int i10 = rewardWebViewInfo.status;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "status", i10);
        }
        String str2 = rewardWebViewInfo.url;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "url", rewardWebViewInfo.url);
        }
        String str3 = rewardWebViewInfo.source;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "source", rewardWebViewInfo.source);
        }
        String str4 = rewardWebViewInfo.sceneId;
        if (str4 != null && !str4.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "scene_id", rewardWebViewInfo.sceneId);
        }
        String str5 = rewardWebViewInfo.pageType;
        if (str5 != null && !str5.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "page_type", rewardWebViewInfo.pageType);
        }
        long j10 = rewardWebViewInfo.durationMs;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "duration_ms", j10);
        }
        int i11 = rewardWebViewInfo.timeType;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "time_type", i11);
        }
        return jSONObject;
    }
}
