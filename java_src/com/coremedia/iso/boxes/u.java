package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class u extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f25143p = "skip";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25144q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25145r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25146s = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    byte[] f25147o;

    static {
        s();
    }

    public u() {
        super("skip");
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("FreeSpaceBox.java", u.class);
        f25144q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setData", "com.coremedia.iso.boxes.FreeSpaceBox", "[B", "data", "", "void"), 42);
        f25145r = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getData", "com.coremedia.iso.boxes.FreeSpaceBox", "", "", "", "[B"), 46);
        f25146s = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.FreeSpaceBox", "", "", "", "java.lang.String"), 61);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        this.f25147o = bArr;
        byteBuffer.get(bArr);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(this.f25147o);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f25147o.length;
    }

    public byte[] t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25145r, this, this));
        return this.f25147o;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25146s, this, this));
        return "FreeSpaceBox[size=" + this.f25147o.length + ";type=" + getType() + "]";
    }

    public void u(byte[] bArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25144q, this, this, bArr));
        this.f25147o = bArr;
    }
}
