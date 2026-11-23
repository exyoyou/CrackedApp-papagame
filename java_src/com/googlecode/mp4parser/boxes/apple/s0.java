package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class s0 extends com.googlecode.mp4parser.a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f33334q = "pasp";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33335r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33336s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33337t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33338u = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f33339o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f33340p;

    static {
        s();
    }

    public s0() {
        super(f33334q);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("PixelAspectRationAtom.java", s0.class);
        f33335r = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "gethSpacing", "com.googlecode.mp4parser.boxes.apple.PixelAspectRationAtom", "", "", "", "int"), 35);
        f33336s = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "sethSpacing", "com.googlecode.mp4parser.boxes.apple.PixelAspectRationAtom", "int", "hSpacing", "", "void"), 39);
        f33337t = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getvSpacing", "com.googlecode.mp4parser.boxes.apple.PixelAspectRationAtom", "", "", "", "int"), 43);
        f33338u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setvSpacing", "com.googlecode.mp4parser.boxes.apple.PixelAspectRationAtom", "int", "vSpacing", "", "void"), 47);
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f33339o = byteBuffer.getInt();
        this.f33340p = byteBuffer.getInt();
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.putInt(this.f33339o);
        byteBuffer.putInt(this.f33340p);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 8L;
    }

    public int t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33335r, this, this));
        return this.f33339o;
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33337t, this, this));
        return this.f33340p;
    }

    public void v(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33336s, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33339o = i10;
    }

    public void w(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33338u, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33340p = i10;
    }
}
