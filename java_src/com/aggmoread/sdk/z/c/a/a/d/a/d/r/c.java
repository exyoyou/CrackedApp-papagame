package com.aggmoread.sdk.z.c.a.a.d.a.d.r;

import com.baidu.mobads.sdk.api.BaiduNativeManager;
import com.baidu.mobads.sdk.api.ExpressInterstitialListener;
import com.baidu.mobads.sdk.api.ExpressResponse;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.baidu.mobads.sdk.api.MobadsPermissionSettings;
import com.baidu.mobads.sdk.api.NativeResponse;
import com.baidu.mobads.sdk.api.SplashInteractionListener;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f4575a;

    class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ j f4576a;

        a(c cVar, j jVar) {
            this.f4576a = jVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method == null) {
                return null;
            }
            try {
                if (this.f4576a != null) {
                    String name = method.getName();
                    if (IAdInterListener.AdCommandType.AD_CLICK.equals(name)) {
                        this.f4576a.onAdClick();
                    } else if ("onADLoaded".equals(name)) {
                        this.f4576a.f();
                    } else if ("onAdClose".equals(name)) {
                        this.f4576a.onAdClose();
                    } else if ("onAdFailed".equals(name)) {
                        this.f4576a.b(((Integer) objArr[0]).intValue(), (String) objArr[1]);
                    } else if ("onNoAd".equals(name)) {
                        this.f4576a.a(((Integer) objArr[0]).intValue(), (String) objArr[1]);
                    } else if ("onAdCacheSuccess".equals(name)) {
                        this.f4576a.d();
                    } else if ("onAdCacheFailed".equals(name)) {
                        this.f4576a.b();
                    } else if ("onADExposed".equals(name)) {
                        this.f4576a.onADExposed();
                    } else if ("onADExposureFailed".equals(name)) {
                        this.f4576a.g();
                    } else if ("onVideoDownloadSuccess".equals(name)) {
                        this.f4576a.onVideoDownloadSuccess();
                    } else if ("onVideoDownloadFailed".equals(name)) {
                        this.f4576a.onVideoDownloadFailed();
                    } else if ("onLpClosed".equals(name)) {
                        this.f4576a.c();
                    }
                }
                return null;
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
    }

    class b implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ g f4577a;

        b(c cVar, g gVar) {
            this.f4577a = gVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method == null) {
                return null;
            }
            try {
                if (this.f4577a != null) {
                    if ("onDislikeWindowShow".equals(method.getName())) {
                        this.f4577a.a();
                    } else if ("onDislikeItemClick".equals(method.getName())) {
                        this.f4577a.c();
                    } else if ("onDislikeWindowClose".equals(method.getName())) {
                        this.f4577a.b();
                    }
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.a.d.r.c$c, reason: collision with other inner class name */
    class C0129c implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ k f4578a;

        C0129c(c cVar, k kVar) {
            this.f4578a = kVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method == null) {
                return null;
            }
            try {
                if (this.f4578a != null) {
                    String name = method.getName();
                    if ("onLpClosed".equals(name)) {
                        this.f4578a.c();
                    } else if ("onAdPresent".equals(name)) {
                        this.f4578a.g();
                    } else if ("onAdExposed".equals(name)) {
                        this.f4578a.onAdExposed();
                    } else if ("onAdDismissed".equals(name)) {
                        this.f4578a.a();
                    } else if ("onAdSkip".equals(name)) {
                        this.f4578a.e();
                    } else if (IAdInterListener.AdCommandType.AD_CLICK.equals(name)) {
                        this.f4578a.onAdClick();
                    } else if ("onAdCacheSuccess".equals(name)) {
                        this.f4578a.d();
                    } else if ("onAdCacheFailed".equals(name)) {
                        this.f4578a.b();
                    } else if ("onADLoaded".equals(name)) {
                        this.f4578a.f();
                    } else if ("onAdFailed".equals(name)) {
                        this.f4578a.onAdFailed((String) objArr[0]);
                    }
                }
                return null;
            } catch (Exception e10) {
                e10.printStackTrace();
                return null;
            }
        }
    }

    class d implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i f4579a;

        d(i iVar) {
            this.f4579a = iVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method != null) {
                try {
                    if (this.f4579a != null) {
                        String name = method.getName();
                        if ("onNoAd".equals(name)) {
                            f fVarA = c.this.a(objArr);
                            Object obj2 = fVarA.f4585c;
                            this.f4579a.b(fVarA.f4583a, fVarA.f4584b, obj2 instanceof NativeResponse ? (NativeResponse) obj2 : null);
                        } else if ("onNativeFail".equals(name)) {
                            f fVarA2 = c.this.a(objArr);
                            Object obj3 = fVarA2.f4585c;
                            this.f4579a.a(fVarA2.f4583a, fVarA2.f4584b, obj3 instanceof NativeResponse ? (NativeResponse) obj3 : null);
                        } else if ("onNativeLoad".equals(name)) {
                            this.f4579a.a((List) objArr[0]);
                        } else if ("onVideoDownloadSuccess".equals(name)) {
                            this.f4579a.onVideoDownloadSuccess();
                        } else if ("onVideoDownloadFailed".equals(name)) {
                            this.f4579a.onVideoDownloadFailed();
                        } else if ("onLpClosed".equals(name)) {
                            this.f4579a.c();
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            return null;
        }
    }

    class e implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ h f4581a;

        e(h hVar) {
            this.f4581a = hVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method != null) {
                try {
                    if (this.f4581a != null) {
                        String name = method.getName();
                        if ("onNoAd".equals(name)) {
                            f fVarA = c.this.a(objArr);
                            Object obj2 = fVarA.f4585c;
                            this.f4581a.b(fVarA.f4583a, fVarA.f4584b, obj2 instanceof ExpressResponse ? (ExpressResponse) obj2 : null);
                        } else if ("onNativeFail".equals(name)) {
                            f fVarA2 = c.this.a(objArr);
                            Object obj3 = fVarA2.f4585c;
                            this.f4581a.a(fVarA2.f4583a, fVarA2.f4584b, obj3 instanceof ExpressResponse ? (ExpressResponse) obj3 : null);
                        } else if ("onNativeLoad".equals(name)) {
                            this.f4581a.a((List) objArr[0]);
                        } else if ("onVideoDownloadSuccess".equals(name)) {
                            this.f4581a.onVideoDownloadSuccess();
                        } else if ("onVideoDownloadFailed".equals(name)) {
                            this.f4581a.onVideoDownloadFailed();
                        } else if ("onLpClosed".equals(name)) {
                            this.f4581a.c();
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            return null;
        }
    }

    private static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f4583a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f4584b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Object f4585c;

        private f() {
            this.f4583a = -1;
        }

        /* synthetic */ f(a aVar) {
            this();
        }
    }

    public interface g {
        void a();

        void b();

        void c();
    }

    public interface h {
        void a(int i10, String str, ExpressResponse expressResponse);

        void a(List<ExpressResponse> list);

        void b(int i10, String str, ExpressResponse expressResponse);

        void c();

        void onVideoDownloadFailed();

        void onVideoDownloadSuccess();
    }

    public interface i {
        void a(int i10, String str, NativeResponse nativeResponse);

        void a(List<NativeResponse> list);

        void b(int i10, String str, NativeResponse nativeResponse);

        void c();

        void onVideoDownloadFailed();

        void onVideoDownloadSuccess();
    }

    public interface j {
        void a(int i10, String str);

        void b();

        void b(int i10, String str);

        void c();

        void d();

        void f();

        void g();

        void onADExposed();

        void onAdClick();

        void onAdClose();

        void onVideoDownloadFailed();

        void onVideoDownloadSuccess();
    }

    public interface k {
        void a();

        void b();

        void c();

        void d();

        void e();

        void f();

        void g();

        void onAdClick();

        void onAdExposed();

        void onAdFailed(String str);
    }

    private c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public f a(Object[] objArr) {
        f fVar = new f(null);
        if (objArr != null) {
            if (objArr.length >= 1) {
                fVar.f4583a = ((Integer) objArr[0]).intValue();
            }
            if (objArr.length >= 2) {
                Object obj = objArr[1];
                if (obj instanceof String) {
                    fVar.f4584b = obj.toString();
                }
            }
            if (objArr.length >= 3) {
                fVar.f4585c = objArr[2];
            }
        }
        return fVar;
    }

    public static synchronized c a() {
        if (f4575a == null) {
            synchronized (c.class) {
                if (f4575a == null) {
                    f4575a = new c();
                }
            }
        }
        return f4575a;
    }

    public BaiduNativeManager.ExpressAdListener a(h hVar) {
        return (BaiduNativeManager.ExpressAdListener) Proxy.newProxyInstance(BaiduNativeManager.ExpressAdListener.class.getClassLoader(), new Class[]{BaiduNativeManager.ExpressAdListener.class}, new e(hVar));
    }

    public BaiduNativeManager.FeedAdListener a(i iVar) {
        return (BaiduNativeManager.FeedAdListener) Proxy.newProxyInstance(BaiduNativeManager.FeedAdListener.class.getClassLoader(), new Class[]{BaiduNativeManager.FeedAdListener.class}, new d(iVar));
    }

    public ExpressInterstitialListener a(j jVar) {
        return (ExpressInterstitialListener) Proxy.newProxyInstance(ExpressInterstitialListener.class.getClassLoader(), new Class[]{ExpressInterstitialListener.class}, new a(this, jVar));
    }

    public ExpressResponse.ExpressDislikeListener a(g gVar) {
        return (ExpressResponse.ExpressDislikeListener) Proxy.newProxyInstance(ExpressResponse.ExpressDislikeListener.class.getClassLoader(), new Class[]{ExpressResponse.ExpressDislikeListener.class}, new b(this, gVar));
    }

    public SplashInteractionListener a(k kVar) {
        return (SplashInteractionListener) Proxy.newProxyInstance(SplashInteractionListener.class.getClassLoader(), new Class[]{SplashInteractionListener.class}, new C0129c(this, kVar));
    }

    public static void a(boolean z10) {
        com.aggmoread.sdk.z.c.a.a.e.e.a("bd ap " + z10);
        try {
            MobadsPermissionSettings.setLimitPersonalAds(z10);
        } catch (Exception e10) {
            com.aggmoread.sdk.z.c.a.a.e.e.a("ap e" + e10);
        }
    }
}
