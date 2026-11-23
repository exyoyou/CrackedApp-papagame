package com.coremedia.iso.boxes;

import com.googlecode.mp4parser.annotations.DoNotParseDetail;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class s extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f25047r = "ftyp";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25048s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25049t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25050u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25051v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25052w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25053x = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f25054o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f25055p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private List<String> f25056q;

    static {
        s();
    }

    public s() {
        super(f25047r);
        this.f25056q = Collections.emptyList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("FileTypeBox.java", s.class);
        f25048s = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMajorBrand", "com.coremedia.iso.boxes.FileTypeBox", "", "", "", "java.lang.String"), 85);
        f25049t = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMajorBrand", "com.coremedia.iso.boxes.FileTypeBox", "java.lang.String", "majorBrand", "", "void"), 94);
        f25050u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMinorVersion", "com.coremedia.iso.boxes.FileTypeBox", MethodReflectParams.LONG, "minorVersion", "", "void"), 103);
        f25051v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMinorVersion", "com.coremedia.iso.boxes.FileTypeBox", "", "", "", MethodReflectParams.LONG), 113);
        f25052w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getCompatibleBrands", "com.coremedia.iso.boxes.FileTypeBox", "", "", "", "java.util.List"), 122);
        f25053x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setCompatibleBrands", "com.coremedia.iso.boxes.FileTypeBox", "java.util.List", "compatibleBrands", "", "void"), 126);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f25054o = com.coremedia.iso.g.b(byteBuffer);
        this.f25055p = com.coremedia.iso.g.l(byteBuffer);
        int iRemaining = byteBuffer.remaining() / 4;
        this.f25056q = new LinkedList();
        for (int i10 = 0; i10 < iRemaining; i10++) {
            this.f25056q.add(com.coremedia.iso.g.b(byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(com.coremedia.iso.f.t(this.f25054o));
        com.coremedia.iso.i.i(byteBuffer, this.f25055p);
        Iterator<String> it2 = this.f25056q.iterator();
        while (it2.hasNext()) {
            byteBuffer.put(com.coremedia.iso.f.t(it2.next()));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (this.f25056q.size() * 4) + 8;
    }

    public List<String> t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25052w, this, this));
        return this.f25056q;
    }

    @DoNotParseDetail
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("FileTypeBox[");
        sb2.append("majorBrand=");
        sb2.append(u());
        sb2.append(";");
        sb2.append("minorVersion=");
        sb2.append(v());
        for (String str : this.f25056q) {
            sb2.append(";");
            sb2.append("compatibleBrand=");
            sb2.append(str);
        }
        sb2.append("]");
        return sb2.toString();
    }

    public String u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25048s, this, this));
        return this.f25054o;
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25051v, this, this));
        return this.f25055p;
    }

    public void w(List<String> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25053x, this, this, list));
        this.f25056q = list;
    }

    public void x(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25049t, this, this, str));
        this.f25054o = str;
    }

    public void y(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f25050u, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f25055p = j10;
    }

    public s(String str, long j10, List<String> list) {
        super(f25047r);
        Collections.emptyList();
        this.f25054o = str;
        this.f25055p = j10;
        this.f25056q = list;
    }
}
