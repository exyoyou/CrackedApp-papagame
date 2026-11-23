package com.coremedia.iso.boxes;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import java.util.Date;

/* JADX INFO: loaded from: classes9.dex */
public class e0 extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;
    private static final /* synthetic */ org.aspectj.lang.c.b G = null;
    private static final /* synthetic */ org.aspectj.lang.c.b H = null;
    private static final /* synthetic */ org.aspectj.lang.c.b I = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f24764x = "mdhd";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24765y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24766z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Date f24767s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Date f24768t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f24769u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f24770v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f24771w;

    static {
        s();
    }

    public e0() {
        super(f24764x);
        this.f24767s = new Date();
        this.f24768t = new Date();
        this.f24771w = "eng";
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("MediaHeaderBox.java", e0.class);
        f24765y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getCreationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.util.Date"), 46);
        f24766z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getModificationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.util.Date"), 50);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.lang.String"), 118);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getTimescale", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", MethodReflectParams.LONG), 54);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDuration", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", MethodReflectParams.LONG), 58);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLanguage", "com.coremedia.iso.boxes.MediaHeaderBox", "", "", "", "java.lang.String"), 62);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setCreationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "java.util.Date", "creationTime", "", "void"), 79);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setModificationTime", "com.coremedia.iso.boxes.MediaHeaderBox", "java.util.Date", "modificationTime", "", "void"), 83);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setTimescale", "com.coremedia.iso.boxes.MediaHeaderBox", MethodReflectParams.LONG, "timescale", "", "void"), 87);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDuration", "com.coremedia.iso.boxes.MediaHeaderBox", MethodReflectParams.LONG, "duration", "", "void"), 91);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLanguage", "com.coremedia.iso.boxes.MediaHeaderBox", "java.lang.String", "language", "", "void"), 95);
    }

    public void A(Date date) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, date));
        this.f24767s = date;
    }

    public void B(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24770v = j10;
    }

    public void C(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, str));
        this.f24771w = str;
    }

    public void D(Date date) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(E, this, this, date));
        this.f24768t = date;
    }

    public void E(long j10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f24769u = j10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if (getVersion() == 1) {
            this.f24767s = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.o(byteBuffer));
            this.f24768t = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.o(byteBuffer));
            this.f24769u = com.coremedia.iso.g.l(byteBuffer);
            this.f24770v = com.coremedia.iso.g.o(byteBuffer);
        } else {
            this.f24767s = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.l(byteBuffer));
            this.f24768t = com.googlecode.mp4parser.util.e.b(com.coremedia.iso.g.l(byteBuffer));
            this.f24769u = com.coremedia.iso.g.l(byteBuffer);
            this.f24770v = com.coremedia.iso.g.l(byteBuffer);
        }
        this.f24771w = com.coremedia.iso.g.f(byteBuffer);
        com.coremedia.iso.g.i(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if (getVersion() == 1) {
            com.coremedia.iso.i.l(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f24767s));
            com.coremedia.iso.i.l(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f24768t));
            com.coremedia.iso.i.i(byteBuffer, this.f24769u);
            com.coremedia.iso.i.l(byteBuffer, this.f24770v);
        } else {
            com.coremedia.iso.i.i(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f24767s));
            com.coremedia.iso.i.i(byteBuffer, com.googlecode.mp4parser.util.e.a(this.f24768t));
            com.coremedia.iso.i.i(byteBuffer, this.f24769u);
            com.coremedia.iso.i.i(byteBuffer, this.f24770v);
        }
        com.coremedia.iso.i.d(byteBuffer, this.f24771w);
        com.coremedia.iso.i.f(byteBuffer, 0);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return (getVersion() == 1 ? 32L : 20L) + 2 + 2;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return "MediaHeaderBox[creationTime=" + v() + ";modificationTime=" + y() + ";timescale=" + z() + ";duration=" + w() + ";language=" + x() + "]";
    }

    public Date v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24765y, this, this));
        return this.f24767s;
    }

    public long w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f24770v;
    }

    public String x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f24771w;
    }

    public Date y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24766z, this, this));
        return this.f24768t;
    }

    public long z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f24769u;
    }
}
