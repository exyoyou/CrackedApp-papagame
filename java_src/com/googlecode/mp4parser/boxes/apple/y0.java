package com.googlecode.mp4parser.boxes.apple;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class y0 extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f33386u = "prof";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33387v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33388w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33389x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33390y = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    double f33391s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    double f33392t;

    static {
        s();
    }

    public y0() {
        super(f33386u);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackProductionApertureDimensionsAtom.java", y0.class);
        f33387v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getWidth", "com.googlecode.mp4parser.boxes.apple.TrackProductionApertureDimensionsAtom", "", "", "", MethodReflectParams.DOUBLE), 44);
        f33388w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setWidth", "com.googlecode.mp4parser.boxes.apple.TrackProductionApertureDimensionsAtom", MethodReflectParams.DOUBLE, "width", "", "void"), 48);
        f33389x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getHeight", "com.googlecode.mp4parser.boxes.apple.TrackProductionApertureDimensionsAtom", "", "", "", MethodReflectParams.DOUBLE), 52);
        f33390y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setHeight", "com.googlecode.mp4parser.boxes.apple.TrackProductionApertureDimensionsAtom", MethodReflectParams.DOUBLE, "height", "", "void"), 56);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f33391s = com.coremedia.iso.g.d(byteBuffer);
        this.f33392t = com.coremedia.iso.g.d(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.b(byteBuffer, this.f33391s);
        com.coremedia.iso.i.b(byteBuffer, this.f33392t);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 12L;
    }

    public double v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33389x, this, this));
        return this.f33392t;
    }

    public double w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33387v, this, this));
        return this.f33391s;
    }

    public void x(double d10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33390y, this, this, org.aspectj.runtime.internal.e.g(d10)));
        this.f33392t = d10;
    }

    public void y(double d10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33388w, this, this, org.aspectj.runtime.internal.e.g(d10)));
        this.f33391s = d10;
    }
}
