package com.kwad.sdk.core.b.a;

import com.kwad.sdk.core.response.model.HttpDnsInfo;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class gh implements com.kwad.sdk.core.d<HttpDnsInfo> {
    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ void a(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        a((HttpDnsInfo) bVar, jSONObject);
    }

    @Override // com.kwad.sdk.core.d
    public final /* bridge */ /* synthetic */ JSONObject b(com.kwad.sdk.core.b bVar, JSONObject jSONObject) {
        return b((HttpDnsInfo) bVar, jSONObject);
    }

    private static void a(HttpDnsInfo httpDnsInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        httpDnsInfo.recommendList = new ArrayList();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("recommendList");
        if (jSONArrayOptJSONArray != null) {
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                HttpDnsInfo.IpInfo ipInfo = new HttpDnsInfo.IpInfo();
                ipInfo.parseJson(jSONArrayOptJSONArray.optJSONObject(i10));
                httpDnsInfo.recommendList.add(ipInfo);
            }
        }
        httpDnsInfo.backUpList = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("backUpList");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                HttpDnsInfo.IpInfo ipInfo2 = new HttpDnsInfo.IpInfo();
                ipInfo2.parseJson(jSONArrayOptJSONArray2.optJSONObject(i11));
                httpDnsInfo.backUpList.add(ipInfo2);
            }
        }
        httpDnsInfo.otherList = new ArrayList();
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("otherList");
        if (jSONArrayOptJSONArray3 != null) {
            for (int i12 = 0; i12 < jSONArrayOptJSONArray3.length(); i12++) {
                HttpDnsInfo.IpInfo ipInfo3 = new HttpDnsInfo.IpInfo();
                ipInfo3.parseJson(jSONArrayOptJSONArray3.optJSONObject(i12));
                httpDnsInfo.otherList.add(ipInfo3);
            }
        }
    }

    private static JSONObject b(HttpDnsInfo httpDnsInfo, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        com.kwad.sdk.utils.ac.putValue(jSONObject, "recommendList", httpDnsInfo.recommendList);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "backUpList", httpDnsInfo.backUpList);
        com.kwad.sdk.utils.ac.putValue(jSONObject, "otherList", httpDnsInfo.otherList);
        return jSONObject;
    }
}
