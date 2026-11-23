package com.coremedia.iso.boxes.sampleentry;

import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class b extends com.googlecode.mp4parser.a {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f25061t = "damr";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25062u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25063v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25064w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25065x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25066y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25067z = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f25068o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f25069p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f25070q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f25071r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f25072s;

    static {
        s();
    }

    public b() {
        super(f25061t);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AmrSpecificBox.java", b.class);
        f25062u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getVendor", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "java.lang.String"), 46);
        f25063v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDecoderVersion", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "int"), 50);
        f25064w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getModeSet", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "int"), 54);
        f25065x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getModeChangePeriod", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "int"), 58);
        f25066y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFramesPerSample", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "int"), 62);
        f25067z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getContent", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "java.nio.ByteBuffer", "byteBuffer", "", "void"), 84);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.sampleentry.AmrSpecificBox", "", "", "", "java.lang.String"), 92);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        this.f25068o = com.coremedia.iso.f.s(bArr);
        this.f25069p = com.coremedia.iso.g.p(byteBuffer);
        this.f25070q = com.coremedia.iso.g.i(byteBuffer);
        this.f25071r = com.coremedia.iso.g.p(byteBuffer);
        this.f25072s = com.coremedia.iso.g.p(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    public void c(ByteBuffer byteBuffer) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f25067z, this, this, byteBuffer));
        byteBuffer.put(com.coremedia.iso.f.t(this.f25068o));
        i.m(byteBuffer, this.f25069p);
        i.f(byteBuffer, this.f25070q);
        i.m(byteBuffer, this.f25071r);
        i.m(byteBuffer, this.f25072s);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 9L;
    }

    public int t() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f25063v, this, this));
        return this.f25069p;
    }

    public String toString() {
        j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return "AmrSpecificBox[vendor=" + x() + ";decoderVersion=" + t() + ";modeSet=" + w() + ";modeChangePeriod=" + v() + ";framesPerSample=" + u() + "]";
    }

    public int u() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f25066y, this, this));
        return this.f25072s;
    }

    public int v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f25065x, this, this));
        return this.f25071r;
    }

    public int w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f25064w, this, this));
        return this.f25070q;
    }

    public String x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f25062u, this, this));
        return this.f25068o;
    }
}
