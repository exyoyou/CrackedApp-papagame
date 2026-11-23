package com.windmill.sdk.common;

import android.app.Activity;
import com.windmill.sdk.WindMillAd;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f86615a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f86616b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f86617c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f86618d = 1000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f86619e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f86620f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private InterfaceC1079a f86621g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.windmill.sdk.utils.a.InterfaceC1083a f86622h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private WeakReference<Activity> f86623i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Runnable f86624j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f86625k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f86626l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Runnable f86627m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f86628n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f86629o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f86630p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f86631q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f86632r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final AtomicInteger f86633s = new AtomicInteger(0);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final AtomicBoolean f86634t = new AtomicBoolean(false);

    /* JADX INFO: renamed from: com.windmill.sdk.common.a$a, reason: collision with other inner class name */
    interface InterfaceC1079a {
        void onFinish();
    }

    public a(int adnId, String loadId) {
        this.f86619e = adnId;
        this.f86620f = loadId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i() {
        if (this.f86630p) {
            this.f86631q = true;
        } else if (this.f86633s.get() == 0) {
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        InterfaceC1079a interfaceC1079a;
        if (this.f86634t.get()) {
            return;
        }
        WeakReference<Activity> weakReference = this.f86623i;
        if (weakReference != null && weakReference.get() != null) {
            try {
                try {
                    if (!this.f86623i.get().isFinishing()) {
                        this.f86623i.get().finish();
                        this.f86629o = true;
                    }
                    interfaceC1079a = this.f86621g;
                    if (interfaceC1079a != null && this.f86629o) {
                        interfaceC1079a.onFinish();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    interfaceC1079a = this.f86621g;
                    if (interfaceC1079a != null && this.f86629o) {
                    }
                    this.f86634t.set(true);
                }
                this.f86634t.set(true);
            } catch (Throwable th) {
                InterfaceC1079a interfaceC1079a2 = this.f86621g;
                if (interfaceC1079a2 != null && this.f86629o) {
                    interfaceC1079a2.onFinish();
                }
                throw th;
            }
        }
        g();
    }

    private void g() {
        if (this.f86622h != null) {
            com.windmill.sdk.utils.a.a().b(this.f86622h);
            this.f86622h = null;
        }
        WeakReference<Activity> weakReference = this.f86623i;
        if (weakReference != null) {
            weakReference.clear();
            this.f86623i = null;
        }
        this.f86621g = null;
        if (this.f86624j != null) {
            WindMillAd.sharedAds().getHandler().removeCallbacks(this.f86624j);
            this.f86624j = null;
        }
        if (this.f86627m != null) {
            WindMillAd.sharedAds().getHandler().removeCallbacks(this.f86627m);
            this.f86627m = null;
        }
        this.f86625k = false;
        this.f86626l = 0L;
        this.f86628n = false;
        this.f86630p = false;
        this.f86631q = false;
        this.f86632r = false;
        this.f86633s.set(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h() {
        if (this.f86633s.get() == 2) {
            f();
        } else {
            this.f86632r = true;
        }
    }

    public void b() {
        this.f86633s.compareAndSet(0, 1);
        if (this.f86628n) {
            this.f86627m = new Runnable() { // from class: com.windmill.sdk.common.v
                @Override // java.lang.Runnable
                public final void run() {
                    this.f86973b.h();
                }
            };
            WindMillAd.sharedAds().getHandler().postDelayed(this.f86627m, 1000L);
        }
    }

    public void c() {
        if (this.f86634t.getAndSet(true)) {
            return;
        }
        g();
    }

    public void d() {
        this.f86633s.compareAndSet(1, 2);
        if (this.f86628n && this.f86633s.get() == 2 && this.f86632r) {
            f();
        }
    }

    public boolean e() {
        return this.f86629o;
    }

    public void a(long closeInterval, final boolean autoCloseAfterClick, InterfaceC1079a listener) {
        this.f86625k = closeInterval > 0;
        this.f86626l = closeInterval;
        this.f86628n = autoCloseAfterClick;
        this.f86621g = listener;
        this.f86622h = new com.windmill.sdk.utils.a.InterfaceC1083a() { // from class: com.windmill.sdk.common.a.1
            @Override // com.windmill.sdk.utils.a.InterfaceC1083a
            public void onCreate(Activity activity) {
                if (a.this.f86623i == null && a.this.f86633s.get() == 0) {
                    a.this.f86623i = new WeakReference(activity);
                }
            }

            @Override // com.windmill.sdk.utils.a.InterfaceC1083a
            public void onDestroy(Activity activity) {
            }

            @Override // com.windmill.sdk.utils.a.InterfaceC1083a
            public void onPause(Activity activity) {
                if (a.this.a(activity)) {
                    a.this.f86630p = true;
                }
            }

            @Override // com.windmill.sdk.utils.a.InterfaceC1083a
            public void onResume(Activity activity) {
                if (a.this.a(activity) && a.this.f86630p) {
                    if (a.this.f86625k && a.this.f86633s.get() == 0 && a.this.f86631q) {
                        a.this.f();
                    } else if (autoCloseAfterClick && a.this.f86633s.get() == 1) {
                        a.this.f();
                    }
                }
            }

            @Override // com.windmill.sdk.utils.a.InterfaceC1083a
            public void onStart(Activity activity) {
            }

            @Override // com.windmill.sdk.utils.a.InterfaceC1083a
            public void onStop(Activity activity) {
            }
        };
        com.windmill.sdk.utils.a.a().a(this.f86622h);
        a();
    }

    public void a() {
        if (this.f86625k) {
            this.f86624j = new Runnable() { // from class: com.windmill.sdk.common.w
                @Override // java.lang.Runnable
                public final void run() {
                    this.f86974b.i();
                }
            };
            WindMillAd.sharedAds().getHandler().postDelayed(this.f86624j, this.f86626l);
        }
    }

    public boolean a(int adnId, String loadId) {
        return this.f86619e == adnId && this.f86620f.equals(loadId) && this.f86634t.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Activity activity) {
        WeakReference<Activity> weakReference = this.f86623i;
        if (weakReference == null || weakReference.get() == null || activity == null) {
            return false;
        }
        return this.f86623i.get().getClass().getName().equals(activity.getClass().getName());
    }
}
