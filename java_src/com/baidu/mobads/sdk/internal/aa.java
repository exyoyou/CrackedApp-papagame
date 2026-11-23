package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public class aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f7377a = "LoadRemoteDex";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static aa f7378i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private IXAdContainerFactory f7379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private bp f7380c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Runnable f7383f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f7384g;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f7387k;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7381d = 5000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f7382e = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private bv f7385h = bv.a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AtomicBoolean f7386j = new AtomicBoolean(false);

    public interface a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f7388a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f7389b = 2;

        void onFailure();

        void onSuccess();
    }

    private aa() {
    }

    private void f() {
        this.f7386j.set(true);
        if (ao.a()) {
            h();
        } else {
            g();
        }
    }

    private void g() {
        synchronized (aa.class) {
            try {
                bp bpVar = new bp(Class.forName(z.aQ, true, getClass().getClassLoader()), this.f7384g);
                this.f7380c = bpVar;
                this.f7379b = bpVar.a();
                k();
            } catch (Exception unused) {
                a("反射调用remote失败");
            }
        }
    }

    private void h() {
        this.f7383f = new ab(this);
        j();
        if (h.f7879a == null) {
            synchronized (cb.class) {
                if (h.f7879a == null) {
                    h.f7879a = new cb(this.f7384g);
                }
            }
        }
        if (this.f7379b != null) {
            k();
            return;
        }
        if (h.f7879a == null) {
            this.f7385h.a(f7377a, "BaiduXAdSDKContext.mApkLoader == null,not load apk");
            return;
        }
        this.f7385h.a(f7377a, "start load apk");
        try {
            h.f7879a.a(new ac(this));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void i() {
        Runnable runnable = this.f7383f;
        if (runnable != null) {
            this.f7382e.removeCallbacks(runnable);
        }
        this.f7383f = null;
    }

    private void j() {
        Runnable runnable = this.f7383f;
        if (runnable != null) {
            this.f7382e.postDelayed(runnable, this.f7381d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        this.f7386j.set(false);
        bn.a(this.f7384g);
        i();
        s.a().a(1);
        cp.a(this.f7384g).b();
        cp.a(this.f7384g).a();
    }

    public IXAdContainerFactory c() {
        if (this.f7384g == null) {
            return null;
        }
        if (this.f7379b == null && !this.f7386j.get()) {
            f();
        }
        return this.f7379b;
    }

    public String d() {
        if (this.f7379b == null) {
            return "";
        }
        return "_" + this.f7379b.getRemoteVersion();
    }

    public boolean e() {
        return this.f7387k;
    }

    public Context b() {
        return this.f7384g;
    }

    public static aa a() {
        if (f7378i == null) {
            synchronized (aa.class) {
                if (f7378i == null) {
                    f7378i = new aa();
                }
            }
        }
        return f7378i;
    }

    public void a(Context context, a aVar) {
        if (context == null) {
            this.f7385h.c(f7377a, "init Context is null,error");
            return;
        }
        this.f7384g = context.getApplicationContext();
        s.a().a(aVar);
        if (this.f7379b != null) {
            k();
        } else {
            if (this.f7386j.get()) {
                return;
            }
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        this.f7385h.a(f7377a, "加载dex失败原因=" + str);
        this.f7386j.set(false);
        i();
        s.a().a(2);
    }
}
