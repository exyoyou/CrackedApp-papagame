package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class l0 extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f24957p = "frma";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    static final /* synthetic */ boolean f24958q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24959r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24960s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24961t = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f24962o;

    static {
        s();
    }

    public l0() {
        super(f24957p);
        this.f24962o = "    ";
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("OriginalFormatBox.java", l0.class);
        f24959r = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDataFormat", "com.coremedia.iso.boxes.OriginalFormatBox", "", "", "", "java.lang.String"), 42);
        f24960s = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDataFormat", "com.coremedia.iso.boxes.OriginalFormatBox", "java.lang.String", "dataFormat", "", "void"), 47);
        f24961t = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.OriginalFormatBox", "", "", "", "java.lang.String"), 67);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f24962o = com.coremedia.iso.g.b(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(com.coremedia.iso.f.t(this.f24962o));
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 4L;
    }

    public String t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24959r, this, this));
        return this.f24962o;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24961t, this, this));
        return "OriginalFormatBox[dataFormat=" + t() + "]";
    }

    public void u(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24960s, this, this, str));
        this.f24962o = str;
    }
}
