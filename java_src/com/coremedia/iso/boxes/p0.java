package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class p0 extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f25019w = "rtng";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25020x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25021y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25022z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f25023s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f25024t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f25025u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f25026v;

    static {
        s();
    }

    public p0() {
        super(f25019w);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("RatingBox.java", p0.class);
        f25020x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setRatingEntity", "com.coremedia.iso.boxes.RatingBox", "java.lang.String", "ratingEntity", "", "void"), 46);
        f25021y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setRatingCriteria", "com.coremedia.iso.boxes.RatingBox", "java.lang.String", "ratingCriteria", "", "void"), 50);
        f25022z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.RatingBox", "java.lang.String", "language", "", "void"), 54);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setRatingInfo", "com.coremedia.iso.boxes.RatingBox", "java.lang.String", "ratingInfo", "", "void"), 58);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 62);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getRatingEntity", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 73);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getRatingCriteria", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 83);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getRatingInfo", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 87);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.RatingBox", "", "", "", "java.lang.String"), 115);
    }

    public void A(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25021y, this, this, str));
        this.f25024t = str;
    }

    public void B(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25020x, this, this, str));
        this.f25023s = str;
    }

    public void C(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, str));
        this.f25026v = str;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f25023s = com.coremedia.iso.g.b(byteBuffer);
        this.f25024t = com.coremedia.iso.g.b(byteBuffer);
        this.f25025u = com.coremedia.iso.g.f(byteBuffer);
        this.f25026v = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(com.coremedia.iso.f.t(this.f25023s));
        byteBuffer.put(com.coremedia.iso.f.t(this.f25024t));
        com.coremedia.iso.i.d(byteBuffer, this.f25025u);
        byteBuffer.put(com.coremedia.iso.l.b(this.f25026v));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return com.coremedia.iso.l.c(this.f25026v) + 15;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return "RatingBox[language=" + v() + "ratingEntity=" + x() + ";ratingCriteria=" + w() + ";language=" + v() + ";ratingInfo=" + y() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f25025u;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f25024t;
    }

    public String x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f25023s;
    }

    public String y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f25026v;
    }

    public void z(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25022z, this, this, str));
        this.f25025u = str;
    }
}
