package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class n1 extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f25002t = "xml ";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25003u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25004v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25005w = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    String f25006s;

    static {
        s();
    }

    public n1() {
        super(f25002t);
        this.f25006s = "";
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("XmlBox.java", n1.class);
        f25003u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getXml", "com.coremedia.iso.boxes.XmlBox", "", "", "", "java.lang.String"), 20);
        f25004v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setXml", "com.coremedia.iso.boxes.XmlBox", "java.lang.String", "xml", "", "void"), 24);
        f25005w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.XmlBox", "", "", "", "java.lang.String"), 46);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f25006s = com.coremedia.iso.g.h(byteBuffer, byteBuffer.remaining());
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(com.coremedia.iso.l.b(this.f25006s));
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return com.coremedia.iso.l.c(this.f25006s) + 4;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25005w, this, this));
        return "XmlBox{xml='" + this.f25006s + "'}";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25003u, this, this));
        return this.f25006s;
    }

    public void w(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25004v, this, this, str));
        this.f25006s = str;
    }
}
