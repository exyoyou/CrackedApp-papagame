package com.googlecode.mp4parser.boxes.apple;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class w0 extends com.googlecode.mp4parser.c {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f33365u = "enof";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33366v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33367w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33368x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33369y = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    double f33370s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    double f33371t;

    static {
        s();
    }

    public w0() {
        super(f33365u);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackEncodedPixelsDimensionsAtom.java", w0.class);
        f33366v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getWidth", "com.googlecode.mp4parser.boxes.apple.TrackEncodedPixelsDimensionsAtom", "", "", "", MethodReflectParams.DOUBLE), 44);
        f33367w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setWidth", "com.googlecode.mp4parser.boxes.apple.TrackEncodedPixelsDimensionsAtom", MethodReflectParams.DOUBLE, "width", "", "void"), 48);
        f33368x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getHeight", "com.googlecode.mp4parser.boxes.apple.TrackEncodedPixelsDimensionsAtom", "", "", "", MethodReflectParams.DOUBLE), 52);
        f33369y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setHeight", "com.googlecode.mp4parser.boxes.apple.TrackEncodedPixelsDimensionsAtom", MethodReflectParams.DOUBLE, "height", "", "void"), 56);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f33370s = com.coremedia.iso.g.d(byteBuffer);
        this.f33371t = com.coremedia.iso.g.d(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.b(byteBuffer, this.f33370s);
        com.coremedia.iso.i.b(byteBuffer, this.f33371t);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 12L;
    }

    public double v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33368x, this, this));
        return this.f33371t;
    }

    public double w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33366v, this, this));
        return this.f33370s;
    }

    public void x(double d10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33369y, this, this, org.aspectj.runtime.internal.e.g(d10)));
        this.f33371t = d10;
    }

    public void y(double d10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33367w, this, this, org.aspectj.runtime.internal.e.g(d10)));
        this.f33370s = d10;
    }
}
