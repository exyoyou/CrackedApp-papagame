package com.aggmoread.sdk.z.c.a.a.d.a.d.v.i;

import com.qq.e.ads.interstitial2.UnifiedInterstitialADListener;
import com.qq.e.comm.util.AdError;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes7.dex */
public class b implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f4834a;

    public interface a {
        void a();

        void b();

        void c();

        void onADClicked();

        void onADExposure();

        void onADLeftApplication();

        void onNoAD(AdError adError);

        void onRenderFail();

        void onRenderSuccess();

        void onVideoCached();
    }

    public b(a aVar) {
        this.f4834a = aVar;
    }

    public UnifiedInterstitialADListener a() {
        return (UnifiedInterstitialADListener) Proxy.newProxyInstance(UnifiedInterstitialADListener.class.getClassLoader(), new Class[]{UnifiedInterstitialADListener.class}, this);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        String name = method.getName();
        if (this.f4834a == null) {
            return null;
        }
        if ("onADReceive".equals(name)) {
            this.f4834a.a();
        } else if ("onVideoCached".equals(name)) {
            this.f4834a.onVideoCached();
        } else if ("onNoAD".equals(name)) {
            this.f4834a.onNoAD((AdError) objArr[0]);
        } else if ("onADOpened".equals(name)) {
            this.f4834a.c();
        } else if ("onADExposure".equals(name)) {
            this.f4834a.onADExposure();
        } else if ("onADClicked".equals(name)) {
            this.f4834a.onADClicked();
        } else if ("onADLeftApplication".equals(name)) {
            this.f4834a.onADLeftApplication();
        } else if ("onADClosed".equals(name)) {
            this.f4834a.b();
        } else if ("onRenderSuccess".equals(name)) {
            this.f4834a.onRenderSuccess();
        } else if ("onRenderFail".equals(name)) {
            this.f4834a.onRenderFail();
        }
        return null;
    }
}
