package com.nineoldandroids.view;

import android.view.View;
import android.view.animation.Interpolator;
import com.nineoldandroids.animation.q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
class c extends com.nineoldandroids.view.b {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f76340n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f76341o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f76342p = 2;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f76343q = 4;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f76344r = 8;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f76345s = 16;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f76346t = 32;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f76347u = 64;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f76348v = 128;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f76349w = 256;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f76350x = 512;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f76351y = 511;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference<View> f76352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f76353c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Interpolator f76357g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f76354d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f76355e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f76356f = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f76358h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.nineoldandroids.animation.a.InterfaceC0985a f76359i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private b f76360j = new b(this, null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    ArrayList<C0989c> f76361k = new ArrayList<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Runnable f76362l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private HashMap<com.nineoldandroids.animation.a, d> f76363m = new HashMap<>();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.O();
        }
    }

    private class b implements com.nineoldandroids.animation.a.InterfaceC0985a, q.g {
        private b() {
        }

        @Override // com.nineoldandroids.animation.q.g
        public void a(q qVar) {
            View view;
            float fK = qVar.K();
            d dVar = (d) c.this.f76363m.get(qVar);
            if ((dVar.f76369a & 511) != 0 && (view = (View) c.this.f76352b.get()) != null) {
                view.invalidate();
            }
            ArrayList<C0989c> arrayList = dVar.f76370b;
            if (arrayList != null) {
                int size = arrayList.size();
                for (int i10 = 0; i10 < size; i10++) {
                    C0989c c0989c = arrayList.get(i10);
                    c.this.N(c0989c.f76366a, c0989c.f76367b + (c0989c.f76368c * fK));
                }
            }
            View view2 = (View) c.this.f76352b.get();
            if (view2 != null) {
                view2.invalidate();
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationCancel(com.nineoldandroids.animation.a aVar) {
            if (c.this.f76359i != null) {
                c.this.f76359i.onAnimationCancel(aVar);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationEnd(com.nineoldandroids.animation.a aVar) {
            if (c.this.f76359i != null) {
                c.this.f76359i.onAnimationEnd(aVar);
            }
            c.this.f76363m.remove(aVar);
            if (c.this.f76363m.isEmpty()) {
                c.this.f76359i = null;
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationRepeat(com.nineoldandroids.animation.a aVar) {
            if (c.this.f76359i != null) {
                c.this.f76359i.onAnimationRepeat(aVar);
            }
        }

        @Override // com.nineoldandroids.animation.a.InterfaceC0985a
        public void onAnimationStart(com.nineoldandroids.animation.a aVar) {
            if (c.this.f76359i != null) {
                c.this.f76359i.onAnimationStart(aVar);
            }
        }

        /* synthetic */ b(c cVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.nineoldandroids.view.c$c, reason: collision with other inner class name */
    private static class C0989c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f76366a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f76367b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f76368c;

        C0989c(int i10, float f10, float f11) {
            this.f76366a = i10;
            this.f76367b = f10;
            this.f76368c = f11;
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f76369a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ArrayList<C0989c> f76370b;

        d(int i10, ArrayList<C0989c> arrayList) {
            this.f76369a = i10;
            this.f76370b = arrayList;
        }

        boolean a(int i10) {
            ArrayList<C0989c> arrayList;
            if ((this.f76369a & i10) != 0 && (arrayList = this.f76370b) != null) {
                int size = arrayList.size();
                for (int i11 = 0; i11 < size; i11++) {
                    if (this.f76370b.get(i11).f76366a == i10) {
                        this.f76370b.remove(i11);
                        this.f76369a = (~i10) & this.f76369a;
                        return true;
                    }
                }
            }
            return false;
        }
    }

    c(View view) {
        this.f76352b = new WeakReference<>(view);
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
        if (this.f76363m.size() > 0) {
            Iterator<com.nineoldandroids.animation.a> it2 = this.f76363m.keySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                d dVar = this.f76363m.get(next);
                if (dVar.a(i10) && dVar.f76369a == 0) {
                    break;
                }
            }
            if (next != null) {
                next.cancel();
            }
        }
        this.f76361k.add(new C0989c(i10, f10, f11));
        View view = this.f76352b.get();
        if (view != null) {
            view.removeCallbacks(this.f76362l);
            view.post(this.f76362l);
        }
    }

    private float M(int i10) {
        View view = this.f76352b.get();
        if (view == null) {
            return 0.0f;
        }
        if (i10 == 1) {
            return view.getTranslationX();
        }
        if (i10 == 2) {
            return view.getTranslationY();
        }
        if (i10 == 4) {
            return view.getScaleX();
        }
        if (i10 == 8) {
            return view.getScaleY();
        }
        if (i10 == 16) {
            return view.getRotation();
        }
        if (i10 == 32) {
            return view.getRotationX();
        }
        if (i10 == 64) {
            return view.getRotationY();
        }
        if (i10 == 128) {
            return view.getX();
        }
        if (i10 == 256) {
            return view.getY();
        }
        if (i10 != 512) {
            return 0.0f;
        }
        return view.getAlpha();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N(int i10, float f10) {
        View view = this.f76352b.get();
        if (view != null) {
            if (i10 == 1) {
                view.setTranslationX(f10);
                return;
            }
            if (i10 == 2) {
                view.setTranslationY(f10);
                return;
            }
            if (i10 == 4) {
                view.setScaleX(f10);
                return;
            }
            if (i10 == 8) {
                view.setScaleY(f10);
                return;
            }
            if (i10 == 16) {
                view.setRotation(f10);
                return;
            }
            if (i10 == 32) {
                view.setRotationX(f10);
                return;
            }
            if (i10 == 64) {
                view.setRotationY(f10);
                return;
            }
            if (i10 == 128) {
                view.setX(f10);
            } else if (i10 == 256) {
                view.setY(f10);
            } else {
                if (i10 != 512) {
                    return;
                }
                view.setAlpha(f10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O() {
        q qVarV = q.V(1.0f);
        ArrayList arrayList = (ArrayList) this.f76361k.clone();
        this.f76361k.clear();
        int size = arrayList.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 |= ((C0989c) arrayList.get(i11)).f76366a;
        }
        this.f76363m.put(qVarV, new d(i10, arrayList));
        qVarV.D(this.f76360j);
        qVarV.a(this.f76360j);
        if (this.f76356f) {
            qVarV.n(this.f76355e);
        }
        if (this.f76354d) {
            qVarV.l(this.f76353c);
        }
        if (this.f76358h) {
            qVarV.m(this.f76357g);
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
        if (this.f76363m.size() > 0) {
            Iterator it2 = ((HashMap) this.f76363m.clone()).keySet().iterator();
            while (it2.hasNext()) {
                ((com.nineoldandroids.animation.a) it2.next()).cancel();
            }
        }
        this.f76361k.clear();
        View view = this.f76352b.get();
        if (view != null) {
            view.removeCallbacks(this.f76362l);
        }
    }

    @Override // com.nineoldandroids.view.b
    public long e() {
        return this.f76354d ? this.f76353c : new q().e();
    }

    @Override // com.nineoldandroids.view.b
    public long f() {
        if (this.f76356f) {
            return this.f76355e;
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
            this.f76354d = true;
            this.f76353c = j10;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j10);
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b r(Interpolator interpolator) {
        this.f76358h = true;
        this.f76357g = interpolator;
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b s(com.nineoldandroids.animation.a.InterfaceC0985a interfaceC0985a) {
        this.f76359i = interfaceC0985a;
        return this;
    }

    @Override // com.nineoldandroids.view.b
    public com.nineoldandroids.view.b t(long j10) {
        if (j10 >= 0) {
            this.f76356f = true;
            this.f76355e = j10;
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
