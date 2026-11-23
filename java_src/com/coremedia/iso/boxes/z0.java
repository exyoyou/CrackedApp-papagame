package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class z0 extends f {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f25224u = "stco";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25225v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25226w = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long[] f25227t;

    static {
        s();
    }

    public z0() {
        super(f25224u);
        this.f25227t = new long[0];
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("StaticChunkOffsetBox.java", z0.class);
        f25225v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getChunkOffsets", "com.coremedia.iso.boxes.StaticChunkOffsetBox", "", "", "", "[J"), 39);
        f25226w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setChunkOffsets", "com.coremedia.iso.boxes.StaticChunkOffsetBox", "[J", "chunkOffsets", "", "void"), 48);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int iA = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f25227t = new long[iA];
        for (int i10 = 0; i10 < iA; i10++) {
            this.f25227t[i10] = com.coremedia.iso.g.l(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f25227t.length);
        for (long j10 : this.f25227t) {
            com.coremedia.iso.i.i(byteBuffer, j10);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (this.f25227t.length * 4) + 8;
    }

    @Override // com.coremedia.iso.boxes.f
    public long[] v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25225v, this, this));
        return this.f25227t;
    }

    @Override // com.coremedia.iso.boxes.f
    public void w(long[] jArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25226w, this, this, jArr));
        this.f25227t = jArr;
    }
}
