package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class p extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f25011u = "dscp";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25012v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25013w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25014x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25015y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25016z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f25017s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f25018t;

    static {
        s();
    }

    public p() {
        super(f25011u);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("DescriptionBox.java", p.class);
        f25012v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.DescriptionBox", "", "", "", "java.lang.String"), 40);
        f25013w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDescription", "com.coremedia.iso.boxes.DescriptionBox", "", "", "", "java.lang.String"), 44);
        f25014x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.DescriptionBox", "", "", "", "java.lang.String"), 67);
        f25015y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.DescriptionBox", "java.lang.String", "language", "", "void"), 71);
        f25016z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDescription", "com.coremedia.iso.boxes.DescriptionBox", "java.lang.String", com.xinzhu.overmind.client.hook.proxies.context.providers.b.f89370k, "", "void"), 75);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f25017s = com.coremedia.iso.g.f(byteBuffer);
        this.f25018t = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.d(byteBuffer, this.f25017s);
        byteBuffer.put(com.coremedia.iso.l.b(this.f25018t));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return com.coremedia.iso.l.c(this.f25018t) + 7;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25014x, this, this));
        return "DescriptionBox[language=" + w() + ";description=" + v() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25013w, this, this));
        return this.f25018t;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25012v, this, this));
        return this.f25017s;
    }

    public void x(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25016z, this, this, str));
        this.f25018t = str;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25015y, this, this, str));
        this.f25017s = str;
    }
}
