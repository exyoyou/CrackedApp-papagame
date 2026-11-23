package com.efs.sdk.base.core.config;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.baidu.mobads.sdk.internal.bn;
import com.efs.sdk.base.BuildConfig;
import com.efs.sdk.base.core.controller.ControllerCenter;
import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.efs.sdk.base.core.util.PackageUtil;
import com.efs.sdk.base.core.util.ProcessUtil;
import com.efs.sdk.base.core.util.d;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.tencent.stat.DeviceInfo;
import com.umeng.umcrash.UMCrash;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes9.dex */
public class GlobalInfoManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private GlobalInfo f26298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f26299b;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final GlobalInfoManager f26300a = new GlobalInfoManager(0);
    }

    /* synthetic */ GlobalInfoManager(byte b10) {
        this();
    }

    private static String a(Context context) {
        Class<?> cls;
        Method method;
        if (context == null) {
            return null;
        }
        try {
            cls = Class.forName("com.umeng.commonsdk.statistics.common.DeviceConfig");
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            method = cls.getMethod("getSid", Context.class);
        } catch (NoSuchMethodException unused2) {
            method = null;
        }
        if (method == null) {
            return null;
        }
        try {
            Object objInvoke = method.invoke(null, context);
            if (objInvoke != null) {
                return objInvoke.toString();
            }
            return null;
        } catch (IllegalAccessException | InvocationTargetException unused3) {
            return null;
        }
    }

    public static GlobalInfoManager getInstance() {
        return a.f26300a;
    }

    public GlobalInfo getGlobalInfo() {
        try {
            String strA = a(this.f26299b);
            if (!TextUtils.isEmpty(strA)) {
                this.f26298a.a(UMCrash.KEY_CALLBACK_SESSION_ID, strA);
            }
        } catch (Throwable th) {
            Log.d("efs.info.manager", "refreshSessionId caused error: " + th.getMessage());
        }
        return this.f26298a;
    }

    public String getNetStatus() {
        return this.f26298a.b("net", "disconnected").toString();
    }

    public void initGlobalInfo() {
        Log.e("ballack", "initGlobalInfo called once.");
        GlobalInfo globalInfo = new GlobalInfo();
        this.f26298a = globalInfo;
        globalInfo.a("appid", ControllerCenter.getGlobalEnvStruct().getAppid());
        int iMyPid = ProcessUtil.myPid();
        this.f26298a.a(ForumPostsTagSelectActivity_.PID_EXTRA, Integer.valueOf(iMyPid));
        this.f26298a.a("ps", ProcessUtil.getProcessName(iMyPid));
        String strA = d.a(this.f26299b);
        this.f26298a.a("wid", strA);
        if (TextUtils.isEmpty(ControllerCenter.getGlobalEnvStruct().getUid())) {
            this.f26298a.a("uid", strA);
        } else {
            this.f26298a.a("uid", ControllerCenter.getGlobalEnvStruct().getUid());
        }
        GlobalInfo globalInfo2 = this.f26298a;
        com.efs.sdk.base.core.a.a.a();
        globalInfo2.a("stime", Long.valueOf(com.efs.sdk.base.core.a.a.b() - Process.getElapsedCpuTime()));
        this.f26298a.a("pkg", PackageUtil.getPackageName(this.f26299b));
        this.f26298a.a(DeviceInfo.TAG_VERSION, PackageUtil.getAppVersionName(this.f26299b));
        this.f26298a.a("vcode", PackageUtil.getAppVersionCode(this.f26299b));
        this.f26298a.a("sdk_ver", BuildConfig.VERSION_NAME);
        this.f26298a.a(bn.f7598j, Build.BRAND.toLowerCase());
        GlobalInfo globalInfo3 = this.f26298a;
        String str = Build.MODEL;
        globalInfo3.a(bn.f7597i, str == null ? "unknown" : str.replace(" ", "-").replace("_", "-").toLowerCase());
        this.f26298a.a("build_model", str);
        DisplayMetrics displayMetrics = this.f26299b.getResources().getDisplayMetrics();
        this.f26298a.a("dsp_w", Integer.valueOf(displayMetrics.widthPixels));
        this.f26298a.a("dsp_h", Integer.valueOf(displayMetrics.heightPixels));
        this.f26298a.a("fr", "android");
        this.f26298a.a("rom", Build.VERSION.RELEASE);
        this.f26298a.a("sdk", Integer.valueOf(Build.VERSION.SDK_INT));
        this.f26298a.a("lang", Locale.getDefault().getLanguage());
        this.f26298a.a("tzone", TimeZone.getDefault().getID());
        this.f26298a.a("net", NetworkUtil.getNetworkType(this.f26299b));
        try {
            String[] networkAccessMode = NetworkUtil.getNetworkAccessMode(this.f26299b);
            if ("Wi-Fi".equals(networkAccessMode[0])) {
                this.f26298a.a(UMCrash.KEY_HEADER_ACCESS, NetworkUtil.NETWORK_TYPE_WIFI);
            } else if ("2G/3G".equals(networkAccessMode[0])) {
                this.f26298a.a(UMCrash.KEY_HEADER_ACCESS, "2G/3G");
            } else {
                this.f26298a.a(UMCrash.KEY_HEADER_ACCESS, "unknow");
            }
            if (!"".equals(networkAccessMode[1])) {
                this.f26298a.a(UMCrash.KEY_HEADER_ACCESS_SUBTYPE, networkAccessMode[1]);
            }
            this.f26298a.a(UMCrash.KEY_HEADER_NETWORK_TYPE, Integer.valueOf(NetworkUtil.getNetworkTypeUmeng(this.f26299b)));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void refreshNetStatus() {
        String networkType = NetworkUtil.getNetworkType(ControllerCenter.getGlobalEnvStruct().mAppContext);
        Log.w("efs.info.manager", "network change: ".concat(String.valueOf(networkType)));
        this.f26298a.a("net", networkType);
    }

    private GlobalInfoManager() {
        this.f26299b = ControllerCenter.getGlobalEnvStruct().mAppContext;
    }
}
