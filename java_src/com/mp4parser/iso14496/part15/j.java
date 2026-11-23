package com.mp4parser.iso14496.part15;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class j extends com.googlecode.mp4parser.a {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;
    private static final /* synthetic */ org.aspectj.lang.c.b G = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f75688u = "tibr";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75689v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75690w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75691x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75692y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75693z = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    long f75694o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    long f75695p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    long f75696q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    long f75697r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    long f75698s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    long f75699t;

    static {
        s();
    }

    public j() {
        super(f75688u);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TierBitRateBox.java", j.class);
        f75689v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBaseBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", MethodReflectParams.LONG), 52);
        f75690w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setBaseBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", MethodReflectParams.LONG, "baseBitRate", "", "void"), 56);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getTierAvgBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", MethodReflectParams.LONG), 92);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTierAvgBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", MethodReflectParams.LONG, "tierAvgBitRate", "", "void"), 96);
        f75691x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMaxBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", MethodReflectParams.LONG), 60);
        f75692y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMaxBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", MethodReflectParams.LONG, "maxBitRate", "", "void"), 64);
        f75693z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAvgBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", MethodReflectParams.LONG), 68);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAvgBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", MethodReflectParams.LONG, "avgBitRate", "", "void"), 72);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getTierBaseBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", MethodReflectParams.LONG), 76);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTierBaseBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", MethodReflectParams.LONG, "tierBaseBitRate", "", "void"), 80);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getTierMaxBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", "", "", "", MethodReflectParams.LONG), 84);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTierMaxBitRate", "com.mp4parser.iso14496.part15.TierBitRateBox", MethodReflectParams.LONG, "tierMaxBitRate", "", "void"), 88);
    }

    public void A(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f75690w, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f75694o = j10;
    }

    public void B(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f75692y, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f75695p = j10;
    }

    public void C(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f75699t = j10;
    }

    public void D(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f75697r = j10;
    }

    public void E(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f75698s = j10;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f75694o = com.coremedia.iso.g.l(byteBuffer);
        this.f75695p = com.coremedia.iso.g.l(byteBuffer);
        this.f75696q = com.coremedia.iso.g.l(byteBuffer);
        this.f75697r = com.coremedia.iso.g.l(byteBuffer);
        this.f75698s = com.coremedia.iso.g.l(byteBuffer);
        this.f75699t = com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.i(byteBuffer, this.f75694o);
        com.coremedia.iso.i.i(byteBuffer, this.f75695p);
        com.coremedia.iso.i.i(byteBuffer, this.f75696q);
        com.coremedia.iso.i.i(byteBuffer, this.f75697r);
        com.coremedia.iso.i.i(byteBuffer, this.f75698s);
        com.coremedia.iso.i.i(byteBuffer, this.f75699t);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 24L;
    }

    public long t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75693z, this, this));
        return this.f75696q;
    }

    public long u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75689v, this, this));
        return this.f75694o;
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75691x, this, this));
        return this.f75695p;
    }

    public long w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f75699t;
    }

    public long x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f75697r;
    }

    public long y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f75698s;
    }

    public void z(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f75696q = j10;
    }
}
