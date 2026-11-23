package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class k1 extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f24950p = "uuid";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24951q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24952r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24953s = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    byte[] f24954o;

    static {
        s();
    }

    public k1(byte[] bArr) {
        super(f24950p, bArr);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("UserBox.java", k1.class);
        f24951q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.UserBox", "", "", "", "java.lang.String"), 40);
        f24952r = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getData", "com.coremedia.iso.boxes.UserBox", "", "", "", "[B"), 47);
        f24953s = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setData", "com.coremedia.iso.boxes.UserBox", "[B", "data", "", "void"), 51);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        this.f24954o = bArr;
        byteBuffer.get(bArr);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(this.f24954o);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f24954o.length;
    }

    public byte[] t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24952r, this, this));
        return this.f24954o;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24951q, this, this));
        return "UserBox[type=" + getType() + ";userType=" + new String(l()) + ";contentLength=" + this.f24954o.length + "]";
    }

    public void u(byte[] bArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24953s, this, this, bArr));
        this.f24954o = bArr;
    }
}
