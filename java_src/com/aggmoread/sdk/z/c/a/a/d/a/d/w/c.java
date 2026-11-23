package com.aggmoread.sdk.z.c.a.a.d.a.d.w;

import com.aggmoread.sdk.z.c.a.a.e.e;
import com.kwad.sdk.api.KsAdSDK;
import com.kwad.sdk.api.KsInitCallback;
import com.kwad.sdk.api.KsScene;
import com.kwad.sdk.api.SdkConfig;
import com.kwad.sdk.api.model.SplashAdExtraData;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f4849b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f4850a = false;

    static class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f4851a;

        a(b bVar) {
            this.f4851a = bVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if ("onSuccess".equals(method.getName())) {
                e.b("AMHTAGKS", "onSuccess enter");
                this.f4851a.onSuccess();
                return null;
            }
            if (!"onFail".equals(method.getName())) {
                return null;
            }
            e.b("AMHTAGKS", "onFail enter code : " + objArr[0] + " , msg " + objArr[1]);
            this.f4851a.a();
            return null;
        }
    }

    public interface b {
        void a();

        void onSuccess();
    }

    private c() {
    }

    public static synchronized c a() {
        if (f4849b == null) {
            synchronized (c.class) {
                if (f4849b == null) {
                    f4849b = new c();
                }
            }
        }
        return f4849b;
    }

    public static void c() {
        a(KsAdSDK.class, null, "start", null, new Object[0]);
    }

    public void b(boolean z10) {
        this.f4850a = z10;
    }

    public KsScene.Builder a(KsScene.Builder builder) {
        if (builder != null) {
            try {
                Object objNewInstance = SplashAdExtraData.class.newInstance();
                a(SplashAdExtraData.class, objNewInstance, "setDisableShakeStatus", new Class[]{Boolean.TYPE}, Boolean.valueOf(b()));
                a(builder.getClass(), builder, "setSplashExtraData", new Class[]{SplashAdExtraData.class}, objNewInstance);
            } catch (Exception e10) {
                e.b("AMHTAGKS", "fill splash extra err " + e10);
            }
        }
        return builder;
    }

    public boolean b() {
        return this.f4850a;
    }

    private static Object a(Class<?> cls, Object obj, String str, Class<?>[] clsArr, Object... objArr) {
        try {
            e.b("AMHTAGKS", "method " + str);
            return cls.getMethod(str, clsArr).invoke(obj, objArr);
        } catch (Exception e10) {
            e.b("AMHTAGKS", "find method err " + e10);
            return null;
        }
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 3 */
    public static void a(SdkConfig.Builder builder, b bVar) {
        if (KsInitCallback.class != 0) {
            try {
                Object objNewProxyInstance = Proxy.newProxyInstance(KsInitCallback.class.getClassLoader(), new Class[]{KsInitCallback.class}, new a(bVar));
                e.b("AMHTAGKS", "set reward listener " + KsInitCallback.class);
                builder.getClass().getMethod("setStartCallback", KsInitCallback.class).invoke(builder, objNewProxyInstance);
            } catch (Exception e10) {
                e.b("AMHTAGKS", "err " + e10);
            }
        }
    }

    public static void a(boolean z10) {
        e.b("AMHTAGKS", "pr " + z10);
        try {
            KsAdSDK.setPersonalRecommend(z10);
        } catch (Exception e10) {
            e.b("AMHTAGKS", "pr e" + e10);
        }
    }
}
