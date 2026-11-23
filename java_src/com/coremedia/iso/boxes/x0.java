package com.coremedia.iso.boxes;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class x0 extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f25200v = "schm";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static final /* synthetic */ boolean f25201w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25202x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25203y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f25204z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    String f25205s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    long f25206t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    String f25207u;

    static {
        s();
    }

    public x0() {
        super(f25200v);
        this.f25205s = "    ";
        this.f25207u = null;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SchemeTypeBox.java", x0.class);
        f25202x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSchemeType", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 44);
        f25203y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSchemeVersion", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", MethodReflectParams.LONG), 48);
        f25204z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSchemeUri", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 52);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSchemeType", "com.coremedia.iso.boxes.SchemeTypeBox", "java.lang.String", "schemeType", "", "void"), 56);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSchemeVersion", "com.coremedia.iso.boxes.SchemeTypeBox", "int", "schemeVersion", "", "void"), 61);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSchemeUri", "com.coremedia.iso.boxes.SchemeTypeBox", "java.lang.String", "schemeUri", "", "void"), 65);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.coremedia.iso.boxes.SchemeTypeBox", "", "", "", "java.lang.String"), 93);
    }

    public void A(int i10) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f25206t = i10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f25205s = com.coremedia.iso.g.b(byteBuffer);
        this.f25206t = com.coremedia.iso.g.l(byteBuffer);
        if ((getFlags() & 1) == 1) {
            this.f25207u = com.coremedia.iso.g.g(byteBuffer);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(com.coremedia.iso.f.t(this.f25205s));
        com.coremedia.iso.i.i(byteBuffer, this.f25206t);
        if ((getFlags() & 1) == 1) {
            byteBuffer.put(com.coremedia.iso.l.b(this.f25207u));
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return ((getFlags() & 1) == 1 ? com.coremedia.iso.l.c(this.f25207u) + 1 : 0) + 12;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return "Schema Type Box[schemeUri=" + this.f25207u + "; schemeType=" + this.f25205s + "; schemeVersion=" + this.f25206t + "; ]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25202x, this, this));
        return this.f25205s;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25204z, this, this));
        return this.f25207u;
    }

    public long x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f25203y, this, this));
        return this.f25206t;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, str));
        this.f25205s = str;
    }

    public void z(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, str));
        this.f25207u = str;
    }
}
