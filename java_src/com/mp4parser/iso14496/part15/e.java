package com.mp4parser.iso14496.part15;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class e extends com.googlecode.mp4parser.a {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f75658s = "svpr";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75659t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75660u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75661v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75662w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75663x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75664y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75665z = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f75666o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    int f75667p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f75668q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f75669r;

    static {
        s();
    }

    public e() {
        super(f75658s);
        this.f75666o = 0;
        this.f75668q = 0;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("PriotityRangeBox.java", e.class);
        f75659t = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReserved1", "com.mp4parser.iso14496.part15.PriotityRangeBox", "", "", "", "int"), 45);
        f75660u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setReserved1", "com.mp4parser.iso14496.part15.PriotityRangeBox", "int", "reserved1", "", "void"), 49);
        f75661v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMin_priorityId", "com.mp4parser.iso14496.part15.PriotityRangeBox", "", "", "", "int"), 53);
        f75662w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMin_priorityId", "com.mp4parser.iso14496.part15.PriotityRangeBox", "int", "min_priorityId", "", "void"), 57);
        f75663x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReserved2", "com.mp4parser.iso14496.part15.PriotityRangeBox", "", "", "", "int"), 61);
        f75664y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setReserved2", "com.mp4parser.iso14496.part15.PriotityRangeBox", "int", "reserved2", "", "void"), 65);
        f75665z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMax_priorityId", "com.mp4parser.iso14496.part15.PriotityRangeBox", "", "", "", "int"), 69);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMax_priorityId", "com.mp4parser.iso14496.part15.PriotityRangeBox", "int", "max_priorityId", "", "void"), 73);
    }

    public void A(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f75664y, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75668q = i10;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        int iP = com.coremedia.iso.g.p(byteBuffer);
        this.f75666o = (iP & 192) >> 6;
        this.f75667p = iP & 63;
        int iP2 = com.coremedia.iso.g.p(byteBuffer);
        this.f75668q = (iP2 & 192) >> 6;
        this.f75669r = iP2 & 63;
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.m(byteBuffer, (this.f75666o << 6) + this.f75667p);
        com.coremedia.iso.i.m(byteBuffer, (this.f75668q << 6) + this.f75669r);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 2L;
    }

    public int t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75665z, this, this));
        return this.f75669r;
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75661v, this, this));
        return this.f75667p;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75659t, this, this));
        return this.f75666o;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75663x, this, this));
        return this.f75668q;
    }

    public void x(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75669r = i10;
    }

    public void y(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f75662w, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75667p = i10;
    }

    public void z(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f75660u, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75666o = i10;
    }
}
