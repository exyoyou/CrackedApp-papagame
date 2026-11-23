package com.facebook.rebound;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes9.dex */
public class i {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static int f28835o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final double f28836p = 0.064d;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final double f28837q = 0.001d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private k f28838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f28839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f28840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f28841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f28842e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b f28843f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f28844g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f28845h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f28846i = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private double f28847j = 0.005d;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private double f28848k = 0.005d;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private CopyOnWriteArraySet<m> f28849l = new CopyOnWriteArraySet<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private double f28850m = 0.0d;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final c f28851n;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        double f28852a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        double f28853b;

        private b() {
        }
    }

    i(c cVar) {
        this.f28841d = new b();
        this.f28842e = new b();
        this.f28843f = new b();
        if (cVar == null) {
            throw new IllegalArgumentException("Spring cannot be created outside of a BaseSpringSystem");
        }
        this.f28851n = cVar;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("spring:");
        int i10 = f28835o;
        f28835o = i10 + 1;
        sb2.append(i10);
        this.f28840c = sb2.toString();
        B(k.f28866c);
    }

    private double g(b bVar) {
        return Math.abs(this.f28845h - bVar.f28852a);
    }

    private void o(double d10) {
        b bVar = this.f28841d;
        double d11 = bVar.f28852a * d10;
        b bVar2 = this.f28842e;
        double d12 = 1.0d - d10;
        bVar.f28852a = d11 + (bVar2.f28852a * d12);
        bVar.f28853b = (bVar.f28853b * d10) + (bVar2.f28853b * d12);
    }

    public i A(double d10) {
        this.f28847j = d10;
        return this;
    }

    public i B(k kVar) {
        if (kVar == null) {
            throw new IllegalArgumentException("springConfig is required");
        }
        this.f28838a = kVar;
        return this;
    }

    public i C(double d10) {
        b bVar = this.f28841d;
        if (d10 == bVar.f28853b) {
            return this;
        }
        bVar.f28853b = d10;
        this.f28851n.a(i());
        return this;
    }

    public boolean D() {
        return (p() && E()) ? false : true;
    }

    public boolean E() {
        return this.f28846i;
    }

    public i a(m mVar) {
        if (mVar == null) {
            throw new IllegalArgumentException("newListener is required");
        }
        this.f28849l.add(mVar);
        return this;
    }

    void b(double d10) {
        double d11;
        boolean z10;
        boolean z11;
        boolean zP = p();
        if (zP && this.f28846i) {
            return;
        }
        double d12 = f28836p;
        if (d10 <= f28836p) {
            d12 = d10;
        }
        this.f28850m += d12;
        k kVar = this.f28838a;
        double d13 = kVar.f28868b;
        double d14 = kVar.f28867a;
        b bVar = this.f28841d;
        double d15 = bVar.f28852a;
        double d16 = bVar.f28853b;
        b bVar2 = this.f28843f;
        double d17 = bVar2.f28852a;
        double d18 = bVar2.f28853b;
        while (true) {
            d11 = this.f28850m;
            if (d11 < 0.001d) {
                break;
            }
            double d19 = d11 - 0.001d;
            this.f28850m = d19;
            if (d19 < 0.001d) {
                b bVar3 = this.f28842e;
                bVar3.f28852a = d15;
                bVar3.f28853b = d16;
            }
            double d20 = this.f28845h;
            double d21 = ((d20 - d17) * d13) - (d14 * d16);
            double d22 = d16 + (d21 * 0.001d * 0.5d);
            double d23 = ((d20 - (((d16 * 0.001d) * 0.5d) + d15)) * d13) - (d14 * d22);
            double d24 = d16 + (d23 * 0.001d * 0.5d);
            double d25 = ((d20 - (d15 + ((d22 * 0.001d) * 0.5d))) * d13) - (d14 * d24);
            double d26 = d15 + (d24 * 0.001d);
            double d27 = d16 + (d25 * 0.001d);
            d15 += (d16 + ((d22 + d24) * 2.0d) + d27) * 0.16666666666666666d * 0.001d;
            d16 += (d21 + ((d23 + d25) * 2.0d) + (((d20 - d26) * d13) - (d14 * d27))) * 0.16666666666666666d * 0.001d;
            d17 = d26;
            d18 = d27;
        }
        b bVar4 = this.f28843f;
        bVar4.f28852a = d17;
        bVar4.f28853b = d18;
        b bVar5 = this.f28841d;
        bVar5.f28852a = d15;
        bVar5.f28853b = d16;
        if (d11 > 0.0d) {
            o(d11 / 0.001d);
        }
        boolean z12 = true;
        if (p() || (this.f28839b && r())) {
            if (d13 > 0.0d) {
                double d28 = this.f28845h;
                this.f28844g = d28;
                this.f28841d.f28852a = d28;
            } else {
                double d29 = this.f28841d.f28852a;
                this.f28845h = d29;
                this.f28844g = d29;
            }
            C(0.0d);
            z10 = true;
        } else {
            z10 = zP;
        }
        if (this.f28846i) {
            this.f28846i = false;
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10) {
            this.f28846i = true;
        } else {
            z12 = false;
        }
        for (m mVar : this.f28849l) {
            if (z11) {
                mVar.c(this);
            }
            mVar.a(this);
            if (z12) {
                mVar.d(this);
            }
        }
    }

    public boolean c(double d10) {
        return Math.abs(f() - d10) <= j();
    }

    public void d() {
        this.f28849l.clear();
        this.f28851n.e(this);
    }

    public double e() {
        return g(this.f28841d);
    }

    public double f() {
        return this.f28841d.f28852a;
    }

    public double h() {
        return this.f28845h;
    }

    public String i() {
        return this.f28840c;
    }

    public double j() {
        return this.f28848k;
    }

    public double k() {
        return this.f28847j;
    }

    public k l() {
        return this.f28838a;
    }

    public double m() {
        return this.f28844g;
    }

    public double n() {
        return this.f28841d.f28853b;
    }

    public boolean p() {
        return Math.abs(this.f28841d.f28853b) <= this.f28847j && (g(this.f28841d) <= this.f28848k || this.f28838a.f28868b == 0.0d);
    }

    public boolean q() {
        return this.f28839b;
    }

    public boolean r() {
        return this.f28838a.f28868b > 0.0d && ((this.f28844g < this.f28845h && f() > this.f28845h) || (this.f28844g > this.f28845h && f() < this.f28845h));
    }

    public i s() {
        this.f28849l.clear();
        return this;
    }

    public i t(m mVar) {
        if (mVar == null) {
            throw new IllegalArgumentException("listenerToRemove is required");
        }
        this.f28849l.remove(mVar);
        return this;
    }

    public i u() {
        b bVar = this.f28841d;
        double d10 = bVar.f28852a;
        this.f28845h = d10;
        this.f28843f.f28852a = d10;
        bVar.f28853b = 0.0d;
        return this;
    }

    public i v(double d10) {
        return w(d10, true);
    }

    public i w(double d10, boolean z10) {
        this.f28844g = d10;
        this.f28841d.f28852a = d10;
        this.f28851n.a(i());
        Iterator<m> it2 = this.f28849l.iterator();
        while (it2.hasNext()) {
            it2.next().a(this);
        }
        if (z10) {
            u();
        }
        return this;
    }

    public i x(double d10) {
        if (this.f28845h == d10 && p()) {
            return this;
        }
        this.f28844g = f();
        this.f28845h = d10;
        this.f28851n.a(i());
        Iterator<m> it2 = this.f28849l.iterator();
        while (it2.hasNext()) {
            it2.next().b(this);
        }
        return this;
    }

    public i y(boolean z10) {
        this.f28839b = z10;
        return this;
    }

    public i z(double d10) {
        this.f28848k = d10;
        return this;
    }
}
