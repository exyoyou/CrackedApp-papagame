package com.mp4parser.iso14496.part15;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class k extends com.googlecode.mp4parser.a {
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
    private static final /* synthetic */ org.aspectj.lang.c.b Q = null;
    private static final /* synthetic */ org.aspectj.lang.c.b R = null;
    private static final /* synthetic */ org.aspectj.lang.c.b S = null;
    private static final /* synthetic */ org.aspectj.lang.c.b T = null;
    private static final /* synthetic */ org.aspectj.lang.c.b U = null;
    private static final /* synthetic */ org.aspectj.lang.c.b V = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String f75700z = "tiri";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f75701o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f75702p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f75703q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f75704r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f75705s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f75706t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f75707u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f75708v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f75709w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    int f75710x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    int f75711y;

    static {
        s();
    }

    public k() {
        super(f75700z);
        this.f75705s = 0;
        this.f75710x = 0;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TierInfoBox.java", k.class);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getTierID", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 69);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTierID", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "tierID", "", "void"), 73);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getVisualWidth", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 109);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setVisualWidth", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "visualWidth", "", "void"), 113);
        M = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getVisualHeight", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 117);
        N = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setVisualHeight", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "visualHeight", "", "void"), 121);
        O = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDiscardable", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 125);
        P = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDiscardable", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "discardable", "", "void"), 129);
        Q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getConstantFrameRate", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 133);
        R = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setConstantFrameRate", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "constantFrameRate", "", "void"), 137);
        S = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReserved2", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 141);
        T = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setReserved2", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "reserved2", "", "void"), 145);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getProfileIndication", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 77);
        U = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFrameRate", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 149);
        V = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setFrameRate", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "frameRate", "", "void"), 153);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setProfileIndication", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "profileIndication", "", "void"), 81);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getProfile_compatibility", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 85);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setProfile_compatibility", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "profile_compatibility", "", "void"), 89);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLevelIndication", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 93);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLevelIndication", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "levelIndication", "", "void"), 97);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReserved1", "com.mp4parser.iso14496.part15.TierInfoBox", "", "", "", "int"), 101);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setReserved1", "com.mp4parser.iso14496.part15.TierInfoBox", "int", "reserved1", "", "void"), 105);
    }

    public int A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(S, this, this));
        return this.f75710x;
    }

    public int B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f75701o;
    }

    public int C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(M, this, this));
        return this.f75707u;
    }

    public int D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return this.f75706t;
    }

    public void E(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(R, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75709w = i10;
    }

    public void F(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(P, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75708v = i10;
    }

    public void G(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(V, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75711y = i10;
    }

    public void H(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75704r = i10;
    }

    public void I(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75702p = i10;
    }

    public void J(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75703q = i10;
    }

    public void K(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(J, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75705s = i10;
    }

    public void L(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(T, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75710x = i10;
    }

    public void M(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75701o = i10;
    }

    public void N(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(N, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75707u = i10;
    }

    public void O(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(L, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75706t = i10;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f75701o = com.coremedia.iso.g.i(byteBuffer);
        this.f75702p = com.coremedia.iso.g.p(byteBuffer);
        this.f75703q = com.coremedia.iso.g.p(byteBuffer);
        this.f75704r = com.coremedia.iso.g.p(byteBuffer);
        this.f75705s = com.coremedia.iso.g.p(byteBuffer);
        this.f75706t = com.coremedia.iso.g.i(byteBuffer);
        this.f75707u = com.coremedia.iso.g.i(byteBuffer);
        int iP = com.coremedia.iso.g.p(byteBuffer);
        this.f75708v = (iP & 192) >> 6;
        this.f75709w = (iP & 48) >> 4;
        this.f75710x = iP & 15;
        this.f75711y = com.coremedia.iso.g.i(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.f(byteBuffer, this.f75701o);
        com.coremedia.iso.i.m(byteBuffer, this.f75702p);
        com.coremedia.iso.i.m(byteBuffer, this.f75703q);
        com.coremedia.iso.i.m(byteBuffer, this.f75704r);
        com.coremedia.iso.i.m(byteBuffer, this.f75705s);
        com.coremedia.iso.i.f(byteBuffer, this.f75706t);
        com.coremedia.iso.i.f(byteBuffer, this.f75707u);
        com.coremedia.iso.i.m(byteBuffer, (this.f75708v << 6) + (this.f75709w << 4) + this.f75710x);
        com.coremedia.iso.i.f(byteBuffer, this.f75711y);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 13L;
    }

    public int t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(Q, this, this));
        return this.f75709w;
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(O, this, this));
        return this.f75708v;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(U, this, this));
        return this.f75711y;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f75704r;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f75702p;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f75703q;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f75705s;
    }
}
