package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class m1 extends a {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f24978u = "vmhd";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24979v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24980w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24981x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24982y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f24983z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f24984s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int[] f24985t;

    static {
        s();
    }

    public m1() {
        super(f24978u);
        this.f24984s = 0;
        this.f24985t = new int[3];
        setFlags(1);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("VideoMediaHeaderBox.java", m1.class);
        f24979v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getGraphicsmode", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "int"), 39);
        f24980w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getOpcolor", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "[I"), 43);
        f24981x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "", "", "", "java.lang.String"), 71);
        f24982y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setOpcolor", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "[I", "opcolor", "", "void"), 75);
        f24983z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setGraphicsmode", "com.coremedia.iso.boxes.VideoMediaHeaderBox", "int", "graphicsmode", "", "void"), 79);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f24984s = com.coremedia.iso.g.i(byteBuffer);
        this.f24985t = new int[3];
        for (int i10 = 0; i10 < 3; i10++) {
            this.f24985t[i10] = com.coremedia.iso.g.i(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.f(byteBuffer, this.f24984s);
        for (int i10 : this.f24985t) {
            com.coremedia.iso.i.f(byteBuffer, i10);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 12L;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24981x, this, this));
        return "VideoMediaHeaderBox[graphicsmode=" + v() + ";opcolor0=" + w()[0] + ";opcolor1=" + w()[1] + ";opcolor2=" + w()[2] + "]";
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24979v, this, this));
        return this.f24984s;
    }

    public int[] w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f24980w, this, this));
        return this.f24985t;
    }

    public void x(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24983z, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f24984s = i10;
    }

    public void y(int[] iArr) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f24982y, this, this, iArr));
        this.f24985t = iArr;
    }
}
