package com.kwad.sdk.core.b.a;

import com.join.mgps.adapter.FullScreenActivity_;
import com.kwad.sdk.core.response.model.PhotoInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class kb implements com.kwad.sdk.core.d<PhotoInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((PhotoInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((PhotoInfo) bVar, jSONObject);
    }

    private static void a(PhotoInfo photoInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        photoInfo.mOriginJString = jSONObject.optString("mOriginJString");
        if (JSONObject.NULL.toString().equals(photoInfo.mOriginJString)) {
            photoInfo.mOriginJString = "";
        }
        PhotoInfo.BaseInfo baseInfo = new PhotoInfo.BaseInfo();
        photoInfo.baseInfo = baseInfo;
        baseInfo.parseJson(jSONObject.optJSONObject("baseInfo"));
        PhotoInfo.VideoInfo videoInfo = new PhotoInfo.VideoInfo();
        photoInfo.videoInfo = videoInfo;
        videoInfo.parseJson(jSONObject.optJSONObject(FullScreenActivity_.VIDEO_INFO_EXTRA));
    }

    private static JSONObject b(PhotoInfo photoInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String str = photoInfo.mOriginJString;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "mOriginJString", photoInfo.mOriginJString);
        }
        com.kwad.sdk.utils.ac.a(jSONObject, "baseInfo", photoInfo.baseInfo);
        com.kwad.sdk.utils.ac.a(jSONObject, FullScreenActivity_.VIDEO_INFO_EXTRA, photoInfo.videoInfo);
        return jSONObject;
    }
}
