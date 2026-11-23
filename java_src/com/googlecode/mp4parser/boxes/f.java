package com.googlecode.mp4parser.boxes;

import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class f extends com.googlecode.mp4parser.a {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f33507s = "dmlp";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33508t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33509u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33510v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33511w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33512x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33513y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33514z = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f33515o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f33516p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f33517q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f33518r;

    static {
        s();
    }

    public f() {
        super(f33507s);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("MLPSpecificBox.java", f.class);
        f33508t = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFormat_info", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "", "", "", "int"), 49);
        f33509u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setFormat_info", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "int", "format_info", "", "void"), 53);
        f33510v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getPeak_data_rate", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "", "", "", "int"), 57);
        f33511w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setPeak_data_rate", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "int", "peak_data_rate", "", "void"), 61);
        f33512x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReserved", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "", "", "", "int"), 65);
        f33513y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setReserved", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "int", "reserved", "", "void"), 69);
        f33514z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReserved2", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "", "", "", "int"), 73);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setReserved2", "com.googlecode.mp4parser.boxes.MLPSpecificBox", "int", "reserved2", "", "void"), 77);
    }

    public void A(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33518r = i10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
        this.f33515o = cVar.c(32);
        this.f33516p = cVar.c(15);
        this.f33517q = cVar.c(1);
        this.f33518r = cVar.c(32);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d dVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d(byteBuffer);
        dVar.a(this.f33515o, 32);
        dVar.a(this.f33516p, 15);
        dVar.a(this.f33517q, 1);
        dVar.a(this.f33518r, 32);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 10L;
    }

    public int t() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33508t, this, this));
        return this.f33515o;
    }

    public int u() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33510v, this, this));
        return this.f33516p;
    }

    public int v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33512x, this, this));
        return this.f33517q;
    }

    public int w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33514z, this, this));
        return this.f33518r;
    }

    public void x(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33509u, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33515o = i10;
    }

    public void y(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33511w, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33516p = i10;
    }

    public void z(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33513y, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33517q = i10;
    }
}
