package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class c extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f24723u = "auth";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24724v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24725w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24726x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24727y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24728z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f24729s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f24730t;

    static {
        s();
    }

    public c() {
        super(f24723u);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AuthorBox.java", c.class);
        f24724v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.AuthorBox", "", "", "", "java.lang.String"), 51);
        f24725w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAuthor", "com.coremedia.iso.boxes.AuthorBox", "", "", "", "java.lang.String"), 60);
        f24726x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.AuthorBox", "java.lang.String", "language", "", "void"), 64);
        f24727y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAuthor", "com.coremedia.iso.boxes.AuthorBox", "java.lang.String", "author", "", "void"), 68);
        f24728z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.AuthorBox", "", "", "", "java.lang.String"), 92);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f24729s = com.coremedia.iso.g.f(byteBuffer);
        this.f24730t = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.d(byteBuffer, this.f24729s);
        byteBuffer.put(com.coremedia.iso.l.b(this.f24730t));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return com.coremedia.iso.l.c(this.f24730t) + 7;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24728z, this, this));
        return "AuthorBox[language=" + w() + ";author=" + v() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24725w, this, this));
        return this.f24730t;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24724v, this, this));
        return this.f24729s;
    }

    public void x(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24727y, this, this, str));
        this.f24730t = str;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24726x, this, this, str));
        this.f24729s = str;
    }
}
