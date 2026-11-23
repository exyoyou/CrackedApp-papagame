package com.googlecode.mp4parser.boxes;

import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class a extends com.googlecode.mp4parser.a {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;
    private static final /* synthetic */ org.aspectj.lang.c.b G = null;
    private static final /* synthetic */ org.aspectj.lang.c.b H = null;
    private static final /* synthetic */ org.aspectj.lang.c.b I = null;
    private static final /* synthetic */ org.aspectj.lang.c.b J = null;
    private static final /* synthetic */ org.aspectj.lang.c.b K = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f33269v = "dac3";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33270w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33271x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33272y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33273z = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f33274o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f33275p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f33276q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f33277r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f33278s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f33279t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f33280u;

    static {
        s();
    }

    public a() {
        super(f33269v);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AC3SpecificBox.java", a.class);
        f33270w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFscod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 55);
        f33271x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setFscod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "fscod", "", "void"), 59);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBitRateCode", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 95);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setBitRateCode", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "bitRateCode", "", "void"), 99);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReserved", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 103);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setReserved", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "reserved", "", "void"), 107);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "java.lang.String"), 112);
        f33272y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBsid", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 63);
        f33273z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setBsid", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "bsid", "", "void"), 67);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBsmod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 71);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setBsmod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "bsmod", "", "void"), 75);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAcmod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 79);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAcmod", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "acmod", "", "void"), 83);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLfeon", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "", "", "", "int"), 87);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLfeon", "com.googlecode.mp4parser.boxes.AC3SpecificBox", "int", "lfeon", "", "void"), 91);
    }

    public void A(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33277r = i10;
    }

    public void B(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33279t = i10;
    }

    public void C(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33273z, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33275p = i10;
    }

    public void D(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33276q = i10;
    }

    public void E(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33271x, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33274o = i10;
    }

    public void F(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33278s = i10;
    }

    public void G(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(J, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33280u = i10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
        this.f33274o = cVar.c(2);
        this.f33275p = cVar.c(5);
        this.f33276q = cVar.c(3);
        this.f33277r = cVar.c(3);
        this.f33278s = cVar.c(1);
        this.f33279t = cVar.c(5);
        this.f33280u = cVar.c(5);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d dVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d(byteBuffer);
        dVar.a(this.f33274o, 2);
        dVar.a(this.f33275p, 5);
        dVar.a(this.f33276q, 3);
        dVar.a(this.f33277r, 3);
        dVar.a(this.f33278s, 1);
        dVar.a(this.f33279t, 5);
        dVar.a(this.f33280u, 5);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 3L;
    }

    public int t() {
        j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f33277r;
    }

    public String toString() {
        j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return "AC3SpecificBox{fscod=" + this.f33274o + ", bsid=" + this.f33275p + ", bsmod=" + this.f33276q + ", acmod=" + this.f33277r + ", lfeon=" + this.f33278s + ", bitRateCode=" + this.f33279t + ", reserved=" + this.f33280u + '}';
    }

    public int u() {
        j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f33279t;
    }

    public int v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33272y, this, this));
        return this.f33275p;
    }

    public int w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f33276q;
    }

    public int x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33270w, this, this));
        return this.f33274o;
    }

    public int y() {
        j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f33278s;
    }

    public int z() {
        j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f33280u;
    }
}
