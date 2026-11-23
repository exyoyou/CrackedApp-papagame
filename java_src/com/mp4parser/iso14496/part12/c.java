package com.mp4parser.iso14496.part12;

import com.coremedia.iso.f;
import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.j;
import com.swift.sandhook.annotation.MethodReflectParams;
import java.nio.ByteBuffer;
import java.util.Arrays;
import org.aspectj.runtime.reflect.e;

/* JADX INFO: loaded from: classes2.dex */
public class c extends com.googlecode.mp4parser.c {
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

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f75579x = "saiz";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static final /* synthetic */ boolean f75580y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final /* synthetic */ org.aspectj.lang.c.b f75581z = null;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private short f75582s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private short[] f75583t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f75584u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f75585v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f75586w;

    static {
        s();
    }

    public c() {
        super(f75579x);
        this.f75583t = new short[0];
    }

    private static /* synthetic */ void s() {
        e eVar = new e("SampleAuxiliaryInformationSizesBox.java", c.class);
        f75581z = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "index", "", MethodReflectParams.SHORT), 57);
        A = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 107);
        J = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSampleCount", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "sampleCount", "", "void"), 144);
        K = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "toString", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 149);
        B = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAuxInfoType", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "java.lang.String", "auxInfoType", "", "void"), 111);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "java.lang.String"), 115);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAuxInfoTypeParameter", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "java.lang.String", "auxInfoTypeParameter", "", "void"), 119);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getDefaultSampleInfoSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "int"), 123);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setDefaultSampleInfoSize", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "int", "defaultSampleInfoSize", "", "void"), 127);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSampleInfoSizes", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "[S"), 132);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setSampleInfoSizes", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "[S", "sampleInfoSizes", "", "void"), 136);
        I = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getSampleCount", "com.mp4parser.iso14496.part12.SampleAuxiliaryInformationSizesBox", "", "", "", "int"), 140);
    }

    public short A(int i10) {
        j.b().c(e.w(f75581z, this, this, org.aspectj.runtime.internal.e.k(i10)));
        return x() == 0 ? this.f75583t[i10] : this.f75582s;
    }

    public void B(String str) {
        j.b().c(e.w(B, this, this, str));
        this.f75585v = str;
    }

    public void C(String str) {
        j.b().c(e.w(D, this, this, str));
        this.f75586w = str;
    }

    public void D(int i10) {
        j.b().c(e.w(F, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75582s = (short) i10;
    }

    public void E(int i10) {
        j.b().c(e.w(J, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f75584u = i10;
    }

    public void F(short[] sArr) {
        j.b().c(e.w(H, this, this, sArr));
        this.f75583t = Arrays.copyOf(sArr, sArr.length);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if ((getFlags() & 1) == 1) {
            this.f75585v = g.b(byteBuffer);
            this.f75586w = g.b(byteBuffer);
        }
        this.f75582s = (short) g.p(byteBuffer);
        int iA = com.googlecode.mp4parser.util.c.a(g.l(byteBuffer));
        this.f75584u = iA;
        if (this.f75582s == 0) {
            this.f75583t = new short[iA];
            for (int i10 = 0; i10 < this.f75584u; i10++) {
                this.f75583t[i10] = (short) g.p(byteBuffer);
            }
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        if ((getFlags() & 1) == 1) {
            byteBuffer.put(f.t(this.f75585v));
            byteBuffer.put(f.t(this.f75586w));
        }
        i.m(byteBuffer, this.f75582s);
        if (this.f75582s != 0) {
            i.i(byteBuffer, this.f75584u);
            return;
        }
        i.i(byteBuffer, this.f75583t.length);
        for (short s10 : this.f75583t) {
            i.m(byteBuffer, s10);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long g() {
        return ((getFlags() & 1) == 1 ? 12 : 4) + 5 + (this.f75582s == 0 ? this.f75583t.length : 0);
    }

    public String toString() {
        j.b().c(e.v(K, this, this));
        return "SampleAuxiliaryInformationSizesBox{defaultSampleInfoSize=" + ((int) this.f75582s) + ", sampleCount=" + this.f75584u + ", auxInfoType='" + this.f75585v + "', auxInfoTypeParameter='" + this.f75586w + "'}";
    }

    public String v() {
        j.b().c(e.v(A, this, this));
        return this.f75585v;
    }

    public String w() {
        j.b().c(e.v(C, this, this));
        return this.f75586w;
    }

    public int x() {
        j.b().c(e.v(E, this, this));
        return this.f75582s;
    }

    public int y() {
        j.b().c(e.v(I, this, this));
        return this.f75584u;
    }

    public short[] z() {
        j.b().c(e.v(G, this, this));
        short[] sArr = this.f75583t;
        return Arrays.copyOf(sArr, sArr.length);
    }
}
