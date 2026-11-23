package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class j1 extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24931p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24932q = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ByteBuffer f24933o;

    static {
        s();
    }

    public j1(String str) {
        super(str);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("UnknownBox.java", j1.class);
        f24931p = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getData", "com.coremedia.iso.boxes.UnknownBox", "", "", "", "java.nio.ByteBuffer"), 52);
        f24932q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setData", "com.coremedia.iso.boxes.UnknownBox", "java.nio.ByteBuffer", "data", "", "void"), 56);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f24933o = byteBuffer;
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        this.f24933o.rewind();
        byteBuffer.put(this.f24933o);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f24933o.limit();
    }

    public ByteBuffer t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24931p, this, this));
        return this.f24933o;
    }

    public void u(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24932q, this, this, byteBuffer));
        this.f24933o = byteBuffer;
    }
}
