package com.nineoldandroids.animation;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class q extends com.nineoldandroids.animation.a {
    static final int A = 2;
    private static ThreadLocal<f> B = new ThreadLocal<>();
    private static final ThreadLocal<ArrayList<q>> C = new a();
    private static final ThreadLocal<ArrayList<q>> D = new b();
    private static final ThreadLocal<ArrayList<q>> E = new c();
    private static final ThreadLocal<ArrayList<q>> F = new d();
    private static final ThreadLocal<ArrayList<q>> G = new e();
    private static final Interpolator H = new AccelerateDecelerateInterpolator();
    private static final p I = new h();
    private static final p J = new com.nineoldandroids.animation.f();
    private static long K = 10;
    public static final int L = 1;
    public static final int M = 2;
    public static final int N = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final long f76289v = 10;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static final int f76290w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final int f76291x = 1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static final int f76292y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    static final int f76293z = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f76294c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f76300i;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    n[] f76311t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    HashMap<String, n> f76312u;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f76295d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f76296e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f76297f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f76298g = 0.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f76299h = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f76301j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f76302k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f76303l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    boolean f76304m = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f76305n = 300;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f76306o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f76307p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f76308q = 1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Interpolator f76309r = H;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ArrayList<g> f76310s = null;

    static class a extends ThreadLocal<ArrayList<q>> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<q> initialValue() {
            return new ArrayList<>();
        }
    }

    static class b extends ThreadLocal<ArrayList<q>> {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<q> initialValue() {
            return new ArrayList<>();
        }
    }

    static class c extends ThreadLocal<ArrayList<q>> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<q> initialValue() {
            return new ArrayList<>();
        }
    }

    static class d extends ThreadLocal<ArrayList<q>> {
        d() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<q> initialValue() {
            return new ArrayList<>();
        }
    }

    static class e extends ThreadLocal<ArrayList<q>> {
        e() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<q> initialValue() {
            return new ArrayList<>();
        }
    }

    private static class f extends Handler {
        private f() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            boolean z10;
            ArrayList arrayList = (ArrayList) q.C.get();
            ArrayList arrayList2 = (ArrayList) q.E.get();
            int i10 = message.what;
            if (i10 == 0) {
                ArrayList arrayList3 = (ArrayList) q.D.get();
                z10 = arrayList.size() <= 0 && arrayList2.size() <= 0;
                while (arrayList3.size() > 0) {
                    ArrayList arrayList4 = (ArrayList) arrayList3.clone();
                    arrayList3.clear();
                    int size = arrayList4.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        q qVar = (q) arrayList4.get(i11);
                        if (qVar.f76306o == 0) {
                            qVar.n0();
                        } else {
                            arrayList2.add(qVar);
                        }
                    }
                }
            } else if (i10 != 1) {
                return;
            } else {
                z10 = true;
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            ArrayList arrayList5 = (ArrayList) q.G.get();
            ArrayList arrayList6 = (ArrayList) q.F.get();
            int size2 = arrayList2.size();
            for (int i12 = 0; i12 < size2; i12++) {
                q qVar2 = (q) arrayList2.get(i12);
                if (qVar2.I(jCurrentAnimationTimeMillis)) {
                    arrayList5.add(qVar2);
                }
            }
            int size3 = arrayList5.size();
            if (size3 > 0) {
                for (int i13 = 0; i13 < size3; i13++) {
                    q qVar3 = (q) arrayList5.get(i13);
                    qVar3.n0();
                    qVar3.f76302k = true;
                    arrayList2.remove(qVar3);
                }
                arrayList5.clear();
            }
            int size4 = arrayList.size();
            int i14 = 0;
            while (i14 < size4) {
                q qVar4 = (q) arrayList.get(i14);
                if (qVar4.F(jCurrentAnimationTimeMillis)) {
                    arrayList6.add(qVar4);
                }
                if (arrayList.size() == size4) {
                    i14++;
                } else {
                    size4--;
                    arrayList6.remove(qVar4);
                }
            }
            if (arrayList6.size() > 0) {
                for (int i15 = 0; i15 < arrayList6.size(); i15++) {
                    ((q) arrayList6.get(i15)).J();
                }
                arrayList6.clear();
            }
            if (z10) {
                if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                    return;
                }
                sendEmptyMessageDelayed(1, Math.max(0L, q.K - (AnimationUtils.currentAnimationTimeMillis() - jCurrentAnimationTimeMillis)));
            }
        }

        /* synthetic */ f(a aVar) {
            this();
        }
    }

    public interface g {
        void a(q qVar);
    }

    public static void G() {
        C.get().clear();
        D.get().clear();
        E.get().clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean I(long j10) {
        if (!this.f76299h) {
            this.f76299h = true;
            this.f76300i = j10;
            return false;
        }
        long j11 = j10 - this.f76300i;
        long j12 = this.f76306o;
        if (j11 <= j12) {
            return false;
        }
        this.f76294c = j10 - (j11 - j12);
        this.f76301j = 1;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        ArrayList<com.nineoldandroids.animation.a.InterfaceC0985a> arrayList;
        C.get().remove(this);
        D.get().remove(this);
        E.get().remove(this);
        this.f76301j = 0;
        if (this.f76302k && (arrayList = this.f76184b) != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size = arrayList2.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((com.nineoldandroids.animation.a.InterfaceC0985a) arrayList2.get(i10)).onAnimationEnd(this);
            }
        }
        this.f76302k = false;
        this.f76303l = false;
    }

    public static int N() {
        return C.get().size();
    }

    public static long P() {
        return K;
    }

    public static q V(float... fArr) {
        q qVar = new q();
        qVar.f0(fArr);
        return qVar;
    }

    public static q W(int... iArr) {
        q qVar = new q();
        qVar.h0(iArr);
        return qVar;
    }

    public static q X(p pVar, Object... objArr) {
        q qVar = new q();
        qVar.i0(objArr);
        qVar.e0(pVar);
        return qVar;
    }

    public static q Y(n... nVarArr) {
        q qVar = new q();
        qVar.l0(nVarArr);
        return qVar;
    }

    public static void g0(long j10) {
        K = j10;
    }

    private void m0(boolean z10) {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        this.f76296e = z10;
        this.f76297f = 0;
        this.f76301j = 0;
        this.f76303l = true;
        this.f76299h = false;
        D.get().add(this);
        if (this.f76306o == 0) {
            c0(O());
            this.f76301j = 0;
            this.f76302k = true;
            ArrayList<com.nineoldandroids.animation.a.InterfaceC0985a> arrayList = this.f76184b;
            if (arrayList != null) {
                ArrayList arrayList2 = (ArrayList) arrayList.clone();
                int size = arrayList2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((com.nineoldandroids.animation.a.InterfaceC0985a) arrayList2.get(i10)).onAnimationStart(this);
                }
            }
        }
        f fVar = B.get();
        if (fVar == null) {
            fVar = new f(null);
            B.set(fVar);
        }
        fVar.sendEmptyMessage(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0() {
        ArrayList<com.nineoldandroids.animation.a.InterfaceC0985a> arrayList;
        U();
        C.get().add(this);
        if (this.f76306o <= 0 || (arrayList = this.f76184b) == null) {
            return;
        }
        ArrayList arrayList2 = (ArrayList) arrayList.clone();
        int size = arrayList2.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((com.nineoldandroids.animation.a.InterfaceC0985a) arrayList2.get(i10)).onAnimationStart(this);
        }
    }

    public void D(g gVar) {
        if (this.f76310s == null) {
            this.f76310s = new ArrayList<>();
        }
        this.f76310s.add(gVar);
    }

    void E(float f10) {
        float interpolation = this.f76309r.getInterpolation(f10);
        this.f76298g = interpolation;
        int length = this.f76311t.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f76311t[i10].a(interpolation);
        }
        ArrayList<g> arrayList = this.f76310s;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i11 = 0; i11 < size; i11++) {
                this.f76310s.get(i11).a(this);
            }
        }
    }

    boolean F(long j10) {
        boolean z10 = true;
        if (this.f76301j == 0) {
            this.f76301j = 1;
            long j11 = this.f76295d;
            if (j11 < 0) {
                this.f76294c = j10;
            } else {
                this.f76294c = j10 - j11;
                this.f76295d = -1L;
            }
        }
        int i10 = this.f76301j;
        if (i10 != 1 && i10 != 2) {
            return false;
        }
        long j12 = this.f76305n;
        float fMin = j12 > 0 ? (j10 - this.f76294c) / j12 : 1.0f;
        if (fMin >= 1.0f) {
            int i11 = this.f76297f;
            int i12 = this.f76307p;
            if (i11 < i12 || i12 == -1) {
                ArrayList<com.nineoldandroids.animation.a.InterfaceC0985a> arrayList = this.f76184b;
                if (arrayList != null) {
                    int size = arrayList.size();
                    for (int i13 = 0; i13 < size; i13++) {
                        this.f76184b.get(i13).onAnimationRepeat(this);
                    }
                }
                if (this.f76308q == 2) {
                    this.f76296e = !this.f76296e;
                }
                this.f76297f += (int) fMin;
                fMin %= 1.0f;
                this.f76294c += this.f76305n;
                z10 = false;
            } else {
                fMin = Math.min(fMin, 1.0f);
            }
        } else {
            z10 = false;
        }
        if (this.f76296e) {
            fMin = 1.0f - fMin;
        }
        E(fMin);
        return z10;
    }

    @Override // com.nineoldandroids.animation.a
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public q clone() {
        q qVar = (q) super.clone();
        ArrayList<g> arrayList = this.f76310s;
        if (arrayList != null) {
            qVar.f76310s = new ArrayList<>();
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                qVar.f76310s.add(arrayList.get(i10));
            }
        }
        qVar.f76295d = -1L;
        qVar.f76296e = false;
        qVar.f76297f = 0;
        qVar.f76304m = false;
        qVar.f76301j = 0;
        qVar.f76299h = false;
        n[] nVarArr = this.f76311t;
        if (nVarArr != null) {
            int length = nVarArr.length;
            qVar.f76311t = new n[length];
            qVar.f76312u = new HashMap<>(length);
            for (int i11 = 0; i11 < length; i11++) {
                n nVarClone = nVarArr[i11].clone();
                qVar.f76311t[i11] = nVarClone;
                qVar.f76312u.put(nVarClone.g(), nVarClone);
            }
        }
        return qVar;
    }

    public float K() {
        return this.f76298g;
    }

    public Object L() {
        n[] nVarArr = this.f76311t;
        if (nVarArr == null || nVarArr.length <= 0) {
            return null;
        }
        return nVarArr[0].d();
    }

    public Object M(String str) {
        n nVar = this.f76312u.get(str);
        if (nVar != null) {
            return nVar.d();
        }
        return null;
    }

    public long O() {
        if (!this.f76304m || this.f76301j == 0) {
            return 0L;
        }
        return AnimationUtils.currentAnimationTimeMillis() - this.f76294c;
    }

    public Interpolator Q() {
        return this.f76309r;
    }

    public int R() {
        return this.f76307p;
    }

    public int S() {
        return this.f76308q;
    }

    public n[] T() {
        return this.f76311t;
    }

    void U() {
        if (this.f76304m) {
            return;
        }
        int length = this.f76311t.length;
        for (int i10 = 0; i10 < length; i10++) {
            this.f76311t[i10].h();
        }
        this.f76304m = true;
    }

    public void Z() {
        ArrayList<g> arrayList = this.f76310s;
        if (arrayList == null) {
            return;
        }
        arrayList.clear();
        this.f76310s = null;
    }

    public void a0(g gVar) {
        ArrayList<g> arrayList = this.f76310s;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(gVar);
        if (this.f76310s.size() == 0) {
            this.f76310s = null;
        }
    }

    public void b0() {
        this.f76296e = !this.f76296e;
        if (this.f76301j != 1) {
            m0(true);
            return;
        }
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        this.f76294c = jCurrentAnimationTimeMillis - (this.f76305n - (jCurrentAnimationTimeMillis - this.f76294c));
    }

    public void c0(long j10) {
        U();
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.f76301j != 1) {
            this.f76295d = j10;
            this.f76301j = 2;
        }
        this.f76294c = jCurrentAnimationTimeMillis - j10;
        F(jCurrentAnimationTimeMillis);
    }

    @Override // com.nineoldandroids.animation.a
    public void cancel() {
        ArrayList<com.nineoldandroids.animation.a.InterfaceC0985a> arrayList;
        if (this.f76301j != 0 || D.get().contains(this) || E.get().contains(this)) {
            if (this.f76302k && (arrayList = this.f76184b) != null) {
                Iterator it2 = ((ArrayList) arrayList.clone()).iterator();
                while (it2.hasNext()) {
                    ((com.nineoldandroids.animation.a.InterfaceC0985a) it2.next()).onAnimationCancel(this);
                }
            }
            J();
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void d() {
        if (!C.get().contains(this) && !D.get().contains(this)) {
            this.f76299h = false;
            n0();
        } else if (!this.f76304m) {
            U();
        }
        int i10 = this.f76307p;
        if (i10 <= 0 || (i10 & 1) != 1) {
            E(1.0f);
        } else {
            E(0.0f);
        }
        J();
    }

    @Override // com.nineoldandroids.animation.a
    /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
    public q l(long j10) {
        if (j10 >= 0) {
            this.f76305n = j10;
            return this;
        }
        throw new IllegalArgumentException("Animators cannot have negative duration: " + j10);
    }

    @Override // com.nineoldandroids.animation.a
    public long e() {
        return this.f76305n;
    }

    public void e0(p pVar) {
        n[] nVarArr;
        if (pVar == null || (nVarArr = this.f76311t) == null || nVarArr.length <= 0) {
            return;
        }
        nVarArr[0].r(pVar);
    }

    public void f0(float... fArr) {
        if (fArr == null || fArr.length == 0) {
            return;
        }
        n[] nVarArr = this.f76311t;
        if (nVarArr == null || nVarArr.length == 0) {
            l0(n.j("", fArr));
        } else {
            nVarArr[0].s(fArr);
        }
        this.f76304m = false;
    }

    @Override // com.nineoldandroids.animation.a
    public long g() {
        return this.f76306o;
    }

    @Override // com.nineoldandroids.animation.a
    public boolean h() {
        return this.f76301j == 1 || this.f76302k;
    }

    public void h0(int... iArr) {
        if (iArr == null || iArr.length == 0) {
            return;
        }
        n[] nVarArr = this.f76311t;
        if (nVarArr == null || nVarArr.length == 0) {
            l0(n.l("", iArr));
        } else {
            nVarArr[0].t(iArr);
        }
        this.f76304m = false;
    }

    @Override // com.nineoldandroids.animation.a
    public boolean i() {
        return this.f76303l;
    }

    public void i0(Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return;
        }
        n[] nVarArr = this.f76311t;
        if (nVarArr == null || nVarArr.length == 0) {
            l0(n.p("", null, objArr));
        } else {
            nVarArr[0].v(objArr);
        }
        this.f76304m = false;
    }

    public void j0(int i10) {
        this.f76307p = i10;
    }

    public void k0(int i10) {
        this.f76308q = i10;
    }

    public void l0(n... nVarArr) {
        int length = nVarArr.length;
        this.f76311t = nVarArr;
        this.f76312u = new HashMap<>(length);
        for (n nVar : nVarArr) {
            this.f76312u.put(nVar.g(), nVar);
        }
        this.f76304m = false;
    }

    @Override // com.nineoldandroids.animation.a
    public void m(Interpolator interpolator) {
        if (interpolator != null) {
            this.f76309r = interpolator;
        } else {
            this.f76309r = new LinearInterpolator();
        }
    }

    @Override // com.nineoldandroids.animation.a
    public void n(long j10) {
        this.f76306o = j10;
    }

    @Override // com.nineoldandroids.animation.a
    public void r() {
        m0(false);
    }

    public String toString() {
        String str = "ValueAnimator@" + Integer.toHexString(hashCode());
        if (this.f76311t != null) {
            for (int i10 = 0; i10 < this.f76311t.length; i10++) {
                str = str + "\n    " + this.f76311t[i10].toString();
            }
        }
        return str;
    }
}
