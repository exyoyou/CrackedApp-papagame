package com.umeng.analytics.pro;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes9.dex */
public class co extends cu {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final cz f84555d = new cz("");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final cp f84556e = new cp("", (byte) 0, 0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final byte[] f84557f = {0, 0, 1, 3, 7, 0, 4, 0, 5, 0, 6, 8, 12, 11, 10, 9};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final byte f84558h = -126;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final byte f84559i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final byte f84560j = 31;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final byte f84561k = -32;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f84562l = 5;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    byte[] f84563a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    byte[] f84564b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    byte[] f84565c;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private bt f84566m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private short f84567n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private cp f84568o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Boolean f84569p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final long f84570q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private byte[] f84571r;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final byte f84573a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final byte f84574b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final byte f84575c = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final byte f84576d = 4;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final byte f84577e = 5;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final byte f84578f = 6;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final byte f84579g = 7;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final byte f84580h = 8;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final byte f84581i = 9;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final byte f84582j = 10;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final byte f84583k = 11;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final byte f84584l = 12;

        private b() {
        }
    }

    public co(di diVar, long j10) {
        super(diVar);
        this.f84566m = new bt(15);
        this.f84567n = (short) 0;
        this.f84568o = null;
        this.f84569p = null;
        this.f84563a = new byte[5];
        this.f84564b = new byte[10];
        this.f84571r = new byte[1];
        this.f84565c = new byte[1];
        this.f84570q = j10;
    }

    private int E() throws cb {
        int i10 = 0;
        if (this.f84600g.h() >= 5) {
            byte[] bArrF = this.f84600g.f();
            int iG = this.f84600g.g();
            int i11 = 0;
            int i12 = 0;
            while (true) {
                byte b10 = bArrF[iG + i10];
                i11 |= (b10 & ByteCompanionObject.MAX_VALUE) << i12;
                if ((b10 & 128) != 128) {
                    this.f84600g.a(i10 + 1);
                    return i11;
                }
                i12 += 7;
                i10++;
            }
        } else {
            int i13 = 0;
            while (true) {
                byte bU = u();
                i10 |= (bU & ByteCompanionObject.MAX_VALUE) << i13;
                if ((bU & 128) != 128) {
                    return i10;
                }
                i13 += 7;
            }
        }
    }

    private long F() throws cb {
        int i10 = 0;
        long j10 = 0;
        if (this.f84600g.h() >= 10) {
            byte[] bArrF = this.f84600g.f();
            int iG = this.f84600g.g();
            long j11 = 0;
            int i11 = 0;
            while (true) {
                byte b10 = bArrF[iG + i10];
                j11 |= ((long) (b10 & ByteCompanionObject.MAX_VALUE)) << i11;
                if ((b10 & 128) != 128) {
                    this.f84600g.a(i10 + 1);
                    return j11;
                }
                i11 += 7;
                i10++;
            }
        } else {
            while (true) {
                byte bU = u();
                j10 |= ((long) (bU & ByteCompanionObject.MAX_VALUE)) << i10;
                if ((bU & 128) != 128) {
                    return j10;
                }
                i10 += 7;
            }
        }
    }

    private int c(int i10) {
        return (i10 >> 31) ^ (i10 << 1);
    }

    private long d(long j10) {
        return (-(j10 & 1)) ^ (j10 >>> 1);
    }

    private int g(int i10) {
        return (-(i10 & 1)) ^ (i10 >>> 1);
    }

    @Override // com.umeng.analytics.pro.cu
    public ByteBuffer A() throws cb {
        int iE = E();
        f(iE);
        if (iE == 0) {
            return ByteBuffer.wrap(new byte[0]);
        }
        byte[] bArr = new byte[iE];
        this.f84600g.d(bArr, 0, iE);
        return ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.analytics.pro.cu
    public void B() {
        this.f84566m.c();
        this.f84567n = (short) 0;
    }

    @Override // com.umeng.analytics.pro.cu
    public void a() throws cb {
    }

    @Override // com.umeng.analytics.pro.cu
    public void b() throws cb {
        this.f84567n = this.f84566m.a();
    }

    @Override // com.umeng.analytics.pro.cu
    public void e() throws cb {
    }

    @Override // com.umeng.analytics.pro.cu
    public void f() throws cb {
    }

    @Override // com.umeng.analytics.pro.cu
    public cs h() throws cb {
        byte bU = u();
        if (bU != -126) {
            throw new cv("Expected protocol id " + Integer.toHexString(-126) + " but got " + Integer.toHexString(bU));
        }
        byte bU2 = u();
        byte b10 = (byte) (bU2 & f84560j);
        if (b10 == 1) {
            return new cs(z(), (byte) ((bU2 >> 5) & 3), E());
        }
        throw new cv("Expected version 1 but got " + ((int) b10));
    }

    @Override // com.umeng.analytics.pro.cu
    public void i() throws cb {
    }

    @Override // com.umeng.analytics.pro.cu
    public cz j() throws cb {
        this.f84566m.a(this.f84567n);
        this.f84567n = (short) 0;
        return f84555d;
    }

    @Override // com.umeng.analytics.pro.cu
    public void k() throws cb {
        this.f84567n = this.f84566m.a();
    }

    @Override // com.umeng.analytics.pro.cu
    public cp l() throws cb {
        byte bU = u();
        if (bU == 0) {
            return f84556e;
        }
        short s10 = (short) ((bU & 240) >> 4);
        byte b10 = (byte) (bU & 15);
        cp cpVar = new cp("", d(b10), s10 == 0 ? v() : (short) (this.f84567n + s10));
        if (c(bU)) {
            this.f84569p = b10 == 1 ? Boolean.TRUE : Boolean.FALSE;
        }
        this.f84567n = cpVar.f84587c;
        return cpVar;
    }

    @Override // com.umeng.analytics.pro.cu
    public void m() throws cb {
    }

    @Override // com.umeng.analytics.pro.cu
    public cr n() throws cb {
        int iE = E();
        byte bU = iE == 0 ? (byte) 0 : u();
        return new cr(d((byte) (bU >> 4)), d((byte) (bU & 15)), iE);
    }

    @Override // com.umeng.analytics.pro.cu
    public void o() throws cb {
    }

    @Override // com.umeng.analytics.pro.cu
    public cq p() throws cb {
        byte bU = u();
        int iE = (bU >> 4) & 15;
        if (iE == 15) {
            iE = E();
        }
        return new cq(d(bU), iE);
    }

    @Override // com.umeng.analytics.pro.cu
    public void q() throws cb {
    }

    @Override // com.umeng.analytics.pro.cu
    public cy r() throws cb {
        return new cy(p());
    }

    @Override // com.umeng.analytics.pro.cu
    public void s() throws cb {
    }

    @Override // com.umeng.analytics.pro.cu
    public boolean t() throws cb {
        Boolean bool = this.f84569p;
        if (bool == null) {
            return u() == 1;
        }
        boolean zBooleanValue = bool.booleanValue();
        this.f84569p = null;
        return zBooleanValue;
    }

    @Override // com.umeng.analytics.pro.cu
    public byte u() throws cb {
        if (this.f84600g.h() <= 0) {
            this.f84600g.d(this.f84565c, 0, 1);
            return this.f84565c[0];
        }
        byte b10 = this.f84600g.f()[this.f84600g.g()];
        this.f84600g.a(1);
        return b10;
    }

    @Override // com.umeng.analytics.pro.cu
    public short v() throws cb {
        return (short) g(E());
    }

    @Override // com.umeng.analytics.pro.cu
    public int w() throws cb {
        return g(E());
    }

    @Override // com.umeng.analytics.pro.cu
    public long x() throws cb {
        return d(F());
    }

    @Override // com.umeng.analytics.pro.cu
    public double y() throws cb {
        byte[] bArr = new byte[8];
        this.f84600g.d(bArr, 0, 8);
        return Double.longBitsToDouble(a(bArr));
    }

    @Override // com.umeng.analytics.pro.cu
    public String z() throws cb {
        int iE = E();
        f(iE);
        if (iE == 0) {
            return "";
        }
        try {
            if (this.f84600g.h() < iE) {
                return new String(e(iE), "UTF-8");
            }
            String str = new String(this.f84600g.f(), this.f84600g.g(), iE, "UTF-8");
            this.f84600g.a(iE);
            return str;
        } catch (UnsupportedEncodingException unused) {
            throw new cb("UTF-8 not supported!");
        }
    }

    public static class a implements cw {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f84572a;

        public a() {
            this.f84572a = -1L;
        }

        @Override // com.umeng.analytics.pro.cw
        public cu a(di diVar) {
            return new co(diVar, this.f84572a);
        }

        public a(int i10) {
            this.f84572a = i10;
        }
    }

    private void b(int i10) throws cb {
        int i11 = 0;
        while ((i10 & (-128)) != 0) {
            this.f84563a[i11] = (byte) ((i10 & 127) | 128);
            i10 >>>= 7;
            i11++;
        }
        byte[] bArr = this.f84563a;
        bArr[i11] = (byte) i10;
        this.f84600g.b(bArr, 0, i11 + 1);
    }

    private long c(long j10) {
        return (j10 >> 63) ^ (j10 << 1);
    }

    private byte[] e(int i10) throws cb {
        if (i10 == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i10];
        this.f84600g.d(bArr, 0, i10);
        return bArr;
    }

    private void f(int i10) throws cv {
        if (i10 < 0) {
            throw new cv("Negative length: " + i10);
        }
        long j10 = this.f84570q;
        if (j10 == -1 || i10 <= j10) {
            return;
        }
        throw new cv("Length exceeded max allowed: " + i10);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(cs csVar) throws cb {
        b(f84558h);
        d(((csVar.f84594b << 5) & (-32)) | 1);
        b(csVar.f84595c);
        a(csVar.f84593a);
    }

    @Override // com.umeng.analytics.pro.cu
    public void d() throws cb {
        b((byte) 0);
    }

    @Override // com.umeng.analytics.pro.cu
    public void g() throws cb {
    }

    private void d(int i10) throws cb {
        b((byte) i10);
    }

    @Override // com.umeng.analytics.pro.cu
    public void c() throws cb {
    }

    private boolean c(byte b10) {
        int i10 = b10 & 15;
        return i10 == 1 || i10 == 2;
    }

    private byte d(byte b10) throws cv {
        byte b11 = (byte) (b10 & 15);
        switch (b11) {
            case 0:
                return (byte) 0;
            case 1:
            case 2:
                return (byte) 2;
            case 3:
                return (byte) 3;
            case 4:
                return (byte) 6;
            case 5:
                return (byte) 8;
            case 6:
                return (byte) 10;
            case 7:
                return (byte) 4;
            case 8:
                return (byte) 11;
            case 9:
                return (byte) 15;
            case 10:
                return (byte) 14;
            case 11:
                return (byte) 13;
            case 12:
                return (byte) 12;
            default:
                throw new cv("don't know what type: " + ((int) b11));
        }
    }

    private byte e(byte b10) {
        return f84557f[b10];
    }

    private void b(long j10) throws cb {
        int i10 = 0;
        while (((-128) & j10) != 0) {
            this.f84564b[i10] = (byte) ((127 & j10) | 128);
            j10 >>>= 7;
            i10++;
        }
        byte[] bArr = this.f84564b;
        bArr[i10] = (byte) j10;
        this.f84600g.b(bArr, 0, i10 + 1);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(cz czVar) throws cb {
        this.f84566m.a(this.f84567n);
        this.f84567n = (short) 0;
    }

    private void b(byte b10) throws cb {
        byte[] bArr = this.f84571r;
        bArr[0] = b10;
        this.f84600g.b(bArr);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(cp cpVar) throws cb {
        if (cpVar.f84586b == 2) {
            this.f84568o = cpVar;
        } else {
            a(cpVar, (byte) -1);
        }
    }

    public co(di diVar) {
        this(diVar, -1L);
    }

    private void a(cp cpVar, byte b10) throws cb {
        if (b10 == -1) {
            b10 = e(cpVar.f84586b);
        }
        short s10 = cpVar.f84587c;
        short s11 = this.f84567n;
        if (s10 > s11 && s10 - s11 <= 15) {
            d(b10 | ((s10 - s11) << 4));
        } else {
            b(b10);
            a(cpVar.f84587c);
        }
        this.f84567n = cpVar.f84587c;
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(cr crVar) throws cb {
        int i10 = crVar.f84592c;
        if (i10 == 0) {
            d(0);
            return;
        }
        b(i10);
        d(e(crVar.f84591b) | (e(crVar.f84590a) << 4));
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(cq cqVar) throws cb {
        a(cqVar.f84588a, cqVar.f84589b);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(cy cyVar) throws cb {
        a(cyVar.f84610a, cyVar.f84611b);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(boolean z10) throws cb {
        cp cpVar = this.f84568o;
        if (cpVar != null) {
            a(cpVar, z10 ? (byte) 1 : (byte) 2);
            this.f84568o = null;
        } else {
            b(z10 ? (byte) 1 : (byte) 2);
        }
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(byte b10) throws cb {
        b(b10);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(short s10) throws cb {
        b(c((int) s10));
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(int i10) throws cb {
        b(c(i10));
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(long j10) throws cb {
        b(c(j10));
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(double d10) throws cb {
        byte[] bArr = {0, 0, 0, 0, 0, 0, 0, 0};
        a(Double.doubleToLongBits(d10), bArr, 0);
        this.f84600g.b(bArr);
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(String str) throws cb {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            a(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException unused) {
            throw new cb("UTF-8 not supported!");
        }
    }

    @Override // com.umeng.analytics.pro.cu
    public void a(ByteBuffer byteBuffer) throws cb {
        a(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.limit() - byteBuffer.position());
    }

    private void a(byte[] bArr, int i10, int i11) throws cb {
        b(i11);
        this.f84600g.b(bArr, i10, i11);
    }

    protected void a(byte b10, int i10) throws cb {
        if (i10 <= 14) {
            d(e(b10) | (i10 << 4));
        } else {
            d(e(b10) | 240);
            b(i10);
        }
    }

    private void a(long j10, byte[] bArr, int i10) {
        bArr[i10 + 0] = (byte) (j10 & 255);
        bArr[i10 + 1] = (byte) ((j10 >> 8) & 255);
        bArr[i10 + 2] = (byte) ((j10 >> 16) & 255);
        bArr[i10 + 3] = (byte) ((j10 >> 24) & 255);
        bArr[i10 + 4] = (byte) ((j10 >> 32) & 255);
        bArr[i10 + 5] = (byte) ((j10 >> 40) & 255);
        bArr[i10 + 6] = (byte) ((j10 >> 48) & 255);
        bArr[i10 + 7] = (byte) ((j10 >> 56) & 255);
    }

    private long a(byte[] bArr) {
        return ((((long) bArr[7]) & 255) << 56) | ((((long) bArr[6]) & 255) << 48) | ((((long) bArr[5]) & 255) << 40) | ((((long) bArr[4]) & 255) << 32) | ((((long) bArr[3]) & 255) << 24) | ((((long) bArr[2]) & 255) << 16) | ((((long) bArr[1]) & 255) << 8) | (255 & ((long) bArr[0]));
    }
}
