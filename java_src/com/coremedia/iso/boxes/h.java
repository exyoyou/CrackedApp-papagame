package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class h extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;
    private static final /* synthetic */ org.aspectj.lang.c.b G = null;
    private static final /* synthetic */ org.aspectj.lang.c.b H = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f24891x = "cslg";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24892y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24893z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f24894s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f24895t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f24896u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f24897v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f24898w;

    static {
        s();
    }

    public h() {
        super(f24891x);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("CompositionShiftLeastGreatestAtom.java", h.class);
        f24892y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getCompositionOffsetToDisplayOffsetShift", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 66);
        f24893z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setCompositionOffsetToDisplayOffsetShift", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "compositionOffsetToDisplayOffsetShift", "", "void"), 70);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLeastDisplayOffset", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 74);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLeastDisplayOffset", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "leastDisplayOffset", "", "void"), 78);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getGreatestDisplayOffset", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 82);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setGreatestDisplayOffset", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "greatestDisplayOffset", "", "void"), 86);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDisplayStartTime", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 90);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDisplayStartTime", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "displayStartTime", "", "void"), 94);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDisplayEndTime", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "", "", "", "int"), 98);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDisplayEndTime", "com.coremedia.iso.boxes.CompositionShiftLeastGreatestAtom", "int", "displayEndTime", "", "void"), 102);
    }

    public void A(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24893z, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24894s = i10;
    }

    public void B(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24898w = i10;
    }

    public void C(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24897v = i10;
    }

    public void D(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24896u = i10;
    }

    public void E(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24895t = i10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f24894s = byteBuffer.getInt();
        this.f24895t = byteBuffer.getInt();
        this.f24896u = byteBuffer.getInt();
        this.f24897v = byteBuffer.getInt();
        this.f24898w = byteBuffer.getInt();
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.putInt(this.f24894s);
        byteBuffer.putInt(this.f24895t);
        byteBuffer.putInt(this.f24896u);
        byteBuffer.putInt(this.f24897v);
        byteBuffer.putInt(this.f24898w);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 24L;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24892y, this, this));
        return this.f24894s;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f24898w;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f24897v;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f24896u;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f24895t;
    }
}
