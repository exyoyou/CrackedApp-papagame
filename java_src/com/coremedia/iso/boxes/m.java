package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class m extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f24964u = "urn ";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24965v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24966w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24967x = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f24968s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f24969t;

    static {
        s();
    }

    public m() {
        super(f24964u);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("DataEntryUrnBox.java", m.class);
        f24965v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getName", "com.coremedia.iso.boxes.DataEntryUrnBox", "", "", "", "java.lang.String"), 40);
        f24966w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLocation", "com.coremedia.iso.boxes.DataEntryUrnBox", "", "", "", "java.lang.String"), 44);
        f24967x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.DataEntryUrnBox", "", "", "", "java.lang.String"), 67);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f24968s = com.coremedia.iso.g.g(byteBuffer);
        this.f24969t = com.coremedia.iso.g.g(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(com.coremedia.iso.l.b(this.f24968s));
        byteBuffer.put((byte) 0);
        byteBuffer.put(com.coremedia.iso.l.b(this.f24969t));
        byteBuffer.put((byte) 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return com.coremedia.iso.l.c(this.f24968s) + 1 + com.coremedia.iso.l.c(this.f24969t) + 1;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24967x, this, this));
        return "DataEntryUrlBox[name=" + w() + ";location=" + v() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24966w, this, this));
        return this.f24969t;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24965v, this, this));
        return this.f24968s;
    }
}
