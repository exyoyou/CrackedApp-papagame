package com.czhj.wire.okio;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
final class SegmentedByteString extends ByteString {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final transient byte[][] f26002e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final transient int[] f26003f;

    SegmentedByteString(Buffer buffer, int i10) {
        super(null);
        Util.checkOffsetAndCount(buffer.f25917c, 0L, i10);
        Segment segment = buffer.f25916b;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            int i14 = segment.f25994e;
            int i15 = segment.f25993d;
            if (i14 == i15) {
                throw new AssertionError("s.limit == s.pos");
            }
            i12 += i14 - i15;
            i13++;
            segment = segment.f25997h;
        }
        this.f26002e = new byte[i13][];
        this.f26003f = new int[i13 * 2];
        Segment segment2 = buffer.f25916b;
        int i16 = 0;
        while (i11 < i10) {
            byte[][] bArr = this.f26002e;
            bArr[i16] = segment2.f25992c;
            int i17 = segment2.f25994e;
            int i18 = segment2.f25993d;
            i11 += i17 - i18;
            if (i11 > i10) {
                i11 = i10;
            }
            int[] iArr = this.f26003f;
            iArr[i16] = i11;
            iArr[bArr.length + i16] = i18;
            segment2.f25995f = true;
            i16++;
            segment2 = segment2.f25997h;
        }
    }

    private int a(int i10) {
        int iBinarySearch = Arrays.binarySearch(this.f26003f, 0, this.f26002e.length, i10 + 1);
        return iBinarySearch >= 0 ? iBinarySearch : ~iBinarySearch;
    }

    private ByteString b() {
        return new ByteString(toByteArray());
    }

    private Object writeReplace() {
        return b();
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // com.czhj.wire.okio.ByteString
    public String base64() {
        return b().base64();
    }

    @Override // com.czhj.wire.okio.ByteString
    public String base64Url() {
        return b().base64Url();
    }

    @Override // com.czhj.wire.okio.ByteString
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == size() && rangeEquals(0, byteString, 0, size())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.czhj.wire.okio.ByteString
    public byte getByte(int i10) {
        Util.checkOffsetAndCount(this.f26003f[this.f26002e.length - 1], i10, 1L);
        int iA = a(i10);
        int i11 = iA == 0 ? 0 : this.f26003f[iA - 1];
        int[] iArr = this.f26003f;
        byte[][] bArr = this.f26002e;
        return bArr[iA][(i10 - i11) + iArr[bArr.length + iA]];
    }

    @Override // com.czhj.wire.okio.ByteString
    public int hashCode() {
        int i10 = this.f25923c;
        if (i10 != 0) {
            return i10;
        }
        int length = this.f26002e.length;
        int i11 = 0;
        int i12 = 0;
        int i13 = 1;
        while (i11 < length) {
            byte[] bArr = this.f26002e[i11];
            int[] iArr = this.f26003f;
            int i14 = iArr[length + i11];
            int i15 = iArr[i11];
            int i16 = (i15 - i12) + i14;
            while (i14 < i16) {
                i13 = (i13 * 31) + bArr[i14];
                i14++;
            }
            i11++;
            i12 = i15;
        }
        this.f25923c = i13;
        return i13;
    }

    @Override // com.czhj.wire.okio.ByteString
    public String hex() {
        return b().hex();
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString hmacSha1(ByteString byteString) {
        return b().hmacSha1(byteString);
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString hmacSha256(ByteString byteString) {
        return b().hmacSha256(byteString);
    }

    @Override // com.czhj.wire.okio.ByteString
    public int indexOf(byte[] bArr, int i10) {
        return b().indexOf(bArr, i10);
    }

    @Override // com.czhj.wire.okio.ByteString
    public int lastIndexOf(byte[] bArr, int i10) {
        return b().lastIndexOf(bArr, i10);
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString md5() {
        return b().md5();
    }

    @Override // com.czhj.wire.okio.ByteString
    public boolean rangeEquals(int i10, ByteString byteString, int i11, int i12) {
        if (i10 < 0 || i10 > size() - i12) {
            return false;
        }
        int iA = a(i10);
        while (i12 > 0) {
            int i13 = iA == 0 ? 0 : this.f26003f[iA - 1];
            int iMin = Math.min(i12, ((this.f26003f[iA] - i13) + i13) - i10);
            int[] iArr = this.f26003f;
            byte[][] bArr = this.f26002e;
            if (!byteString.rangeEquals(i11, bArr[iA], (i10 - i13) + iArr[bArr.length + iA], iMin)) {
                return false;
            }
            i10 += iMin;
            i11 += iMin;
            i12 -= iMin;
            iA++;
        }
        return true;
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString sha1() {
        return b().sha1();
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString sha256() {
        return b().sha256();
    }

    @Override // com.czhj.wire.okio.ByteString
    public int size() {
        return this.f26003f[this.f26002e.length - 1];
    }

    @Override // com.czhj.wire.okio.ByteString
    public String string(Charset charset) {
        return b().string(charset);
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString substring(int i10) {
        return b().substring(i10);
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString toAsciiLowercase() {
        return b().toAsciiLowercase();
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString toAsciiUppercase() {
        return b().toAsciiUppercase();
    }

    @Override // com.czhj.wire.okio.ByteString
    public byte[] toByteArray() {
        int[] iArr = this.f26003f;
        byte[][] bArr = this.f26002e;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr2 = this.f26003f;
            int i12 = iArr2[length + i10];
            int i13 = iArr2[i10];
            System.arraycopy(this.f26002e[i10], i12, bArr2, i11, i13 - i11);
            i10++;
            i11 = i13;
        }
        return bArr2;
    }

    @Override // com.czhj.wire.okio.ByteString
    public String toString() {
        return b().toString();
    }

    @Override // com.czhj.wire.okio.ByteString
    public String utf8() {
        return b().utf8();
    }

    @Override // com.czhj.wire.okio.ByteString
    public void write(OutputStream outputStream) throws IOException {
        if (outputStream == null) {
            throw new IllegalArgumentException("out == null");
        }
        int length = this.f26002e.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr = this.f26003f;
            int i12 = iArr[length + i10];
            int i13 = iArr[i10];
            outputStream.write(this.f26002e[i10], i12, i13 - i11);
            i10++;
            i11 = i13;
        }
    }

    @Override // com.czhj.wire.okio.ByteString
    void a(Buffer buffer) {
        int length = this.f26002e.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int[] iArr = this.f26003f;
            int i12 = iArr[length + i10];
            int i13 = iArr[i10];
            Segment segment = new Segment(this.f26002e[i10], i12, (i12 + i13) - i11, true, false);
            Segment segment2 = buffer.f25916b;
            if (segment2 == null) {
                segment.f25998i = segment;
                segment.f25997h = segment;
                buffer.f25916b = segment;
            } else {
                segment2.f25998i.push(segment);
            }
            i10++;
            i11 = i13;
        }
        buffer.f25917c += (long) i11;
    }

    @Override // com.czhj.wire.okio.ByteString
    public boolean rangeEquals(int i10, byte[] bArr, int i11, int i12) {
        if (i10 < 0 || i10 > size() - i12 || i11 < 0 || i11 > bArr.length - i12) {
            return false;
        }
        int iA = a(i10);
        while (i12 > 0) {
            int i13 = iA == 0 ? 0 : this.f26003f[iA - 1];
            int iMin = Math.min(i12, ((this.f26003f[iA] - i13) + i13) - i10);
            int[] iArr = this.f26003f;
            byte[][] bArr2 = this.f26002e;
            if (!Util.arrayRangeEquals(bArr2[iA], (i10 - i13) + iArr[bArr2.length + iA], bArr, i11, iMin)) {
                return false;
            }
            i10 += iMin;
            i11 += iMin;
            i12 -= iMin;
            iA++;
        }
        return true;
    }

    @Override // com.czhj.wire.okio.ByteString
    public ByteString substring(int i10, int i11) {
        return b().substring(i10, i11);
    }

    @Override // com.czhj.wire.okio.ByteString
    byte[] a() {
        return toByteArray();
    }
}
