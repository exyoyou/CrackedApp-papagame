package com.netease.nis.quicklogin.helper;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.QuickLogin;
import com.netease.nis.quicklogin.listener.QuickLoginPreMobileListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
import com.netease.nis.quicklogin.ui.YDQuickLoginActivity;
import com.netease.nis.quicklogin.utils.g;
import com.sdk.base.api.CallBack;
import com.sdk.base.api.ToolUtils;
import com.sdk.base.module.manager.SDKManager;
import com.sdk.mobile.manager.login.cucc.UiOauthManager;
import com.sdk.mobile.manager.oauth.cucc.OauthManager;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d extends com.netease.nis.quicklogin.helper.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f76063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f76064c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f76065d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f76066e;

    class a implements CallBack<String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ QuickLoginPreMobileListener f76067a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f76068b;

        a(QuickLoginPreMobileListener quickLoginPreMobileListener, String str) {
            this.f76067a = quickLoginPreMobileListener;
            this.f76068b = str;
        }

        @Override // com.sdk.base.api.CallBack
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onSuccess(int i10, String str, int i11, String str2, String str3) {
            Logger.d("prefetchMobileNumber [callback]" + i10);
            Logger.d("prefetchMobileNumber [callback]" + str);
            Logger.d("prefetchMobileNumber [time]" + (System.currentTimeMillis() - QuickLogin.prefetchDataStartTime) + "ms");
            if (i10 != 0) {
                d.this.f76064c = " result code:" + i11 + " msg:" + str + " seq:" + str3;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("联通 prefetchMobileNumber [error]");
                sb2.append(d.this.f76064c);
                Logger.d(sb2.toString());
                QuickLoginPreMobileListener quickLoginPreMobileListener = this.f76067a;
                if (quickLoginPreMobileListener != null) {
                    try {
                        quickLoginPreMobileListener.onGetMobileNumberError(this.f76068b, "联通 prefetchMobileNumber [error]" + d.this.f76064c);
                    } catch (Exception e10) {
                        Logger.e(e10.getMessage());
                    }
                }
                d dVar = d.this;
                dVar.a("RETURN_DATA_ERROR", "cuPrefetchMobileNumber", i11, dVar.f76064c, d.this.f76066e, str2);
                return;
            }
            d.this.f76065d = str2;
            try {
                JSONObject jSONObject = new JSONObject(d.this.f76065d.toString());
                Logger.d("prefetchMobileNumber [callback]" + jSONObject.toString());
                String string = jSONObject.getString("fakeMobile");
                QuickLoginPreMobileListener quickLoginPreMobileListener2 = this.f76067a;
                if (quickLoginPreMobileListener2 != null) {
                    String str4 = this.f76068b;
                    if (TextUtils.isEmpty(string)) {
                        string = "联通无法直接获取掩码";
                    }
                    quickLoginPreMobileListener2.onGetMobileNumberSuccess(str4, string);
                }
            } catch (Exception e11) {
                Logger.e(e11.getMessage());
                QuickLoginPreMobileListener quickLoginPreMobileListener3 = this.f76067a;
                if (quickLoginPreMobileListener3 != null) {
                    quickLoginPreMobileListener3.onGetMobileNumberError(this.f76068b, "联通 prefetchMobileNumber [error]" + e11.getMessage());
                }
                d.this.a("JSON_ENCRYPT_ERROR", "cuPrefetchMobileNumber", -2, e11.getMessage(), str2);
            }
        }

        @Override // com.sdk.base.api.CallBack
        public void onFailed(int i10, int i11, String str, String str2) {
            d.this.f76064c = " result code:" + i11 + " msg:" + str + " seq:" + str2;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("联通 prefetchMobileNumber [error]");
            sb2.append(d.this.f76064c);
            Logger.e(sb2.toString());
            QuickLoginPreMobileListener quickLoginPreMobileListener = this.f76067a;
            if (quickLoginPreMobileListener != null) {
                try {
                    quickLoginPreMobileListener.onGetMobileNumberError(this.f76068b, "联通 prefetchMobileNumber [error]" + d.this.f76064c);
                } catch (Exception e10) {
                    Logger.e(e10.getMessage());
                }
            }
            d dVar = d.this;
            dVar.a("RETURN_DATA_ERROR", "cuPrefetchMobileNumber", i11, dVar.f76064c, d.this.f76066e, "");
        }
    }

    class b implements CallBack<Object> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ QuickLoginTokenListener f76070a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f76071b;

        b(QuickLoginTokenListener quickLoginTokenListener, String str) {
            this.f76070a = quickLoginTokenListener;
            this.f76071b = str;
        }

        @Override // com.sdk.base.api.CallBack
        public void onFailed(int i10, int i11, String str, String str2) {
            d.this.f76064c = " result code:" + i11 + " msg:" + str + " seq:" + str2;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("联通 getToken [error]");
            sb2.append(d.this.f76064c);
            Logger.d(sb2.toString());
            QuickLoginTokenListener quickLoginTokenListener = this.f76070a;
            if (quickLoginTokenListener != null) {
                quickLoginTokenListener.onGetTokenError(this.f76071b, "联通" + d.this.f76064c);
            }
            d dVar = d.this;
            dVar.a("RETURN_DATA_ERROR", "cuGetToken", i11, dVar.f76064c, d.this.f76066e, "");
        }

        @Override // com.sdk.base.api.CallBack
        public void onSuccess(int i10, String str, int i11, Object obj, String str2) {
            if (i10 != 0) {
                d.this.f76064c = " result code:" + i11 + " msg:" + str + " seq:" + str2;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("联通 getToken [error]");
                sb2.append(d.this.f76064c);
                Logger.d(sb2.toString());
                QuickLoginTokenListener quickLoginTokenListener = this.f76070a;
                if (quickLoginTokenListener != null) {
                    quickLoginTokenListener.onGetTokenError(this.f76071b, "联通 getToken [error]" + str);
                }
                d dVar = d.this;
                dVar.a("RETURN_DATA_ERROR", "cuGetToken", i11, str, dVar.f76066e, obj.toString());
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(obj.toString());
                Logger.d("getToken [callback]" + jSONObject.toString());
                Logger.d("getToken [time]" + (System.currentTimeMillis() - QuickLogin.prefetchDataStartTime) + "ms");
                String strOptString = jSONObject.optString("accessCode");
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("accessToken", strOptString);
                jSONObject2.put("version", "v2");
                jSONObject2.put(TKDownloadReason.KSAD_TK_MD5, ToolUtils.getAppMd5(d.this.f76063b));
                QuickLoginTokenListener quickLoginTokenListener2 = this.f76070a;
                if (quickLoginTokenListener2 != null) {
                    quickLoginTokenListener2.onGetTokenSuccess(this.f76071b, com.netease.nis.quicklogin.utils.a.a(jSONObject2.toString()));
                }
            } catch (Exception e10) {
                Logger.e(e10.getMessage());
                QuickLoginTokenListener quickLoginTokenListener3 = this.f76070a;
                if (quickLoginTokenListener3 != null) {
                    quickLoginTokenListener3.onGetTokenError(this.f76071b, "联通 getToken [error]" + e10.getMessage());
                }
                d.this.a("JSON_ENCRYPT_ERROR", "cuGetToken", -2, e10.getMessage(), obj.toString());
            }
        }
    }

    public d(Context context, String str, String str2) {
        Context applicationContext = context.getApplicationContext();
        this.f76063b = applicationContext;
        this.f76066e = str;
        SDKManager.init(applicationContext, str2, str);
    }

    @Override // com.netease.nis.quicklogin.helper.a
    public void a(String str, QuickLoginPreMobileListener quickLoginPreMobileListener) {
        UiOauthManager.getInstance(this.f76063b).login(QuickLogin.prefetchNumberTimeout, new a(quickLoginPreMobileListener, str));
    }

    @Override // com.netease.nis.quicklogin.helper.a
    public void a(String str, QuickLoginTokenListener quickLoginTokenListener) {
        if (this.f76065d == null) {
            if (quickLoginTokenListener != null) {
                quickLoginTokenListener.onGetTokenError(str, "联通 onePass [error]" + this.f76064c);
                return;
            }
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(this.f76065d.toString());
            String string = jSONObject.getString("fakeMobile");
            String string2 = jSONObject.getString("accessCode");
            Intent intent = new Intent(this.f76063b, (Class<?>) YDQuickLoginActivity.class);
            intent.putExtra("operatorType", "cu");
            intent.putExtra("ydToken", str);
            intent.putExtra("maskNumber", string);
            intent.putExtra("accessToken", string2);
            intent.putExtra("appKey", this.f76066e);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            this.f76063b.startActivity(intent);
        } catch (Exception e10) {
            Logger.e(e10.getMessage());
        }
    }

    @Override // com.netease.nis.quicklogin.helper.a
    public void a(Context context, String str, String str2, QuickLoginTokenListener quickLoginTokenListener) {
        ToolUtils.clearCache(context);
        OauthManager.getInstance(context).getAuthoriseCode(QuickLogin.fetchNumberTimeout, new b(quickLoginTokenListener, str2));
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
