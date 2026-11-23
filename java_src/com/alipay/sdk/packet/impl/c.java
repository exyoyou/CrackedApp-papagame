package com.alipay.sdk.packet.impl;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.message.BasicHeader;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends com.alipay.sdk.packet.d {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f7201u = "log_v";

    @Override // com.alipay.sdk.packet.d
    public final com.alipay.sdk.packet.b b(Context context, String str) throws Throwable {
        return d(context, str, "http://mcgw.alipay.com/sdklog.do", true);
    }

    @Override // com.alipay.sdk.packet.d
    protected final String e(String str, JSONObject jSONObject) {
        return str;
    }

    @Override // com.alipay.sdk.packet.d
    protected final List<Header> h(boolean z10, String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicHeader(com.alipay.sdk.packet.d.f7179c, String.valueOf(z10)));
        arrayList.add(new BasicHeader(com.alipay.sdk.packet.d.f7182f, "application/octet-stream"));
        arrayList.add(new BasicHeader(com.alipay.sdk.packet.d.f7185i, "CBC"));
        return arrayList;
    }

    @Override // com.alipay.sdk.packet.d
    protected final JSONObject i() throws JSONException {
        return null;
    }

    @Override // com.alipay.sdk.packet.d
    protected final String p() throws JSONException {
        HashMap map = new HashMap();
        map.put(com.alipay.sdk.packet.d.f7187k, "/sdk/log");
        map.put(com.alipay.sdk.packet.d.f7188l, "1.0.0");
        HashMap map2 = new HashMap();
        map2.put(f7201u, "1.0");
        return com.alipay.sdk.packet.d.f(map, map2);
    }
}
