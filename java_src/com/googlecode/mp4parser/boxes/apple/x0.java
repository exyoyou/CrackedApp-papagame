package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class x0 extends com.googlecode.mp4parser.a {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f33372s = "load";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33373t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33374u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33375v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33376w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33377x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33378y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33379z = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f33380o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f33381p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f33382q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f33383r;

    static {
        s();
    }

    public x0() {
        super("load");
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("TrackLoadSettingsAtom.java", x0.class);
        f33373t = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getPreloadStartTime", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "", "", "", "int"), 49);
        f33374u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setPreloadStartTime", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "int", "preloadStartTime", "", "void"), 53);
        f33375v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getPreloadDuration", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "", "", "", "int"), 57);
        f33376w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setPreloadDuration", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "int", "preloadDuration", "", "void"), 61);
        f33377x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getPreloadFlags", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "", "", "", "int"), 65);
        f33378y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setPreloadFlags", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "int", "preloadFlags", "", "void"), 69);
        f33379z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDefaultHints", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "", "", "", "int"), 73);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDefaultHints", "com.googlecode.mp4parser.boxes.apple.TrackLoadSettingsAtom", "int", "defaultHints", "", "void"), 77);
    }

    public void A(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33374u, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33380o = i10;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f33380o = byteBuffer.getInt();
        this.f33381p = byteBuffer.getInt();
        this.f33382q = byteBuffer.getInt();
        this.f33383r = byteBuffer.getInt();
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        byteBuffer.putInt(this.f33380o);
        byteBuffer.putInt(this.f33381p);
        byteBuffer.putInt(this.f33382q);
        byteBuffer.putInt(this.f33383r);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 16L;
    }

    public int t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33379z, this, this));
        return this.f33383r;
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33375v, this, this));
        return this.f33381p;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33377x, this, this));
        return this.f33382q;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f33373t, this, this));
        return this.f33380o;
    }

    public void x(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33383r = i10;
    }

    public void y(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33376w, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33381p = i10;
    }

    public void z(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f33378y, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33382q = i10;
    }
}
