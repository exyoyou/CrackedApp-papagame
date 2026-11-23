package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class k extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f24934u = "cprt";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24935v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24936w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24937x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24938y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24939z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f24940s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f24941t;

    static {
        s();
    }

    public k() {
        super(f24934u);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("CopyrightBox.java", k.class);
        f24935v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.CopyrightBox", "", "", "", "java.lang.String"), 46);
        f24936w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getCopyright", "com.coremedia.iso.boxes.CopyrightBox", "", "", "", "java.lang.String"), 50);
        f24937x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.CopyrightBox", "java.lang.String", "language", "", "void"), 54);
        f24938y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setCopyright", "com.coremedia.iso.boxes.CopyrightBox", "java.lang.String", "copyright", "", "void"), 58);
        f24939z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.CopyrightBox", "", "", "", "java.lang.String"), 81);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f24940s = com.coremedia.iso.g.f(byteBuffer);
        this.f24941t = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.d(byteBuffer, this.f24940s);
        byteBuffer.put(com.coremedia.iso.l.b(this.f24941t));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return com.coremedia.iso.l.c(this.f24941t) + 7;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24939z, this, this));
        return "CopyrightBox[language=" + w() + ";copyright=" + v() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24936w, this, this));
        return this.f24941t;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24935v, this, this));
        return this.f24940s;
    }

    public void x(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24938y, this, this, str));
        this.f24941t = str;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24937x, this, this, str));
        this.f24940s = str;
    }
}
