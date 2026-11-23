package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class z extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f25220p = "idat";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25221q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25222r = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    ByteBuffer f25223o;

    static {
        s();
    }

    public z() {
        super(f25220p);
        this.f25223o = ByteBuffer.allocate(0);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("ItemDataBox.java", z.class);
        f25221q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getData", "com.coremedia.iso.boxes.ItemDataBox", "", "", "", "java.nio.ByteBuffer"), 19);
        f25222r = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setData", "com.coremedia.iso.boxes.ItemDataBox", "java.nio.ByteBuffer", "data", "", "void"), 23);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f25223o = byteBuffer.slice();
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(this.f25223o);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f25223o.limit();
    }

    public ByteBuffer t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25221q, this, this));
        return this.f25223o;
    }

    public void u(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25222r, this, this, byteBuffer));
        this.f25223o = byteBuffer;
    }
}
