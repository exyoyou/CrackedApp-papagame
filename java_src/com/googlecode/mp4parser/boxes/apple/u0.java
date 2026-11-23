package com.googlecode.mp4parser.boxes.apple;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class u0 extends com.googlecode.mp4parser.a implements com.coremedia.iso.boxes.sampleentry.f {
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

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f33352w = "tmcd";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33353x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33354y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33355z = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f33356o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f33357p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f33358q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f33359r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f33360s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    long f33361t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f33362u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    byte[] f33363v;

    static {
        s();
    }

    public u0() {
        super(f33352w);
        this.f33363v = new byte[0];
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TimeCodeBox.java", u0.class);
        f33353x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDataReferenceIndex", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 81);
        f33354y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDataReferenceIndex", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "dataReferenceIndex", "", "void"), 85);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setReserved1", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "reserved1", "", "void"), 130);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReserved2", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 134);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setReserved2", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "reserved2", "", "void"), 138);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFlags", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", MethodReflectParams.LONG), 142);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setFlags", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", MethodReflectParams.LONG, "flags", "", "void"), 146);
        M = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getRest", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "[B"), 150);
        N = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setRest", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "[B", "rest", "", "void"), 154);
        f33355z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "java.lang.String"), 91);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getTimeScale", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 102);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTimeScale", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "timeScale", "", "void"), 106);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFrameDuration", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 110);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setFrameDuration", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "frameDuration", "", "void"), 114);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getNumberOfFrames", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 118);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setNumberOfFrames", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "int", "numberOfFrames", "", "void"), 122);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReserved1", "com.googlecode.mp4parser.boxes.apple.TimeCodeBox", "", "", "", "int"), 126);
    }

    public void A(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(L, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f33361t = j10;
    }

    public void B(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33357p = i10;
    }

    public void C(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33358q = i10;
    }

    public void D(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33359r = i10;
    }

    public void E(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(J, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33360s = i10;
    }

    public void F(byte[] bArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(N, this, this, bArr));
        this.f33363v = bArr;
    }

    public void G(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33356o = i10;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        byteBuffer.position(6);
        this.f33362u = com.coremedia.iso.g.i(byteBuffer);
        this.f33359r = byteBuffer.getInt();
        this.f33361t = com.coremedia.iso.g.l(byteBuffer);
        this.f33356o = byteBuffer.getInt();
        this.f33357p = byteBuffer.getInt();
        this.f33358q = com.coremedia.iso.g.p(byteBuffer);
        this.f33360s = com.coremedia.iso.g.k(byteBuffer);
        byte[] bArr = new byte[byteBuffer.remaining()];
        this.f33363v = bArr;
        byteBuffer.get(bArr);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(new byte[6]);
        com.coremedia.iso.i.f(byteBuffer, this.f33362u);
        byteBuffer.putInt(this.f33359r);
        com.coremedia.iso.i.i(byteBuffer, this.f33361t);
        byteBuffer.putInt(this.f33356o);
        byteBuffer.putInt(this.f33357p);
        com.coremedia.iso.i.m(byteBuffer, this.f33358q);
        com.coremedia.iso.i.h(byteBuffer, this.f33360s);
        byteBuffer.put(this.f33363v);
    }

    @Override // com.coremedia.iso.boxes.sampleentry.f
    public int d() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33353x, this, this));
        return this.f33362u;
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f33363v.length + 28;
    }

    @Override // com.coremedia.iso.boxes.sampleentry.f
    public void j(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33354y, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33362u = i10;
    }

    public long t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return this.f33361t;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33355z, this, this));
        return "TimeCodeBox{timeScale=" + this.f33356o + ", frameDuration=" + this.f33357p + ", numberOfFrames=" + this.f33358q + ", reserved1=" + this.f33359r + ", reserved2=" + this.f33360s + ", flags=" + this.f33361t + '}';
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f33357p;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f33358q;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f33359r;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f33360s;
    }

    public byte[] y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(M, this, this));
        return this.f33363v;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f33356o;
    }
}
