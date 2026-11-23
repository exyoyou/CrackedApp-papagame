package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONException;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.io.Closeable;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import ms.bz.bd.c.Pgl.pblv;
import org.apache.http.conn.ssl.TokenParser;

/* JADX INFO: loaded from: classes7.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f6821a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean[] f6822b = new boolean[256];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean[] f6823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final byte[] f6824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final byte[] f6825e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final char[] f6826f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final char[] f6827g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final char[] f6828h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final char[] f6829i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final char[] f6830j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final int[] f6831k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static boolean[] f6832l;

    static {
        char c10 = 0;
        while (true) {
            boolean[] zArr = f6822b;
            if (c10 >= zArr.length) {
                break;
            }
            if (c10 >= 'A' && c10 <= 'Z') {
                zArr[c10] = true;
            } else if (c10 >= 'a' && c10 <= 'z') {
                zArr[c10] = true;
            } else if (c10 == '_') {
                zArr[c10] = true;
            }
            c10 = (char) (c10 + 1);
        }
        f6823c = new boolean[256];
        char c11 = 0;
        while (true) {
            boolean[] zArr2 = f6823c;
            if (c11 >= zArr2.length) {
                break;
            }
            if (c11 >= 'A' && c11 <= 'Z') {
                zArr2[c11] = true;
            } else if (c11 >= 'a' && c11 <= 'z') {
                zArr2[c11] = true;
            } else if (c11 == '_') {
                zArr2[c11] = true;
            } else if (c11 >= '0' && c11 <= '9') {
                zArr2[c11] = true;
            }
            c11 = (char) (c11 + 1);
        }
        byte[] bArr = new byte[256];
        f6824d = bArr;
        byte[] bArr2 = new byte[256];
        f6825e = bArr2;
        f6826f = new char[128];
        bArr[0] = 4;
        bArr[1] = 4;
        bArr[2] = 4;
        bArr[3] = 4;
        bArr[4] = 4;
        bArr[5] = 4;
        bArr[6] = 4;
        bArr[7] = 4;
        bArr[8] = 1;
        bArr[9] = 1;
        bArr[10] = 1;
        bArr[11] = 4;
        bArr[12] = 1;
        bArr[13] = 1;
        bArr[34] = 1;
        bArr[92] = 1;
        bArr2[0] = 4;
        bArr2[1] = 4;
        bArr2[2] = 4;
        bArr2[3] = 4;
        bArr2[4] = 4;
        bArr2[5] = 4;
        bArr2[6] = 4;
        bArr2[7] = 4;
        bArr2[8] = 1;
        bArr2[9] = 1;
        bArr2[10] = 1;
        bArr2[11] = 4;
        bArr2[12] = 1;
        bArr2[13] = 1;
        bArr2[92] = 1;
        bArr2[39] = 1;
        for (int i10 = 14; i10 <= 31; i10++) {
            f6824d[i10] = 4;
            f6825e[i10] = 4;
        }
        for (int i11 = 127; i11 <= 160; i11++) {
            f6824d[i11] = 4;
            f6825e[i11] = 4;
        }
        char[] cArr = f6826f;
        cArr[0] = '0';
        cArr[1] = '1';
        cArr[2] = '2';
        cArr[3] = '3';
        cArr[4] = '4';
        cArr[5] = '5';
        cArr[6] = '6';
        cArr[7] = '7';
        cArr[8] = 'b';
        cArr[9] = 't';
        cArr[10] = 'n';
        cArr[11] = 'v';
        cArr[12] = 'f';
        cArr[13] = 'r';
        cArr[34] = '\"';
        cArr[39] = '\'';
        cArr[47] = '/';
        cArr[92] = TokenParser.ESCAPE;
        f6827g = new char[]{'0', '0', '0', '1', '0', '2', '0', '3', '0', '4', '0', '5', '0', '6', '0', '7', '0', '8', '0', '9', '0', 'A', '0', 'B', '0', 'C', '0', 'D', '0', 'E', '0', 'F', '1', '0', '1', '1', '1', '2', '1', '3', '1', '4', '1', '5', '1', '6', '1', '7', '1', '8', '1', '9', '1', 'A', '1', 'B', '1', 'C', '1', 'D', '1', 'E', '1', 'F', '2', '0', '2', '1', '2', '2', '2', '3', '2', '4', '2', '5', '2', '6', '2', '7', '2', '8', '2', '9', '2', 'A', '2', 'B', '2', 'C', '2', 'D', '2', 'E', '2', 'F'};
        f6828h = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        f6829i = new char[]{'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9'};
        f6830j = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
        f6831k = new int[]{9, 99, 999, AVMDLDataLoader.KeyIsEnableEventInfo, pblv.COLLECT_MODE_DEFAULT, 999999, 9999999, 99999999, 999999999, Integer.MAX_VALUE};
        boolean[] zArr3 = new boolean[256];
        f6832l = zArr3;
        zArr3[32] = true;
        zArr3[10] = true;
        zArr3[13] = true;
        zArr3[9] = true;
        zArr3[12] = true;
        zArr3[8] = true;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void b(CharsetDecoder charsetDecoder, ByteBuffer byteBuffer, CharBuffer charBuffer) {
        try {
            CoderResult coderResultDecode = charsetDecoder.decode(byteBuffer, charBuffer, true);
            if (!coderResultDecode.isUnderflow()) {
                coderResultDecode.throwException();
            }
            CoderResult coderResultFlush = charsetDecoder.flush(charBuffer);
            if (coderResultFlush.isUnderflow()) {
                return;
            }
            coderResultFlush.throwException();
        } catch (CharacterCodingException e10) {
            throw new JSONException(e10.getMessage(), e10);
        }
    }

    public static boolean c(char c10) {
        boolean[] zArr = f6822b;
        return c10 < zArr.length && zArr[c10];
    }

    public static void d(byte b10, int i10, char[] cArr) {
        char c10;
        int i11;
        if (b10 < 0) {
            c10 = '-';
            i11 = -b10;
        } else {
            c10 = 0;
            i11 = b10;
        }
        while (true) {
            int i12 = (52429 * i11) >>> 19;
            i10--;
            cArr[i10] = f6828h[i11 - ((i12 << 3) + (i12 << 1))];
            if (i12 == 0) {
                break;
            } else {
                i11 = i12;
            }
        }
        if (c10 != 0) {
            cArr[i10 - 1] = c10;
        }
    }

    public static void e(int i10, int i11, char[] cArr) {
        char c10;
        if (i10 < 0) {
            i10 = -i10;
            c10 = '-';
        } else {
            c10 = 0;
        }
        while (i10 >= 65536) {
            int i12 = i10 / 100;
            int i13 = i10 - (((i12 << 6) + (i12 << 5)) + (i12 << 2));
            int i14 = i11 - 1;
            cArr[i14] = f6830j[i13];
            i11 = i14 - 1;
            cArr[i11] = f6829i[i13];
            i10 = i12;
        }
        while (true) {
            int i15 = (52429 * i10) >>> 19;
            i11--;
            cArr[i11] = f6828h[i10 - ((i15 << 3) + (i15 << 1))];
            if (i15 == 0) {
                break;
            } else {
                i10 = i15;
            }
        }
        if (c10 != 0) {
            cArr[i11 - 1] = c10;
        }
    }

    public static void f(long j10, int i10, char[] cArr) {
        char c10;
        if (j10 < 0) {
            j10 = -j10;
            c10 = '-';
        } else {
            c10 = 0;
        }
        while (j10 > 2147483647L) {
            long j11 = j10 / 100;
            int i11 = (int) (j10 - (((j11 << 6) + (j11 << 5)) + (j11 << 2)));
            int i12 = i10 - 1;
            cArr[i12] = f6830j[i11];
            i10 = i12 - 1;
            cArr[i10] = f6829i[i11];
            j10 = j11;
        }
        int i13 = (int) j10;
        while (i13 >= 65536) {
            int i14 = i13 / 100;
            int i15 = i13 - (((i14 << 6) + (i14 << 5)) + (i14 << 2));
            int i16 = i10 - 1;
            cArr[i16] = f6830j[i15];
            i10 = i16 - 1;
            cArr[i10] = f6829i[i15];
            i13 = i14;
        }
        while (true) {
            int i17 = (52429 * i13) >>> 19;
            i10--;
            cArr[i10] = f6828h[i13 - ((i17 << 3) + (i17 << 1))];
            if (i17 == 0) {
                break;
            } else {
                i13 = i17;
            }
        }
        if (c10 != 0) {
            cArr[i10 - 1] = c10;
        }
    }

    public static boolean g(char c10) {
        boolean[] zArr = f6823c;
        return c10 < zArr.length && zArr[c10];
    }

    public static int h(int i10) {
        int i11 = 0;
        while (i10 > f6831k[i11]) {
            i11++;
        }
        return i11 + 1;
    }

    public static int i(long j10) {
        long j11 = 10;
        for (int i10 = 1; i10 < 19; i10++) {
            if (j10 < j11) {
                return i10;
            }
            j11 *= 10;
        }
        return 19;
    }
}
