package com.sdk.base.module.manager;

import android.content.Context;
import android.net.ConnectivityManager;
import androidx.annotation.Keep;
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.sdk.base.api.CallBack;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.f.d;
import com.sdk.mobile.manager.login.cucc.UiOauthManager;
import com.sdk.mobile.manager.oauth.cucc.OauthManager;
import com.sdk.p.b;
import com.sdk.p.f;
import com.sdk.r.a;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SDKManager {
    public static final String ALGO_A = "A";
    public static final String ALGO_B_AES_SHA256_RSA = "B";
    public static final String ALGO_C_RFU = "C";
    public static final String ALGO_D_RFU = "D";
    public static final String ALGO_E_SM4_SM3_SM2 = "E";
    public static final String HASH_FINGER_MD5 = "MD5";
    public static final String HASH_FINGER_SM3 = "SM3";
    public static Context mContext = null;
    private static String statisticalTestHost = "";
    public static String substring = null;
    private static boolean support_GM = true;
    private static String testHost = "";
    private static boolean useCache = true;
    private static String userAgent;

    public static Context getContext() {
        return mContext;
    }

    public static boolean getInitFlag() {
        return a.a(com.sdk.t.a.f78586c).booleanValue();
    }

    public static String getStatisticalTestHost() {
        return statisticalTestHost;
    }

    public static String getTestHost() {
        return testHost;
    }

    public static String get_MobileHandlerTime() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n最大时长 = ");
        String str = com.sdk.x.a.f78620h;
        sb2.append(0L);
        sb2.append("\n最小时长 = ");
        sb2.append(0L);
        sb2.append("\n时长总和 = ");
        sb2.append(0L);
        sb2.append("\n异步多线程，时长总和不是总时间\n\n时长列表 = ");
        sb2.append(com.sdk.x.a.f78624l);
        return sb2.toString();
    }

    @Keep
    public static void init(Context context, String str, String str2) {
        init(context, str, str2, ALGO_B_AES_SHA256_RSA, TKDownloadReason.KSAD_TK_MD5);
    }

    public static void init_MobileHandlerTime() {
        String str = com.sdk.x.a.f78620h;
        com.sdk.x.a.f78624l = "\n";
    }

    @Keep
    public static void initkey(Context context, String str, String str2) {
        mContext = context;
        com.sdk.t.a.a(context).getClass();
        com.sdk.t.a.f78585b = str2;
        com.sdk.t.a.f78586c = str;
        if (f.f78577c != null) {
            f.a().f78578a = null;
            f.f78577c = null;
        }
    }

    public static boolean isDebug() {
        return d.f78521a;
    }

    public static boolean isDebugHost() {
        return d.f78523c;
    }

    public static boolean isSupport_GM() {
        return support_GM;
    }

    public static boolean isSupport_reDirect() {
        return com.sdk.a.d.f78417g;
    }

    public static boolean isbSupport3net() {
        return com.sdk.t.a.f78589f;
    }

    public static void releaseConnect(Context context) {
        String str = com.sdk.s.a.f78582a;
        com.sdk.a.a aVar = new com.sdk.a.a();
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        aVar.f78382b = connectivityManager;
        if (connectivityManager != null && com.sdk.a.a.f78380g != null) {
            aVar.f78382b = null;
            com.sdk.a.a.f78379f = true;
            com.sdk.a.a.f78380g = null;
            com.sdk.a.a.f78378e = null;
            aVar.f78381a = null;
        }
        com.sdk.x.a aVar2 = UiOauthManager.getInstance(context).getmHandler();
        if (aVar2 != null) {
            com.sdk.x.a.f78622j = null;
            aVar2.f78630f = null;
            UiOauthManager.getInstance(context).setmHandler(null);
        }
        com.sdk.x.a aVar3 = OauthManager.getInstance(context).getmHandler();
        if (aVar3 != null) {
            com.sdk.x.a.f78622j = null;
            aVar3.f78630f = null;
            OauthManager.getInstance(context).setmHandler(null);
        }
    }

    @Keep
    public static void setDebug(boolean z10) {
        d.f78521a = z10;
        LogUtils.setDEBUG(z10);
        b.f78570a = false;
    }

    @Keep
    public static void setDebugHost(boolean z10) {
        d.f78523c = z10;
        if (z10) {
            setTestHost("");
        }
    }

    public static void setStatisticalTestHost(String str) {
        statisticalTestHost = str;
    }

    @Keep
    public static void setSupport3net(boolean z10) {
        com.sdk.t.a.f78589f = z10;
    }

    @Keep
    public static void setSupport_GM(boolean z10) {
        String str;
        String str2;
        boolean z11;
        support_GM = z10;
        if (z10) {
            str = ALGO_E_SM4_SM3_SM2;
            str2 = HASH_FINGER_SM3;
            z11 = true;
        } else {
            str = ALGO_B_AES_SHA256_RSA;
            str2 = "MD5";
            z11 = false;
        }
        setSupport_GM(z11, str, str2);
    }

    public static void setSupport_reDirect(boolean z10) {
        com.sdk.a.d.f78417g = z10;
    }

    public static void setTestHost(String str) {
        testHost = str;
    }

    @Keep
    public static void setUseCache(boolean z10) {
        useCache = z10;
    }

    public static <T> void toFailed(CallBack<T> callBack, int i10, String str) {
        if (callBack != null) {
            callBack.onFailed(1, i10, str, null);
        }
    }

    public static boolean useCache() {
        return useCache;
    }

    @Deprecated
    public static void init(Context context, String str, String str2, String str3) {
        init(context, str, str2, str3, TKDownloadReason.KSAD_TK_MD5);
    }

    public static void setDebug(boolean z10, boolean z11) {
        d.f78521a = z10;
        LogUtils.setDEBUG(z10);
        b.f78570a = z11;
    }

    @Keep
    public static void setSupport_GM(boolean z10, String str, String str2) {
        support_GM = z10;
        com.sdk.t.a.f78587d = str.toUpperCase();
        com.sdk.t.a.f78588e = str2;
    }

    @Keep
    public static void init(Context context, String str, String str2, String str3, String str4) {
        mContext = context;
        com.sdk.t.a.a(context).getClass();
        com.sdk.t.a.f78585b = str2;
        com.sdk.t.a.f78586c = str;
        com.sdk.t.a.f78589f = false;
        com.sdk.t.a.f78587d = str3.toUpperCase();
        com.sdk.t.a.f78588e = str4;
        setUseCache(true);
        setDebug(false);
        setDebugHost(false);
        setSupport3net(true);
        setSupport_GM(false);
        setSupport_reDirect(true);
        if (f.f78577c != null) {
            f.a().f78578a = null;
            f.f78577c = null;
        }
    }
}
