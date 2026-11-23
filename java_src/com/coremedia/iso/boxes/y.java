package com.coremedia.iso.boxes;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class y extends a {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f25208w = "hmhd";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25209x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25210y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25211z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f25212s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f25213t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f25214u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f25215v;

    static {
        s();
    }

    public y() {
        super(f25208w);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("HintMediaHeaderBox.java", y.class);
        f25209x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMaxPduSize", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "int"), 42);
        f25210y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAvgPduSize", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "int"), 46);
        f25211z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMaxBitrate", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", MethodReflectParams.LONG), 50);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAvgBitrate", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", MethodReflectParams.LONG), 54);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.HintMediaHeaderBox", "", "", "", "java.lang.String"), 84);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f25212s = com.coremedia.iso.g.i(byteBuffer);
        this.f25213t = com.coremedia.iso.g.i(byteBuffer);
        this.f25214u = com.coremedia.iso.g.l(byteBuffer);
        this.f25215v = com.coremedia.iso.g.l(byteBuffer);
        com.coremedia.iso.g.l(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.f(byteBuffer, this.f25212s);
        com.coremedia.iso.i.f(byteBuffer, this.f25213t);
        com.coremedia.iso.i.i(byteBuffer, this.f25214u);
        com.coremedia.iso.i.i(byteBuffer, this.f25215v);
        com.coremedia.iso.i.i(byteBuffer, 0L);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 20L;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return "HintMediaHeaderBox{maxPduSize=" + this.f25212s + ", avgPduSize=" + this.f25213t + ", maxBitrate=" + this.f25214u + ", avgBitrate=" + this.f25215v + '}';
    }

    public long v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f25215v;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25210y, this, this));
        return this.f25213t;
    }

    public long x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25211z, this, this));
        return this.f25214u;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25209x, this, this));
        return this.f25212s;
    }
}
