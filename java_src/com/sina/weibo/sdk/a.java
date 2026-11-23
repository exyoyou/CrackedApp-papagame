package com.sina.weibo.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.sina.weibo.BuildConfig;
import com.sina.weibo.sdk.auth.AuthInfo;
import com.sina.weibo.sdk.openapi.SdkListener;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f82219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static AuthInfo f82220b;

    public static void a(AuthInfo authInfo, SdkListener sdkListener) {
        if (f82219a) {
            return;
        }
        if (authInfo == null) {
            throw new RuntimeException("authInfo must not be null.");
        }
        f82220b = authInfo;
        f82219a = true;
        if (sdkListener != null) {
            sdkListener.onInitSuccess();
        }
    }

    public static boolean b(Context context) {
        com.sina.weibo.sdk.b.a.C1038a c1038aE;
        return a(context) && (c1038aE = com.sina.weibo.sdk.b.a.e(context)) != null && c1038aE.ah >= 10772;
    }

    public static boolean a(Context context) {
        List<ResolveInfo> listQueryIntentServices;
        String[] strArr = {BuildConfig.APPLICATION_ID, "com.sina.weibog3"};
        for (int i10 = 0; i10 < 2; i10++) {
            String str = strArr[i10];
            Intent intent = new Intent("com.sina.weibo.action.sdkidentity");
            intent.setPackage(str);
            intent.addCategory("android.intent.category.DEFAULT");
            if (context != null && (listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0)) != null && !listQueryIntentServices.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    public static AuthInfo a() {
        if (f82219a) {
            return f82220b;
        }
        throw new RuntimeException("please init sdk before use it. Wb.install()");
    }
}
