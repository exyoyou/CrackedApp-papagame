package com.coremedia.iso.boxes;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class t0 extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f25127v = "stsz";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25128w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25129x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25130y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25131z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f25132s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long[] f25133t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f25134u;

    static {
        s();
    }

    public t0() {
        super(f25127v);
        this.f25133t = new long[0];
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SampleSizeBox.java", t0.class);
        f25128w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSampleSize", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", MethodReflectParams.LONG), 50);
        f25129x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSampleSize", "com.coremedia.iso.boxes.SampleSizeBox", MethodReflectParams.LONG, com.facebook.imagepipeline.producers.m.f28483v, "", "void"), 54);
        f25130y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSampleSizeAtIndex", "com.coremedia.iso.boxes.SampleSizeBox", "int", "index", "", MethodReflectParams.LONG), 59);
        f25131z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSampleCount", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", MethodReflectParams.LONG), 67);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSampleSizes", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "[J"), 76);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSampleSizes", "com.coremedia.iso.boxes.SampleSizeBox", "[J", "sampleSizes", "", "void"), 80);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.SampleSizeBox", "", "", "", "java.lang.String"), 119);
    }

    public void A(long[] jArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, jArr));
        this.f25133t = jArr;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f25132s = com.coremedia.iso.g.l(byteBuffer);
        int iA = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f25134u = iA;
        if (this.f25132s == 0) {
            this.f25133t = new long[iA];
            for (int i10 = 0; i10 < this.f25134u; i10++) {
                this.f25133t[i10] = com.coremedia.iso.g.l(byteBuffer);
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f25132s);
        if (this.f25132s != 0) {
            com.coremedia.iso.i.i(byteBuffer, this.f25134u);
            return;
        }
        com.coremedia.iso.i.i(byteBuffer, this.f25133t.length);
        for (long j10 : this.f25133t) {
            com.coremedia.iso.i.i(byteBuffer, j10);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (this.f25132s == 0 ? this.f25133t.length * 4 : 0) + 12;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return "SampleSizeBox[sampleSize=" + w() + ";sampleCount=" + v() + "]";
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25131z, this, this));
        return this.f25132s > 0 ? this.f25134u : this.f25133t.length;
    }

    public long w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25128w, this, this));
        return this.f25132s;
    }

    public long x(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25130y, this, this, org.aspectj.runtime.internal.e.k(i10)));
        long j10 = this.f25132s;
        return j10 > 0 ? j10 : this.f25133t[i10];
    }

    public long[] y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f25133t;
    }

    public void z(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25129x, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f25132s = j10;
    }
}
