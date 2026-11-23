package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class c1 extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f24739t = "stss";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24740u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24741v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24742w = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long[] f24743s;

    static {
        s();
    }

    public c1() {
        super(f24739t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SyncSampleBox.java", c1.class);
        f24740u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSampleNumber", "com.coremedia.iso.boxes.SyncSampleBox", "", "", "", "[J"), 46);
        f24741v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.SyncSampleBox", "", "", "", "java.lang.String"), 77);
        f24742w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSampleNumber", "com.coremedia.iso.boxes.SyncSampleBox", "[J", "sampleNumber", "", "void"), 81);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int iA = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f24743s = new long[iA];
        for (int i10 = 0; i10 < iA; i10++) {
            this.f24743s[i10] = com.coremedia.iso.g.l(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f24743s.length);
        for (long j10 : this.f24743s) {
            com.coremedia.iso.i.i(byteBuffer, j10);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (this.f24743s.length * 4) + 8;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24741v, this, this));
        return "SyncSampleBox[entryCount=" + this.f24743s.length + "]";
    }

    public long[] v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24740u, this, this));
        return this.f24743s;
    }

    public void w(long[] jArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24742w, this, this, jArr));
        this.f24743s = jArr;
    }
}
