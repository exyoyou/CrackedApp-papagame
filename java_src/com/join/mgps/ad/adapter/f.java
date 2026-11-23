package com.join.mgps.ad.adapter;

import android.content.Context;
import android.graphics.Point;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.join.mgps.activity.login.AbScreenUtils;
import com.join.mgps.pref.PrefDef_;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f58347a = "TTInit";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f58348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Point f58349c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Point f58350d;

    class a implements TTAdSdk.Callback {
        a() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int code, String msg) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("fail:  code = ");
            sb2.append(code);
            sb2.append(" msg = ");
            sb2.append(msg);
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("success: ");
            sb2.append(TTAdSdk.isInitSuccess());
        }
    }

    private static TTAdConfig a(String appid) {
        return new TTAdConfig.Builder().appId(appid).appName("悟饭游戏厅_android").titleBarTheme(-1).directDownloadNetworkType(4, 3, 5).debug(false).supportMultiProcess(true).useMediation(true).allowShowNotify(true).build();
    }

    public static Point b() {
        return f58349c;
    }

    public static Point c() {
        return f58350d;
    }

    public static void d(Context context, String appId, e6.a callback) {
        if (new PrefDef_(context).sdkInit().d().booleanValue()) {
            return;
        }
        if (!f58348b) {
            f58349c = AbScreenUtils.getScreenSize(context, true);
            f58350d = AbScreenUtils.getScreenSize(context, false);
            TTAdSdk.init(context, a(appId));
            TTAdSdk.start(new a());
            f58348b = true;
        }
        if (callback != null) {
            callback.a();
        }
    }
}
