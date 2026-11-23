package com.sdk.p;

import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import okio.Utf8;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final char[] f78571a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f78572b;

    static {
        boolean z10 = com.sdk.f.d.f78521a;
        f78571a = new char[]{'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
        f78572b = new byte[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, Utf8.REPLACEMENT_BYTE, -1, Utf8.REPLACEMENT_BYTE, com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.O, 56, 57, HttpConstants.COLON, HttpConstants.SEMICOLON, 60, 61, -1, -1, -1, 0, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, BinaryMemcacheOpcodes.SETQ, BinaryMemcacheOpcodes.ADDQ, BinaryMemcacheOpcodes.REPLACEQ, BinaryMemcacheOpcodes.DELETEQ, BinaryMemcacheOpcodes.INCREMENTQ, BinaryMemcacheOpcodes.DECREMENTQ, BinaryMemcacheOpcodes.QUITQ, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.APPENDQ, -1, -1, -1, -1, -1, -1, 26, 27, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.GAT, BinaryMemcacheOpcodes.GATQ, 31, 32, BinaryMemcacheOpcodes.SASL_AUTH, 34, BinaryMemcacheOpcodes.GATK, BinaryMemcacheOpcodes.GATKQ, 37, 38, 39, 40, 41, 42, 43, HttpConstants.COMMA, 45, 46, 47, com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.J, com.sigmob.sdk.archives.tar.e.K, -1, -1, -1, -1, -1};
    }

    public static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(((bArr.length - 1) / 3) << 6);
        int i10 = 0;
        for (int i11 = 0; i11 < bArr.length; i11++) {
            int i12 = i11 % 3;
            int i13 = 16 - (i12 * 8);
            i10 |= (bArr[i11] << i13) & (255 << i13);
            if (i12 == 2 || i11 == bArr.length - 1) {
                char[] cArr = f78571a;
                stringBuffer.append(cArr[(16515072 & i10) >>> 18]);
                stringBuffer.append(cArr[(258048 & i10) >>> 12]);
                stringBuffer.append(cArr[(i10 & 4032) >>> 6]);
                stringBuffer.append(cArr[i10 & 63]);
                i10 = 0;
            }
        }
        if (bArr.length % 3 > 0) {
            stringBuffer.setCharAt(stringBuffer.length() - 1, '=');
        }
        if (bArr.length % 3 == 1) {
            stringBuffer.setCharAt(stringBuffer.length() - 2, '=');
        }
        return stringBuffer.toString();
    }

    public static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        int length = str.length();
        if (length % 4 != 0) {
            throw new IllegalArgumentException("Base64 string length must be 4*n");
        }
        if (str.length() == 0) {
            return new byte[0];
        }
        int i10 = str.charAt(length + (-1)) == '=' ? 1 : 0;
        if (str.charAt(length - 2) == '=') {
            i10++;
        }
        int i11 = ((length / 4) * 3) - i10;
        byte[] bArr = new byte[i11];
        for (int i12 = 0; i12 < length; i12 += 4) {
            int i13 = (i12 / 4) * 3;
            char cCharAt = str.charAt(i12);
            char cCharAt2 = str.charAt(i12 + 1);
            char cCharAt3 = str.charAt(i12 + 2);
            char cCharAt4 = str.charAt(i12 + 3);
            byte[] bArr2 = f78572b;
            int i14 = (bArr2[cCharAt] << BinaryMemcacheOpcodes.ADDQ) | (bArr2[cCharAt2] << 12) | (bArr2[cCharAt3] << 6) | bArr2[cCharAt4];
            bArr[i13] = (byte) ((16711680 & i14) >> 16);
            if (i12 < length - 4) {
                bArr[i13 + 1] = (byte) ((65280 & i14) >> 8);
                bArr[i13 + 2] = (byte) (i14 & 255);
            } else {
                int i15 = i13 + 1;
                if (i15 < i11) {
                    bArr[i15] = (byte) ((65280 & i14) >> 8);
                }
                int i16 = i13 + 2;
                if (i16 < i11) {
                    bArr[i16] = (byte) (i14 & 255);
                }
            }
        }
        return bArr;
    }
}
