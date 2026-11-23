package com.aggmoread.sdk.z.a.i;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
public abstract class e extends com.aggmoread.sdk.z.a.e {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static String f3503t = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3505c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f3506d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f3507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private WeakReference<Activity> f3508f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private WeakReference<ViewGroup> f3510h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f3512j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private View f3513k;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f3521s;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3509g = 5000;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private f f3511i = f.f3544h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f3514l = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f3515m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f3516n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private com.aggmoread.sdk.z.a.t.e f3517o = com.aggmoread.sdk.z.a.t.e.f3995k;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private b f3518p = b.DEFAULT;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private double f3519q = 1.0d;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f3520r = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f3504b = UUID.randomUUID().toString();

    public static abstract class a<T extends a, K extends e> extends com.aggmoread.sdk.z.a.e {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f3522b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f3523c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Activity f3524d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Context f3525e;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ViewGroup f3527g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private View f3528h;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f3537q;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f3526f = 5000;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f3529i = 1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f3530j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f3531k = true;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f3532l = false;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private com.aggmoread.sdk.z.a.t.e f3533m = com.aggmoread.sdk.z.a.t.e.f3995k;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private b f3534n = b.DEFAULT;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private double f3535o = 1.0d;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f3536p = 1;

        protected a(Context context) {
            if (context instanceof Activity) {
                this.f3524d = (Activity) context;
            }
            this.f3525e = context;
        }

        public T a(double d10) {
            this.f3535o = d10;
            return this;
        }

        public T b(int i10) {
            this.f3529i = i10;
            return this;
        }

        public T c(int i10) {
            this.f3536p = i10;
            return this;
        }

        public T d(int i10) {
            this.f3526f = i10;
            return this;
        }

        public K e() {
            K k10 = (K) f();
            if (k10 != null) {
                ((e) k10).f3508f = new WeakReference(this.f3524d);
                ((e) k10).f3505c = this.f3522b;
                ((e) k10).f3506d = this.f3523c;
                ((e) k10).f3509g = this.f3526f;
                ((e) k10).f3513k = this.f3528h;
                ((e) k10).f3507e = this.f3525e;
                ((e) k10).f3510h = new WeakReference(this.f3527g);
                ((e) k10).f3512j = this.f3529i;
                ((e) k10).f3514l = this.f3530j;
                ((e) k10).f3515m = this.f3531k;
                ((e) k10).f3517o = this.f3533m;
                ((e) k10).f3516n = this.f3532l;
                ((e) k10).f3518p = this.f3534n;
                ((e) k10).f3521s = this.f3537q;
                ((e) k10).f3519q = this.f3535o;
                ((e) k10).f3520r = this.f3536p;
                k10.a(this);
            }
            return k10;
        }

        protected abstract K f();

        public T a(View view) {
            this.f3528h = view;
            return this;
        }

        public T b(boolean z10) {
            this.f3532l = z10;
            return this;
        }

        public T a(b bVar) {
            this.f3534n = bVar;
            return this;
        }

        public T a(com.aggmoread.sdk.z.a.t.e eVar) {
            this.f3533m = eVar;
            return this;
        }

        public T a(String str) {
            this.f3522b = str;
            return this;
        }

        public T a(boolean z10) {
            this.f3530j = z10;
            return this;
        }
    }

    protected e() {
    }

    private boolean e() {
        return com.aggmoread.sdk.z.a.h.a.d().g();
    }

    protected abstract void a(h hVar);

    public Activity f() {
        Activity activity;
        WeakReference<Activity> weakReference = this.f3508f;
        if (weakReference == null || (activity = weakReference.get()) == null) {
            return null;
        }
        return activity;
    }

    public ViewGroup g() {
        return this.f3510h.get();
    }

    public View h() {
        return this.f3513k;
    }

    public f i() {
        return this.f3511i;
    }

    public b j() {
        return this.f3518p;
    }

    public String k() {
        return this.f3505c;
    }

    public Context l() {
        return this.f3507e;
    }

    public int m() {
        return this.f3520r;
    }

    public String n() {
        return this.f3504b;
    }

    public double o() {
        return this.f3519q;
    }

    public com.aggmoread.sdk.z.a.t.e p() {
        return this.f3517o;
    }

    public boolean q() {
        return this.f3515m;
    }

    public boolean r() {
        return this.f3514l;
    }

    public boolean s() {
        return this.f3516n;
    }

    public String toString() {
        return "BaseApiRequest{requestId='" + this.f3504b + "', codeId='" + this.f3505c + "', activityWeak=" + this.f3508f + ", timeoutMs=" + this.f3509g + ", adContainerWeak=" + this.f3510h + ", adType=" + this.f3511i + '}';
    }

    public void a(com.aggmoread.sdk.z.a.f.a aVar) {
        if (aVar == null) {
            aVar = com.aggmoread.sdk.z.a.f.a.f3308a;
        }
        if (!e()) {
            aVar.a(com.aggmoread.sdk.z.a.g.f.f3453h);
        } else {
            this.f3511i = f.f3541e;
            a((h) aVar);
        }
    }

    public void a(com.aggmoread.sdk.z.a.k.a aVar) {
        if (aVar == null) {
            aVar = com.aggmoread.sdk.z.a.k.a.f3640b;
        }
        if (!e()) {
            aVar.a(com.aggmoread.sdk.z.a.g.f.f3453h);
        } else {
            this.f3511i = f.f3540d;
            a((h) aVar);
        }
    }

    public void a(com.aggmoread.sdk.z.a.l.a aVar) {
        if (aVar == null) {
            aVar = com.aggmoread.sdk.z.a.l.a.f3672c;
        }
        if (!e()) {
            aVar.a(com.aggmoread.sdk.z.a.g.f.f3453h);
        } else {
            this.f3511i = f.f3539c;
            a((h) aVar);
        }
    }

    public void a(com.aggmoread.sdk.z.a.s.c cVar) {
        if (cVar == null) {
            cVar = com.aggmoread.sdk.z.a.s.c.f3895d;
        }
        if (!e()) {
            cVar.a(com.aggmoread.sdk.z.a.g.f.f3453h);
        } else {
            this.f3511i = f.f3542f;
            a((h) cVar);
        }
    }

    public void a(com.aggmoread.sdk.z.a.s.d dVar) {
        if (dVar == null) {
            dVar = com.aggmoread.sdk.z.a.s.d.f3896e;
        }
        this.f3511i = f.f3543g;
        if (e()) {
            a((h) dVar);
        } else {
            dVar.a(com.aggmoread.sdk.z.a.g.f.f3453h);
        }
    }

    public void a(com.aggmoread.sdk.z.a.s.e eVar) {
        if (eVar == null) {
            eVar = com.aggmoread.sdk.z.a.s.e.f3897f;
        }
        if (!e()) {
            eVar.a(com.aggmoread.sdk.z.a.g.f.f3453h);
        } else {
            this.f3511i = f.f3538b;
            a((h) eVar);
        }
    }
}
