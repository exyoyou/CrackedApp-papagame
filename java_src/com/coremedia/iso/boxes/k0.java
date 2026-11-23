package com.coremedia.iso.boxes;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public final class k0 extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f24942w = "odaf";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24943x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24944y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24945z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f24946s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private byte f24947t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f24948u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f24949v;

    static {
        s();
    }

    public k0() {
        super(f24942w);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("OmaDrmAccessUnitFormatBox.java", k0.class);
        f24943x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "isSelectiveEncryption", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "", "", "", "boolean"), 46);
        f24944y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getKeyIndicatorLength", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "", "", "", "int"), 50);
        f24945z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getInitVectorLength", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "", "", "", "int"), 54);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setInitVectorLength", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "int", "initVectorLength", "", "void"), 58);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setKeyIndicatorLength", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", "int", "keyIndicatorLength", "", "void"), 62);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAllBits", "com.coremedia.iso.boxes.OmaDrmAccessUnitFormatBox", MethodReflectParams.BYTE, "allBits", "", "void"), 66);
    }

    public void A(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24948u = i10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        byte bP = (byte) com.coremedia.iso.g.p(byteBuffer);
        this.f24947t = bP;
        this.f24946s = (bP & 128) == 128;
        this.f24948u = com.coremedia.iso.g.p(byteBuffer);
        this.f24949v = com.coremedia.iso.g.p(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.m(byteBuffer, this.f24947t);
        com.coremedia.iso.i.m(byteBuffer, this.f24948u);
        com.coremedia.iso.i.m(byteBuffer, this.f24949v);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 7L;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24945z, this, this));
        return this.f24949v;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24944y, this, this));
        return this.f24948u;
    }

    public boolean x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24943x, this, this));
        return this.f24946s;
    }

    public void y(byte b10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, org.aspectj.runtime.internal.e.c(b10)));
        this.f24947t = b10;
        this.f24946s = (b10 & 128) == 128;
    }

    public void z(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24949v = i10;
    }
}
