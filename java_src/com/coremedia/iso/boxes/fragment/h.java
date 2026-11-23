package com.coremedia.iso.boxes.fragment;

import com.googlecode.mp4parser.annotations.DoNotParseDetail;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class h extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f24808r = "styp";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24809s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24810t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24811u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24812v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24813w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24814x = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f24815o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f24816p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private List<String> f24817q;

    static {
        s();
    }

    public h() {
        super(f24808r);
        this.f24817q = Collections.emptyList();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SegmentTypeBox.java", h.class);
        f24809s = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMajorBrand", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "", "", "", "java.lang.String"), 85);
        f24810t = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMajorBrand", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "java.lang.String", "majorBrand", "", "void"), 94);
        f24811u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMinorVersion", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", MethodReflectParams.LONG, "minorVersion", "", "void"), 103);
        f24812v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMinorVersion", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "", "", "", MethodReflectParams.LONG), 113);
        f24813w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getCompatibleBrands", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "", "", "", "java.util.List"), 122);
        f24814x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setCompatibleBrands", "com.coremedia.iso.boxes.fragment.SegmentTypeBox", "java.util.List", "compatibleBrands", "", "void"), 126);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f24815o = com.coremedia.iso.g.b(byteBuffer);
        this.f24816p = com.coremedia.iso.g.l(byteBuffer);
        int iRemaining = byteBuffer.remaining() / 4;
        this.f24817q = new LinkedList();
        for (int i10 = 0; i10 < iRemaining; i10++) {
            this.f24817q.add(com.coremedia.iso.g.b(byteBuffer));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.put(com.coremedia.iso.f.t(this.f24815o));
        com.coremedia.iso.i.i(byteBuffer, this.f24816p);
        Iterator<String> it2 = this.f24817q.iterator();
        while (it2.hasNext()) {
            byteBuffer.put(com.coremedia.iso.f.t(it2.next()));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (this.f24817q.size() * 4) + 8;
    }

    public List<String> t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24813w, this, this));
        return this.f24817q;
    }

    @DoNotParseDetail
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("SegmentTypeBox[");
        sb2.append("majorBrand=");
        sb2.append(u());
        sb2.append(";");
        sb2.append("minorVersion=");
        sb2.append(v());
        for (String str : this.f24817q) {
            sb2.append(";");
            sb2.append("compatibleBrand=");
            sb2.append(str);
        }
        sb2.append("]");
        return sb2.toString();
    }

    public String u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24809s, this, this));
        return this.f24815o;
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24812v, this, this));
        return this.f24816p;
    }

    public void w(List<String> list) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24814x, this, this, list));
        this.f24817q = list;
    }

    public void x(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24810t, this, this, str));
        this.f24815o = str;
    }

    public void y(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24811u, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24816p = j10;
    }

    public h(String str, long j10, List<String> list) {
        super(f24808r);
        Collections.emptyList();
        this.f24815o = str;
        this.f24816p = j10;
        this.f24817q = list;
    }
}
