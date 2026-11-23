package com.coremedia.iso.boxes.apple;

import com.coremedia.iso.i;
import com.facebook.imagepipeline.producers.m;
import com.googlecode.mp4parser.j;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public final class d extends com.googlecode.mp4parser.c {
    public static final String D = "alac";
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
    private static final /* synthetic */ org.aspectj.lang.c.b Q = null;
    private static final /* synthetic */ org.aspectj.lang.c.b R = null;
    private static final /* synthetic */ org.aspectj.lang.c.b S = null;
    private static final /* synthetic */ org.aspectj.lang.c.b T = null;
    private static final /* synthetic */ org.aspectj.lang.c.b U = null;
    private static final /* synthetic */ org.aspectj.lang.c.b V = null;
    private static final /* synthetic */ org.aspectj.lang.c.b W = null;
    private static final /* synthetic */ org.aspectj.lang.c.b X = null;
    private static final /* synthetic */ org.aspectj.lang.c.b Y = null;
    private static final /* synthetic */ org.aspectj.lang.c.b Z = null;
    private long A;
    private long B;
    private long C;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f24699s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f24700t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f24701u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f24702v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f24703w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f24704x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f24705y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f24706z;

    static {
        s();
    }

    public d() {
        super("alac");
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleLosslessSpecificBox.java", d.class);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMaxSamplePerFrame", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", MethodReflectParams.LONG), 34);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMaxSamplePerFrame", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "maxSamplePerFrame", "", "void"), 38);
        O = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getKModifier", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 74);
        P = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setKModifier", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "kModifier", "", "void"), 78);
        Q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getChannels", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 82);
        R = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setChannels", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "channels", "", "void"), 86);
        S = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getUnknown2", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 90);
        T = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setUnknown2", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "unknown2", "", "void"), 94);
        U = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMaxCodedFrameSize", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", MethodReflectParams.LONG), 98);
        V = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMaxCodedFrameSize", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "maxCodedFrameSize", "", "void"), 102);
        W = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBitRate", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", MethodReflectParams.LONG), 106);
        X = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setBitRate", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "bitRate", "", "void"), 110);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getUnknown1", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 42);
        Y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSampleRate", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", MethodReflectParams.LONG), 114);
        Z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSampleRate", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "sampleRate", "", "void"), 118);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setUnknown1", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "unknown1", "", "void"), 46);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSampleSize", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 50);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSampleSize", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", m.f28483v, "", "void"), 54);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getHistoryMult", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 58);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setHistoryMult", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "historyMult", "", "void"), 62);
        M = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getInitialHistory", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "", "", "", "int"), 66);
        N = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setInitialHistory", "com.coremedia.iso.boxes.apple.AppleLosslessSpecificBox", "int", "initialHistory", "", "void"), 70);
    }

    public long A() {
        j.b().c(org.aspectj.runtime.reflect.e.v(U, this, this));
        return this.A;
    }

    public long B() {
        j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f24699s;
    }

    public long C() {
        j.b().c(org.aspectj.runtime.reflect.e.v(Y, this, this));
        return this.C;
    }

    public int D() {
        j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f24701u;
    }

    public int E() {
        j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f24700t;
    }

    public int F() {
        j.b().c(org.aspectj.runtime.reflect.e.v(S, this, this));
        return this.f24706z;
    }

    public void G(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(X, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.B = i10;
    }

    public void H(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(R, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24705y = i10;
    }

    public void I(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(L, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24702v = i10;
    }

    public void J(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(N, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24703w = i10;
    }

    public void K(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(P, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24704x = i10;
    }

    public void L(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(V, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.A = i10;
    }

    public void M(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24699s = i10;
    }

    public void N(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(Z, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.C = i10;
    }

    public void O(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(J, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24701u = i10;
    }

    public void P(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24700t = i10;
    }

    public void Q(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(T, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24706z = i10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f24699s = com.coremedia.iso.g.l(byteBuffer);
        this.f24700t = com.coremedia.iso.g.p(byteBuffer);
        this.f24701u = com.coremedia.iso.g.p(byteBuffer);
        this.f24702v = com.coremedia.iso.g.p(byteBuffer);
        this.f24703w = com.coremedia.iso.g.p(byteBuffer);
        this.f24704x = com.coremedia.iso.g.p(byteBuffer);
        this.f24705y = com.coremedia.iso.g.p(byteBuffer);
        this.f24706z = com.coremedia.iso.g.i(byteBuffer);
        this.A = com.coremedia.iso.g.l(byteBuffer);
        this.B = com.coremedia.iso.g.l(byteBuffer);
        this.C = com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        i.i(byteBuffer, this.f24699s);
        i.m(byteBuffer, this.f24700t);
        i.m(byteBuffer, this.f24701u);
        i.m(byteBuffer, this.f24702v);
        i.m(byteBuffer, this.f24703w);
        i.m(byteBuffer, this.f24704x);
        i.m(byteBuffer, this.f24705y);
        i.f(byteBuffer, this.f24706z);
        i.i(byteBuffer, this.A);
        i.i(byteBuffer, this.B);
        i.i(byteBuffer, this.C);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 28L;
    }

    public long v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(W, this, this));
        return this.B;
    }

    public int w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(Q, this, this));
        return this.f24705y;
    }

    public int x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return this.f24702v;
    }

    public int y() {
        j.b().c(org.aspectj.runtime.reflect.e.v(M, this, this));
        return this.f24703w;
    }

    public int z() {
        j.b().c(org.aspectj.runtime.reflect.e.v(O, this, this));
        return this.f24704x;
    }
}
