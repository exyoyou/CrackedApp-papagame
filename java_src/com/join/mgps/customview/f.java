package com.join.mgps.customview;

import android.content.Context;
import com.join.mgps.dto.ForumBean;

/* JADX INFO: loaded from: classes3.dex */
public final class f extends com.join.mgps.customview.e {
    private Object A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Context f66339z;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumBean.ForumPostsBean f66340b;

        a(final ForumBean.ForumPostsBean val$bean) {
            this.f66340b = val$bean;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.j(this.f66340b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f66342b;

        b(final String val$msg) {
            this.f66342b = val$msg;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.r(this.f66342b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f66344b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f66345c;

        c(final int val$pid, final boolean val$success) {
            this.f66344b = val$pid;
            this.f66345c = val$success;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.super.i(this.f66344b, this.f66345c);
        }
    }

    class d extends org.androidannotations.api.a.c {
        d(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f.super.e();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class e extends org.androidannotations.api.a.c {
        e(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f.super.d();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.customview.f$f, reason: collision with other inner class name */
    class C0711f extends org.androidannotations.api.a.c {
        C0711f(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f.super.f();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    class g extends org.androidannotations.api.a.c {
        g(String id2, long delay, String serial) {
            super(id2, delay, serial);
        }

        @Override // org.androidannotations.api.a.c
        public void execute() {
            try {
                f.super.c();
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    private f(Context context) {
        super(context);
        this.f66339z = context;
        B();
    }

    public static f A(Context context, Object rootFragment) {
        return new f(context, rootFragment);
    }

    private void B() {
    }

    public static f z(Context context) {
        return new f(context);
    }

    public void C(Context context) {
        this.f66339z = context;
        B();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.e
    public void c() {
        org.androidannotations.api.a.l(new g("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.e
    public void d() {
        org.androidannotations.api.a.l(new e("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.e
    public void e() {
        org.androidannotations.api.a.l(new d("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.e
    public void f() {
        org.androidannotations.api.a.l(new C0711f("", 0L, ""));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.e
    public void i(final int pid, final boolean success) {
        org.androidannotations.api.b.e("", new c(pid, success), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.e
    public void j(final ForumBean.ForumPostsBean bean) {
        org.androidannotations.api.b.e("", new a(bean), 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.join.mgps.customview.e
    public void r(final String msg) {
        org.androidannotations.api.b.e("", new b(msg), 0L);
    }

    private f(Context context, Object rootFragment) {
        super(context);
        this.f66339z = context;
        this.A = rootFragment;
        B();
    }
}
