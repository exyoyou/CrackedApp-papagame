package com.googlecode.mp4parser.boxes;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.annotations.DoNotParseDetail;
import com.googlecode.mp4parser.j;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class d extends com.googlecode.mp4parser.a {
    public static final String E = "ddts";
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;
    private static final /* synthetic */ org.aspectj.lang.c.b G = null;
    private static final /* synthetic */ org.aspectj.lang.c.b H = null;
    private static final /* synthetic */ org.aspectj.lang.c.b I = null;
    private static final /* synthetic */ org.aspectj.lang.c.b J = null;
    private static final /* synthetic */ org.aspectj.lang.c.b K = null;
    private static final /* synthetic */ org.aspectj.lang.c.b L = null;
    private static final /* synthetic */ org.aspectj.lang.c.b L1 = null;
    private static final /* synthetic */ org.aspectj.lang.c.b M = null;
    private static final /* synthetic */ org.aspectj.lang.c.b N = null;
    private static final /* synthetic */ org.aspectj.lang.c.b O = null;
    private static final /* synthetic */ org.aspectj.lang.c.b P = null;
    private static final /* synthetic */ org.aspectj.lang.c.b Q = null;
    private static final /* synthetic */ org.aspectj.lang.c.b R = null;
    private static final /* synthetic */ org.aspectj.lang.c.b R1 = null;
    private static final /* synthetic */ org.aspectj.lang.c.b S = null;
    private static final /* synthetic */ org.aspectj.lang.c.b T = null;
    private static final /* synthetic */ org.aspectj.lang.c.b U = null;
    private static final /* synthetic */ org.aspectj.lang.c.b V = null;
    private static final /* synthetic */ org.aspectj.lang.c.b W = null;
    private static final /* synthetic */ org.aspectj.lang.c.b X = null;
    private static final /* synthetic */ org.aspectj.lang.c.b Y = null;
    private static final /* synthetic */ org.aspectj.lang.c.b Z = null;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33436b1 = null;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33437f1 = null;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33438i1 = null;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33439l1 = null;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33440p0 = null;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33441p1 = null;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33442q1 = null;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33443r1 = null;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f33444v1 = null;
    int A;
    int B;
    int C;
    int D;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    long f33445o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    long f33446p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    long f33447q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f33448r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f33449s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f33450t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f33451u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f33452v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f33453w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    int f33454x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    int f33455y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    int f33456z;

    static {
        s();
    }

    public d() {
        super(E);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("DTSSpecificBox.java", d.class);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAvgBitRate", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", MethodReflectParams.LONG), 89);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAvgBitRate", "com.googlecode.mp4parser.boxes.DTSSpecificBox", MethodReflectParams.LONG, "avgBitRate", "", "void"), 93);
        P = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getStreamConstruction", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 129);
        Q = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setStreamConstruction", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "streamConstruction", "", "void"), 133);
        R = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getCoreLFEPresent", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 137);
        S = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setCoreLFEPresent", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "coreLFEPresent", "", "void"), 141);
        T = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getCoreLayout", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 145);
        U = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setCoreLayout", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "coreLayout", "", "void"), 149);
        V = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getCoreSize", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 153);
        W = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setCoreSize", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "coreSize", "", "void"), 157);
        X = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getStereoDownmix", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 161);
        Y = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setStereoDownmix", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "stereoDownmix", "", "void"), 165);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDTSSamplingFrequency", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", MethodReflectParams.LONG), 97);
        Z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getRepresentationType", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 169);
        f33440p0 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setRepresentationType", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "representationType", "", "void"), 173);
        f33436b1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getChannelLayout", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 177);
        f33437f1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setChannelLayout", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "channelLayout", "", "void"), 181);
        f33438i1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMultiAssetFlag", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 185);
        f33439l1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMultiAssetFlag", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "multiAssetFlag", "", "void"), 189);
        f33441p1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getLBRDurationMod", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 193);
        f33442q1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setLBRDurationMod", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "LBRDurationMod", "", "void"), 197);
        f33443r1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReserved", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 201);
        f33444v1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setReserved", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "reserved", "", "void"), 205);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDTSSamplingFrequency", "com.googlecode.mp4parser.boxes.DTSSpecificBox", MethodReflectParams.LONG, "DTSSamplingFrequency", "", "void"), 101);
        L1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getReservedBoxPresent", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 209);
        R1 = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setReservedBoxPresent", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "reservedBoxPresent", "", "void"), 213);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getMaxBitRate", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", MethodReflectParams.LONG), 105);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setMaxBitRate", "com.googlecode.mp4parser.boxes.DTSSpecificBox", MethodReflectParams.LONG, "maxBitRate", "", "void"), 109);
        L = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getPcmSampleDepth", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 113);
        M = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setPcmSampleDepth", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "pcmSampleDepth", "", "void"), 117);
        N = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getFrameDuration", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "", "", "", "int"), 121);
        O = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setFrameDuration", "com.googlecode.mp4parser.boxes.DTSSpecificBox", "int", "frameDuration", "", "void"), 125);
    }

    public int A() {
        j.b().c(org.aspectj.runtime.reflect.e.v(N, this, this));
        return this.f33449s;
    }

    public int B() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33441p1, this, this));
        return this.B;
    }

    public long C() {
        j.b().c(org.aspectj.runtime.reflect.e.v(J, this, this));
        return this.f33446p;
    }

    public int D() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33438i1, this, this));
        return this.A;
    }

    public int E() {
        j.b().c(org.aspectj.runtime.reflect.e.v(L, this, this));
        return this.f33448r;
    }

    public int F() {
        j.b().c(org.aspectj.runtime.reflect.e.v(Z, this, this));
        return this.f33455y;
    }

    public int G() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33443r1, this, this));
        return this.D;
    }

    public int H() {
        j.b().c(org.aspectj.runtime.reflect.e.v(L1, this, this));
        return this.C;
    }

    public int I() {
        j.b().c(org.aspectj.runtime.reflect.e.v(X, this, this));
        return this.f33454x;
    }

    public int J() {
        j.b().c(org.aspectj.runtime.reflect.e.v(P, this, this));
        return this.f33450t;
    }

    public void K(long j10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(G, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f33447q = j10;
    }

    public void L(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33437f1, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33456z = i10;
    }

    public void M(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(S, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33451u = i10;
    }

    public void N(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(U, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33452v = i10;
    }

    public void O(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(W, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33453w = i10;
    }

    public void P(long j10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(I, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f33445o = j10;
    }

    public void Q(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(O, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33449s = i10;
    }

    public void R(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33442q1, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.B = i10;
    }

    public void S(long j10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(K, this, this, org.aspectj.runtime.internal.e.m(j10)));
        this.f33446p = j10;
    }

    public void T(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33439l1, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.A = i10;
    }

    public void U(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(M, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33448r = i10;
    }

    public void V(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33440p0, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33455y = i10;
    }

    public void W(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f33444v1, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.D = i10;
    }

    public void X(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(R1, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.C = i10;
    }

    public void Y(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(Y, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33454x = i10;
    }

    public void Z(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(Q, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33450t = i10;
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        this.f33445o = g.l(byteBuffer);
        this.f33446p = g.l(byteBuffer);
        this.f33447q = g.l(byteBuffer);
        this.f33448r = g.p(byteBuffer);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
        this.f33449s = cVar.c(2);
        this.f33450t = cVar.c(5);
        this.f33451u = cVar.c(1);
        this.f33452v = cVar.c(6);
        this.f33453w = cVar.c(14);
        this.f33454x = cVar.c(1);
        this.f33455y = cVar.c(3);
        this.f33456z = cVar.c(16);
        this.A = cVar.c(1);
        this.B = cVar.c(1);
        this.C = cVar.c(1);
        this.D = cVar.c(5);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        i.i(byteBuffer, this.f33445o);
        i.i(byteBuffer, this.f33446p);
        i.i(byteBuffer, this.f33447q);
        i.m(byteBuffer, this.f33448r);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d dVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d(byteBuffer);
        dVar.a(this.f33449s, 2);
        dVar.a(this.f33450t, 5);
        dVar.a(this.f33451u, 1);
        dVar.a(this.f33452v, 6);
        dVar.a(this.f33453w, 14);
        dVar.a(this.f33454x, 1);
        dVar.a(this.f33455y, 3);
        dVar.a(this.f33456z, 16);
        dVar.a(this.A, 1);
        dVar.a(this.B, 1);
        dVar.a(this.C, 1);
        dVar.a(this.D, 5);
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return 20L;
    }

    public long t() {
        j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return this.f33447q;
    }

    public int u() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f33436b1, this, this));
        return this.f33456z;
    }

    public int v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(R, this, this));
        return this.f33451u;
    }

    public int w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(T, this, this));
        return this.f33452v;
    }

    public int x() {
        j.b().c(org.aspectj.runtime.reflect.e.v(V, this, this));
        return this.f33453w;
    }

    public long y() {
        j.b().c(org.aspectj.runtime.reflect.e.v(H, this, this));
        return this.f33445o;
    }

    @DoNotParseDetail
    public int[] z() {
        int i10;
        int iU = u();
        int i11 = 1;
        if ((iU & 1) == 1) {
            i10 = 4;
        } else {
            i11 = 0;
            i10 = 0;
        }
        if ((iU & 2) == 2) {
            i11 += 2;
            i10 = i10 | 1 | 2;
        }
        if ((iU & 4) == 4) {
            i11 += 2;
            i10 = i10 | 16 | 32;
        }
        if ((iU & 8) == 8) {
            i11++;
            i10 |= 8;
        }
        if ((iU & 16) == 16) {
            i11++;
            i10 |= 256;
        }
        if ((iU & 32) == 32) {
            i11 += 2;
            i10 = i10 | 4096 | 16384;
        }
        if ((iU & 64) == 64) {
            i11 += 2;
            i10 = i10 | 16 | 32;
        }
        if ((iU & 128) == 128) {
            i11++;
            i10 |= 8192;
        }
        if ((iU & 256) == 256) {
            i11++;
            i10 |= 2048;
        }
        if ((iU & 512) == 512) {
            i11 += 2;
            i10 = i10 | 64 | 128;
        }
        if ((iU & 1024) == 1024) {
            i11 += 2;
            i10 = i10 | 512 | 1024;
        }
        if ((iU & 2048) == 2048) {
            i11 += 2;
            i10 = i10 | 16 | 32;
        }
        if ((iU & 4096) == 4096) {
            i11++;
            i10 |= 8;
        }
        if ((iU & 8192) == 8192) {
            i11 += 2;
            i10 = i10 | 16 | 32;
        }
        if ((iU & 16384) == 16384) {
            i11++;
            i10 |= 65536;
        }
        if ((iU & 32768) == 32768) {
            i11 += 2;
            i10 = i10 | 32768 | 131072;
        }
        if ((iU & 65536) == 65536) {
            i11++;
        }
        if ((iU & 131072) == 131072) {
            i11 += 2;
        }
        return new int[]{i11, i10};
    }
}
