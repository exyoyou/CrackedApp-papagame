package com.aggmoread.sdk.z.c.a.a.d.a.d.v.i;

import com.aggmoread.sdk.z.c.a.a.e.e;
import com.qq.e.ads.interstitial2.UnifiedInterstitialMediaListener;
import com.qq.e.comm.util.AdError;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes7.dex */
public class c implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f4835a;

    public interface a {
        void a(long j10);

        void b();

        void c();

        void onVideoComplete();

        void onVideoError(AdError adError);

        void onVideoInit();

        void onVideoLoading();

        void onVideoPause();

        void onVideoStart();
    }

    public c(a aVar) {
        this.f4835a = aVar;
    }

    public UnifiedInterstitialMediaListener a() {
        return (UnifiedInterstitialMediaListener) Proxy.newProxyInstance(UnifiedInterstitialMediaListener.class.getClassLoader(), new Class[]{UnifiedInterstitialMediaListener.class}, this);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        String name = method.getName();
        if (this.f4835a == null) {
            return null;
        }
        e.b("INTERSTITIALTAG", "name = " + name);
        if ("onVideoInit".equals(name)) {
            this.f4835a.onVideoInit();
        } else if ("onVideoLoading".equals(name)) {
            this.f4835a.onVideoLoading();
        } else if ("onVideoReady".equals(name)) {
            this.f4835a.a(((Long) objArr[0]).longValue());
        } else if ("onVideoStart".equals(name)) {
            this.f4835a.onVideoStart();
        } else if ("onVideoPause".equals(name)) {
            this.f4835a.onVideoPause();
        } else if ("onVideoComplete".equals(name)) {
            this.f4835a.onVideoComplete();
        } else if ("onVideoError".equals(name)) {
            this.f4835a.onVideoError((AdError) objArr[0]);
        } else if ("onVideoPageOpen".equals(name)) {
            this.f4835a.c();
        } else if ("onVideoPageClose".equals(name)) {
            this.f4835a.b();
        }
        return null;
    }
}
