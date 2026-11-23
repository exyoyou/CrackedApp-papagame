package com.cmic.gen.sdk.auth;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.cmic.gen.sdk.e.e;
import com.cmic.gen.sdk.e.h;
import com.cmic.gen.sdk.e.n;
import com.cmic.gen.sdk.view.GenAuthThemeConfig;
import com.cmic.gen.sdk.view.GenLoginPageInListener;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class GenAuthnHelper extends c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static GenAuthnHelper f24261f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private GenAuthThemeConfig f24262g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private GenLoginPageInListener f24263h;

    private GenAuthnHelper(Context context) {
        super(context);
        this.f24263h = null;
    }

    public static GenAuthnHelper getInstance(Context context) {
        if (f24261f == null) {
            synchronized (GenAuthnHelper.class) {
                if (f24261f == null) {
                    f24261f = new GenAuthnHelper(context);
                }
            }
        }
        return f24261f;
    }

    public GenAuthThemeConfig getAuthThemeConfig() {
        if (this.f24262g == null) {
            this.f24262g = new GenAuthThemeConfig.Builder().build();
        }
        return this.f24262g;
    }

    public long getOverTime() {
        return this.f24290c;
    }

    @Override // com.cmic.gen.sdk.auth.c
    public void getPhoneInfo(String str, String str2, GenTokenListener genTokenListener) {
        getPhoneInfo(str, str2, genTokenListener, -1);
    }

    @Override // com.cmic.gen.sdk.auth.c
    public void loginAuth(String str, String str2, GenTokenListener genTokenListener) {
        loginAuth(str, str2, genTokenListener, -1);
    }

    public void loginPageInCallBack(String str, JSONObject jSONObject) {
        GenLoginPageInListener genLoginPageInListener = this.f24263h;
        if (genLoginPageInListener != null) {
            genLoginPageInListener.onLoginPageInComplete(str, jSONObject);
        }
    }

    @Override // com.cmic.gen.sdk.auth.c
    public void mobileAuth(String str, String str2, GenTokenListener genTokenListener) {
        mobileAuth(str, str2, genTokenListener, -1);
    }

    public void quitAuthActivity() {
        try {
            if (com.cmic.gen.sdk.view.b.a().b() != null) {
                com.cmic.gen.sdk.view.b.a().f24627a = 0;
                com.cmic.gen.sdk.view.b.a().b().a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            com.cmic.gen.sdk.e.c.a("AuthnHelper", "关闭授权页失败");
        }
    }

    public void setAuthThemeConfig(GenAuthThemeConfig genAuthThemeConfig) {
        this.f24262g = genAuthThemeConfig;
    }

    public void setPageInListener(GenLoginPageInListener genLoginPageInListener) {
        this.f24263h = genLoginPageInListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, com.cmic.gen.sdk.a aVar) {
        String strB = aVar.b("traceId");
        Intent intent = new Intent();
        intent.putExtra("traceId", strB);
        e.a(aVar.b("traceId"), aVar);
        intent.setClassName(context, "com.cmic.gen.sdk.view.GenLoginAuthActivity");
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        context.startActivity(intent);
    }

    public void getPhoneInfo(final String str, final String str2, final GenTokenListener genTokenListener, int i10) {
        final com.cmic.gen.sdk.a aVarA = a(genTokenListener);
        aVarA.a("SDKRequestCode", i10);
        n.a(new n.a(this.f24289b, aVarA) { // from class: com.cmic.gen.sdk.auth.GenAuthnHelper.1
            @Override // com.cmic.gen.sdk.e.n.a
            protected void a() {
                if (GenAuthnHelper.this.a(aVarA, str, str2, "preGetMobile", 3, genTokenListener)) {
                    GenAuthnHelper.super.a(aVarA);
                }
            }
        });
    }

    public void loginAuth(final String str, final String str2, final GenTokenListener genTokenListener, int i10) {
        final com.cmic.gen.sdk.a aVarA = a(genTokenListener);
        aVarA.a("SDKRequestCode", i10);
        n.a(new n.a(this.f24289b, aVarA) { // from class: com.cmic.gen.sdk.auth.GenAuthnHelper.2
            @Override // com.cmic.gen.sdk.e.n.a
            protected void a() {
                if (GenAuthnHelper.this.a(aVarA, str, str2, "loginAuth", 3, genTokenListener)) {
                    String strA = h.a(GenAuthnHelper.this.f24289b);
                    if (!TextUtils.isEmpty(strA)) {
                        aVarA.a("phonescrip", strA);
                    }
                    GenAuthnHelper.this.a(aVarA);
                }
            }
        });
    }

    public void mobileAuth(final String str, final String str2, final GenTokenListener genTokenListener, int i10) {
        final com.cmic.gen.sdk.a aVarA = a(genTokenListener);
        aVarA.a("SDKRequestCode", i10);
        n.a(new n.a(this.f24289b, aVarA) { // from class: com.cmic.gen.sdk.auth.GenAuthnHelper.3
            @Override // com.cmic.gen.sdk.e.n.a
            protected void a() {
                if (GenAuthnHelper.this.a(aVarA, str, str2, "mobileAuth", 0, genTokenListener)) {
                    GenAuthnHelper.super.a(aVarA);
                }
            }
        });
    }

    private GenAuthnHelper(Context context, String str) {
        super(context);
        this.f24263h = null;
        this.f24292e = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.cmic.gen.sdk.auth.c
    public void a(com.cmic.gen.sdk.a aVar) {
        final c.a aVar2 = new c.a(aVar);
        this.f24291d.postDelayed(aVar2, this.f24290c);
        this.f24288a.a(aVar, new b() { // from class: com.cmic.gen.sdk.auth.GenAuthnHelper.4
            @Override // com.cmic.gen.sdk.auth.b
            public void a(String str, String str2, com.cmic.gen.sdk.a aVar3, JSONObject jSONObject) {
                com.cmic.gen.sdk.e.c.b("onBusinessComplete", "onBusinessComplete");
                GenAuthnHelper.this.f24291d.removeCallbacks(aVar2);
                if (!"103000".equals(str) || e.a(aVar3.b("traceId"))) {
                    GenAuthnHelper.this.callBackResult(str, str2, aVar3, jSONObject);
                } else {
                    GenAuthnHelper.b(GenAuthnHelper.this.f24289b, aVar3);
                }
            }
        });
    }

    public static GenAuthnHelper getInstance(Context context, String str) {
        if (f24261f == null) {
            synchronized (GenAuthnHelper.class) {
                if (f24261f == null) {
                    f24261f = new GenAuthnHelper(context, str);
                }
            }
        }
        return f24261f;
    }
}
