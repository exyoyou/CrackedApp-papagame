package com.aggmoread.sdk.z.c.a.a.d.a.d.v.e;

import com.qq.e.ads.banner2.UnifiedBannerADListener;
import com.qq.e.comm.util.AdError;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes7.dex */
public class a implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private InterfaceC0165a f4790a;

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.v.e.a$a, reason: collision with other inner class name */
    public interface InterfaceC0165a {
        void a();

        void b();

        void onADClicked();

        void onADCloseOverlay();

        void onADExposure();

        void onADLeftApplication();

        void onADOpenOverlay();

        void onNoAD(AdError adError);
    }

    public a(InterfaceC0165a interfaceC0165a) {
        this.f4790a = interfaceC0165a;
    }

    public UnifiedBannerADListener a() {
        return (UnifiedBannerADListener) Proxy.newProxyInstance(UnifiedBannerADListener.class.getClassLoader(), new Class[]{UnifiedBannerADListener.class}, this);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        if (method == null) {
            return null;
        }
        try {
            if (this.f4790a != null) {
                String name = method.getName();
                if ("onADReceive".equals(name)) {
                    this.f4790a.a();
                } else if ("onADExposure".equals(name)) {
                    this.f4790a.onADExposure();
                } else if ("onADClicked".equals(name)) {
                    this.f4790a.onADClicked();
                } else if ("onADClosed".equals(name)) {
                    this.f4790a.b();
                } else if ("onADLeftApplication".equals(name)) {
                    this.f4790a.onADLeftApplication();
                } else if ("onADOpenOverlay".equals(name)) {
                    this.f4790a.onADOpenOverlay();
                } else if ("onADCloseOverlay".equals(name)) {
                    this.f4790a.onADCloseOverlay();
                } else if ("onNoAD".equals(name)) {
                    this.f4790a.onNoAD((AdError) objArr[0]);
                }
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
