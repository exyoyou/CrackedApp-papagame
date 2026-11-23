package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class y0 extends a {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f25216t = "smhd";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25217u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25218v = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f25219s;

    static {
        s();
    }

    public y0() {
        super(f25216t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SoundMediaHeaderBox.java", y0.class);
        f25217u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBalance", "com.coremedia.iso.boxes.SoundMediaHeaderBox", "", "", "", "float"), 36);
        f25218v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.SoundMediaHeaderBox", "", "", "", "java.lang.String"), 58);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f25219s = com.coremedia.iso.g.e(byteBuffer);
        com.coremedia.iso.g.i(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.c(byteBuffer, this.f25219s);
        com.coremedia.iso.i.f(byteBuffer, 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 8L;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25218v, this, this));
        return "SoundMediaHeaderBox[balance=" + v() + "]";
    }

    public float v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25217u, this, this));
        return this.f25219s;
    }
}
