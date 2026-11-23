package com.switfpass.pay;

import android.app.Application;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.switfpass.pay.utils.e;

/* JADX INFO: loaded from: classes2.dex */
public class MainApplication extends Application {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected static MainApplication f82450j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f82443c = String.valueOf("https://pay.swiftpass.cn/") + "pay/unifiedsdkpay";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static String f82444d = "https://statecheck.swiftpass.cn";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f82442b = "https://pay.swiftpass.cn/";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f82445e = String.valueOf(f82442b) + "pay/gateway";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f82446f = String.valueOf(f82442b) + "pay/unifiedsdkpay";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f82447g = String.valueOf(f82442b) + "pay/unifiedCheck";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f82448h = String.valueOf(f82442b) + "pay/qqpay?token_id=";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static String f82449i = "http://huangjun.dev.swiftpass.cn/";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static String f82451k = "pay.tenpay.native";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static String f82452l = "pay.weixin.native";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static String f82453m = "pay.weixin.app";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static String f82454n = "pay.alipay.native";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static String f82455o = "pay.alipay.nativev2";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static String f82456p = "pay.alipay.app";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static String f82457q = "pay.qq.proxy.micropay";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static String f82458r = "pay.qq.micropay";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static String f82459s = "pay.weixin.micropay";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static String f82460t = "pay.alipay.micropay";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static String f82461u = "pay.tenpay.wappay";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static String f82462v = "pay.weixin.wappay";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static String f82463w = "pay.alipay.wappay";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static String f82464x = "pay.alipay.native.towap";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static String f82465y = e.f82785p;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static String f82466z = "";
    public static String A = "";
    public static String B = "";
    public static String C = "";

    public MainApplication() {
        f82450j = this;
    }

    public static boolean a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting() && activeNetworkInfo.isConnected();
    }

    public static MainApplication getContext() {
        return f82450j;
    }
}
