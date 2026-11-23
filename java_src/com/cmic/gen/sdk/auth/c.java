package com.cmic.gen.sdk.auth;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.cmic.gen.sdk.e.e;
import com.cmic.gen.sdk.e.h;
import com.cmic.gen.sdk.e.j;
import com.cmic.gen.sdk.e.k;
import com.cmic.gen.sdk.e.m;
import com.cmic.gen.sdk.e.n;
import com.cmic.gen.sdk.e.o;
import com.cmic.gen.sdk.e.q;
import com.cmic.gen.sdk.e.r;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class c {
    public static final String SDK_VERSION = "quick_login_android_5.9.6";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static c f24287f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final com.cmic.gen.sdk.auth.a f24288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Context f24289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected long f24290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final Handler f24291d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected String f24292e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f24293g;

    protected class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.cmic.gen.sdk.a f24321b;

        a(com.cmic.gen.sdk.a aVar) {
            this.f24321b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            JSONObject jSONObjectA = d.a("200023", "登录超时");
            c.this.callBackResult(jSONObjectA.optString("resultCode", "200023"), jSONObjectA.optString("desc", "登录超时"), this.f24321b, jSONObjectA);
        }
    }

    c(Context context) {
        this.f24290c = 8000L;
        this.f24293g = new Object();
        Context applicationContext = context.getApplicationContext();
        this.f24289b = applicationContext;
        this.f24291d = new Handler(applicationContext.getMainLooper());
        this.f24288a = com.cmic.gen.sdk.auth.a.a(applicationContext);
        r.a(applicationContext);
        k.a(applicationContext);
        j.a(applicationContext);
        n.a(new n.a() { // from class: com.cmic.gen.sdk.auth.c.1
            @Override // com.cmic.gen.sdk.e.n.a
            protected void a() {
                String strB = k.b("AID", "");
                com.cmic.gen.sdk.e.c.b("AuthnHelperCore", "aid = " + strB);
                if (TextUtils.isEmpty(strB)) {
                    c.this.a();
                }
                if (com.cmic.gen.sdk.e.b.a(c.this.f24289b, true)) {
                    com.cmic.gen.sdk.e.c.b("AuthnHelperCore", "生成androidkeystore成功");
                } else {
                    com.cmic.gen.sdk.e.c.b("AuthnHelperCore", "生成androidkeystore失败");
                }
            }
        });
    }

    public static c getInstance(Context context) {
        if (f24287f == null) {
            synchronized (c.class) {
                if (f24287f == null) {
                    f24287f = new c(context);
                }
            }
        }
        return f24287f;
    }

    public static void setDebugMode(boolean z10) {
        com.cmic.gen.sdk.e.c.a(z10);
    }

    public void callBackResult(String str, String str2, com.cmic.gen.sdk.a aVar, JSONObject jSONObject) {
        try {
            String strB = aVar.b("traceId");
            final int iB = aVar.b("SDKRequestCode", -1);
            if (e.a(strB)) {
                return;
            }
            synchronized (this) {
                final GenTokenListener genTokenListenerC = e.c(strB);
                if (jSONObject == null || !jSONObject.optBoolean("keepListener", false)) {
                    e.b(strB);
                }
                if (genTokenListenerC == null) {
                    return;
                }
                aVar.a("systemEndTime", SystemClock.elapsedRealtime());
                aVar.a("endtime", o.a());
                int iC = aVar.c("logintype");
                if (jSONObject == null) {
                    jSONObject = d.a(str, str2);
                }
                final JSONObject jSONObjectA = iC == 3 ? d.a(str, aVar, jSONObject) : d.a(str, str2, aVar, jSONObject);
                jSONObjectA.put("traceId", strB);
                jSONObjectA.put("scripExpiresIn", String.valueOf(h.a()));
                this.f24291d.post(new Runnable() { // from class: com.cmic.gen.sdk.auth.c.6
                    @Override // java.lang.Runnable
                    public void run() {
                        genTokenListenerC.onGetTokenComplete(iB, jSONObjectA);
                    }
                });
                com.cmic.gen.sdk.a.c.a(this.f24289b).a(aVar);
                if (aVar.b().j() || q.a(aVar.b())) {
                    return;
                }
                a(this.f24289b, str, aVar);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void delScrip() {
        try {
            h.a(true, true);
            com.cmic.gen.sdk.e.c.b("AuthnHelperCore", "删除scrip");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public JSONObject getNetworkType(Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            try {
                boolean zA = m.a(this.f24289b);
                com.cmic.gen.sdk.b.a.a().a(context, zA);
                String strA = j.a().a((String) null);
                int iA = m.a(context, zA, new com.cmic.gen.sdk.a(1));
                jSONObject.put("operatortype", strA);
                jSONObject.put("networktype", iA + "");
                com.cmic.gen.sdk.e.c.b("AuthnHelperCore", "网络类型: " + iA);
                com.cmic.gen.sdk.e.c.b("AuthnHelperCore", "运营商类型: " + strA);
                return jSONObject;
            } catch (JSONException e10) {
                e10.printStackTrace();
                return jSONObject;
            }
        } catch (Exception unused) {
            jSONObject.put("errorDes", "发生未知错误");
            return jSONObject;
        }
    }

    public void getPhoneInfo(final String str, final String str2, final GenTokenListener genTokenListener) {
        final com.cmic.gen.sdk.a aVarA = a(genTokenListener);
        n.a(new n.a(this.f24289b, aVarA) { // from class: com.cmic.gen.sdk.auth.c.4
            @Override // com.cmic.gen.sdk.e.n.a
            protected void a() {
                if (c.this.a(aVarA, str, str2, "preGetMobile", 3, genTokenListener)) {
                    c.this.a(aVarA);
                }
            }
        });
    }

    public void loginAuth(final String str, final String str2, final GenTokenListener genTokenListener) {
        final com.cmic.gen.sdk.a aVarA = a(genTokenListener);
        n.a(new n.a(this.f24289b, aVarA) { // from class: com.cmic.gen.sdk.auth.c.2
            @Override // com.cmic.gen.sdk.e.n.a
            protected void a() {
                if (c.this.a(aVarA, str, str2, "loginAuth", 1, genTokenListener)) {
                    c.this.a(aVarA);
                }
            }
        });
    }

    public void mobileAuth(final String str, final String str2, final GenTokenListener genTokenListener) {
        final com.cmic.gen.sdk.a aVarA = a(genTokenListener);
        n.a(new n.a(this.f24289b, aVarA) { // from class: com.cmic.gen.sdk.auth.c.3
            @Override // com.cmic.gen.sdk.e.n.a
            protected void a() {
                if (c.this.a(aVarA, str, str2, "mobileAuth", 0, genTokenListener)) {
                    c.this.a(aVarA);
                }
            }
        });
    }

    public void setOverTime(long j10) {
        this.f24290c = j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        String str = "%" + q.b();
        com.cmic.gen.sdk.e.c.b("AuthnHelperCore", "generate aid = " + str);
        k.a("AID", str);
    }

    protected com.cmic.gen.sdk.a a(GenTokenListener genTokenListener) {
        com.cmic.gen.sdk.a aVar = new com.cmic.gen.sdk.a(64);
        String strC = q.c();
        aVar.a(new com.cmic.gen.sdk.d.b());
        aVar.a("traceId", strC);
        com.cmic.gen.sdk.e.c.a("traceId", strC);
        if (genTokenListener != null) {
            e.a(strC, genTokenListener);
        }
        return aVar;
    }

    public static c getInstance(Context context, String str) {
        if (f24287f == null) {
            synchronized (c.class) {
                if (f24287f == null) {
                    f24287f = new c(context, str);
                }
            }
        }
        return f24287f;
    }

    private c(Context context, String str) {
        this(context);
        this.f24292e = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.cmic.gen.sdk.a aVar) {
        final a aVar2 = new a(aVar);
        this.f24291d.postDelayed(aVar2, this.f24290c);
        this.f24288a.a(aVar, new b() { // from class: com.cmic.gen.sdk.auth.c.5
            @Override // com.cmic.gen.sdk.auth.b
            public void a(String str, String str2, com.cmic.gen.sdk.a aVar3, JSONObject jSONObject) {
                c.this.f24291d.removeCallbacks(aVar2);
                c.this.callBackResult(str, str2, aVar3, jSONObject);
            }
        });
    }

    protected boolean a(com.cmic.gen.sdk.a aVar, String str, String str2, String str3, int i10, GenTokenListener genTokenListener) {
        boolean zA;
        com.cmic.gen.sdk.a.a aVarA = com.cmic.gen.sdk.a.c.a(this.f24289b).a();
        aVar.a(aVarA);
        aVar.a("use2048PublicKey", "rsa2048".equals(this.f24292e));
        aVar.a("systemStartTime", SystemClock.elapsedRealtime());
        aVar.a("starttime", o.a());
        aVar.a("loginMethod", str3);
        aVar.a("appkey", str2);
        aVar.a("appid", str);
        aVar.a("timeOut", String.valueOf(this.f24290c));
        boolean zA2 = m.a(this.f24289b);
        com.cmic.gen.sdk.b.a.a().a(this.f24289b, zA2);
        String strB = j.a().b();
        String strC = j.a().c();
        String strA = j.a().a(strC);
        aVar.a("operator", strC);
        aVar.a("operatortype", strA);
        aVar.a("logintype", i10);
        com.cmic.gen.sdk.e.c.b("AuthnHelperCore", "subId = " + strB);
        if (!TextUtils.isEmpty(strB)) {
            com.cmic.gen.sdk.e.c.a("AuthnHelperCore", "使用subId作为缓存key = " + strB);
            aVar.a("scripType", "subid");
            aVar.a("scripKey", strB);
        } else if (!TextUtils.isEmpty(strC)) {
            com.cmic.gen.sdk.e.c.a("AuthnHelperCore", "使用operator作为缓存key = " + strC);
            aVar.a("scripType", "operator");
            aVar.a("scripKey", strC);
        }
        int iA = m.a(this.f24289b, zA2, aVar);
        aVar.a("networktype", iA);
        if (!zA2) {
            aVar.a("authType", String.valueOf(0));
            callBackResult("200010", "无法识别sim卡或没有sim卡", aVar, null);
            return false;
        }
        if (genTokenListener == null) {
            callBackResult("102203", "listener不能为空", aVar, null);
            return false;
        }
        if (aVarA.g()) {
            callBackResult("200082", "服务器繁忙，请稍后重试", aVar, null);
            return false;
        }
        if (TextUtils.isEmpty(str == null ? "" : str.trim())) {
            callBackResult("102203", "appId 不能为空", aVar, null);
            return false;
        }
        if (TextUtils.isEmpty(str2 == null ? "" : str2.trim())) {
            callBackResult("102203", "appkey不能为空", aVar, null);
            return false;
        }
        if (iA == 0) {
            callBackResult("102101", "未检测到网络", aVar, null);
            return false;
        }
        if ("2".equals(strA) && aVarA.f()) {
            callBackResult("200082", "服务器繁忙，请稍后重试", aVar, null);
            return false;
        }
        if ("3".equals(strA) && aVarA.e()) {
            callBackResult("200082", "服务器繁忙，请稍后重试", aVar, null);
            return false;
        }
        synchronized (this.f24293g) {
            zA = h.a(aVar);
            if (zA) {
                aVar.a("securityphone", k.b("securityphone", ""));
                if (3 != i10) {
                    String strA2 = h.a(this.f24289b);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("解密phoneScript ");
                    sb2.append(!TextUtils.isEmpty(strA2));
                    com.cmic.gen.sdk.e.c.b("AuthnHelperCore", sb2.toString());
                    if (TextUtils.isEmpty(strA2)) {
                        zA = false;
                    } else {
                        aVar.a("phonescrip", strA2);
                    }
                    h.a(true, false);
                }
            }
            aVar.a("isCacheScrip", zA);
            com.cmic.gen.sdk.e.c.b("AuthnHelperCore", "isCachePhoneScrip = " + zA);
        }
        if (iA != 2 || zA) {
            return true;
        }
        callBackResult("102103", "无数据网络", aVar, null);
        return false;
    }

    private void a(final Context context, final String str, final com.cmic.gen.sdk.a aVar) {
        n.a(new n.a() { // from class: com.cmic.gen.sdk.auth.c.7
            @Override // com.cmic.gen.sdk.e.n.a
            protected void a() {
                if ("200023".equals(str)) {
                    SystemClock.sleep(8000L);
                }
                new com.cmic.gen.sdk.d.d().a(context, str, aVar);
            }
        });
    }
}
