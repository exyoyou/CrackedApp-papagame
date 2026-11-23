package com.kwad.sdk.api.proxy.app;

import android.text.TextUtils;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class ApiBase64 {
    private static final String PRE = "sDAkk/dS";
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");

    private ApiBase64() {
    }

    public static String decodeKsSdk(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return str.startsWith(PRE) ? new String(getDecoder().decode(str.substring(8)), UTF_8) : str;
    }

    public static String encodeKsSdk(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return PRE + new String(getEncoder().encode(str.getBytes()), UTF_8);
    }

    public static Decoder getDecoder() {
        return Decoder.RFC4648;
    }

    public static Encoder getEncoder() {
        return Encoder.RFC4648;
    }

    public static Decoder getMimeDecoder() {
        return Decoder.RFC2045;
    }

    public static Decoder getUrlSafeDecoder() {
        return Decoder.RFC4648_URLSAFE;
    }

    public static Encoder getUrlSafeEncoder() {
        return Encoder.RFC4648_URLSAFE;
    }

    public static boolean isEncodeKsSdk(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(PRE);
    }

    public static class Decoder {
        private static final int[] fromBase64;
        private final boolean isMIME;
        private final boolean isURL;
        static final Decoder RFC4648 = new Decoder(false, false);
        static final Decoder RFC4648_URLSAFE = new Decoder(true, false);
        static final Decoder RFC2045 = new Decoder(false, true);
        private static final int[] fromBase64URL = new int[256];

        static {
            int[] iArr = new int[256];
            fromBase64 = iArr;
            Arrays.fill(iArr, -1);
            for (int i10 = 0; i10 < Encoder.toBase64.length; i10++) {
                fromBase64[Encoder.toBase64[i10]] = i10;
            }
            fromBase64[61] = -2;
            Arrays.fill(fromBase64URL, -1);
            for (int i11 = 0; i11 < Encoder.toBase64URL.length; i11++) {
                fromBase64URL[Encoder.toBase64URL[i11]] = i11;
            }
            fromBase64URL[61] = -2;
        }

        private Decoder(boolean z10, boolean z11) {
            this.isURL = z10;
            this.isMIME = z11;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0030, code lost:
        
            if (r4 != 18) goto L33;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private int decode0(byte[] r11, int r12, int r13, byte[] r14) {
            /*
                Method dump skipped, instruction units count: 202
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.api.proxy.app.ApiBase64.Decoder.decode0(byte[], int, int, byte[]):int");
        }

        private int outLength(byte[] bArr, int i10, int i11) {
            int i12;
            int[] iArr = this.isURL ? fromBase64URL : fromBase64;
            int i13 = i11 - i10;
            int i14 = 0;
            if (i13 == 0) {
                return 0;
            }
            if (i13 < 2) {
                if (this.isMIME && iArr[0] == -1) {
                    return 0;
                }
                throw new IllegalArgumentException("Input byte[] should at least have 2 bytes for base64 bytes");
            }
            if (this.isMIME) {
                int i15 = 0;
                while (i10 < i11) {
                    int i16 = i10 + 1;
                    int i17 = bArr[i10] & 255;
                    if (i17 == 61) {
                        i13 -= (i11 - i16) + 1;
                        break;
                    }
                    if (iArr[i17] == -1) {
                        i15++;
                    }
                    i10 = i16;
                }
                i13 -= i15;
            } else if (bArr[i11 - 1] == 61) {
                i14 = bArr[i11 - 2] == 61 ? 2 : 1;
            }
            if (i14 == 0 && (i12 = i13 & 3) != 0) {
                i14 = 4 - i12;
            }
            return (((i13 + 3) / 4) * 3) - i14;
        }

        public byte[] decode(byte[] bArr) {
            int iOutLength = outLength(bArr, 0, bArr.length);
            byte[] bArr2 = new byte[iOutLength];
            int iDecode0 = decode0(bArr, 0, bArr.length, bArr2);
            return iDecode0 != iOutLength ? Arrays.copyOf(bArr2, iDecode0) : bArr2;
        }

        public byte[] decode(String str) {
            return decode(str.getBytes(ApiBase64.ISO_8859_1));
        }

        public int decode(byte[] bArr, byte[] bArr2) {
            if (bArr2.length >= outLength(bArr, 0, bArr.length)) {
                return decode0(bArr, 0, bArr.length, bArr2);
            }
            throw new IllegalArgumentException("Output byte array is too small for decoding all input bytes");
        }

        public ByteBuffer decode(ByteBuffer byteBuffer) {
            int iRemaining;
            byte[] bArrArray;
            int iArrayOffset;
            int iPosition = byteBuffer.position();
            try {
                if (byteBuffer.hasArray()) {
                    bArrArray = byteBuffer.array();
                    iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                    iRemaining = byteBuffer.arrayOffset() + byteBuffer.limit();
                    byteBuffer.position(byteBuffer.limit());
                } else {
                    iRemaining = byteBuffer.remaining();
                    bArrArray = new byte[iRemaining];
                    byteBuffer.get(bArrArray);
                    iArrayOffset = 0;
                }
                byte[] bArr = new byte[outLength(bArrArray, iArrayOffset, iRemaining)];
                return ByteBuffer.wrap(bArr, 0, decode0(bArrArray, iArrayOffset, iRemaining, bArr));
            } catch (IllegalArgumentException e10) {
                byteBuffer.position(iPosition);
                throw e10;
            }
        }
    }

    public static class Encoder {
        static final Encoder RFC4648 = new Encoder(false, null, -1, true);
        static final Encoder RFC4648_URLSAFE = new Encoder(true, null, -1, false);
        private static final char[] toBase64 = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
        private static final char[] toBase64URL = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '_'};
        private final boolean doPadding;
        private final boolean isURL;
        private final int linemax;
        private final byte[] newline;

        private Encoder(boolean z10, byte[] bArr, int i10, boolean z11) {
            this.isURL = z10;
            this.newline = bArr;
            this.linemax = i10;
            this.doPadding = z11;
        }

        private int encode0(byte[] bArr, int i10, int i11, byte[] bArr2) {
            char[] cArr = this.isURL ? toBase64URL : toBase64;
            int i12 = ((i11 - i10) / 3) * 3;
            int i13 = i10 + i12;
            int i14 = this.linemax;
            if (i14 > 0 && i12 > (i14 / 4) * 3) {
                i12 = (i14 / 4) * 3;
            }
            int i15 = 0;
            while (i10 < i13) {
                int iMin = Math.min(i10 + i12, i13);
                int i16 = i10;
                int i17 = i15;
                while (i16 < iMin) {
                    int i18 = i16 + 1;
                    int i19 = i18 + 1;
                    int i20 = ((bArr[i16] & 255) << 16) | ((bArr[i18] & 255) << 8);
                    int i21 = i19 + 1;
                    int i22 = i20 | (bArr[i19] & 255);
                    int i23 = i17 + 1;
                    bArr2[i17] = (byte) cArr[(i22 >>> 18) & 63];
                    int i24 = i23 + 1;
                    bArr2[i23] = (byte) cArr[(i22 >>> 12) & 63];
                    int i25 = i24 + 1;
                    bArr2[i24] = (byte) cArr[(i22 >>> 6) & 63];
                    i17 = i25 + 1;
                    bArr2[i25] = (byte) cArr[i22 & 63];
                    i16 = i21;
                }
                int i26 = ((iMin - i10) / 3) * 4;
                i15 += i26;
                if (i26 == this.linemax && iMin < i11) {
                    byte[] bArr3 = this.newline;
                    int length = bArr3.length;
                    int i27 = 0;
                    while (i27 < length) {
                        bArr2[i15] = bArr3[i27];
                        i27++;
                        i15++;
                    }
                }
                i10 = iMin;
            }
            if (i10 >= i11) {
                return i15;
            }
            int i28 = i10 + 1;
            int i29 = bArr[i10] & 255;
            int i30 = i15 + 1;
            bArr2[i15] = (byte) cArr[i29 >> 2];
            if (i28 == i11) {
                int i31 = i30 + 1;
                bArr2[i30] = (byte) cArr[(i29 << 4) & 63];
                if (!this.doPadding) {
                    return i31;
                }
                int i32 = i31 + 1;
                bArr2[i31] = 61;
                int i33 = i32 + 1;
                bArr2[i32] = 61;
                return i33;
            }
            int i34 = bArr[i28] & 255;
            int i35 = i30 + 1;
            bArr2[i30] = (byte) cArr[((i29 << 4) & 63) | (i34 >> 4)];
            int i36 = i35 + 1;
            bArr2[i35] = (byte) cArr[(i34 << 2) & 63];
            if (!this.doPadding) {
                return i36;
            }
            int i37 = i36 + 1;
            bArr2[i36] = 61;
            return i37;
        }

        private final int outLength(int i10) {
            int i11;
            if (this.doPadding) {
                i11 = ((i10 + 2) / 3) * 4;
            } else {
                int i12 = i10 % 3;
                i11 = ((i10 / 3) * 4) + (i12 == 0 ? 0 : i12 + 1);
            }
            int i13 = this.linemax;
            return i13 > 0 ? i11 + (((i11 - 1) / i13) * this.newline.length) : i11;
        }

        public byte[] encode(byte[] bArr) {
            int iOutLength = outLength(bArr.length);
            byte[] bArr2 = new byte[iOutLength];
            int iEncode0 = encode0(bArr, 0, bArr.length, bArr2);
            return iEncode0 != iOutLength ? Arrays.copyOf(bArr2, iEncode0) : bArr2;
        }

        public String encodeToString(byte[] bArr) {
            byte[] bArrEncode = encode(bArr);
            return new String(bArrEncode, 0, 0, bArrEncode.length);
        }

        public int encode(byte[] bArr, byte[] bArr2) {
            if (bArr2.length >= outLength(bArr.length)) {
                return encode0(bArr, 0, bArr.length, bArr2);
            }
            throw new IllegalArgumentException("Output byte array is too small for encoding all input bytes");
        }

        public ByteBuffer encode(ByteBuffer byteBuffer) {
            int iEncode0;
            int iOutLength = outLength(byteBuffer.remaining());
            byte[] bArrCopyOf = new byte[iOutLength];
            if (byteBuffer.hasArray()) {
                iEncode0 = encode0(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.arrayOffset() + byteBuffer.limit(), bArrCopyOf);
                byteBuffer.position(byteBuffer.limit());
            } else {
                int iRemaining = byteBuffer.remaining();
                byte[] bArr = new byte[iRemaining];
                byteBuffer.get(bArr);
                iEncode0 = encode0(bArr, 0, iRemaining, bArrCopyOf);
            }
            if (iEncode0 != iOutLength) {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, iEncode0);
            }
            return ByteBuffer.wrap(bArrCopyOf);
        }
    }
}
