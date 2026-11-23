package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class r0 extends com.googlecode.mp4parser.a {
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
    private static final /* synthetic */ org.aspectj.lang.c.b L = null;
    private static final /* synthetic */ org.aspectj.lang.c.b M = null;
    private static final /* synthetic */ org.aspectj.lang.c.b N = null;
    private static final /* synthetic */ org.aspectj.lang.c.b O = null;
    private static final /* synthetic */ org.aspectj.lang.c.b P = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f33322x = "text";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33323y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33324z = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f33325o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f33326p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f33327q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f33328r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f33329s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f33330t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f33331u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f33332v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f33333w;

    static {
        s();
    }

    public r0() {
        super("text");
        this.f33325o = 65536;
        this.f33329s = 65536;
        this.f33333w = 1073741824;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("GenericMediaHeaderTextAtom.java", r0.class);
        f33323y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getUnknown_1", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 60);
        f33324z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setUnknown_1", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_1", "", "void"), 64);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getUnknown_6", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 100);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setUnknown_6", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_6", "", "void"), 104);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getUnknown_7", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 108);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setUnknown_7", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_7", "", "void"), 112);
        M = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getUnknown_8", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 116);
        N = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setUnknown_8", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_8", "", "void"), 120);
        O = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getUnknown_9", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 124);
        P = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setUnknown_9", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_9", "", "void"), 128);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getUnknown_2", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 68);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setUnknown_2", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_2", "", "void"), 72);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getUnknown_3", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 76);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setUnknown_3", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_3", "", "void"), 80);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getUnknown_4", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 84);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setUnknown_4", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_4", "", "void"), 88);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getUnknown_5", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "", "", "", "int"), 92);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setUnknown_5", "com.googlecode.mp4parser.boxes.apple.GenericMediaHeaderTextAtom", "int", "unknown_5", "", "void"), 96);
    }

    public int A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(M, this, this));
        return this.f33332v;
    }

    public int B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(O, this, this));
        return this.f33333w;
    }

    public void C(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33324z, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33325o = i10;
    }

    public void D(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33326p = i10;
    }

    public void E(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33327q = i10;
    }

    public void F(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33328r = i10;
    }

    public void G(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33329s = i10;
    }

    public void H(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(J, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33330t = i10;
    }

    public void I(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(L, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33331u = i10;
    }

    public void J(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(N, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33332v = i10;
    }

    public void K(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(P, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33333w = i10;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f33325o = byteBuffer.getInt();
        this.f33326p = byteBuffer.getInt();
        this.f33327q = byteBuffer.getInt();
        this.f33328r = byteBuffer.getInt();
        this.f33329s = byteBuffer.getInt();
        this.f33330t = byteBuffer.getInt();
        this.f33331u = byteBuffer.getInt();
        this.f33332v = byteBuffer.getInt();
        this.f33333w = byteBuffer.getInt();
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.putInt(this.f33325o);
        byteBuffer.putInt(this.f33326p);
        byteBuffer.putInt(this.f33327q);
        byteBuffer.putInt(this.f33328r);
        byteBuffer.putInt(this.f33329s);
        byteBuffer.putInt(this.f33330t);
        byteBuffer.putInt(this.f33331u);
        byteBuffer.putInt(this.f33332v);
        byteBuffer.putInt(this.f33333w);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 36L;
    }

    public int t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33323y, this, this));
        return this.f33325o;
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f33326p;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f33327q;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f33328r;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f33329s;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f33330t;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return this.f33331u;
    }
}
