package com.xinzhu.overmind.utils;

import java.util.ArrayList;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes8.dex */
public final class h {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f90066l = "EncodedBuffer";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<byte[]> f90067a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f90068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f90069c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte[] f90070d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f90071e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f90072f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private byte[] f90073g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f90074h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f90075i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f90076j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f90077k;

    public h() {
        this(0);
    }

    private static int K(int i10) {
        return (i10 >> 31) ^ (i10 << 1);
    }

    private static long L(long j10) {
        return (j10 >> 63) ^ (j10 << 1);
    }

    private static int b(String str, String str2, int i10, byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (i11 % 16 == 0) {
                if (i11 != 0) {
                    stringBuffer = new StringBuffer();
                }
                stringBuffer.append(str2);
                stringBuffer.append('[');
                stringBuffer.append(i10 + i11);
                stringBuffer.append(']');
                stringBuffer.append(' ');
            } else {
                stringBuffer.append(' ');
            }
            byte b10 = bArr[i11];
            byte b11 = (byte) ((b10 >> 4) & 15);
            if (b11 < 10) {
                stringBuffer.append((char) (b11 + com.sigmob.sdk.archives.tar.e.H));
            } else {
                stringBuffer.append((char) (b11 + 87));
            }
            byte b12 = (byte) (b10 & 15);
            if (b12 < 10) {
                stringBuffer.append((char) (b12 + com.sigmob.sdk.archives.tar.e.H));
            } else {
                stringBuffer.append((char) (b12 + 87));
            }
        }
        return length;
    }

    public static void c(String str, String str2, byte[] bArr) {
        b(str, str2, 0, bArr);
    }

    public static int i(int i10) {
        if ((i10 & (-128)) == 0) {
            return 1;
        }
        if ((i10 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i10) == 0) {
            return 3;
        }
        return (i10 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int j(long j10) {
        if (((-128) & j10) == 0) {
            return 1;
        }
        if (((-16384) & j10) == 0) {
            return 2;
        }
        if (((-2097152) & j10) == 0) {
            return 3;
        }
        if (((-268435456) & j10) == 0) {
            return 4;
        }
        if (((-34359738368L) & j10) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j10) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j10) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j10) == 0) {
            return 8;
        }
        return (j10 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int k(int i10) {
        return i(K(i10));
    }

    public static int l(long j10) {
        return j(L(j10));
    }

    private void s() {
        int i10 = this.f90072f + 1;
        this.f90072f = i10;
        if (i10 >= this.f90069c) {
            byte[] bArr = new byte[this.f90068b];
            this.f90070d = bArr;
            this.f90067a.add(bArr);
            this.f90069c++;
        } else {
            this.f90070d = this.f90067a.get(i10);
        }
        this.f90071e = 0;
    }

    public void A(int i10, int i11) {
        if (this.f90076j < 0) {
            throw new IllegalStateException("writeFromThisBuffer before startEditing");
        }
        if (i10 < r()) {
            throw new IllegalArgumentException("Can only move forward in the buffer -- srcOffset=" + i10 + " size=" + i11 + " " + g());
        }
        if (i10 + i11 > this.f90077k) {
            throw new IllegalArgumentException("Trying to move more data than there is -- srcOffset=" + i10 + " size=" + i11 + " " + g());
        }
        if (i11 == 0) {
            return;
        }
        int i12 = this.f90072f;
        int i13 = this.f90068b;
        int i14 = this.f90071e;
        if (i10 == (i12 * i13) + i14) {
            if (i11 <= i13 - i14) {
                this.f90071e = i14 + i11;
                return;
            }
            int i15 = i11 - (i13 - i14);
            int i16 = i15 % i13;
            this.f90071e = i16;
            if (i16 == 0) {
                this.f90071e = i13;
                this.f90072f = i12 + (i15 / i13);
            } else {
                this.f90072f = i12 + (i15 / i13) + 1;
            }
            this.f90070d = this.f90067a.get(this.f90072f);
            return;
        }
        int i17 = i10 / i13;
        byte[] bArr = this.f90067a.get(i17);
        int i18 = i10 % this.f90068b;
        while (i11 > 0) {
            if (this.f90071e >= this.f90068b) {
                s();
            }
            if (i18 >= this.f90068b) {
                i17++;
                bArr = this.f90067a.get(i17);
                i18 = 0;
            }
            int i19 = this.f90068b;
            int iMin = Math.min(i11, Math.min(i19 - this.f90071e, i19 - i18));
            System.arraycopy(bArr, i18, this.f90070d, this.f90071e, iMin);
            this.f90071e += iMin;
            i18 += iMin;
            i11 -= iMin;
        }
    }

    public void B(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        C(bArr, 0, bArr.length);
    }

    public void C(byte[] bArr, int i10, int i11) {
        if (bArr == null) {
            return;
        }
        int i12 = this.f90068b;
        int i13 = this.f90071e;
        int i14 = i11 < i12 - i13 ? i11 : i12 - i13;
        if (i14 > 0) {
            System.arraycopy(bArr, i10, this.f90070d, i13, i14);
            this.f90071e += i14;
            i11 -= i14;
            i10 += i14;
        }
        while (i11 > 0) {
            s();
            int i15 = this.f90068b;
            if (i11 < i15) {
                i15 = i11;
            }
            System.arraycopy(bArr, i10, this.f90070d, this.f90071e, i15);
            this.f90071e += i15;
            i11 -= i15;
            i10 += i15;
        }
    }

    public void D(byte b10) {
        if (this.f90071e >= this.f90068b) {
            s();
        }
        byte[] bArr = this.f90070d;
        int i10 = this.f90071e;
        this.f90071e = i10 + 1;
        bArr[i10] = b10;
    }

    public void E(int i10) {
        D((byte) i10);
        D((byte) (i10 >> 8));
        D((byte) (i10 >> 16));
        D((byte) (i10 >> 24));
    }

    public void F(long j10) {
        D((byte) j10);
        D((byte) (j10 >> 8));
        D((byte) (j10 >> 16));
        D((byte) (j10 >> 24));
        D((byte) (j10 >> 32));
        D((byte) (j10 >> 40));
        D((byte) (j10 >> 48));
        D((byte) (j10 >> 56));
    }

    public void G(int i10) {
        while ((i10 & (-128)) != 0) {
            D((byte) ((i10 & 127) | 128));
            i10 >>>= 7;
        }
        D((byte) i10);
    }

    public void H(long j10) {
        while (((-128) & j10) != 0) {
            D((byte) ((127 & j10) | 128));
            j10 >>>= 7;
        }
        D((byte) j10);
    }

    public void I(int i10) {
        G(K(i10));
    }

    public void J(long j10) {
        H(L(j10));
    }

    public void a(String str) {
        int size = this.f90067a.size();
        int iB = 0;
        for (int i10 = 0; i10 < size; i10++) {
            iB += b(str, "{" + i10 + "} ", iB, this.f90067a.get(i10));
        }
    }

    public void d(int i10, int i11) {
        byte[] bArr = this.f90067a.get(i10 / this.f90068b);
        int i12 = this.f90068b;
        bArr[i10 % i12] = (byte) i11;
        int i13 = i10 + 1;
        byte[] bArr2 = this.f90067a.get(i13 / i12);
        int i14 = this.f90068b;
        bArr2[i13 % i14] = (byte) (i11 >> 8);
        int i15 = i10 + 2;
        byte[] bArr3 = this.f90067a.get(i15 / i14);
        int i16 = this.f90068b;
        bArr3[i15 % i16] = (byte) (i11 >> 16);
        int i17 = i10 + 3;
        this.f90067a.get(i17 / i16)[i17 % this.f90068b] = (byte) (i11 >> 24);
    }

    public byte[] e(int i10) {
        byte[] bArr = new byte[i10];
        int i11 = i10 / this.f90068b;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            System.arraycopy(this.f90067a.get(i12), 0, bArr, i13, this.f90068b);
            i13 += this.f90068b;
            i12++;
        }
        int i14 = i10 - (i11 * this.f90068b);
        if (i14 > 0) {
            System.arraycopy(this.f90067a.get(i12), 0, bArr, i13, i14);
        }
        return bArr;
    }

    public int f() {
        return this.f90067a.size();
    }

    public String g() {
        return "EncodedBuffer( mChunkSize=" + this.f90068b + " mBuffers.size=" + this.f90067a.size() + " mBufferCount=" + this.f90069c + " mWriteIndex=" + this.f90071e + " mWriteBufIndex=" + this.f90072f + " mReadBufIndex=" + this.f90074h + " mReadIndex=" + this.f90075i + " mReadableSize=" + this.f90077k + " mReadLimit=" + this.f90076j + " )";
    }

    public int h(int i10) {
        byte[] bArr = this.f90067a.get(i10 / this.f90068b);
        int i11 = this.f90068b;
        int i12 = bArr[i10 % i11] & 255;
        int i13 = i10 + 1;
        byte[] bArr2 = this.f90067a.get(i13 / i11);
        int i14 = this.f90068b;
        int i15 = i12 | ((bArr2[i13 % i14] & 255) << 8);
        int i16 = i10 + 2;
        byte[] bArr3 = this.f90067a.get(i16 / i14);
        int i17 = this.f90068b;
        int i18 = i10 + 3;
        return ((this.f90067a.get(i18 / i17)[i18 % this.f90068b] & 255) << 24) | i15 | ((bArr3[i16 % i17] & 255) << 16);
    }

    public int m() {
        return (this.f90074h * this.f90068b) + this.f90075i;
    }

    public int n() {
        return this.f90077k;
    }

    public int o() {
        return ((this.f90069c - 1) * this.f90068b) + this.f90071e;
    }

    public int p() {
        return this.f90072f;
    }

    public int q() {
        return this.f90071e;
    }

    public int r() {
        return (this.f90072f * this.f90068b) + this.f90071e;
    }

    public byte t() {
        int i10 = this.f90074h;
        int i11 = this.f90069c;
        if (i10 <= i11 && (i10 != i11 - 1 || this.f90075i < this.f90076j)) {
            if (this.f90075i >= this.f90068b) {
                int i12 = i10 + 1;
                this.f90074h = i12;
                this.f90073g = this.f90067a.get(i12);
                this.f90075i = 0;
            }
            byte[] bArr = this.f90073g;
            int i13 = this.f90075i;
            this.f90075i = i13 + 1;
            return bArr[i13];
        }
        throw new IndexOutOfBoundsException("Trying to read too much data mReadBufIndex=" + this.f90074h + " mBufferCount=" + this.f90069c + " mReadIndex=" + this.f90075i + " mReadLimit=" + this.f90076j);
    }

    public int u() {
        return (t() & 255) | ((t() & 255) << 8) | ((t() & 255) << 16) | ((t() & 255) << 24);
    }

    public long v() {
        int i10 = 0;
        long j10 = 0;
        do {
            byte bT = t();
            j10 |= ((long) (bT & ByteCompanionObject.MAX_VALUE)) << i10;
            if ((bT & 128) == 0) {
                return j10;
            }
            i10 += 7;
        } while (i10 <= 64);
        throw new RuntimeException("Varint too long -- " + g());
    }

    public void w() {
        this.f90073g = this.f90067a.get(0);
        this.f90074h = 0;
        this.f90075i = 0;
    }

    public void x(int i10) {
        if (i10 > r()) {
            throw new RuntimeException("rewindWriteTo only can go backwards" + i10);
        }
        int i11 = this.f90068b;
        int i12 = i10 / i11;
        this.f90072f = i12;
        int i13 = i10 % i11;
        this.f90071e = i13;
        if (i13 == 0 && i12 != 0) {
            this.f90071e = i11;
            this.f90072f = i12 - 1;
        }
        this.f90070d = this.f90067a.get(this.f90072f);
    }

    public void y(int i10) {
        if (i10 < 0) {
            throw new RuntimeException("skipRead with negative amount=" + i10);
        }
        if (i10 == 0) {
            return;
        }
        int i11 = this.f90068b;
        int i12 = this.f90075i;
        if (i10 <= i11 - i12) {
            this.f90075i = i12 + i10;
            return;
        }
        int i13 = i10 - (i11 - i12);
        int i14 = i13 % i11;
        this.f90075i = i14;
        if (i14 == 0) {
            this.f90075i = i11;
            this.f90074h += i13 / i11;
        } else {
            this.f90074h += (i13 / i11) + 1;
        }
        this.f90073g = this.f90067a.get(this.f90074h);
    }

    public void z() {
        int i10 = this.f90072f * this.f90068b;
        int i11 = this.f90071e;
        this.f90077k = i10 + i11;
        this.f90076j = i11;
        byte[] bArr = this.f90067a.get(0);
        this.f90070d = bArr;
        this.f90071e = 0;
        this.f90072f = 0;
        this.f90073g = bArr;
        this.f90074h = 0;
        this.f90075i = 0;
    }

    public h(int i10) {
        ArrayList<byte[]> arrayList = new ArrayList<>();
        this.f90067a = arrayList;
        this.f90076j = -1;
        this.f90077k = -1;
        i10 = i10 <= 0 ? 8192 : i10;
        this.f90068b = i10;
        byte[] bArr = new byte[i10];
        this.f90070d = bArr;
        arrayList.add(bArr);
        this.f90069c = 1;
    }
}
