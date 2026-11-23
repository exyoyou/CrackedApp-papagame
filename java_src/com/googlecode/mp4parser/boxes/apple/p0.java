package com.googlecode.mp4parser.boxes.apple;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class p0 extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f33314u = "clef";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33315v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33316w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33317x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33318y = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    double f33319s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    double f33320t;

    static {
        s();
    }

    public p0() {
        super(f33314u);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("CleanApertureAtom.java", p0.class);
        f33315v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getWidth", "com.googlecode.mp4parser.boxes.apple.CleanApertureAtom", "", "", "", MethodReflectParams.DOUBLE), 45);
        f33316w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setWidth", "com.googlecode.mp4parser.boxes.apple.CleanApertureAtom", MethodReflectParams.DOUBLE, "width", "", "void"), 49);
        f33317x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getHeight", "com.googlecode.mp4parser.boxes.apple.CleanApertureAtom", "", "", "", MethodReflectParams.DOUBLE), 53);
        f33318y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setHeight", "com.googlecode.mp4parser.boxes.apple.CleanApertureAtom", MethodReflectParams.DOUBLE, "height", "", "void"), 57);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f33319s = com.coremedia.iso.g.d(byteBuffer);
        this.f33320t = com.coremedia.iso.g.d(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.b(byteBuffer, this.f33319s);
        com.coremedia.iso.i.b(byteBuffer, this.f33320t);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 12L;
    }

    public double v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33317x, this, this));
        return this.f33320t;
    }

    public double w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33315v, this, this));
        return this.f33319s;
    }

    public void x(double d10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33318y, this, this, org.aspectj.runtime.internal.e.g(d10)));
        this.f33320t = d10;
    }

    public void y(double d10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33316w, this, this, org.aspectj.runtime.internal.e.g(d10)));
        this.f33319s = d10;
    }
}
