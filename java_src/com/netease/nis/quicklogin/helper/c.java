package com.netease.nis.quicklogin.helper;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.CtAuth;
import cn.com.chinatelecom.account.api.CtSetting;
import cn.com.chinatelecom.account.api.ResultListener;
import cn.com.chinatelecom.account.api.TraceLogger;
import com.bykv.vk.component.ttvideo.player.C;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.QuickLogin;
import com.netease.nis.quicklogin.entity.CTPrefetchNumber;
import com.netease.nis.quicklogin.listener.QuickLoginPreMobileListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
import com.netease.nis.quicklogin.ui.YDQuickLoginActivity;
import com.netease.nis.quicklogin.utils.f;
import com.netease.nis.quicklogin.utils.g;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c extends com.netease.nis.quicklogin.helper.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f76054b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f76055c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f76056d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f76057e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Context f76058f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f76059g;

    class a implements TraceLogger {
        a(c cVar) {
        }

        @Override // cn.com.chinatelecom.account.api.TraceLogger
        public void debug(String str, String str2) {
            Logger.d(str, str2);
        }

        @Override // cn.com.chinatelecom.account.api.TraceLogger
        public void info(String str, String str2) {
            Logger.i(str, str2);
        }

        @Override // cn.com.chinatelecom.account.api.TraceLogger
        public void warn(String str, String str2, Throwable th) {
            Logger.w(str, str2);
        }
    }

    class b implements ResultListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ QuickLoginPreMobileListener f76060a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f76061b;

        b(QuickLoginPreMobileListener quickLoginPreMobileListener, String str) {
            this.f76060a = quickLoginPreMobileListener;
            this.f76061b = str;
        }

        @Override // cn.com.chinatelecom.account.api.ResultListener
        public void onResult(String str) {
            Logger.d("prefetchMobileNumber [callback]" + str);
            Logger.d("prefetchMobileNumber [time]" + (System.currentTimeMillis() - QuickLogin.prefetchDataStartTime) + "ms");
            CTPrefetchNumber cTPrefetchNumber = (CTPrefetchNumber) com.netease.nis.quicklogin.utils.a.a(str, CTPrefetchNumber.class);
            if (cTPrefetchNumber == null) {
                Logger.d("电信 prefetchMobileNumber [error]" + str);
                QuickLoginPreMobileListener quickLoginPreMobileListener = this.f76060a;
                if (quickLoginPreMobileListener != null) {
                    try {
                        quickLoginPreMobileListener.onGetMobileNumberError(this.f76061b, "电信 prefetchMobileNumber [error]" + str);
                    } catch (Exception e10) {
                        Logger.e(e10.getMessage());
                    }
                }
                c cVar = c.this;
                cVar.a("RETURN_DATA_ERROR", "ctPrefetchMobileNumber", 0, "电信预取号返回值错误", cVar.f76059g, str);
                return;
            }
            int result = cTPrefetchNumber.getResult();
            String msg = cTPrefetchNumber.getMsg();
            if (result == 0) {
                c.this.f76055c = cTPrefetchNumber.getData().getAccessCode();
                c.this.f76054b = cTPrefetchNumber.getData().getNumber();
                c.this.f76056d = cTPrefetchNumber.getData().getGwAuth();
                f.a(c.this.f76058f, "timeend", System.currentTimeMillis() + 600000);
                f.a(c.this.f76058f, "ctccNumber", c.this.f76054b);
                f.a(c.this.f76058f, "ctccAccessCode", c.this.f76055c);
                f.a(c.this.f76058f, "ctccGwAuth", c.this.f76056d);
                QuickLoginPreMobileListener quickLoginPreMobileListener2 = this.f76060a;
                if (quickLoginPreMobileListener2 != null) {
                    quickLoginPreMobileListener2.onGetMobileNumberSuccess(this.f76061b, c.this.f76054b);
                    return;
                }
                return;
            }
            c.this.f76057e = " result code:" + result + " msg:" + msg + " reqId:" + cTPrefetchNumber.getReqId();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("电信 prefetchMobileNumber [error]");
            sb2.append(c.this.f76057e);
            Logger.d(sb2.toString());
            QuickLoginPreMobileListener quickLoginPreMobileListener3 = this.f76060a;
            if (quickLoginPreMobileListener3 != null) {
                try {
                    quickLoginPreMobileListener3.onGetMobileNumberError(this.f76061b, "电信 prefetchMobileNumber [error]" + c.this.f76057e);
                } catch (Exception e11) {
                    Logger.e(e11.getMessage());
                }
            }
            c.this.a("RETURN_DATA_ERROR", "ctPrefetchMobileNumber", result, "电信预取号返回值错误：" + c.this.f76057e, c.this.f76059g, str);
        }
    }

    public c(Context context, String str, String str2, boolean z10) {
        if (z10) {
            CtAuth.getInstance().init(context, str, str2, new a(this));
        }
        this.f76058f = context;
        this.f76059g = str2;
    }

    @Override // com.netease.nis.quicklogin.helper.a
    public void a(String str, QuickLoginPreMobileListener quickLoginPreMobileListener) {
        if (!TextUtils.isEmpty(f.b(this.f76058f, "ctccAccessCode")) && System.currentTimeMillis() < f.a(this.f76058f, "timeend")) {
            this.f76055c = f.b(this.f76058f, "ctccAccessCode");
            this.f76054b = f.b(this.f76058f, "ctccNumber");
            this.f76056d = f.b(this.f76058f, "ctccGwAuth");
            if (quickLoginPreMobileListener != null) {
                quickLoginPreMobileListener.onGetMobileNumberSuccess(str, this.f76054b);
            }
            Logger.d("prefetchMobileNumber [time]" + (System.currentTimeMillis() - QuickLogin.prefetchDataStartTime) + "ms");
            return;
        }
        CtAuth.getInstance().requestPreLogin(new CtSetting(5000, 5000, QuickLogin.prefetchNumberTimeout * 1000), new b(quickLoginPreMobileListener, str));
    }

    @Override // com.netease.nis.quicklogin.helper.a
    public void a(String str, QuickLoginTokenListener quickLoginTokenListener) {
        if (TextUtils.isEmpty(this.f76055c) || TextUtils.isEmpty(this.f76056d)) {
            if (quickLoginTokenListener != null) {
                try {
                    quickLoginTokenListener.onGetTokenError(str, "电信 onePass [error]" + this.f76057e);
                    return;
                } catch (Exception e10) {
                    Logger.e(e10.getMessage());
                    return;
                }
            }
            return;
        }
        Intent intent = new Intent(this.f76058f, (Class<?>) YDQuickLoginActivity.class);
        intent.putExtra("operatorType", "ct");
        intent.putExtra("ydToken", str);
        intent.putExtra("maskNumber", this.f76054b);
        intent.putExtra("accessToken", this.f76055c);
        intent.putExtra("gwAuth", this.f76056d);
        intent.putExtra("appKey", this.f76059g);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        this.f76058f.startActivity(intent);
    }

    @Override // com.netease.nis.quicklogin.helper.a
    protected void a(String str, String str2, QuickLoginTokenListener quickLoginTokenListener) {
        try {
            Logger.d("getToken [callback]" + str);
            Logger.d("getToken [time]" + (System.currentTimeMillis() - QuickLogin.prefetchDataStartTime) + "ms");
            JSONObject jSONObject = new JSONObject(str);
            int i10 = jSONObject.getInt("result");
            if (i10 == 0) {
                String string = jSONObject.getString("data");
                if (quickLoginTokenListener != null) {
                    quickLoginTokenListener.onGetTokenSuccess(str2, string);
                    return;
                }
                return;
            }
            if (quickLoginTokenListener != null) {
                try {
                    quickLoginTokenListener.onGetTokenError(str2, "电信 getToken [error]" + jSONObject.toString());
                } catch (Exception e10) {
                    Logger.e(e10.getMessage());
                }
            }
            a("RETURN_DATA_ERROR", "ctGetToken", i10, jSONObject.toString(), "", str);
        } catch (Exception e11) {
            Logger.e(e11.getMessage());
            if (quickLoginTokenListener != null) {
                quickLoginTokenListener.onGetTokenError(str2, "电信 getToken [error]" + e11.getMessage());
            }
            a("JSON_ENCRYPT_ERROR", "ctGetToken", -2, e11.getMessage(), str);
        }
    }

    @Override // com.netease.nis.quicklogin.helper.a
    protected void a(int i10, String str, String str2, QuickLoginTokenListener quickLoginTokenListener) {
        if (quickLoginTokenListener != null) {
            try {
                quickLoginTokenListener.onGetTokenError(str2, str);
            } catch (Exception e10) {
                Logger.e(e10.getMessage());
            }
        }
        a("RETURN_DATA_ERROR", "ctGetToken", i10, str, "", "");
    }

    private void a(String str, String str2, int i10, String str3, String str4) {
        g.c().a("parseErr", str, str2, i10, str3, str4, "");
        g.c().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, int i10, String str3, String str4, String str5) {
        g.c().a("apiErr", str, str2, i10, str3, str4, str5);
        g.c().d();
    }
}
