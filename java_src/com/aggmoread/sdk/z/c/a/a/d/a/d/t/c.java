package com.aggmoread.sdk.z.c.a.a.d.a.d.t;

import android.content.Context;
import com.aggmoread.sdk.z.c.a.a.d.b.k;
import com.aggmoread.sdk.z.c.a.a.e.e;
import com.aggmoread.sdk.z.c.a.a.e.p;
import com.bytedance.sdk.openadsdk.TTAdConfig;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f4700a;

    static class a implements InvocationHandler {
        a() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            boolean z10;
            if (method.getName().equals("fail")) {
                e.a("csj init fail");
                z10 = false;
            } else {
                if (!method.getName().equals("success")) {
                    return null;
                }
                e.a("csj init success");
                z10 = true;
            }
            boolean unused = c.f4700a = z10;
            return null;
        }
    }

    static class b implements TTAdSdk.InitCallback {
        b() {
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void fail(int i10, String str) {
            boolean unused = c.f4700a = false;
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdSdk.InitCallback
        public void success() {
        }
    }

    private static TTAdConfig a(Context context, String str, String str2) {
        return new TTAdConfig.Builder().appId(str).appName(str2).titleBarTheme(1).allowShowNotify(true).debug(k.f5148r.booleanValue()).supportMultiProcess(false).build();
    }

    private static void b(Context context, String str, String str2) {
        if (f4700a) {
            return;
        }
        try {
            int iE = p.e(TTAdSdk.getAdManager().getSDKVersion());
            e.a("csj init version " + iE);
            if (iE >= 5600) {
                TTAdSdk.class.getMethod("init", Context.class, TTAdConfig.class).invoke(null, context, a(context, str, str2));
                TTAdSdk.class.getMethod("start", TTAdSdk.Callback.class).invoke(null, Proxy.newProxyInstance(TTAdSdk.Callback.class.getClassLoader(), new Class[]{TTAdSdk.Callback.class}, new a()));
            } else {
                TTAdSdk.class.getMethod("init", Context.class, TTAdConfig.class, TTAdSdk.InitCallback.class).invoke(null, context, a(context, str, str2), new b());
            }
        } catch (Exception e10) {
            e.a("csj init exception " + e10.getMessage());
            f4700a = false;
            e10.printStackTrace();
        }
        f4700a = true;
    }

    public static void c(Context context, String str, String str2) {
        b(context, str, str2);
    }

    public static TTAdManager a() {
        if (f4700a) {
            return TTAdSdk.getAdManager();
        }
        throw new RuntimeException("TTAdSdk is not init, please check.");
    }
}
