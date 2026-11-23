package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class b extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f24710v = "albm";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24711w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24712x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24713y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24714z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f24715s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f24716t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f24717u;

    static {
        s();
    }

    public b() {
        super(f24710v);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AlbumBox.java", b.class);
        f24711w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.AlbumBox", "", "", "", "java.lang.String"), 51);
        f24712x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAlbumTitle", "com.coremedia.iso.boxes.AlbumBox", "", "", "", "java.lang.String"), 55);
        f24713y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getTrackNumber", "com.coremedia.iso.boxes.AlbumBox", "", "", "", "int"), 59);
        f24714z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.AlbumBox", "java.lang.String", "language", "", "void"), 63);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAlbumTitle", "com.coremedia.iso.boxes.AlbumBox", "java.lang.String", "albumTitle", "", "void"), 67);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTrackNumber", "com.coremedia.iso.boxes.AlbumBox", "int", "trackNumber", "", "void"), 71);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.AlbumBox", "", "", "", "java.lang.String"), 103);
    }

    public void A(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24717u = i10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f24715s = com.coremedia.iso.g.f(byteBuffer);
        this.f24716t = com.coremedia.iso.g.g(byteBuffer);
        if (byteBuffer.remaining() > 0) {
            this.f24717u = com.coremedia.iso.g.p(byteBuffer);
        } else {
            this.f24717u = -1;
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.d(byteBuffer, this.f24715s);
        byteBuffer.put(com.coremedia.iso.l.b(this.f24716t));
        byteBuffer.put((byte) 0);
        int i10 = this.f24717u;
        if (i10 != -1) {
            com.coremedia.iso.i.m(byteBuffer, i10);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return com.coremedia.iso.l.c(this.f24716t) + 6 + 1 + (this.f24717u == -1 ? 0 : 1);
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AlbumBox[language=");
        sb2.append(w());
        sb2.append(";");
        sb2.append("albumTitle=");
        sb2.append(v());
        if (this.f24717u >= 0) {
            sb2.append(";trackNumber=");
            sb2.append(x());
        }
        sb2.append("]");
        return sb2.toString();
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24712x, this, this));
        return this.f24716t;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24711w, this, this));
        return this.f24715s;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24713y, this, this));
        return this.f24717u;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, str));
        this.f24716t = str;
    }

    public void z(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24714z, this, this, str));
        this.f24715s = str;
    }
}
