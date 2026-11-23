package com.netease.nis.quicklogin.helper;

import android.content.Context;
import android.text.TextUtils;
import com.cmic.gen.sdk.auth.GenAuthnHelper;
import com.cmic.gen.sdk.auth.GenTokenListener;
import com.czhj.sdk.common.Constants;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.QuickLogin;
import com.netease.nis.quicklogin.entity.CMPrefetchNumber;
import com.netease.nis.quicklogin.listener.QuickLoginPreMobileListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
import com.netease.nis.quicklogin.utils.f;
import com.netease.nis.quicklogin.utils.g;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b extends com.netease.nis.quicklogin.helper.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final GenAuthnHelper f76041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f76042c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f76043d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f76044e;

    class a implements GenTokenListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ QuickLoginPreMobileListener f76045a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f76046b;

        a(QuickLoginPreMobileListener quickLoginPreMobileListener, String str) {
            this.f76045a = quickLoginPreMobileListener;
            this.f76046b = str;
        }

        @Override // com.cmic.gen.sdk.auth.GenTokenListener
        public void onGetTokenComplete(int i10, JSONObject jSONObject) {
            Logger.d("prefetchMobileNumber [callback]" + jSONObject.toString());
            Logger.d("prefetchMobileNumber [time]" + (System.currentTimeMillis() - QuickLogin.prefetchDataStartTime) + "ms");
            CMPrefetchNumber cMPrefetchNumber = (CMPrefetchNumber) com.netease.nis.quicklogin.utils.a.a(jSONObject.toString(), CMPrefetchNumber.class);
            if (cMPrefetchNumber == null) {
                Logger.d("移动 prefetchMobileNumber [error]" + jSONObject.toString());
                QuickLoginPreMobileListener quickLoginPreMobileListener = this.f76045a;
                if (quickLoginPreMobileListener != null) {
                    try {
                        quickLoginPreMobileListener.onGetMobileNumberError(this.f76046b, "移动 prefetchMobileNumber [error]" + jSONObject.toString());
                    } catch (Exception e10) {
                        Logger.e(e10.getMessage());
                    }
                }
                b.this.a("RETURN_DATA_ERROR", "cmPrefetchMobileNumber", 0, "移动预取号返回值错误", b.this.f76042c + b.this.f76043d, jSONObject.toString());
                return;
            }
            String resultCode = cMPrefetchNumber.getResultCode();
            if (resultCode.equals("103000")) {
                QuickLoginPreMobileListener quickLoginPreMobileListener2 = this.f76045a;
                if (quickLoginPreMobileListener2 != null) {
                    try {
                        quickLoginPreMobileListener2.onGetMobileNumberSuccess(this.f76046b, cMPrefetchNumber.getSecurityphone() == null ? "移动不返回掩码" : cMPrefetchNumber.getSecurityphone());
                        return;
                    } catch (Exception e11) {
                        Logger.e(e11.getMessage());
                        return;
                    }
                }
                return;
            }
            String str = " result code:" + resultCode + " desc:" + cMPrefetchNumber.getDesc() + " traceId:" + cMPrefetchNumber.getTraceId();
            Logger.d("移动 prefetchMobileNumber [error]" + str);
            QuickLoginPreMobileListener quickLoginPreMobileListener3 = this.f76045a;
            if (quickLoginPreMobileListener3 != null) {
                try {
                    quickLoginPreMobileListener3.onGetMobileNumberError(this.f76046b, "移动 prefetchMobileNumber failed:" + str);
                } catch (Exception e12) {
                    Logger.e(e12.getMessage());
                }
            }
            b.this.a("RETURN_DATA_ERROR", "cmPrefetchMobileNumber", com.netease.nis.quicklogin.utils.a.b(cMPrefetchNumber.getResultCode()), "移动预取号返回值错误：" + str, b.this.f76042c + b.this.f76043d, jSONObject.toString());
        }
    }

    /* JADX INFO: renamed from: com.netease.nis.quicklogin.helper.b$b, reason: collision with other inner class name */
    class C0980b implements GenTokenListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ QuickLoginTokenListener f76048a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f76049b;

        C0980b(QuickLoginTokenListener quickLoginTokenListener, String str) {
            this.f76048a = quickLoginTokenListener;
            this.f76049b = str;
        }

        @Override // com.cmic.gen.sdk.auth.GenTokenListener
        public void onGetTokenComplete(int i10, JSONObject jSONObject) {
            QuickLoginTokenListener quickLoginTokenListener;
            String strA;
            Logger.d("onePass [callback]" + jSONObject.toString());
            try {
                String string = jSONObject.getString("resultCode");
                if (string.equals("103000")) {
                    String string2 = jSONObject.getString(Constants.TOKEN);
                    if (this.f76048a != null) {
                        try {
                            strA = com.netease.nis.quicklogin.utils.d.a(b.this.f76044e);
                        } catch (Exception e10) {
                            Logger.e(e10.getMessage());
                            strA = null;
                        }
                        if (com.netease.nis.quicklogin.b.a.f75955a == 1) {
                            this.f76048a.onGetTokenSuccess(this.f76049b, b.this.a(string2, strA));
                        } else {
                            this.f76048a.onGetTokenSuccess(this.f76049b, string2);
                        }
                    }
                } else if (!string.equals("200020")) {
                    QuickLoginTokenListener quickLoginTokenListener2 = this.f76048a;
                    if (quickLoginTokenListener2 != null) {
                        try {
                            quickLoginTokenListener2.onGetTokenError(this.f76049b, "移动 onePass [error]" + jSONObject.toString());
                        } catch (Exception e11) {
                            Logger.e(e11.getMessage());
                        }
                    }
                    b.this.a("RETURN_DATA_ERROR", "cmOnePass", com.netease.nis.quicklogin.utils.a.b(string), "移动号码认证返回值错误", b.this.f76042c + b.this.f76043d, jSONObject.toString());
                }
                if (!string.equals("200020") || (quickLoginTokenListener = this.f76048a) == null) {
                    return;
                }
                quickLoginTokenListener.onCancelGetToken();
            } catch (Exception e12) {
                Logger.e(e12.getMessage());
                b.this.a("JSON_ENCRYPT_ERROR", "cmOnePass", -2, e12.getMessage(), jSONObject.toString());
            }
        }
    }

    class c implements GenTokenListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ QuickLoginTokenListener f76051a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f76052b;

        c(QuickLoginTokenListener quickLoginTokenListener, String str) {
            this.f76051a = quickLoginTokenListener;
            this.f76052b = str;
        }

        @Override // com.cmic.gen.sdk.auth.GenTokenListener
        public void onGetTokenComplete(int i10, JSONObject jSONObject) {
            try {
                Logger.d("getToken [callback]" + jSONObject.toString());
                Logger.d("getToken [time]" + (System.currentTimeMillis() - QuickLogin.prefetchDataStartTime) + "ms");
                String string = jSONObject.getString("resultCode");
                if (string.equals("103000")) {
                    String string2 = jSONObject.getString(Constants.TOKEN);
                    QuickLoginTokenListener quickLoginTokenListener = this.f76051a;
                    if (quickLoginTokenListener != null) {
                        quickLoginTokenListener.onGetTokenSuccess(this.f76052b, string2);
                        return;
                    }
                    return;
                }
                QuickLoginTokenListener quickLoginTokenListener2 = this.f76051a;
                if (quickLoginTokenListener2 != null) {
                    try {
                        quickLoginTokenListener2.onGetTokenError(this.f76052b, "移动 getToken [error]" + jSONObject.toString());
                    } catch (Exception e10) {
                        Logger.e(e10.getMessage());
                    }
                }
                b.this.a("RETURN_DATA_ERROR", "cmGetToken", com.netease.nis.quicklogin.utils.a.b(string), "移动本机校验返回值错误", b.this.f76042c + b.this.f76043d, jSONObject.toString());
            } catch (Exception e11) {
                Logger.e(e11.getMessage());
                b.this.a("JSON_ENCRYPT_ERROR", "cmGetToken", -2, e11.getMessage(), jSONObject.toString());
            }
        }
    }

    public b(Context context, String str, String str2) {
        GenAuthnHelper genAuthnHelper = GenAuthnHelper.getInstance(context);
        this.f76041b = genAuthnHelper;
        this.f76043d = str;
        this.f76042c = str2;
        this.f76044e = context;
        genAuthnHelper.setOverTime(((long) QuickLogin.prefetchNumberTimeout) * 1000);
    }

    @Override // com.netease.nis.quicklogin.helper.a
    public void a(String str, QuickLoginPreMobileListener quickLoginPreMobileListener) {
        this.f76041b.getPhoneInfo(this.f76042c, this.f76043d, new a(quickLoginPreMobileListener, str));
    }

    @Override // com.netease.nis.quicklogin.helper.a
    public void a(String str, QuickLoginTokenListener quickLoginTokenListener) {
        this.f76041b.loginAuth(this.f76042c, this.f76043d, new C0980b(quickLoginTokenListener, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("accessToken", str);
            jSONObject.put("phone", f.b(this.f76044e, "phone"));
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("randomId", str2);
            }
            if (TextUtils.isEmpty(this.f76043d)) {
                return str;
            }
            if (this.f76043d.length() >= 16) {
                return com.netease.nis.quicklogin.utils.c.b(jSONObject.toString(), this.f76043d.substring(0, 16), this.f76043d.substring(0, 12));
            }
            StringBuilder sb2 = new StringBuilder(this.f76043d);
            for (int i10 = 0; i10 < 16 - this.f76043d.length(); i10++) {
                sb2.append("a");
            }
            return com.netease.nis.quicklogin.utils.c.b(jSONObject.toString(), sb2.toString(), sb2.substring(0, 12));
        } catch (Exception e10) {
            Logger.e(e10.getMessage());
            return str;
        }
    }

    @Override // com.netease.nis.quicklogin.helper.a
    public void a(Context context, String str, String str2, QuickLoginTokenListener quickLoginTokenListener) {
        this.f76041b.mobileAuth(this.f76042c, this.f76043d, new c(quickLoginTokenListener, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i10, String str3, String str4) {
        g.c().a("parseErr", str, str2, i10, str3, str4, "");
        g.c().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i10, String str3, String str4, String str5) {
        g.c().a("apiErr", str, str2, i10, str3, str4, str5);
        g.c().d();
    }
}
