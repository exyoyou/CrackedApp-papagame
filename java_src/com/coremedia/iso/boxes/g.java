package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class g extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f24865w = "clsf";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24866x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24867y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24868z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f24869s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f24870t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f24871u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f24872v;

    static {
        s();
    }

    public g() {
        super(f24865w);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("ClassificationBox.java", g.class);
        f24866x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "java.lang.String"), 44);
        f24867y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getClassificationEntity", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "java.lang.String"), 48);
        f24868z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getClassificationTableIndex", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "int"), 52);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getClassificationInfo", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "java.lang.String"), 56);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setClassificationEntity", "com.coremedia.iso.boxes.ClassificationBox", "java.lang.String", "classificationEntity", "", "void"), 60);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setClassificationTableIndex", "com.coremedia.iso.boxes.ClassificationBox", "int", "classificationTableIndex", "", "void"), 64);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.ClassificationBox", "java.lang.String", "language", "", "void"), 68);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setClassificationInfo", "com.coremedia.iso.boxes.ClassificationBox", "java.lang.String", "classificationInfo", "", "void"), 72);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.ClassificationBox", "", "", "", "java.lang.String"), 101);
    }

    public void A(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, str));
        this.f24872v = str;
    }

    public void B(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24870t = i10;
    }

    public void C(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, str));
        this.f24871u = str;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        this.f24869s = com.coremedia.iso.f.s(bArr);
        this.f24870t = com.coremedia.iso.g.i(byteBuffer);
        this.f24871u = com.coremedia.iso.g.f(byteBuffer);
        this.f24872v = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(com.coremedia.iso.f.t(this.f24869s));
        com.coremedia.iso.i.f(byteBuffer, this.f24870t);
        com.coremedia.iso.i.d(byteBuffer, this.f24871u);
        byteBuffer.put(com.coremedia.iso.l.b(this.f24872v));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return com.coremedia.iso.l.c(this.f24872v) + 8 + 1;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return "ClassificationBox[language=" + y() + "classificationEntity=" + v() + ";classificationTableIndex=" + x() + ";language=" + y() + ";classificationInfo=" + w() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24867y, this, this));
        return this.f24869s;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f24872v;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24868z, this, this));
        return this.f24870t;
    }

    public String y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24866x, this, this));
        return this.f24871u;
    }

    public void z(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, str));
        this.f24869s = str;
    }
}
