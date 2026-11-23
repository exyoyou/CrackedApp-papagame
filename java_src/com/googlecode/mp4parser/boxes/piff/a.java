package com.googlecode.mp4parser.boxes.piff;

import com.coremedia.iso.boxes.k1;
import com.googlecode.mp4parser.annotations.DoNotParseDetail;
import com.googlecode.mp4parser.j;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;

/* JADX INFO: loaded from: classes5.dex */
public class a extends com.googlecode.mp4parser.boxes.b {
    private static final /* synthetic */ org.aspectj.lang.c.b C = null;
    private static final /* synthetic */ org.aspectj.lang.c.b D = null;
    private static final /* synthetic */ org.aspectj.lang.c.b E = null;
    private static final /* synthetic */ org.aspectj.lang.c.b F = null;
    private static final /* synthetic */ org.aspectj.lang.c.b G = null;
    private static final /* synthetic */ org.aspectj.lang.c.b H = null;

    static {
        s();
    }

    public a() {
        super(k1.f24950p);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("PiffSampleEncryptionBox.java", a.class);
        C = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getAlgorithmId", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "", "", "", "int"), 46);
        D = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setAlgorithmId", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "int", "algorithmId", "", "void"), 50);
        E = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getIvSize", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "", "", "", "int"), 54);
        F = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setIvSize", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "int", "ivSize", "", "void"), 58);
        G = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "getKid", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "", "", "", "[B"), 62);
        H = eVar.H(org.aspectj.lang.c.f95144a, eVar.E("1", "setKid", "com.googlecode.mp4parser.boxes.piff.PiffSampleEncryptionBox", "[B", "kid", "", "void"), 66);
    }

    public int D() {
        j.b().c(org.aspectj.runtime.reflect.e.v(C, this, this));
        return this.f33399s;
    }

    public int E() {
        j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        return this.f33400t;
    }

    public byte[] F() {
        j.b().c(org.aspectj.runtime.reflect.e.v(G, this, this));
        return this.f33401u;
    }

    public void G(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(D, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33399s = i10;
    }

    public void H(int i10) {
        j.b().c(org.aspectj.runtime.reflect.e.w(F, this, this, org.aspectj.runtime.internal.e.k(i10)));
        this.f33400t = i10;
    }

    public void I(byte[] bArr) {
        j.b().c(org.aspectj.runtime.reflect.e.w(H, this, this, bArr));
        this.f33401u = bArr;
    }

    @DoNotParseDetail
    public void J(boolean z10) {
        if (z10) {
            setFlags(getFlags() | 1);
        } else {
            setFlags(getFlags() & 16777214);
        }
    }

    @Override // com.googlecode.mp4parser.a
    public byte[] l() {
        return new byte[]{-94, 57, 79, 82, 90, -101, 79, BinaryMemcacheOpcodes.DELETEQ, -94, 68, 108, 66, 124, 100, -115, -12};
    }

    @Override // com.googlecode.mp4parser.boxes.b
    @DoNotParseDetail
    public boolean y() {
        return (getFlags() & 1) > 0;
    }
}
