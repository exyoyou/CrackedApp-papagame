package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class n extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f33299q = "©xyz";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f33300r = 5575;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33301s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33302t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33303u = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    String f33304o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f33305p;

    static {
        s();
    }

    public n() {
        super(f33299q);
        this.f33305p = f33300r;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleGPSCoordinatesBox.java", n.class);
        f33301s = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getValue", "com.googlecode.mp4parser.boxes.apple.AppleGPSCoordinatesBox", "", "", "", "java.lang.String"), 22);
        f33302t = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setValue", "com.googlecode.mp4parser.boxes.apple.AppleGPSCoordinatesBox", "java.lang.String", "iso6709String", "", "void"), 26);
        f33303u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.apple.AppleGPSCoordinatesBox", "", "", "", "java.lang.String"), 52);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        int i10 = byteBuffer.getShort();
        this.f33305p = byteBuffer.getShort();
        byte[] bArr = new byte[i10];
        byteBuffer.get(bArr);
        this.f33304o = com.coremedia.iso.l.a(bArr);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.putShort((short) this.f33304o.length());
        byteBuffer.putShort((short) this.f33305p);
        byteBuffer.put(com.coremedia.iso.l.b(this.f33304o));
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return com.coremedia.iso.l.c(this.f33304o) + 4;
    }

    public String t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33301s, this, this));
        return this.f33304o;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33303u, this, this));
        return "AppleGPSCoordinatesBox[" + this.f33304o + "]";
    }

    public void u(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33302t, this, this, str));
        this.f33305p = f33300r;
        this.f33304o = str;
    }
}
