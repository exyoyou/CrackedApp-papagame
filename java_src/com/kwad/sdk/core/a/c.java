package com.kwad.sdk.core.a;

import android.text.TextUtils;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    private static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");

    public static class b {
        static final b aSD = new b(false, null, -1, true);
        static final b aSE = new b(true, null, -1, false);
        private static final char[] toBase64 = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
        private static final char[] toBase64URL = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '_'};
        private final boolean doPadding;
        private final boolean isURL;
        private final byte[] newline = null;
        private final int linemax = -1;

        private b(boolean z10, byte[] bArr, int i10, boolean z11) {
            this.isURL = z10;
            this.doPadding = z11;
        }

        private int encode0(byte[] bArr, int i10, int i11, byte[] bArr2) {
            char[] cArr = this.isURL ? toBase64URL : toBase64;
            int i12 = ((i11 + 0) / 3) * 3;
            int i13 = i12 + 0;
            int i14 = this.linemax;
            if (i14 > 0 && i12 > (i14 / 4) * 3) {
                i12 = (i14 / 4) * 3;
            }
            int i15 = 0;
            int i16 = 0;
            while (i15 < i13) {
                int iMin = Math.min(i15 + i12, i13);
                int i17 = i15;
                int i18 = i16;
                while (i17 < iMin) {
                    int i19 = i17 + 1;
                    int i20 = i19 + 1;
                    int i21 = ((bArr[i17] & 255) << 16) | ((bArr[i19] & 255) << 8);
                    int i22 = i20 + 1;
                    int i23 = i21 | (bArr[i20] & 255);
                    int i24 = i18 + 1;
                    bArr2[i18] = (byte) cArr[(i23 >>> 18) & 63];
                    int i25 = i24 + 1;
                    bArr2[i24] = (byte) cArr[(i23 >>> 12) & 63];
                    int i26 = i25 + 1;
                    bArr2[i25] = (byte) cArr[(i23 >>> 6) & 63];
                    i18 = i26 + 1;
                    bArr2[i26] = (byte) cArr[i23 & 63];
                    i17 = i22;
                }
                int i27 = ((iMin - i15) / 3) * 4;
                i16 += i27;
                if (i27 == this.linemax && iMin < i11) {
                    byte[] bArr3 = this.newline;
                    int length = bArr3.length;
                    int i28 = 0;
                    while (i28 < length) {
                        bArr2[i16] = bArr3[i28];
                        i28++;
                        i16++;
                    }
                }
                i15 = iMin;
            }
            if (i15 >= i11) {
                return i16;
            }
            int i29 = i15 + 1;
            int i30 = bArr[i15] & 255;
            int i31 = i16 + 1;
            bArr2[i16] = (byte) cArr[i30 >> 2];
            if (i29 == i11) {
                int i32 = i31 + 1;
                bArr2[i31] = (byte) cArr[(i30 << 4) & 63];
                if (!this.doPadding) {
                    return i32;
                }
                int i33 = i32 + 1;
                bArr2[i32] = 61;
                int i34 = i33 + 1;
                bArr2[i33] = 61;
                return i34;
            }
            int i35 = bArr[i29] & 255;
            int i36 = i31 + 1;
            bArr2[i31] = (byte) cArr[((i30 << 4) & 63) | (i35 >> 4)];
            int i37 = i36 + 1;
            bArr2[i36] = (byte) cArr[(i35 << 2) & 63];
            if (!this.doPadding) {
                return i37;
            }
            int i38 = i37 + 1;
            bArr2[i37] = 61;
            return i38;
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

        public final byte[] encode(byte[] bArr) {
            int iOutLength = outLength(bArr.length);
            byte[] bArr2 = new byte[iOutLength];
            int iEncode0 = encode0(bArr, 0, bArr.length, bArr2);
            return iEncode0 != iOutLength ? Arrays.copyOf(bArr2, iEncode0) : bArr2;
        }

        public final String encodeToString(byte[] bArr) {
            byte[] bArrEncode = encode(bArr);
            return new String(bArrEncode, 0, 0, bArrEncode.length);
        }
    }

    public static b LN() {
        return b.aSD;
    }

    public static b LO() {
        return b.aSE;
    }

    public static a LP() {
        return a.aSA;
    }

    public static a LQ() {
        return a.aSC;
    }

    public static a LR() {
        return a.aSB;
    }

    public static String decodeKsSdk(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return str.startsWith("sDAkk/dS") ? new String(LP().decode(str.substring(8)), com.kwad.sdk.crash.utils.a.UTF_8) : str;
    }

    public static String encodeKsSdk(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return "sDAkk/dS" + new String(LN().encode(str.getBytes()), com.kwad.sdk.crash.utils.a.UTF_8);
    }

    public static boolean isEncodeKsSdk(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("sDAkk/dS");
    }

    public static class a {
        private static final int[] fromBase64;
        private final boolean isMIME;
        private final boolean isURL;
        static final a aSA = new a(false, false);
        static final a aSB = new a(true, false);
        static final a aSC = new a(false, true);
        private static final int[] fromBase64URL = new int[256];

        static {
            int[] iArr = new int[256];
            fromBase64 = iArr;
            Arrays.fill(iArr, -1);
            for (int i10 = 0; i10 < b.toBase64.length; i10++) {
                fromBase64[b.toBase64[i10]] = i10;
            }
            fromBase64[61] = -2;
            Arrays.fill(fromBase64URL, -1);
            for (int i11 = 0; i11 < b.toBase64URL.length; i11++) {
                fromBase64URL[b.toBase64URL[i11]] = i11;
            }
            fromBase64URL[61] = -2;
        }

        private a(boolean z10, boolean z11) {
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
            throw new UnsupportedOperationException("Method not decompiled: com.kwad.sdk.core.a.c.a.decode0(byte[], int, int, byte[]):int");
        }

        private int outLength(byte[] bArr, int i10, int i11) {
            int i12;
            int[] iArr = this.isURL ? fromBase64URL : fromBase64;
            int i13 = i11 + 0;
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

        public final byte[] decode(byte[] bArr) {
            int iOutLength = outLength(bArr, 0, bArr.length);
            byte[] bArr2 = new byte[iOutLength];
            int iDecode0 = decode0(bArr, 0, bArr.length, bArr2);
            return iDecode0 != iOutLength ? Arrays.copyOf(bArr2, iDecode0) : bArr2;
        }

        public final byte[] decode(String str) {
            return decode(str.getBytes(c.ISO_8859_1));
        }
    }
}
