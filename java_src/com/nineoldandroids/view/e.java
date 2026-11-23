package com.nineoldandroids.view;

import android.view.View;
import android.view.animation.Interpolator;
import com.nineoldandroids.animation.q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
class e extends com.nineoldandroids.view.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f76375o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f76376p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f76377q = 2;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f76378r = 4;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f76379s = 8;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f76380t = 16;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f76381u = 32;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f76382v = 64;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f76383w = 128;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f76384x = 256;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f76385y = 512;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f76386z = 511;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.nineoldandroids.view.animation.a f76387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference<View> f76388c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f76389d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Interpolator f76393h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f76390e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f76391f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f76392g = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f76394i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.nineoldandroids.animation.a.InterfaceC0985a f76395j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private b f76396k = new b(this, null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    ArrayList<c> f76397l = new ArrayList<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Runnable f76398m = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private HashMap<com.nineoldandroids.animation.a, d> f76399n = new HashMap<>();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.O();
        }
    }

    private class b implements com.nineoldandroids.animation.a.InterfaceC0985a, q.g {
        private b() {
        }

        @Override // com.nineoldandroids.animation.q.g
        public void a(q qVar) {
            View view;
            float fK = qVar.K();
            d dVar = (d) e.this.f76399n.get(qVar);
            if ((dVar.f76405a & 511) != 0 && (view = (View) e.this.f76388c.get()) != null) {
                view.invalidate();
            }
            ArrayList<c> arrayList = dVar.f76406b;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    c cVar = arrayList.get(i10);
                    e.this.N(cVar.f76402a, cVar.f76403b + (cVar.f76404c * fK));
                }
            }
            View view2 = (View) e.this.f76388c.get();
            if (view2 != null) {
                view2.invalidate();
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationCancel(com.nineoldandroids.animation.a aVar) {
            if (e.this.f76395j != null) {
                e.this.f76395j.onAnimationCancel(aVar);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationEnd(com.nineoldandroids.animation.a aVar) {
            if (e.this.f76395j != null) {
                e.this.f76395j.onAnimationEnd(aVar);
            }
            e.this.f76399n.remove(aVar);
            if (e.this.f76399n.isEmpty()) {
                e.this.f76395j = null;
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationRepeat(com.nineoldandroids.animation.a aVar) {
            if (e.this.f76395j != null) {
                e.this.f76395j.onAnimationRepeat(aVar);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationStart(com.nineoldandroids.animation.a aVar) {
            if (e.this.f76395j != null) {
                e.this.f76395j.onAnimationStart(aVar);
            }
        }

        /* synthetic */ b(e eVar, a aVar) {
            this();
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f76402a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f76403b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f76404c;

        c(int i10, float f10, float f11) {
            this.f76402a = i10;
            this.f76403b = f10;
            this.f76404c = f11;
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f76405a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ArrayList<c> f76406b;

        d(int i10, ArrayList<c> arrayList) {
            this.f76405a = i10;
            this.f76406b = arrayList;
        }

        boolean a(int i10) {
            ArrayList<c> arrayList;
            if ((this.f76405a & i10) != 0 && (arrayList = this.f76406b) != null) {
                int size = arrayList.size();
                for (int i11 = 0; i11 < size; i11++) {
                    if (this.f76406b.get(i11).f76402a == i10) {
                        this.f76406b.remove(i11);
                        this.f76405a = (~i10) & this.f76405a;
                        return true;
                    }
                }
            }
            return false;
        }
    }

    e(View view) {
        this.f76388c = new WeakReference<>(view);
        this.f76387b = com.nineoldandroids.view.animation.a.I(view);
    }

    private void J(int i10, float f10) {
        float fM = M(i10);
        L(i10, fM, f10 - fM);
    }

    private void K(int i10, float f10) {
        L(i10, M(i10), f10);
    }

    private void L(int i10, float f10, float f11) {
        com.nineoldandroids.animation.a next;
        if (this.f76399n.size() > 0) {
            Iterator<com.nineoldandroids.animation.a> it2 = this.f76399n.keySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                d dVar = this.f76399n.get(next);
                if (dVar.a(i10) && dVar.f76405a == 0) {
                    break;
                }
            }
            if (next != null) {
                next.cancel();
            }
        }
        this.f76397l.add(new c(i10, f10, f11));
        View view = this.f76388c.get();
        if (view != null) {
            view.removeCallbacks(this.f76398m);
            view.post(this.f76398m);
        }
    }

    private float M(int i10) {
        if (i10 == 1) {
            return this.f76387b.m();
        }
        if (i10 == 2) {
            return this.f76387b.o();
        }
        if (i10 == 4) {
            return this.f76387b.i();
        }
        if (i10 == 8) {
            return this.f76387b.j();
        }
        if (i10 == 16) {
            return this.f76387b.f();
        }
        if (i10 == 32) {
            return this.f76387b.g();
        }
        if (i10 == 64) {
            return this.f76387b.h();
        }
        if (i10 == 128) {
            return this.f76387b.p();
        }
        if (i10 == 256) {
            return this.f76387b.q();
        }
        if (i10 != 512) {
            return 0.0f;
        }
        return this.f76387b.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(int i10, float f10) {
        if (i10 == 1) {
            this.f76387b.D(f10);
            return;
        }
        if (i10 == 2) {
            this.f76387b.E(f10);
            return;
        }
        if (i10 == 4) {
            this.f76387b.z(f10);
            return;
        }
        if (i10 == 8) {
            this.f76387b.A(f10);
            return;
        }
        if (i10 == 16) {
            this.f76387b.w(f10);
            return;
        }
        if (i10 == 32) {
            this.f76387b.x(f10);
            return;
        }
        if (i10 == 64) {
            this.f76387b.y(f10);
            return;
        }
        if (i10 == 128) {
            this.f76387b.F(f10);
        } else if (i10 == 256) {
            this.f76387b.G(f10);
        } else {
            if (i10 != 512) {
                return;
            }
            this.f76387b.t(f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        q qVarV = q.V(1.0f);
        ArrayList arrayList = (ArrayList) this.f76397l.clone();
        this.f76397l.clear();
        int size = arrayList.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 |= ((c) arrayList.get(i11)).f76402a;
        }
        this.f76399n.put(qVarV, new d(i10, arrayList));
        qVarV.D(this.f76396k);
        qVarV.a(this.f76396k);
        if (this.f76392g) {
            qVarV.n(this.f76391f);
        }
        if (this.f76390e) {
            qVarV.l(this.f76389d);
        }
        if (this.f76394i) {
            qVarV.m(this.f76393h);
        }
        qVarV.r();
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b A(float f10) {
        K(128, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b B(float f10) {
        J(256, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b C(float f10) {
        K(256, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b a(float f10) {
        J(512, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b b(float f10) {
        K(512, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public void d() {
        if (this.f76399n.size() > 0) {
            Iterator it2 = ((HashMap) this.f76399n.clone()).keySet().iterator();
            while (it2.hasNext()) {
                ((com.nineoldandroids.animation.a) it2.next()).cancel();
            }
        }
        this.f76397l.clear();
        View view = this.f76388c.get();
        if (view != null) {
            view.removeCallbacks(this.f76398m);
        }
    }

    @Override // com.nineoldandroids.view.b
    public long e() {
        return this.f76390e ? this.f76389d : new q().e();
    }

    @Override // com.nineoldandroids.view.b
    public long f() {
        if (this.f76392g) {
            return this.f76391f;
        }
        return 0L;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b g(float f10) {
        J(16, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b h(float f10) {
        K(16, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b i(float f10) {
        J(32, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b j(float f10) {
        K(32, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b k(float f10) {
        J(64, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b l(float f10) {
        K(64, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b m(float f10) {
        J(4, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b n(float f10) {
        K(4, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b o(float f10) {
        J(8, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b p(float f10) {
        K(8, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b q(long j10) {
        if (j10 >= 0) {
            this.f76390e = true;
            this.f76389d = j10;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j10);
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b r(Interpolator interpolator) {
        this.f76394i = true;
        this.f76393h = interpolator;
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b s(com.nineoldandroids.animation.a.InterfaceC0985a interfaceC0985a) {
        this.f76395j = interfaceC0985a;
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b t(long j10) {
        if (j10 >= 0) {
            this.f76392g = true;
            this.f76391f = j10;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j10);
    }

    @Override // com.nineoldandroids.view.b
    public void u() {
        O();
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b v(float f10) {
        J(1, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b w(float f10) {
        K(1, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b x(float f10) {
        J(2, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b y(float f10) {
        K(2, f10);
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b z(float f10) {
        J(128, f10);
        return this;
    }
}
