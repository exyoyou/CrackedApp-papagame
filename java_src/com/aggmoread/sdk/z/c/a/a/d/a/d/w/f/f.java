package com.aggmoread.sdk.z.c.a.a.d.a.d.w.f;

import com.kwad.sdk.api.KsNativeAd;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: loaded from: classes7.dex */
public class f implements InvocationHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f4871a;

    public interface a {
        void a();

        void b();

        void c();

        void d();

        void onVideoPlayError(int i10, int i11);

        void onVideoPlayStart();
    }

    public KsNativeAd.VideoPlayListener a(a aVar) {
        this.f4871a = aVar;
        return (KsNativeAd.VideoPlayListener) Proxy.newProxyInstance(KsNativeAd.VideoPlayListener.class.getClassLoader(), new Class[]{KsNativeAd.VideoPlayListener.class}, this);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        try {
            if (this.f4871a == null) {
                return null;
            }
            if ("onVideoPlayReady".equals(method.getName())) {
                this.f4871a.b();
            } else if ("onVideoPlayStart".equals(method.getName())) {
                this.f4871a.onVideoPlayStart();
            } else if ("onVideoPlayComplete".equals(method.getName())) {
                this.f4871a.a();
            } else if ("onVideoPlayError".equals(method.getName())) {
                this.f4871a.onVideoPlayError(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue());
            } else if ("onVideoPlayPause".equals(method.getName())) {
                this.f4871a.c();
            } else if ("onVideoPlayResume".equals(method.getName())) {
                this.f4871a.d();
            }
        } catch (Exception unused) {
        }
        return null;
    }
}
