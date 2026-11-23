package com.umeng.analytics.pro;

import io.netty.handler.codec.http2.Http2CodecUtil;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
public class cn extends cu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final int f84537a = -65536;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final int f84538b = -2147418112;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final cz f84539h = new cz();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected boolean f84540c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected boolean f84541d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f84542e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected boolean f84543f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private byte[] f84544i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private byte[] f84545j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private byte[] f84546k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private byte[] f84547l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private byte[] f84548m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private byte[] f84549n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private byte[] f84550o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private byte[] f84551p;

    public static class a implements cw {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected boolean f84552a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        protected boolean f84553b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        protected int f84554c;

        public a() {
            this(false, true);
        }

        @Override // com.umeng.analytics.pro.cw
        public cu a(di diVar) {
            cn cnVar = new cn(diVar, this.f84552a, this.f84553b);
            int i10 = this.f84554c;
            if (i10 != 0) {
                cnVar.c(i10);
            }
            return cnVar;
        }

        public a(boolean z10, boolean z11) {
            this(z10, z11, 0);
        }

        public a(boolean z10, boolean z11, int i10) {
            this.f84552a = z10;
            this.f84553b = z11;
            this.f84554c = i10;
        }
    }

    public cn(di diVar) {
        this(diVar, false, true);
    }

    @Override // com.umeng.analytics.pro.cu
    public ByteBuffer A() throws cb {
        int iW = w();
        d(iW);
        if (this.f84600g.h() >= iW) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(this.f84600g.f(), this.f84600g.g(), iW);
            this.f84600g.a(iW);
            return byteBufferWrap;
        }
        byte[] bArr = new byte[iW];
        this.f84600g.d(bArr, 0, iW);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a() {
    }

    @Override // com.umeng.analytics.pro.cu
    public void b() {
    }

    @Override // com.umeng.analytics.pro.cu
    public void c() {
    }

    @Override // com.umeng.analytics.pro.cu
    public void d() throws cb {
        a((byte) 0);
    }

    @Override // com.umeng.analytics.pro.cu
    public void e() {
    }

    @Override // com.umeng.analytics.pro.cu
    public void f() {
    }

    @Override // com.umeng.analytics.pro.cu
    public void g() {
    }

    @Override // com.umeng.analytics.pro.cu
    public cs h() throws cb {
        int iW = w();
        if (iW < 0) {
            if (((-65536) & iW) == f84538b) {
                return new cs(z(), (byte) (iW & 255), w());
            }
            throw new cv(4, "Bad version in readMessageBegin");
        }
        if (this.f84540c) {
            throw new cv(4, "Missing version in readMessageBegin, old client?");
        }
        return new cs(b(iW), u(), w());
    }

    @Override // com.umeng.analytics.pro.cu
    public void i() {
    }

    @Override // com.umeng.analytics.pro.cu
    public cz j() {
        return f84539h;
    }

    @Override // com.umeng.analytics.pro.cu
    public void k() {
    }

    @Override // com.umeng.analytics.pro.cu
    public cp l() throws cb {
        byte bU = u();
        return new cp("", bU, bU == 0 ? (short) 0 : v());
    }

    @Override // com.umeng.analytics.pro.cu
    public void m() {
    }

    @Override // com.umeng.analytics.pro.cu
    public cr n() throws cb {
        return new cr(u(), u(), w());
    }

    @Override // com.umeng.analytics.pro.cu
    public void o() {
    }

    @Override // com.umeng.analytics.pro.cu
    public cq p() throws cb {
        return new cq(u(), w());
    }

    @Override // com.umeng.analytics.pro.cu
    public void q() {
    }

    @Override // com.umeng.analytics.pro.cu
    public cy r() throws cb {
        return new cy(u(), w());
    }

    @Override // com.umeng.analytics.pro.cu
    public void s() {
    }

    @Override // com.umeng.analytics.pro.cu
    public boolean t() throws cb {
        return u() == 1;
    }

    @Override // com.umeng.analytics.pro.cu
    public byte u() throws cb {
        if (this.f84600g.h() < 1) {
            a(this.f84548m, 0, 1);
            return this.f84548m[0];
        }
        byte b10 = this.f84600g.f()[this.f84600g.g()];
        this.f84600g.a(1);
        return b10;
    }

    @Override // com.umeng.analytics.pro.cu
    public short v() throws cb {
        int iG;
        byte[] bArrF = this.f84549n;
        if (this.f84600g.h() >= 2) {
            bArrF = this.f84600g.f();
            iG = this.f84600g.g();
            this.f84600g.a(2);
        } else {
            a(this.f84549n, 0, 2);
            iG = 0;
        }
        return (short) ((bArrF[iG + 1] & 255) | ((bArrF[iG] & 255) << 8));
    }

    @Override // com.umeng.analytics.pro.cu
    public int w() throws cb {
        int iG;
        byte[] bArrF = this.f84550o;
        if (this.f84600g.h() >= 4) {
            bArrF = this.f84600g.f();
            iG = this.f84600g.g();
            this.f84600g.a(4);
        } else {
            a(this.f84550o, 0, 4);
            iG = 0;
        }
        return (bArrF[iG + 3] & 255) | ((bArrF[iG] & 255) << 24) | ((bArrF[iG + 1] & 255) << 16) | ((bArrF[iG + 2] & 255) << 8);
    }

    @Override // com.umeng.analytics.pro.cu
    public long x() throws cb {
        int iG;
        byte[] bArrF = this.f84551p;
        if (this.f84600g.h() >= 8) {
            bArrF = this.f84600g.f();
            iG = this.f84600g.g();
            this.f84600g.a(8);
        } else {
            a(this.f84551p, 0, 8);
            iG = 0;
        }
        return ((long) (bArrF[iG + 7] & 255)) | (((long) (bArrF[iG] & 255)) << 56) | (((long) (bArrF[iG + 1] & 255)) << 48) | (((long) (bArrF[iG + 2] & 255)) << 40) | (((long) (bArrF[iG + 3] & 255)) << 32) | (((long) (bArrF[iG + 4] & 255)) << 24) | (((long) (bArrF[iG + 5] & 255)) << 16) | (((long) (bArrF[iG + 6] & 255)) << 8);
    }

    @Override // com.umeng.analytics.pro.cu
    public double y() throws cb {
        return Double.longBitsToDouble(x());
    }

    @Override // com.umeng.analytics.pro.cu
    public String z() throws cb {
        int iW = w();
        if (this.f84600g.h() < iW) {
            return b(iW);
        }
        try {
            String str = new String(this.f84600g.f(), this.f84600g.g(), iW, "UTF-8");
            this.f84600g.a(iW);
            return str;
        } catch (UnsupportedEncodingException unused) {
            throw new cb("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public cn(di diVar, boolean z10, boolean z11) {
        super(diVar);
        this.f84543f = false;
        this.f84544i = new byte[1];
        this.f84545j = new byte[2];
        this.f84546k = new byte[4];
        this.f84547l = new byte[8];
        this.f84548m = new byte[1];
        this.f84549n = new byte[2];
        this.f84550o = new byte[4];
        this.f84551p = new byte[8];
        this.f84540c = z10;
        this.f84541d = z11;
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(cz czVar) {
    }

    public String b(int i10) throws cb {
        try {
            d(i10);
            byte[] bArr = new byte[i10];
            this.f84600g.d(bArr, 0, i10);
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            throw new cb("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    public void c(int i10) {
        this.f84542e = i10;
        this.f84543f = true;
    }

    protected void d(int i10) throws cb {
        if (i10 < 0) {
            throw new cv("Negative length: " + i10);
        }
        if (this.f84543f) {
            int i11 = this.f84542e - i10;
            this.f84542e = i11;
            if (i11 >= 0) {
                return;
            }
            throw new cv("Message length exceeded: " + i10);
        }
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(cs csVar) throws cb {
        if (this.f84541d) {
            a(csVar.f84594b | f84538b);
            a(csVar.f84593a);
            a(csVar.f84595c);
        } else {
            a(csVar.f84593a);
            a(csVar.f84594b);
            a(csVar.f84595c);
        }
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(cp cpVar) throws cb {
        a(cpVar.f84586b);
        a(cpVar.f84587c);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(cr crVar) throws cb {
        a(crVar.f84590a);
        a(crVar.f84591b);
        a(crVar.f84592c);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(cq cqVar) throws cb {
        a(cqVar.f84588a);
        a(cqVar.f84589b);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(cy cyVar) throws cb {
        a(cyVar.f84610a);
        a(cyVar.f84611b);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(boolean z10) throws cb {
        a(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(byte b10) throws cb {
        byte[] bArr = this.f84544i;
        bArr[0] = b10;
        this.f84600g.b(bArr, 0, 1);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(short s10) throws cb {
        byte[] bArr = this.f84545j;
        bArr[0] = (byte) ((s10 >> 8) & 255);
        bArr[1] = (byte) (s10 & Http2CodecUtil.MAX_UNSIGNED_BYTE);
        this.f84600g.b(bArr, 0, 2);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(int i10) throws cb {
        byte[] bArr = this.f84546k;
        bArr[0] = (byte) ((i10 >> 24) & 255);
        bArr[1] = (byte) ((i10 >> 16) & 255);
        bArr[2] = (byte) ((i10 >> 8) & 255);
        bArr[3] = (byte) (i10 & 255);
        this.f84600g.b(bArr, 0, 4);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(long j10) throws cb {
        byte[] bArr = this.f84547l;
        bArr[0] = (byte) ((j10 >> 56) & 255);
        bArr[1] = (byte) ((j10 >> 48) & 255);
        bArr[2] = (byte) ((j10 >> 40) & 255);
        bArr[3] = (byte) ((j10 >> 32) & 255);
        bArr[4] = (byte) ((j10 >> 24) & 255);
        bArr[5] = (byte) ((j10 >> 16) & 255);
        bArr[6] = (byte) ((j10 >> 8) & 255);
        bArr[7] = (byte) (j10 & 255);
        this.f84600g.b(bArr, 0, 8);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(double d10) throws cb {
        a(Double.doubleToLongBits(d10));
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(String str) throws cb {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            a(bytes.length);
            this.f84600g.b(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new cb("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(ByteBuffer byteBuffer) throws cb {
        int iLimit = byteBuffer.limit() - byteBuffer.position();
        a(iLimit);
        this.f84600g.b(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), iLimit);
    }

    private int a(byte[] bArr, int i10, int i11) throws cb {
        d(i11);
        return this.f84600g.d(bArr, i10, i11);
    }
}
