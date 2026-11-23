package com.alipay.sdk.data;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.util.i;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f7149c = 3500;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f7150d = "http://h5.m.taobao.com/trade/paySuccess.html?bizOrderId=$OrderId$&";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f7151e = 1000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f7152f = 20000;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f7153g = "alipay_cashier_dynamic_config";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f7154h = "timeout";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f7155i = "st_sdk_config";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f7156j = "tbreturl";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static a f7157k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7158a = f7149c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f7159b = f7150d;

    private static /* synthetic */ void c(a aVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("timeout", aVar.a());
            jSONObject.put(f7156j, aVar.f7159b);
            i.c(x.b.b().f97590a, f7153g, jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    public static a f() {
        if (f7157k == null) {
            a aVar = new a();
            f7157k = aVar;
            aVar.e(i.b(x.b.b().f97590a, f7153g));
        }
        return f7157k;
    }

    private String g() {
        return this.f7159b;
    }

    private void h() {
        e(i.b(x.b.b().f97590a, f7153g));
    }

    private void i() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("timeout", a());
            jSONObject.put(f7156j, this.f7159b);
            i.c(x.b.b().f97590a, f7153g, jSONObject.toString());
        } catch (Exception unused) {
        }
    }

    public final int a() {
        int i10 = this.f7158a;
        return (i10 < 1000 || i10 > 20000) ? f7149c : this.f7158a;
    }

    public final void b(Context context) {
        new Thread(new b(this, context)).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject(f7155i);
            this.f7158a = jSONObjectOptJSONObject.optInt("timeout", f7149c);
            this.f7159b = jSONObjectOptJSONObject.optString(f7156j, f7150d).trim();
        } catch (Throwable unused) {
        }
    }
}
