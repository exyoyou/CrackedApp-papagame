package com.alipay.sdk.auth;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;

/* JADX INFO: loaded from: classes7.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f7115a = "com.eg.android.AlipayGphone";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f7116b = 65;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static com.alipay.sdk.widget.a f7117c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f7118d;

    public static void c(Activity activity, a aVar) {
        x.b bVarB = x.b.b();
        com.alipay.sdk.data.c.a();
        bVarB.c(activity);
        if (e(activity)) {
            d(activity, "alipayauth://platformapi/startapp?appId=20000122&approveType=005&scope=kuaijie&productId=" + aVar.c() + "&thirdpartyId=" + aVar.a() + "&redirectUri=" + aVar.d());
            return;
        }
        if (activity != null) {
            try {
                if (!activity.isFinishing()) {
                    com.alipay.sdk.widget.a aVar2 = new com.alipay.sdk.widget.a(activity, com.alipay.sdk.widget.a.f7251d);
                    f7117c = aVar2;
                    aVar2.c();
                }
            } catch (Exception unused) {
                f7117c = null;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("app_id=");
        sb2.append(aVar.a());
        sb2.append("&partner=");
        sb2.append(aVar.b());
        sb2.append("&scope=kuaijie");
        sb2.append("&login_goal=auth");
        sb2.append("&redirect_url=");
        sb2.append(aVar.d());
        sb2.append("&view=wap");
        sb2.append("&prod_code=");
        sb2.append(aVar.c());
        new Thread(new k(activity, sb2, aVar)).start();
    }

    public static void d(Activity activity, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            activity.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
        }
    }

    private static boolean e(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.eg.android.AlipayGphone", 128);
            return packageInfo != null && packageInfo.versionCode >= 65;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    static /* synthetic */ com.alipay.sdk.widget.a f() {
        f7117c = null;
        return null;
    }

    private static void g(Activity activity, a aVar) {
        d(activity, "alipayauth://platformapi/startapp?appId=20000122&approveType=005&scope=kuaijie&productId=" + aVar.c() + "&thirdpartyId=" + aVar.a() + "&redirectUri=" + aVar.d());
    }

    private static void i(Activity activity, a aVar) {
        if (activity != null) {
            try {
                if (!activity.isFinishing()) {
                    com.alipay.sdk.widget.a aVar2 = new com.alipay.sdk.widget.a(activity, com.alipay.sdk.widget.a.f7251d);
                    f7117c = aVar2;
                    aVar2.c();
                }
            } catch (Exception unused) {
                f7117c = null;
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("app_id=");
        sb2.append(aVar.a());
        sb2.append("&partner=");
        sb2.append(aVar.b());
        sb2.append("&scope=kuaijie");
        sb2.append("&login_goal=auth");
        sb2.append("&redirect_url=");
        sb2.append(aVar.d());
        sb2.append("&view=wap");
        sb2.append("&prod_code=");
        sb2.append(aVar.c());
        new Thread(new k(activity, sb2, aVar)).start();
    }
}
