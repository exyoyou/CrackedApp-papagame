package com.kwad.sdk.utils.a;

import com.android.dx.io.Opcodes;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.nio.charset.Charset;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public static final Charset UTF_8 = Charset.forName("UTF-8");
    private char[] brL;
    public byte[] brM;
    public int position;

    public b(int i10) {
        this(new byte[i10], 0);
    }

    private int K(int i10, int i11) {
        while ((i11 & (-128)) != 0) {
            this.brM[i10] = (byte) ((i11 & 127) | 128);
            i11 >>>= 7;
            i10++;
        }
        int i12 = i10 + 1;
        this.brM[i10] = (byte) i11;
        return i12;
    }

    private long getLong(int i10) {
        byte[] bArr = this.brM;
        int i11 = i10 + 1;
        long j10 = ((long) bArr[i10]) & 255;
        int i12 = i11 + 1;
        int i13 = i12 + 1;
        long j11 = j10 | ((((long) bArr[i11]) & 255) << 8) | ((((long) bArr[i12]) & 255) << 16);
        int i14 = i13 + 1;
        long j12 = j11 | ((((long) bArr[i13]) & 255) << 24);
        int i15 = i14 + 1;
        long j13 = j12 | ((((long) bArr[i14]) & 255) << 32);
        int i16 = i15 + 1;
        return j13 | ((((long) bArr[i15]) & 255) << 40) | ((255 & ((long) bArr[i16])) << 48) | (((long) bArr[i16 + 1]) << 56);
    }

    public static int gh(int i10) {
        if ((i10 >> 7) == 0) {
            return 1;
        }
        if ((i10 >> 14) == 0) {
            return 2;
        }
        if ((i10 >> 21) == 0) {
            return 3;
        }
        return (i10 >> 28) == 0 ? 4 : 5;
    }

    private char[] gj(int i10) {
        char[] cArr = this.brL;
        if (cArr == null) {
            if (i10 <= 256) {
                this.brL = new char[256];
            } else {
                this.brL = new char[2048];
            }
        } else if (cArr.length < i10) {
            this.brL = new char[2048];
        }
        return this.brL;
    }

    private String gk(int i10) {
        if (i10 > 2048) {
            return new String(this.brM, this.position, i10, UTF_8);
        }
        char[] cArrGj = gj(i10);
        byte[] bArr = this.brM;
        int i11 = this.position;
        int i12 = i10 + i11;
        int i13 = 0;
        while (i11 < i12) {
            int i14 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 > 0) {
                cArrGj[i13] = (char) (b10 ^ 1);
                i11 = i14;
                i13++;
            } else if (b10 < -32) {
                cArrGj[i13] = (char) (((b10 & 31) << 6) | (bArr[i14] & Utf8.REPLACEMENT_BYTE));
                i11 = i14 + 1;
                i13++;
            } else if (b10 < -16) {
                int i15 = i14 + 1;
                int i16 = i15 + 1;
                cArrGj[i13] = (char) (((b10 & 15) << 12) | ((bArr[i14] & Utf8.REPLACEMENT_BYTE) << 6) | (bArr[i15] & Utf8.REPLACEMENT_BYTE));
                i11 = i16;
                i13++;
            } else {
                int i17 = i14 + 1;
                int i18 = i17 + 1;
                int i19 = i18 + 1;
                int i20 = ((b10 & 7) << 18) | ((bArr[i14] & Utf8.REPLACEMENT_BYTE) << 12) | ((bArr[i17] & Utf8.REPLACEMENT_BYTE) << 6) | (bArr[i18] & Utf8.REPLACEMENT_BYTE);
                int i21 = i13 + 1;
                cArrGj[i13] = (char) ((i20 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                i13 = i21 + 1;
                cArrGj[i21] = (char) ((i20 & 1023) + 56320);
                i11 = i19;
            }
        }
        if (i11 <= i12) {
            return new String(cArrGj, 0, i13);
        }
        throw new IllegalArgumentException("Invalid String");
    }

    private String gl(int i10) {
        if (i10 > 2048) {
            return new String(this.brM, this.position, i10, UTF_8);
        }
        char[] cArrGj = gj(i10);
        byte[] bArr = this.brM;
        int i11 = this.position;
        int i12 = i10 + i11;
        int i13 = 0;
        while (i11 < i12) {
            int i14 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 > 0) {
                cArrGj[i13] = (char) b10;
                i11 = i14;
                i13++;
            } else if (b10 < -32) {
                cArrGj[i13] = (char) (((b10 & 31) << 6) | (bArr[i14] & Utf8.REPLACEMENT_BYTE));
                i11 = i14 + 1;
                i13++;
            } else if (b10 < -16) {
                int i15 = i14 + 1;
                int i16 = i15 + 1;
                cArrGj[i13] = (char) (((b10 & 15) << 12) | ((bArr[i14] & Utf8.REPLACEMENT_BYTE) << 6) | (bArr[i15] & Utf8.REPLACEMENT_BYTE));
                i11 = i16;
                i13++;
            } else {
                int i17 = i14 + 1;
                int i18 = i17 + 1;
                int i19 = i18 + 1;
                int i20 = ((b10 & 7) << 18) | ((bArr[i14] & Utf8.REPLACEMENT_BYTE) << 12) | ((bArr[i17] & Utf8.REPLACEMENT_BYTE) << 6) | (bArr[i18] & Utf8.REPLACEMENT_BYTE);
                int i21 = i13 + 1;
                cArrGj[i13] = (char) ((i20 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                i13 = i21 + 1;
                cArrGj[i21] = (char) ((i20 & 1023) + 56320);
                i11 = i19;
            }
        }
        if (i11 <= i12) {
            return new String(cArrGj, 0, i13);
        }
        throw new IllegalArgumentException("Invalid String");
    }

    public static int iu(String str) {
        int length = str.length();
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = i10 + 1;
            char cCharAt = str.charAt(i10);
            if (cCharAt < 128) {
                i11++;
            } else if (cCharAt < 2048) {
                i11 += 2;
            } else if (cCharAt < 55296 || cCharAt > 57343) {
                i11 += 3;
            } else {
                i10 = i12 + 1;
                i11 += 4;
            }
            i10 = i12;
        }
        return i11;
    }

    private void iv(String str) {
        byte[] bArr = this.brM;
        int i10 = this.position;
        int length = str.length();
        int i11 = 0;
        while (i11 < length) {
            int i12 = i11 + 1;
            char cCharAt = str.charAt(i11);
            if (cCharAt < 128) {
                bArr[i10] = (byte) (cCharAt ^ 1);
                i11 = i12;
                i10++;
            } else if (cCharAt < 2048) {
                int i13 = i10 + 1;
                bArr[i10] = (byte) ((cCharAt >>> 6) | 192);
                i10 = i13 + 1;
                bArr[i13] = (byte) ((cCharAt & '?') | 128);
                i11 = i12;
            } else if (cCharAt < 55296 || cCharAt > 57343) {
                int i14 = i10 + 1;
                bArr[i10] = (byte) ((cCharAt >>> '\f') | Opcodes.SHL_INT_LIT8);
                int i15 = i14 + 1;
                bArr[i14] = (byte) (((cCharAt >>> 6) & 63) | 128);
                bArr[i15] = (byte) ((cCharAt & '?') | 128);
                i11 = i12;
                i10 = i15 + 1;
            } else {
                int i16 = i12 + 1;
                int iCharAt = ((cCharAt << '\n') + str.charAt(i12)) - 56613888;
                int i17 = i10 + 1;
                bArr[i10] = (byte) ((iCharAt >>> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                int i18 = i17 + 1;
                bArr[i17] = (byte) (((iCharAt >>> 12) & 63) | 128);
                int i19 = i18 + 1;
                bArr[i18] = (byte) (((iCharAt >>> 6) & 63) | 128);
                i10 = i19 + 1;
                bArr[i19] = (byte) ((iCharAt & 63) | 128);
                i11 = i16;
            }
        }
        this.position = i10;
    }

    public static byte[] iw(String str) {
        byte[] bArr = new byte[iu(str)];
        int length = str.length();
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            int i12 = i10 + 1;
            char cCharAt = str.charAt(i10);
            if (cCharAt < 128) {
                bArr[i11] = (byte) (cCharAt ^ 1);
                i10 = i12;
                i11++;
            } else if (cCharAt < 2048) {
                int i13 = i11 + 1;
                bArr[i11] = (byte) ((cCharAt >>> 6) | 192);
                i11 = i13 + 1;
                bArr[i13] = (byte) ((cCharAt & '?') | 128);
                i10 = i12;
            } else if (cCharAt < 55296 || cCharAt > 57343) {
                int i14 = i11 + 1;
                bArr[i11] = (byte) ((cCharAt >>> '\f') | Opcodes.SHL_INT_LIT8);
                int i15 = i14 + 1;
                bArr[i14] = (byte) (((cCharAt >>> 6) & 63) | 128);
                bArr[i15] = (byte) ((cCharAt & '?') | 128);
                i10 = i12;
                i11 = i15 + 1;
            } else {
                int i16 = i12 + 1;
                int iCharAt = ((cCharAt << '\n') + str.charAt(i12)) - 56613888;
                int i17 = i11 + 1;
                bArr[i11] = (byte) ((iCharAt >>> 18) | MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA);
                int i18 = i17 + 1;
                bArr[i17] = (byte) (((iCharAt >>> 12) & 63) | 128);
                int i19 = i18 + 1;
                bArr[i18] = (byte) (((iCharAt >>> 6) & 63) | 128);
                i11 = i19 + 1;
                bArr[i19] = (byte) ((iCharAt & 63) | 128);
                i10 = i16;
            }
        }
        return bArr;
    }

    static String j(byte[] bArr, int i10) {
        char[] cArr = new char[bArr.length];
        int i11 = 0;
        int i12 = 0;
        while (i11 < i10) {
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 > 0) {
                cArr[i12] = (char) (b10 ^ 1);
                i11 = i13;
                i12++;
            } else if (b10 < -32) {
                cArr[i12] = (char) (((b10 & 31) << 6) | (bArr[i13] & Utf8.REPLACEMENT_BYTE));
                i11 = i13 + 1;
                i12++;
            } else if (b10 < -16) {
                int i14 = i13 + 1;
                int i15 = i14 + 1;
                cArr[i12] = (char) (((b10 & 15) << 12) | ((bArr[i13] & Utf8.REPLACEMENT_BYTE) << 6) | (bArr[i14] & Utf8.REPLACEMENT_BYTE));
                i11 = i15;
                i12++;
            } else {
                int i16 = i13 + 1;
                int i17 = i16 + 1;
                int i18 = i17 + 1;
                int i19 = ((b10 & 7) << 18) | ((bArr[i13] & Utf8.REPLACEMENT_BYTE) << 12) | ((bArr[i16] & Utf8.REPLACEMENT_BYTE) << 6) | (bArr[i17] & Utf8.REPLACEMENT_BYTE);
                int i20 = i12 + 1;
                cArr[i12] = (char) ((i19 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                i12 = i20 + 1;
                cArr[i20] = (char) ((i19 & 1023) + 56320);
                i11 = i18;
            }
        }
        if (i11 <= i10) {
            return new String(cArr, 0, i12);
        }
        throw new IllegalArgumentException("Invalid String");
    }

    public final void J(int i10, int i11) {
        byte[] bArr = this.brM;
        int i12 = i10 + 1;
        bArr[i10] = (byte) i11;
        int i13 = i12 + 1;
        bArr[i12] = (byte) (i11 >> 8);
        bArr[i13] = (byte) (i11 >> 16);
        bArr[i13 + 1] = (byte) (i11 >> 24);
    }

    final long L(int i10, int i11) {
        long j10 = 0;
        if (i11 <= 0) {
            return 0L;
        }
        int i12 = i11 >> 3;
        int i13 = i11 & 7;
        int i14 = 0;
        int i15 = i10;
        for (int i16 = 0; i16 < i12; i16++) {
            j10 ^= getLong(i15);
            i15 += 8;
        }
        int i17 = i13 << 3;
        while (i14 < i17) {
            j10 ^= (((long) this.brM[i15]) & 255) << i14;
            i14 += 8;
            i15++;
        }
        int i18 = (i10 & 7) << 3;
        return (j10 >>> (64 - i18)) | (j10 << i18);
    }

    public final int Xj() {
        byte[] bArr = this.brM;
        int i10 = this.position;
        int i11 = i10 + 1;
        this.position = i11;
        byte b10 = bArr[i10];
        if ((b10 >> 7) == 0) {
            return b10;
        }
        int i12 = b10 & ByteCompanionObject.MAX_VALUE;
        int i13 = i11 + 1;
        this.position = i13;
        int i14 = i12 | (bArr[i11] << 7);
        if ((i14 >> 14) == 0) {
            return i14;
        }
        int i15 = i13 + 1;
        this.position = i15;
        int i16 = (i14 & 16383) | (bArr[i13] << 14);
        if ((i16 >> 21) == 0) {
            return i16;
        }
        int i17 = i15 + 1;
        this.position = i17;
        int i18 = (i16 & 2097151) | (bArr[i15] << BinaryMemcacheOpcodes.INCREMENTQ);
        if ((i18 >> 28) == 0) {
            return i18;
        }
        this.position = i17 + 1;
        return (bArr[i17] << BinaryMemcacheOpcodes.TOUCH) | (i18 & 268435455);
    }

    public final void a(short s10) {
        byte[] bArr = this.brM;
        int i10 = this.position;
        int i11 = i10 + 1;
        bArr[i10] = (byte) s10;
        this.position = i11 + 1;
        bArr[i11] = (byte) (s10 >> 8);
    }

    public final void bg(long j10) {
        h(this.position, j10);
        this.position += 8;
    }

    public final void e(byte b10) {
        byte[] bArr = this.brM;
        int i10 = this.position;
        this.position = i10 + 1;
        bArr[i10] = b10;
    }

    public final byte get() {
        byte[] bArr = this.brM;
        int i10 = this.position;
        this.position = i10 + 1;
        return bArr[i10];
    }

    public final byte[] getBytes(int i10) {
        byte[] bArr = new byte[i10];
        System.arraycopy(this.brM, this.position, bArr, 0, i10);
        this.position += i10;
        return bArr;
    }

    public final double getDouble() {
        return Double.longBitsToDouble(getLong());
    }

    public final float getFloat() {
        return Float.intBitsToFloat(getInt());
    }

    public final int getInt() {
        byte[] bArr = this.brM;
        int i10 = this.position;
        int i11 = i10 + 1;
        int i12 = i11 + 1;
        int i13 = (bArr[i10] & 255) | ((bArr[i11] & 255) << 8);
        int i14 = i12 + 1;
        int i15 = i13 | ((bArr[i12] & 255) << 16);
        this.position = i14 + 1;
        return (bArr[i14] << BinaryMemcacheOpcodes.FLUSHQ) | i15;
    }

    public final short getShort() {
        byte[] bArr = this.brM;
        int i10 = this.position;
        int i11 = i10 + 1;
        int i12 = bArr[i10] & 255;
        this.position = i11 + 1;
        return (short) ((bArr[i11] << 8) | i12);
    }

    public final String getString(int i10) {
        if (i10 < 0) {
            return null;
        }
        if (i10 == 0) {
            return "";
        }
        String strGk = gk(i10);
        this.position += i10;
        return strGk;
    }

    public final void gf(int i10) {
        byte[] bArr = this.brM;
        int i11 = this.position;
        int i12 = i11 + 1;
        bArr[i11] = (byte) i10;
        int i13 = i12 + 1;
        bArr[i12] = (byte) (i10 >> 8);
        int i14 = i13 + 1;
        bArr[i13] = (byte) (i10 >> 16);
        this.position = i14 + 1;
        bArr[i14] = (byte) (i10 >> 24);
    }

    public final void gg(int i10) {
        this.position = K(this.position, i10);
    }

    public final String gi(int i10) {
        if (i10 < 0) {
            return null;
        }
        if (i10 == 0) {
            return "";
        }
        String strGl = gl(i10);
        this.position += i10;
        return strGl;
    }

    public final void h(int i10, long j10) {
        byte[] bArr = this.brM;
        int i11 = i10 + 1;
        bArr[i10] = (byte) j10;
        int i12 = i11 + 1;
        bArr[i11] = (byte) (j10 >> 8);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (j10 >> 16);
        int i14 = i13 + 1;
        bArr[i13] = (byte) (j10 >> 24);
        int i15 = i14 + 1;
        bArr[i14] = (byte) (j10 >> 32);
        int i16 = i15 + 1;
        bArr[i15] = (byte) (j10 >> 40);
        bArr[i16] = (byte) (j10 >> 48);
        bArr[i16 + 1] = (byte) (j10 >> 56);
    }

    public final void it(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        iv(str);
    }

    public final void p(byte[] bArr) {
        int length = bArr.length;
        if (length > 0) {
            System.arraycopy(bArr, 0, this.brM, this.position, length);
            this.position += length;
        }
    }

    public b(byte[] bArr) {
        this(bArr, 0);
    }

    public final long getLong() {
        long j10 = getLong(this.position);
        this.position += 8;
        return j10;
    }

    public b(byte[] bArr, int i10) {
        this.brL = null;
        this.brM = bArr;
        this.position = i10;
    }
}
