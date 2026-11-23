package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class e extends f {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f24760u = "co64";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24761v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24762w = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private long[] f24763t;

    static {
        s();
    }

    public e() {
        super(f24760u);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("ChunkOffset64BitBox.java", e.class);
        f24761v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getChunkOffsets", "com.coremedia.iso.boxes.ChunkOffset64BitBox", "", "", "", "[J"), 23);
        f24762w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setChunkOffsets", "com.coremedia.iso.boxes.ChunkOffset64BitBox", "[J", "chunkOffsets", "", "void"), 28);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        int iA = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f24763t = new long[iA];
        for (int i10 = 0; i10 < iA; i10++) {
            this.f24763t[i10] = com.coremedia.iso.g.o(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f24763t.length);
        for (long j10 : this.f24763t) {
            com.coremedia.iso.i.l(byteBuffer, j10);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (this.f24763t.length * 8) + 8;
    }

    @Override // com.coremedia.iso.boxes.f
    public long[] v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24761v, this, this));
        return this.f24763t;
    }

    @Override // com.coremedia.iso.boxes.f
    public void w(long[] jArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24762w, this, this, jArr));
        this.f24763t = jArr;
    }
}
