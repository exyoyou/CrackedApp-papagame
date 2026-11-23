package com.kwad.sdk.core.b.a;

import com.join.mgps.adapter.t4;
import com.kwad.components.core.request.InnerEcLocalLoginInfo;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class gq implements com.kwad.sdk.core.d<InnerEcLocalLoginInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((InnerEcLocalLoginInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((InnerEcLocalLoginInfo) bVar, jSONObject);
    }

    private static void a(InnerEcLocalLoginInfo innerEcLocalLoginInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        innerEcLocalLoginInfo.userId = jSONObject.optLong("userId");
        innerEcLocalLoginInfo.serviceToken = jSONObject.optString("serviceToken");
        if (JSONObject.NULL.toString().equals(innerEcLocalLoginInfo.serviceToken)) {
            innerEcLocalLoginInfo.serviceToken = "";
        }
        innerEcLocalLoginInfo.expire = jSONObject.optLong(t4.f63189e);
        innerEcLocalLoginInfo.sid = jSONObject.optString("sid");
        if (JSONObject.NULL.toString().equals(innerEcLocalLoginInfo.sid)) {
            innerEcLocalLoginInfo.sid = "";
        }
    }

    private static JSONObject b(InnerEcLocalLoginInfo innerEcLocalLoginInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        long j10 = innerEcLocalLoginInfo.userId;
        if (j10 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "userId", j10);
        }
        String str = innerEcLocalLoginInfo.serviceToken;
        if (str != null && !str.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "serviceToken", innerEcLocalLoginInfo.serviceToken);
        }
        long j11 = innerEcLocalLoginInfo.expire;
        if (j11 != 0) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, t4.f63189e, j11);
        }
        String str2 = innerEcLocalLoginInfo.sid;
        if (str2 != null && !str2.equals("")) {
            com.kwad.sdk.utils.ac.putValue(jSONObject, "sid", innerEcLocalLoginInfo.sid);
        }
        return jSONObject;
    }
}
