package com.byazt.na;

import com.android.dx.io.Opcodes;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.sigmob.sdk.archives.tar.e;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 662, 20})
public final class c implements tt, ve, Cloneable, ByteChannel {
    public static final byte[] ve = {e.H, e.I, e.J, e.K, e.L, e.M, e.N, e.O, 56, 57, 97, 98, 99, 100, 101, 102};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f17050c;
    public long tt;

    public boolean c() {
        return this.tt == 0;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public void close() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        long j10 = this.tt;
        if (j10 != cVar.tt) {
            return false;
        }
        long j11 = 0;
        if (j10 == 0) {
            return true;
        }
        a aVar = this.f17050c;
        a aVar2 = cVar.f17050c;
        int i10 = aVar.tt;
        int i11 = aVar2.tt;
        while (j11 < this.tt) {
            long jMin = Math.min(aVar.ve - i10, aVar2.ve - i11);
            int i12 = 0;
            while (i12 < jMin) {
                int i13 = i10 + 1;
                int i14 = i11 + 1;
                if (aVar.f17048c[i10] != aVar2.f17048c[i11]) {
                    return false;
                }
                i12++;
                i10 = i13;
                i11 = i14;
            }
            if (i10 == aVar.ve) {
                aVar = aVar.f17047a;
                i10 = aVar.tt;
            }
            if (i11 == aVar2.ve) {
                aVar2 = aVar2.f17047a;
                i11 = aVar2.tt;
            }
            j11 += jMin;
        }
        return true;
    }

    @Override // java.io.Flushable
    public void flush() {
    }

    public int hashCode() {
        a aVar = this.f17050c;
        if (aVar == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = aVar.ve;
            for (int i12 = aVar.tt; i12 < i11; i12++) {
                i10 = (i10 * 31) + aVar.f17048c[i12];
            }
            aVar = aVar.f17047a;
        } while (aVar != this.f17050c);
        return i10;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public final uj n() {
        long j10 = this.tt;
        if (j10 <= 2147483647L) {
            return uj((int) j10);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.tt);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        a aVar = this.f17050c;
        if (aVar == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), aVar.ve - aVar.tt);
        byteBuffer.put(aVar.f17048c, aVar.tt, iMin);
        int i10 = aVar.tt + iMin;
        aVar.tt = i10;
        this.tt -= (long) iMin;
        if (i10 == aVar.ve) {
            this.f17050c = aVar.tt();
            sp.c(aVar);
        }
        return iMin;
    }

    public String toString() {
        return n().toString();
    }

    public byte tt() {
        long j10 = this.tt;
        if (j10 == 0) {
            throw new IllegalStateException("size == 0");
        }
        a aVar = this.f17050c;
        int i10 = aVar.tt;
        int i11 = aVar.ve;
        int i12 = i10 + 1;
        byte b10 = aVar.f17048c[i10];
        this.tt = j10 - 1;
        if (i12 == i11) {
            this.f17050c = aVar.tt();
            sp.c(aVar);
        } else {
            aVar.tt = i12;
        }
        return b10;
    }

    /* JADX INFO: renamed from: uj, reason: merged with bridge method [inline-methods] */
    public c clone() {
        c cVar = new c();
        if (this.tt == 0) {
            return cVar;
        }
        a aVarC = this.f17050c.c();
        cVar.f17050c = aVarC;
        aVarC.sp = aVarC;
        aVarC.f17047a = aVarC;
        a aVar = this.f17050c;
        while (true) {
            aVar = aVar.f17047a;
            if (aVar == this.f17050c) {
                cVar.tt = this.tt;
                return cVar;
            }
            cVar.f17050c.sp.c(aVar.c());
        }
    }

    public String ve() {
        try {
            return c(this.tt, da.f17051c);
        } catch (EOFException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            throw new IllegalArgumentException("source == null");
        }
        int iRemaining = byteBuffer.remaining();
        int i10 = iRemaining;
        while (i10 > 0) {
            a aVarVe = ve(1);
            int iMin = Math.min(i10, 8192 - aVarVe.ve);
            byteBuffer.get(aVarVe.f17048c, aVarVe.ve, iMin);
            i10 -= iMin;
            aVarVe.ve += iMin;
        }
        this.tt += (long) iRemaining;
        return iRemaining;
    }

    public String c(long j10, Charset charset) throws EOFException {
        da.c(this.tt, 0L, j10);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j10 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j10)));
        }
        if (j10 == 0) {
            return "";
        }
        a aVar = this.f17050c;
        int i10 = aVar.tt;
        if (((long) i10) + j10 > aVar.ve) {
            return new String(c(j10), charset);
        }
        String str = new String(aVar.f17048c, i10, (int) j10, charset);
        int i11 = (int) (((long) aVar.tt) + j10);
        aVar.tt = i11;
        this.tt -= j10;
        if (i11 == aVar.ve) {
            this.f17050c = aVar.tt();
            sp.c(aVar);
        }
        return str;
    }

    public a ve(int i10) {
        if (i10 > 0 && i10 <= 8192) {
            a aVar = this.f17050c;
            if (aVar == null) {
                a aVarC = sp.c();
                this.f17050c = aVarC;
                aVarC.sp = aVarC;
                aVarC.f17047a = aVarC;
                return aVarC;
            }
            a aVar2 = aVar.sp;
            return (aVar2.ve + i10 > 8192 || !aVar2.f17049n) ? aVar2.c(sp.c()) : aVar2;
        }
        throw new IllegalArgumentException();
    }

    public final uj uj(int i10) {
        if (i10 == 0) {
            return uj.ve;
        }
        return new x(this, i10);
    }

    public c tt(byte[] bArr, int i10, int i11) {
        if (bArr != null) {
            long j10 = i11;
            da.c(bArr.length, i10, j10);
            int i12 = i11 + i10;
            while (i10 < i12) {
                a aVarVe = ve(1);
                int iMin = Math.min(i12 - i10, 8192 - aVarVe.ve);
                System.arraycopy(bArr, i10, aVarVe.f17048c, aVarVe.ve, iMin);
                i10 += iMin;
                aVarVe.ve += iMin;
            }
            this.tt += j10;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    public byte[] c(long j10) throws EOFException {
        da.c(this.tt, 0L, j10);
        if (j10 <= 2147483647L) {
            byte[] bArr = new byte[(int) j10];
            c(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j10)));
    }

    public void c(byte[] bArr) throws EOFException {
        int i10 = 0;
        while (i10 < bArr.length) {
            int iC = c(bArr, i10, bArr.length - i10);
            if (iC == -1) {
                throw new EOFException();
            }
            i10 += iC;
        }
    }

    public c tt(int i10) {
        a aVarVe = ve(1);
        byte[] bArr = aVarVe.f17048c;
        int i11 = aVarVe.ve;
        aVarVe.ve = i11 + 1;
        bArr[i11] = (byte) i10;
        this.tt++;
        return this;
    }

    public int c(byte[] bArr, int i10, int i11) {
        da.c(bArr.length, i10, i11);
        a aVar = this.f17050c;
        if (aVar == null) {
            return -1;
        }
        int iMin = Math.min(i11, aVar.ve - aVar.tt);
        System.arraycopy(aVar.f17048c, aVar.tt, bArr, i10, iMin);
        int i12 = aVar.tt + iMin;
        aVar.tt = i12;
        this.tt -= (long) iMin;
        if (i12 == aVar.ve) {
            this.f17050c = aVar.tt();
            sp.c(aVar);
        }
        return iMin;
    }

    public c tt(long j10) {
        if (j10 == 0) {
            return tt(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j10)) / 4) + 1;
        a aVarVe = ve(iNumberOfTrailingZeros);
        byte[] bArr = aVarVe.f17048c;
        int i10 = aVarVe.ve;
        for (int i11 = (i10 + iNumberOfTrailingZeros) - 1; i11 >= i10; i11--) {
            bArr[i11] = ve[(int) (15 & j10)];
            j10 >>>= 4;
        }
        aVarVe.ve += iNumberOfTrailingZeros;
        this.tt += (long) iNumberOfTrailingZeros;
        return this;
    }

    public c c(String str) {
        return c(str, 0, str.length());
    }

    public c c(String str, int i10, int i11) {
        char cCharAt;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i10)));
        }
        if (i11 >= i10) {
            if (i11 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
            }
            while (i10 < i11) {
                char cCharAt2 = str.charAt(i10);
                if (cCharAt2 < 128) {
                    a aVarVe = ve(1);
                    byte[] bArr = aVarVe.f17048c;
                    int i12 = aVarVe.ve - i10;
                    int iMin = Math.min(i11, 8192 - i12);
                    int i13 = i10 + 1;
                    bArr[i10 + i12] = (byte) cCharAt2;
                    while (true) {
                        i10 = i13;
                        if (i10 >= iMin || (cCharAt = str.charAt(i10)) >= 128) {
                            break;
                        }
                        i13 = i10 + 1;
                        bArr[i10 + i12] = (byte) cCharAt;
                    }
                    int i14 = aVarVe.ve;
                    int i15 = (i12 + i10) - i14;
                    aVarVe.ve = i14 + i15;
                    this.tt += (long) i15;
                } else {
                    if (cCharAt2 < 2048) {
                        tt((cCharAt2 >> 6) | 192);
                        tt((cCharAt2 & '?') | 128);
                    } else if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                        int i16 = i10 + 1;
                        char cCharAt3 = i16 < i11 ? str.charAt(i16) : (char) 0;
                        if (cCharAt2 <= 56319 && cCharAt3 >= 56320 && cCharAt3 <= 57343) {
                            int i17 = (((cCharAt2 & 10239) << 10) | (9215 & cCharAt3)) + 65536;
                            tt((i17 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                            tt(((i17 >> 12) & 63) | 128);
                            tt(((i17 >> 6) & 63) | 128);
                            tt((i17 & 63) | 128);
                            i10 += 2;
                        } else {
                            tt(63);
                            i10 = i16;
                        }
                    } else {
                        tt((cCharAt2 >> '\f') | Opcodes.SHL_INT_LIT8);
                        tt(((cCharAt2 >> 6) & 63) | 128);
                        tt((cCharAt2 & '?') | 128);
                    }
                    i10++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
    }

    public c c(int i10) {
        if (i10 < 128) {
            tt(i10);
        } else if (i10 < 2048) {
            tt((i10 >> 6) | 192);
            tt((i10 & 63) | 128);
        } else if (i10 < 65536) {
            if (i10 >= 55296 && i10 <= 57343) {
                tt(63);
            } else {
                tt((i10 >> 12) | Opcodes.SHL_INT_LIT8);
                tt(((i10 >> 6) & 63) | 128);
                tt((i10 & 63) | 128);
            }
        } else if (i10 <= 1114111) {
            tt((i10 >> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
            tt(((i10 >> 12) & 63) | 128);
            tt(((i10 >> 6) & 63) | 128);
            tt((i10 & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i10));
        }
        return this;
    }

    public c c(String str, int i10, int i11, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i10 < 0) {
            throw new IllegalAccessError("beginIndex < 0: ".concat(String.valueOf(i10)));
        }
        if (i11 >= i10) {
            if (i11 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i11 + " > " + str.length());
            }
            if (charset != null) {
                if (charset.equals(da.f17051c)) {
                    return c(str, i10, i11);
                }
                byte[] bytes = str.substring(i10, i11).getBytes(charset);
                return tt(bytes, 0, bytes.length);
            }
            throw new IllegalArgumentException("charset == null");
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i11 + " < " + i10);
    }
}
