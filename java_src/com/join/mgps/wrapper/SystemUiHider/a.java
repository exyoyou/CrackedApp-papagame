package com.join.mgps.wrapper.SystemUiHider;

import android.app.Activity;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f73375e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f73376f = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f73377g = 6;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static b f73378h = new C0753a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Activity f73379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected View f73380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f73381c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected b f73382d = f73378h;

    /* JADX INFO: renamed from: com.join.mgps.wrapper.SystemUiHider.a$a, reason: collision with other inner class name */
    class C0753a implements b {
        C0753a() {
        }

        @Override // com.join.mgps.wrapper.SystemUiHider.a.b
        public void onVisibilityChange(boolean visible) {
        }
    }

    public interface b {
        void onVisibilityChange(boolean visible);
    }

    protected a(Activity activity, View anchorView, int flags) {
        this.f73379a = activity;
        this.f73380b = anchorView;
        this.f73381c = flags;
    }

    public static a a(Activity activity, View anchorView, int flags) {
        return com.join.mgps.wrapper.a.f73400b >= 11 ? new c(activity, anchorView, flags) : new com.join.mgps.wrapper.SystemUiHider.b(activity, anchorView, flags);
    }

    public abstract void b();

    public abstract boolean c();

    public void d(b listener) {
        if (listener == null) {
            listener = f73378h;
        }
        this.f73382d = listener;
    }

    public abstract void e();

    public abstract void f();

    public void g() {
        if (c()) {
            b();
        } else {
            f();
        }
    }
}
