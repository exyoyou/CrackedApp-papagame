package com.byazt.jb;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 63, 46})
public final class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final com.byazt.mk.a f15747c = com.byazt.mk.a.c("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    public static final String[] uj = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
    public static final String[] tt = new String[64];
    public static final String[] ve = new String[256];

    static {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            String[] strArr = ve;
            if (i11 >= strArr.length) {
                break;
            }
            strArr[i11] = com.byazt.kh.ve.c("%8s", Integer.toBinaryString(i11)).replace(' ', '0');
            i11++;
        }
        String[] strArr2 = tt;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i12 = 0; i12 <= 0; i12++) {
            int i13 = iArr[i12];
            String[] strArr3 = tt;
            strArr3[i13 | 8] = strArr3[i13] + "|PADDED";
        }
        String[] strArr4 = tt;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i14 = 0; i14 < 3; i14++) {
            int i15 = iArr2[i14];
            for (int i16 = 0; i16 <= 0; i16++) {
                int i17 = iArr[i16];
                String[] strArr5 = tt;
                int i18 = i17 | i15;
                strArr5[i18] = strArr5[i17] + '|' + strArr5[i15];
                strArr5[i18 | 8] = strArr5[i17] + '|' + strArr5[i15] + "|PADDED";
            }
        }
        while (true) {
            String[] strArr6 = tt;
            if (i10 >= strArr6.length) {
                return;
            }
            if (strArr6[i10] == null) {
                strArr6[i10] = ve[i10];
            }
            i10++;
        }
    }

    private n() {
    }

    public static IllegalArgumentException c(String str, Object... objArr) {
        throw new IllegalArgumentException(com.byazt.kh.ve.c(str, objArr));
    }

    public static IOException tt(String str, Object... objArr) throws IOException {
        throw new IOException(com.byazt.kh.ve.c(str, objArr));
    }

    public static String c(boolean z10, int i10, int i11, byte b10, byte b11) {
        String[] strArr = uj;
        String strC = b10 < strArr.length ? strArr[b10] : com.byazt.kh.ve.c("0x%02x", Byte.valueOf(b10));
        String strC2 = c(b10, b11);
        Object[] objArr = new Object[5];
        objArr[0] = z10 ? "<<" : ">>";
        objArr[1] = Integer.valueOf(i10);
        objArr[2] = Integer.valueOf(i11);
        objArr[3] = strC;
        objArr[4] = strC2;
        return com.byazt.kh.ve.c("%s 0x%08x %5d %-13s %s", objArr);
    }

    public static String c(byte b10, byte b11) {
        if (b11 == 0) {
            return "";
        }
        if (b10 != 2 && b10 != 3) {
            if (b10 == 4 || b10 == 6) {
                return b11 == 1 ? "ACK" : ve[b11];
            }
            if (b10 != 7 && b10 != 8) {
                String[] strArr = tt;
                String str = b11 < strArr.length ? strArr[b11] : ve[b11];
                if (b10 != 5 || (b11 & 4) == 0) {
                    return (b10 != 0 || (b11 & 32) == 0) ? str : str.replace("PRIORITY", "COMPRESSED");
                }
                return str.replace("HEADERS", "PUSH_PROMISE");
            }
        }
        return ve[b11];
    }
}
