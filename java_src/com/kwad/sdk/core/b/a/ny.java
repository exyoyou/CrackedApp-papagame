package com.kwad.sdk.core.b.a;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class ny implements com.kwad.sdk.core.d<com.kwad.components.core.video.a.d.b> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((com.kwad.components.core.video.a.d.b) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((com.kwad.components.core.video.a.d.b) bVar, jSONObject);
    }

    private static void a(com.kwad.components.core.video.a.d.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        bVar.aop = jSONObject.optLong("start_play_duration_ms");
        bVar.aoq = jSONObject.optLong("first_frame_duration_ms");
        bVar.aor = jSONObject.optLong("block_total_duration_ms");
        bVar.videoDuration = jSONObject.optLong("video_duration_ms");
        bVar.anU = jSONObject.optInt("block_times");
        bVar.videoUrl = jSONObject.optString("video_url");
        if (JSONObject.NULL.toString().equals(bVar.videoUrl)) {
            bVar.videoUrl = "";
        }
        bVar.llsid = jSONObject.optLong("llsid");
        bVar.creativeId = jSONObject.optLong("creative_id");
        bVar.authorId = jSONObject.optLong("ad_info_uid");
        bVar.aon = jSONObject.optString("ad_info_user_name");
        if (JSONObject.NULL.toString().equals(bVar.aon)) {
            bVar.aon = "";
        }
        bVar.adStyle = jSONObject.optInt("ad_style");
        bVar.aoo = jSONObject.optInt("ad_media_player_type");
    }

    private static JSONObject b(com.kwad.components.core.video.a.d.b bVar, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j10 = bVar.aop;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "start_play_duration_ms", j10);
        }
        long j11 = bVar.aoq;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "first_frame_duration_ms", j11);
        }
        long j12 = bVar.aor;
        if (j12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "block_total_duration_ms", j12);
        }
        long j13 = bVar.videoDuration;
        if (j13 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "video_duration_ms", j13);
        }
        int i10 = bVar.anU;
        if (i10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "block_times", i10);
        }
        String str = bVar.videoUrl;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "video_url", bVar.videoUrl);
        }
        long j14 = bVar.llsid;
        if (j14 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "llsid", j14);
        }
        long j15 = bVar.creativeId;
        if (j15 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "creative_id", j15);
        }
        long j16 = bVar.authorId;
        if (j16 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_info_uid", j16);
        }
        String str2 = bVar.aon;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_info_user_name", bVar.aon);
        }
        int i11 = bVar.adStyle;
        if (i11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_style", i11);
        }
        int i12 = bVar.aoo;
        if (i12 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "ad_media_player_type", i12);
        }
        return jSONObject;
    }
}
