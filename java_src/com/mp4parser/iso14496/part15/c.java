package com.mp4parser.iso14496.part15;

import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c extends com.googlecode.mp4parser.a {
    private static final /* synthetic */ org.aspectj.lang.c.b A = null;
    private static final /* synthetic */ org.aspectj.lang.c.b B = null;
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;
    private static final /* synthetic */ org.aspectj.lang.c.b G = null;
    private static final /* synthetic */ org.aspectj.lang.c.b H = null;
    private static final /* synthetic */ org.aspectj.lang.c.b I = null;
    private static final /* synthetic */ org.aspectj.lang.c.b J = null;
    private static final /* synthetic */ org.aspectj.lang.c.b K = null;
    private static final /* synthetic */ org.aspectj.lang.c.b L = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f75616p = "hvcC";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75617q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75618r = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75619s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75620t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75621u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75622v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75623w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75624x = null;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75625y = null;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75626z = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private d f75627o;

    static {
        s();
    }

    public c() {
        super(f75616p);
        this.f75627o = new d();
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("HevcConfigurationBox.java", c.class);
        f75617q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getHevcDecoderConfigurationRecord", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "com.mp4parser.iso14496.part15.HevcDecoderConfigurationRecord"), 36);
        f75618r = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setHevcDecoderConfigurationRecord", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "com.mp4parser.iso14496.part15.HevcDecoderConfigurationRecord", "hevcDecoderConfigurationRecord", "", "void"), 40);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getGeneral_level_idc", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 88);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMin_spatial_segmentation_idc", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 92);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getParallelismType", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 96);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getChromaFormat", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 100);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBitDepthLumaMinus8", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 104);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getBitDepthChromaMinus8", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 108);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAvgFrameRate", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 112);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getNumTemporalLayers", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 116);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLengthSizeMinusOne", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 120);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "isTemporalIdNested", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "boolean"), 124);
        f75619s = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "equals", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "java.lang.Object", "o", "", "boolean"), 45);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getConstantFrameRate", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 128);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getArrays", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "java.util.List"), 132);
        f75620t = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "hashCode", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 58);
        f75621u = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getConfigurationVersion", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 63);
        f75622v = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getGeneral_profile_space", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 67);
        f75623w = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "isGeneral_tier_flag", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "boolean"), 71);
        f75624x = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getGeneral_profile_idc", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", "int"), 76);
        f75625y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getGeneral_profile_compatibility_flags", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", MethodReflectParams.LONG), 80);
        f75626z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getGeneral_constraint_indicator_flags", "com.mp4parser.iso14496.part15.HevcConfigurationBox", "", "", "", MethodReflectParams.LONG), 84);
    }

    public long A() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75626z, this, this));
        return this.f75627o.f75633f;
    }

    public int B() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f75627o.f75634g;
    }

    public long C() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75625y, this, this));
        return this.f75627o.f75632e;
    }

    public int D() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75624x, this, this));
        return this.f75627o.f75631d;
    }

    public int E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75622v, this, this));
        return this.f75627o.f75629b;
    }

    public d F() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75617q, this, this));
        return this.f75627o;
    }

    public int G() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(I, this, this));
        return this.f75627o.f75649v;
    }

    public int H() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(B, this, this));
        return this.f75627o.f75636i;
    }

    public int I() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f75627o.f75647t;
    }

    public int J() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f75627o.f75638k;
    }

    public boolean K() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75623w, this, this));
        return this.f75627o.f75630c;
    }

    public boolean L() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return this.f75627o.f75648u;
    }

    public void M(d dVar) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f75618r, this, this, dVar));
        this.f75627o = dVar;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        this.f75627o.x(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        this.f75627o.U(byteBuffer);
    }

    public boolean equals(Object obj) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(f75619s, this, this, obj));
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = this.f75627o;
        d dVar2 = ((c) obj).f75627o;
        return dVar == null ? dVar2 == null : dVar.equals(dVar2);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return this.f75627o.q();
    }

    public int hashCode() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75620t, this, this));
        d dVar = this.f75627o;
        if (dVar != null) {
            return dVar.hashCode();
        }
        return 0;
    }

    public List<d.a> t() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return this.f75627o.f75650w;
    }

    public int u() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f75627o.f75645r;
    }

    public int v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f75627o.f75644q;
    }

    public int w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f75627o.f75642o;
    }

    public int x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f75627o.f75640m;
    }

    public int y() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f75621u, this, this));
        return this.f75627o.f75628a;
    }

    public int z() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(K, this, this));
        return this.f75627o.f75646s;
    }
}
