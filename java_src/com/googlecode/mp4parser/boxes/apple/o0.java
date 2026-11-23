package com.googlecode.mp4parser.boxes.apple;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class o0 extends com.googlecode.mp4parser.c {
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

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f33306y = "gmin";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33307z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    short f33308s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f33309t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f33310u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f33311v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    short f33312w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    short f33313x;

    static {
        s();
    }

    public o0() {
        super(f33306y);
        this.f33308s = (short) 64;
        this.f33309t = 32768;
        this.f33310u = 32768;
        this.f33311v = 32768;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("BaseMediaInfoAtom.java", o0.class);
        f33307z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getGraphicsMode", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", MethodReflectParams.SHORT), 54);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setGraphicsMode", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", MethodReflectParams.SHORT, "graphicsMode", "", "void"), 58);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReserved", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", MethodReflectParams.SHORT), 94);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setReserved", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", MethodReflectParams.SHORT, "reserved", "", "void"), 98);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "java.lang.String"), 103);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getOpColorR", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "int"), 62);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setOpColorR", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "int", "opColorR", "", "void"), 66);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getOpColorG", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "int"), 70);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setOpColorG", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "int", "opColorG", "", "void"), 74);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getOpColorB", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", "int"), 78);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setOpColorB", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "int", "opColorB", "", "void"), 82);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBalance", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", "", "", "", MethodReflectParams.SHORT), 86);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setBalance", "com.googlecode.mp4parser.boxes.apple.BaseMediaInfoAtom", MethodReflectParams.SHORT, "balance", "", "void"), 90);
    }

    public short A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return this.f33313x;
    }

    public void B(short s10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(I, this, this, org.aspectj.runtime.internal.e.o(s10)));
        this.f33312w = s10;
    }

    public void C(short s10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.o(s10)));
        this.f33308s = s10;
    }

    public void D(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33311v = i10;
    }

    public void E(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33310u = i10;
    }

    public void F(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33309t = i10;
    }

    public void G(short s10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(K, this, this, org.aspectj.runtime.internal.e.o(s10)));
        this.f33313x = s10;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f33308s = byteBuffer.getShort();
        this.f33309t = com.coremedia.iso.g.i(byteBuffer);
        this.f33310u = com.coremedia.iso.g.i(byteBuffer);
        this.f33311v = com.coremedia.iso.g.i(byteBuffer);
        this.f33312w = byteBuffer.getShort();
        this.f33313x = byteBuffer.getShort();
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.putShort(this.f33308s);
        com.coremedia.iso.i.f(byteBuffer, this.f33309t);
        com.coremedia.iso.i.f(byteBuffer, this.f33310u);
        com.coremedia.iso.i.f(byteBuffer, this.f33311v);
        byteBuffer.putShort(this.f33312w);
        byteBuffer.putShort(this.f33313x);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 16L;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return "BaseMediaInfoAtom{graphicsMode=" + ((int) this.f33308s) + ", opColorR=" + this.f33309t + ", opColorG=" + this.f33310u + ", opColorB=" + this.f33311v + ", balance=" + ((int) this.f33312w) + ", reserved=" + ((int) this.f33313x) + '}';
    }

    public short v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f33312w;
    }

    public short w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33307z, this, this));
        return this.f33308s;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f33311v;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f33310u;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f33309t;
    }
}
