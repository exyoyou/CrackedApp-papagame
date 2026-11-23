package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class nx implements com.kwad.sdk.core.d<com.kwad.components.core.video.a.d.a> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.video.a.d.a) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.video.a.d.a) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.video.a.d.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        aVar.code = jSONObject.optInt("code");
        aVar.msg = jSONObject.optString("msg");
        if (JSONObject.NULL.toString().equals(aVar.msg)) {
            aVar.msg = "";
        }
        aVar.videoUrl = jSONObject.optString("video_url");
        if (JSONObject.NULL.toString().equals(aVar.videoUrl)) {
            aVar.videoUrl = "";
        }
        aVar.llsid = jSONObject.optLong("llsid");
        aVar.creativeId = jSONObject.optLong("creative_id");
        aVar.authorId = jSONObject.optLong("ad_info_uid");
        aVar.aon = jSONObject.optString("ad_info_user_name");
        if (JSONObject.NULL.toString().equals(aVar.aon)) {
            aVar.aon = "";
        }
        aVar.aoo = jSONObject.optInt("ad_media_player_type");
    }

    private static JSONObject b(com.kwad.components.core.video.a.d.a aVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        int i10 = aVar.code;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "code", i10);
        }
        String str = aVar.msg;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "msg", aVar.msg);
        }
        String str2 = aVar.videoUrl;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "video_url", aVar.videoUrl);
        }
        long j10 = aVar.llsid;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "llsid", j10);
        }
        long j11 = aVar.creativeId;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creative_id", j11);
        }
        long j12 = aVar.authorId;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_info_uid", j12);
        }
        String str3 = aVar.aon;
        if (str3 != null && !str3.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_info_user_name", aVar.aon);
        }
        int i11 = aVar.aoo;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_media_player_type", i11);
        }
        return jSONObject;
    }
}
